import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loopsbase/core/extensions/extensions.dart';
import 'package:loopsbase/shared/design_layouts.dart';

import '../../core/app_controller/app_controller_cubit.dart';

Future<Color?> showSeedColorSelector(
  BuildContext context, {
  ValueChanged<Color>? onChanged,
  ValueChanged<Color>? onSubmit,
  bool showTitleSample = true,
  bool showSubtitleSample = true,
  bool showNormalSample = true,
}) async {
  return showModalBottomSheet<Color>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    useSafeArea: true,
    barrierColor: Colors.transparent,
    constraints: const BoxConstraints(),
    shape: TopBorderShape(color: context.colorScheme.outline),
    builder: (context) {
      return SeedColorSelector(
        onChanged: onChanged,
        onSubmit: onSubmit,
        showTitleSample: showTitleSample,
        showSubtitleSample: showSubtitleSample,
        showNormalSample: showNormalSample,
      );
    },
  );
}

class SeedColorSelector extends StatefulWidget {
  const SeedColorSelector({
    this.onChanged,
    this.onSubmit,
    this.showTitleSample = true,
    this.showSubtitleSample = true,
    this.showNormalSample = true,
    super.key,
  });

  final ValueChanged<Color>? onChanged, onSubmit;
  final bool showTitleSample, showSubtitleSample, showNormalSample;

  static bool _isOpen = false;
  static bool get isOpen => _isOpen;

  @override
  State<SeedColorSelector> createState() => _SeedColorSelectorState();
}

class _SeedColorSelectorState extends State<SeedColorSelector> {
  // ── FIX: keep hue as a double (0–360), derive Color from it ──
  double _hue = 210.0; // ~blue default

  Color get _selectedColor => HSVColor.fromAHSV(1.0, _hue, 1.0, 1.0).toColor();

