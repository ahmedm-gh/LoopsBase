import 'package:flutter/material.dart';
import 'package:loopsbase/shared/design_layouts.dart';

import '../../../../core/extensions/context_extensions.dart';

class TermCardsWrapper extends StatelessWidget {
  const TermCardsWrapper({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return CardTheme(
      elevation: 0,
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
