import "package:flutter/material.dart";
import "package:tuts/core/extensions.dart";

class NotesWidget extends StatelessWidget {
  final String note;
  const NotesWidget({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final l10n = context.l10n;

    return Container(
      margin: const .symmetric(vertical: 12),
      padding: const .all(16),
      decoration: BoxDecoration(
        color: colors.secondaryContainer.withValues(alpha: 0.3),
        borderRadius: .circular(12),
        border: Border.all(color: colors.secondaryContainer),
      ),
      child: Row(
        crossAxisAlignment: .start,
        children: [
          Icon(Icons.lightbulb_outline_rounded, color: colors.secondary),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  l10n.notes,
                  style: TextStyle(fontWeight: .bold, color: colors.secondary),
                ),
                const SizedBox(height: 4),
                Text(
                  note,
                  textDirection: BidiUtil.getDirection(note),
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
