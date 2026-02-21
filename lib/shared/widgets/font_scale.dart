import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loopsbase/core/extensions/extensions.dart';
import 'package:loopsbase/shared/widgets/dividers.dart';

import '../../core/app_controller/app_controller_cubit.dart';
import '../design_layouts.dart';

Future<double?> showFontScaler(
  BuildContext context, {
  ValueChanged<double>? onChanged,
  ValueChanged<double>? onSubmit,
  bool showTitleSample = true,
  bool showSubtitleSample = true,
  bool showNormalSample = true,
}) async {
  return showModalBottomSheet<double>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    useSafeArea: true,
    builder: (context) {
      return FontScaler(
        onChanged: onChanged,
        onSubmit: onSubmit,
        showTitleSample: showTitleSample,
        showSubtitleSample: showSubtitleSample,
        showNormalSample: showNormalSample,
      );
    },
  );
}

class FontScaler extends StatefulWidget {
  const FontScaler({
    this.onChanged,
    this.onSubmit,
    this.showTitleSample = true,
    this.showSubtitleSample = true,
    this.showNormalSample = true,
    super.key,
  });

  final ValueChanged<double>? onChanged, onSubmit;
  final bool showTitleSample, showSubtitleSample, showNormalSample;

  static bool _isOpen = false;
  static bool get isOpen => _isOpen;

  @override
  State<FontScaler> createState() => _FontScalerState();
}

class _FontScalerState extends State<FontScaler> {
  double value = 1;

  @override
  void initState() {
    super.initState();
    FontScaler._isOpen = true;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(
          () => value = context.read<AppControllerCubit>().state.fontScale,
        );
      }
    });
  }

  void setToDefault() => setState(() => value = 1);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return PopScope(
      onPopInvokedWithResult: (_, _) {
        FontScaler._isOpen = false;
      },
      child: SafeArea(
        top: false,
        child: Padding(
          padding: DL.listHorizontalBottomPadding,

          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .stretch,
            spacing: 10,
            children: [
              DefaultTextStyle.merge(
                textHeightBehavior: const TextHeightBehavior(
                  applyHeightToFirstAscent: false,
                  applyHeightToLastDescent: false,
                ),
                maxLines: 1,
                overflow: .ellipsis,
                child: Column(
                  mainAxisSize: .min,
                  crossAxisAlignment: .stretch,
                  spacing: 5,
                  children: [
                    if (widget.showTitleSample)
                      Text(
                        l10n.headingFontSize,
                        textScaler: TextScaler.linear(value),
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    if (widget.showSubtitleSample)
                      Text(
                        l10n.subheadingFontSize,
                        textScaler: TextScaler.linear(value),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    if (widget.showNormalSample)
                      Text(
                        l10n.normalFontSize,
                        textScaler: TextScaler.linear(value),
                      ),
                  ],
                ),
              ),
              const LiteDivider(),
              Row(
                spacing: 2.5,
                mainAxisAlignment: .end,
                children: [
                  IconButton(
                    onPressed: setToDefault,
                    tooltip: l10n.theDefault,
                    style: const ButtonStyle(tapTargetSize: .shrinkWrap),
                    icon: const Icon(Icons.settings_backup_restore_rounded),
                  ),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 4,
                        overlayShape: .noOverlay,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 8,
                        ),
                      ),
                      child: Slider(
                        value: value,
                        min: 0.25,
                        max: 3,
                        onChanged: (v) {
                          setState(() => value = v);
                          widget.onChanged?.call(value);
                        },
                      ),
                    ),
                  ),
                  IconButton(
                    style: const ButtonStyle(tapTargetSize: .shrinkWrap),
                    onPressed: () {
                      if (widget.onSubmit != null) {
                        widget.onSubmit?.call(value);
                      } else {
                        context.read<AppControllerCubit>().changeFontScale(
                          value,
                        );
                      }
                    },
                    tooltip: l10n.apply,
                    icon: const Icon(Icons.task_alt_rounded),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
