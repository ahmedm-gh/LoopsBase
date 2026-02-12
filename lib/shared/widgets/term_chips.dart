import 'package:flutter/material.dart';

class TermChip extends StatelessWidget {
  const TermChip({required this.child, this.color, super.key});

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color?.withAlpha(40),
        borderRadius: .circular(5),
      ),
      child: Padding(
        padding: const .symmetric(horizontal: 10, vertical: 5),
        child: DefaultTextStyle.merge(
          style: const TextStyle(
            // fontWeight: .bold,
            fontSize: 12,
            height: 1,
          ),
          child: child,
        ),
      ),
    );
  }
}
