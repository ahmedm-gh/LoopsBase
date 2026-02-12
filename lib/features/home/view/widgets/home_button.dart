import 'package:flutter/material.dart';

import '../../../../core/extensions/extensions.dart';

class HomeMenuCard extends StatelessWidget {
  const HomeMenuCard({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
    super.key,
  });
  final String title;
  final Widget icon;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    final card = Card(
      margin: .zero,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: colors.outlineVariant),
        borderRadius: .circular(20),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: .circular(20),
        child: Padding(
          padding: const .all(17.5),
          child: Column(
            mainAxisAlignment: .center,
            children: [
              IconTheme.merge(
                data: IconThemeData(size: 38, color: color),
                child: icon,
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: .bold, color: color),
              ),
            ],
          ),
        ),
      ),
    );

    if (onTap == null) {
      return Stack(
        alignment: .center,
        children: [
          SizedBox(
            width: .infinity,
            child: Opacity(opacity: 0.5, child: card),
          ),
          Positioned(
            right: 16,
            top: 16,
            child: Container(
              padding: const .all(8),
              decoration: BoxDecoration(
                color: colors.surfaceContainerHighest.withValues(alpha: 0.75),
                border: Border.all(
                  color: colors.primary.withValues(alpha: 0.5),
                  width: 2,
                ),
                borderRadius: .circular(10),
              ),
              child: const Icon(Icons.construction_rounded, size: 24),
            ),
          ),
        ],
      );
    }

    return card;
  }
}