  @override
  void initState() {
    super.initState();
    SeedColorSelector._isOpen = true;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        final seedColor = context.read<AppControllerCubit>().state.seedColor;
        setState(() => _hue = HSVColor.fromColor(seedColor).hue);
      }
    });
  }

  // ── FIX: reset hue to blue (~210°) instead of a Color ──
  void setToDefault() {
    setState(() => _hue = 210.0);
    onChanged(context);
  }

  void onChanged(BuildContext context) {
    widget.onSubmit?.call(_selectedColor);
    context.read<AppControllerCubit>().changeSeedColor(_selectedColor);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return PopScope(
      onPopInvokedWithResult: (_, _) => SeedColorSelector._isOpen = false,
      child: SafeArea(
        top: false,
        child: Padding(
          padding: DL.listHorizontalBottomPadding,
          child: Row(
            spacing: 7.5,
            children: [
              IconButton(
                onPressed: setToDefault,
                tooltip: l10n.theDefault,
                icon: const Icon(Icons.settings_backup_restore_rounded),
              ),
              Expanded(
                child: SpectrumSlider(
                  hue: _hue,
                  onChange: (h) {
                    setState(() => _hue = h);
                    widget.onChanged?.call(_selectedColor);
                  },
                  onChanged: (h) => onChanged(context),
                  trackHeight: 25,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.square_rounded, color: _selectedColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
//
//
//
//

class SpectrumSlider extends StatefulWidget {
  const SpectrumSlider({
    required this.hue,
    required this.onChange,
    this.onChanged,
    super.key,
    this.trackHeight = 30,
    this.thumbWidth = 15,
  });

  /// 0 – 360
  final double hue;

  /// Called continuously while dragging
  final ValueChanged<double> onChange;

  /// Called when the user releases the slider
  final ValueChanged<double>? onChanged;

  final double trackHeight;
  final double thumbWidth;

  @override
  State<SpectrumSlider> createState() => _SpectrumSliderState();
}

class _SpectrumSliderState extends State<SpectrumSlider> {
  bool _isDragging = false;
  Timer? resetTimer;

  Color get _color => HSVColor.fromAHSV(1.0, widget.hue, 1.0, 1.0).toColor();

  double _thumbCenter(double trackWidth) {
    final halfThumb = widget.thumbWidth / 2;
    final usable = trackWidth - widget.thumbWidth;
    return halfThumb + (widget.hue / 360.0) * usable;
  }

  void _updateFromLocal(double localX, double trackWidth) {
    final halfThumb = widget.thumbWidth / 2;
    final usable = trackWidth - widget.thumbWidth;
    final hue = ((localX - halfThumb) / usable * 360.0).clamp(0.0, 360.0);
    widget.onChange(hue);
  }

  void resetDragState() {
    resetTimer?.cancel();
    resetTimer = Timer(const Duration(milliseconds: 100), () {
      if (mounted) setState(() => _isDragging = false);
    });
  }

  @override
  void dispose() {
    resetTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final trackWidth = constraints.maxWidth;
        final trackH = widget.trackHeight;
        final thumbW = widget.thumbWidth;
        final thumbLeft = _thumbCenter(trackWidth) - thumbW / 2;

        return GestureDetector(
          behavior: .opaque,
          onHorizontalDragStart: (d) {
            _isDragging = true;
            _updateFromLocal(d.localPosition.dx, trackWidth);
          },
          onHorizontalDragUpdate: (d) {
            _updateFromLocal(d.localPosition.dx, trackWidth);
          },
          onHorizontalDragEnd: (_) {
            resetDragState();
            widget.onChanged?.call(widget.hue);
          },
          onTapDown: (d) => _updateFromLocal(d.localPosition.dx, trackWidth),
          child: SizedBox(
            height: trackH,
            width: trackWidth,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // ── Gradient track ───────────────────────
                // FIX: stops place each color at its exact hue/360 position.
                // Without stops, Flutter spaces colors evenly (0,1/7,2/7…)
                // which doesn't match equal hue intervals → wrong color at position.
                const Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: .all(.circular(5)),
                      gradient: LinearGradient(
                        stops: [
                          0.0, //   0° / 360
                          30 / 360, //  30°
                          60 / 360, //  60°
                          120 / 360, // 120°
                          180 / 360, // 180°
                          240 / 360, // 240°
                          300 / 360, // 300°
                          1.0, // 360°
                        ],
                        colors: [
                          Color(0xFFFF0000), //   0° red
                          Color(0xFFFF8000), //  30° orange
                          Color(0xFFFFFF00), //  60° yellow
                          Color(0xFF00FF00), // 120° green
                          Color(0xFF00FFFF), // 180° cyan
                          Color(0xFF0000FF), // 240° blue
                          Color(0xFFFF00FF), // 300° magenta
                          Color(0xFFFF0000), // 360° red
                        ],
                      ),
                    ),
                  ),
                ),

                // ── Thumb notch ──────────────────────────
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: thumbLeft,
                  child: Container(
                    margin: const .all(2.5),
                    width: thumbW - 5,
                    decoration: BoxDecoration(
                      borderRadius: const .all(.circular(2.5)),
                      color: Colors.white,
                      // color: _color,
                      border: .all(color: Colors.white, width: 2.5),
                    ),
                  ),
                ),

                // ── Thumb notch ──────────────────────────
                Positioned(
                  top: -25,
                  height: 20,
                  left: thumbLeft,
                  width: thumbW,
                  child: AnimatedOpacity(
                    opacity: _isDragging ? 1 : 0,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: const .all(.circular(5)),
                        color: _color,
                        border: .all(
                          color: context.colorScheme.secondary,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//
//
//
//
//

class TopBorderShape extends ShapeBorder {
  const TopBorderShape({
    required this.color,
    this.width = 1.0,
    this.borderRadius = BorderRadius.zero,
  });

  final Color color;
  final double width;
  final BorderRadius borderRadius;

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addRRect(borderRadius.toRRect(rect));
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = width
      ..style = .stroke;

    // Draw only the top border
    final rRect = borderRadius.toRRect(rect);
    final path = Path()
      ..moveTo(rRect.left, rRect.top + rRect.tlRadiusY)
      ..arcToPoint(
        Offset(rRect.left + rRect.tlRadiusX, rRect.top),
        radius: Radius.circular(rRect.tlRadiusX),
      )
      ..lineTo(rRect.right - rRect.trRadiusX, rRect.top)
      ..arcToPoint(
        Offset(rRect.right, rRect.top + rRect.trRadiusY),
        radius: Radius.circular(rRect.trRadiusX),
      );

    canvas.drawPath(path, paint);
  }

  @override
  ShapeBorder scale(double t) => this;
}
