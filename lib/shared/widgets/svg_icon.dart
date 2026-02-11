import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

///
/// A widget that displays an SVG icon.
///
/// This widget uses `flutter_svg` to render SVG assets. It provides
/// properties to control the size, color, and other visual aspects
/// of the SVG icon, similar to a standard [Icon] widget.
///
/// Example usage:
/// ```dart
/// SvgIcon(
///   'assets/icons/my_icon.svg',
///   size: 24.0,
///   color: Colors.blue,
///   semanticLabel: 'My custom icon',
/// )
/// ```
class SvgIcon extends StatelessWidget {
  const SvgIcon(
    this.path, {
    this.size,
    this.color,
    this.useOriginalColor = false,
    this.semanticLabel,
    this.textDirection,
    this.blendMode,
    this.applyTextScaling,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.allowDrawingOutsideViewBox = false,
    this.clipBehavior = Clip.hardEdge,
    this.placeholderBuilder,
    this.matchTextDirection = false,
    this.bundle,
    this.package,
    this.excludeFromSemantics = false,
    this.errorBuilder,
    this.theme,
    this.colorMapper,
    super.key,
  });

  /// The path of the SVG asset to load.
  final String path;

  /// The size (both width and height) of the icon.
  ///
  /// Defaults to the [IconTheme] size, or `24.0` if not specified.
  final double? size;

  /// The color to apply to the SVG.
  ///
  /// Ignored if [useOriginalColor] is `true`.
  final Color? color;

  /// Whether to preserve the original colors from the SVG file.
  ///
  /// If `true`, the [color] parameter will be ignored.
  final bool useOriginalColor;

  /// Semantic label for accessibility tools (e.g., screen readers).
  final String? semanticLabel;

  /// Explicit [TextDirection] for the widget.
  ///
  /// If not provided, it uses the ambient directionality.
  final TextDirection? textDirection;

  /// The [BlendMode] used when applying the [color].
  ///
  /// Defaults to [BlendMode.srcIn].
  final BlendMode? blendMode;

  /// Whether the icon size should scale according to the
  /// system text scaling (accessibility font size).
  ///
  /// Defaults to `true` if not specified.
  final bool? applyTextScaling;

  /// How the SVG should be inscribed into the allocated space.
  ///
  /// Defaults to [BoxFit.contain].
  final BoxFit fit;

  /// Alignment of the SVG within its box.
  ///
  /// Defaults to [Alignment.center].
  final Alignment alignment;

  /// Whether to allow drawing outside the SVG viewBox.
  ///
  /// Defaults to `false`.
  final bool allowDrawingOutsideViewBox;

  /// The clip behavior applied to the SVG.
  ///
  /// Defaults to [Clip.hardEdge].
  final Clip clipBehavior;

  /// Widget builder shown while the SVG asset is loading.
  final Widget Function(BuildContext)? placeholderBuilder;

  /// Whether the icon should flip horizontally in
  /// right-to-left text direction contexts.
  ///
  /// Defaults to `false`.
  final bool matchTextDirection;

  /// The [AssetBundle] to use when loading the asset.
  ///
  /// Useful for custom asset resolution.
  final AssetBundle? bundle;

  /// The name of the package where the asset is located.
  ///
  /// Useful if loading assets from a Flutter package.
  final String? package;

  /// Whether to exclude this widget from the semantics tree.
  ///
  /// Defaults to `false`.
  final bool excludeFromSemantics;

  /// Custom error builder if the SVG fails to load or render.
  final Widget Function(BuildContext, Object, StackTrace)? errorBuilder;

  /// Theme configuration for the SVG rendering.
  final SvgTheme? theme;

  /// Function to map colors in the SVG to different values.
  ///
  /// Useful for dynamically changing SVG colors.
  final ColorMapper? colorMapper;

  @override
  Widget build(BuildContext context) {
    final iconTheme = IconTheme.of(context);

    final scaling = applyTextScaling ?? iconTheme.applyTextScaling ?? true;

    final double finalSize;

    if (scaling) {
      finalSize =
          (size ?? iconTheme.size ?? 24.0) *
          MediaQuery.of(context).textScaler.scale(24.0);
    } else {
      finalSize = size ?? iconTheme.size ?? 24.0;
    }

    final BlendMode finalBlendMode = blendMode ?? BlendMode.srcIn;

    final SvgPicture svg = SvgPicture.string(
      path,
      width: finalSize,
      height: finalSize,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      clipBehavior: clipBehavior,
      colorFilter: useOriginalColor
          ? null
          : ColorFilter.mode(
              color ?? iconTheme.color ?? ColorScheme.of(context).onSurface,
              finalBlendMode,
            ),
      semanticsLabel: semanticLabel,
      matchTextDirection: matchTextDirection,
      // bundle: bundle,
      // package: package,
      placeholderBuilder: placeholderBuilder,
      excludeFromSemantics: excludeFromSemantics,
      errorBuilder: errorBuilder,
      theme: theme,
      colorMapper: colorMapper,
    );

    if (textDirection case final dir?) {
      return Directionality(textDirection: dir, child: svg);
    } else {
      return svg;
    }
  }
}
