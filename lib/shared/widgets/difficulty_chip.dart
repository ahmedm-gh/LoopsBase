import 'package:flutter/material.dart';
import 'package:loopsbase/core/enums/enums.dart';
import 'package:loopsbase/core/extensions/extensions.dart';

class DifficultyChip extends StatelessWidget {
  const DifficultyChip(this.difficulty, {super.key});

  final DifficultyLevel difficulty;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: difficulty.color.withAlpha(40),
        borderRadius: .circular(5),
      ),
      child: Padding(
        padding: const .symmetric(horizontal: 10, vertical: 5),
        child: Text(
          difficulty.label(l10n),
          style: TextStyle(
            fontSize: 12,
            color: Color.alphaBlend(
              difficulty.color.withAlpha(120),
              difficulty.color.pairedColor,
            ),
            fontWeight: .bold,
            height: 1,
          ),
        ),
      ),
    );
  }
}
