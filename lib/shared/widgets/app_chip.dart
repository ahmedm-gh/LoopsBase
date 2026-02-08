import 'package:flutter/material.dart';
import 'package:tuts/core/enums/difficulty_level.dart';
import 'package:tuts/core/extensions.dart';

class DifficultyChip extends StatelessWidget {
  const DifficultyChip({
    this.child,
    required this.difficultyLevel,
    this.padding = const .symmetric(horizontal: 2.5),
    super.key,
  });

  final Widget? child;
  final DifficultyLevel? difficultyLevel;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final color = difficultyLevel?.color;

    return Chip(
      padding: padding,
      color: WidgetStatePropertyAll(color?.withValues(alpha: 0.1)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: color != null
            ? BorderSide(color: color.withValues(alpha: 0.25), width: 1)
            : .none,
      ),
      label:
          child ??
          Text(
            difficultyLevel?.label(context.l10n) ?? "",
            style: TextStyle(color: color, fontSize: 12, fontWeight: .bold),
          ),
    );
  }
}

class TagChip extends StatelessWidget {
  const TagChip({
    required this.child,
    this.padding = const .symmetric(horizontal: 2.5),
    super.key,
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: padding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: .none,
      ),
      label: child,
    );
  }
}

class AppChip extends StatelessWidget {
  const AppChip({
    required this.child,
    this.padding = const .symmetric(horizontal: 7.5, vertical: 2.5),
    super.key,
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Chip(padding: padding, label: child);
  }
}
