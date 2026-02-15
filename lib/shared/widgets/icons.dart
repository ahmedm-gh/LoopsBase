import 'package:flutter/material.dart';

class FilledIcon extends StatelessWidget {
  const FilledIcon({
    required this.child,
    this.background,
    this.borderRadius = const .all(.circular(5)),
    this.decoration,
    this.padding = const .all(5),
    super.key,
  });

  final Widget child;
  final Color? background;
  final BorderRadius? borderRadius;
  final BoxDecoration? decoration;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final icon2 = IconTheme.merge(
      data: const IconThemeData(size: 18),
      child: child,
    );

    return DecoratedBox(
      decoration:
          decoration ??
          BoxDecoration(borderRadius: borderRadius, color: background),
      child: padding != null
          ? Padding(padding: padding ?? .zero, child: icon2)
          : icon2,
    );
  }
}
