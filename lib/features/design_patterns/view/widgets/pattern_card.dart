import 'package:flutter/material.dart';
import 'package:loopsbase/core/extensions/extensions.dart';
import 'package:loopsbase/core/models/design_patterns.dart';
import 'package:loopsbase/shared/design_layouts.dart';

class DesignPatternCard extends StatelessWidget {
  const DesignPatternCard({
    required this.pattern,
    required this.onTap,
    this.primaryColor,
    super.key,
  });

  final DesignPattern pattern;
  final VoidCallback onTap;
  final Color? primaryColor;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colorScheme;
    final locale = l10n.localeName;
    final primaryColor = this.primaryColor ?? colors.primary;

    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: DL.inListCardPadding,
          child: Column(
            crossAxisAlignment: .stretch,
            spacing: 6,
            children: [
              Text.rich(
                TextSpan(
                  text: pattern.title(locale),
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: .bold,
                    color: primaryColor,
                  ),
                  children: [
                    if (pattern.type case final type?) ...[
                      TextSpan(
                        text: " • ${type.label(l10n)}",
                        style: TextStyle(
                          fontSize: 14,
                          color: colors.secondary,
                          fontWeight: .w500,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              Text(
                pattern.description(locale),
                maxLines: 2,
                overflow: .ellipsis,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: colors.onSurfaceVariant,
                ),
              ),
              Row(
                spacing: 10,
                children: [
                  Icon(
                    Icons.bar_chart_rounded,
                    size: 16,
                    color: colors.outline,
                  ),
                  Expanded(
                    child: Text(
                      pattern.level.label(l10n),
                      style: TextStyle(color: colors.outline),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 14,
                    color: colors.outline,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
