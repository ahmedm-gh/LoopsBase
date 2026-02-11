import 'package:flutter/material.dart';

class FilledIcon extends StatelessWidget {
  const FilledIcon({
    required this.icon,
    this.color,
    this.borderRadius = const .all(.circular(5)),
    this.decoration,
    this.padding = const .all(5),
    super.key,
  });

  final IconData icon;
  final Color? color;
  final BorderRadius? borderRadius;
  final BoxDecoration? decoration;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final icon2 = Icon(icon, color: color, size: 18);

    return DecoratedBox(
      decoration:
          decoration ??
          BoxDecoration(
            borderRadius: borderRadius,
            color: color?.withValues(alpha: 0.1),
          ),
      child: padding != null
          ? Padding(padding: padding ?? .zero, child: icon2)
          : icon2,
    );
  }
}
