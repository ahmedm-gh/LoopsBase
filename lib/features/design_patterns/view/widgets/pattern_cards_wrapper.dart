import 'package:flutter/material.dart';
import 'package:loopsbase/shared/design_layouts.dart';

import '../../../../core/extensions/context_extensions.dart';

class PatternCategoryCardWrapper extends StatelessWidget {
  const PatternCategoryCardWrapper({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return CardTheme(
      elevation: 0,
      margin: .zero,
      color: colors.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: DL.inListCardBorderRadius,
        side: BorderSide(color: colors.outlineVariant.withValues(alpha: 0.35)),
      ),
      clipBehavior: .hardEdge,
      child: child,
    );
  }
}

class PatternCardWrapper extends StatelessWidget {
  const PatternCardWrapper({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return CardTheme(
      elevation: 0,
      margin: .zero,
      color: colors.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: DL.inListCardBorderRadius,
        side: BorderSide(color: colors.outlineVariant.withValues(alpha: 0.35)),
      ),
      clipBehavior: .hardEdge,
      child: child,
    );
  }
}
