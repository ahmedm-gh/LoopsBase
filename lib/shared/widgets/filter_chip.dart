import 'package:flutter/material.dart';
import 'package:loopsbase/core/extensions/extensions.dart';

class AppFilterChip extends StatelessWidget {
  const AppFilterChip({
    required this.label,
    required this.selected,
    required this.onSelected,
    this.color,
    this.animated = false,
    super.key,
  });

  final String label;
  final bool selected;
  final Color? color;
  final VoidCallback onSelected;
  final bool animated;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final child = InkWell(
      key: ValueKey(selected),
      onTap: onSelected,
      borderRadius: BorderRadius.circular(5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: selected
              ? color
              : colors.surfaceContainerHighest.withValues(alpha: 0.25),
          borderRadius: BorderRadius.circular(5),
          // border: Border.all(
          //   color: colors.outlineVariant.withValues(alpha: 0.35),
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2.5),
          child: Text(
            label,
            style: TextStyle(color: selected ? color?.pairedColor : null),
          ),
        ),
      ),
    );

    return animated
        ? AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: child,
          )
        : child;
  }
}
