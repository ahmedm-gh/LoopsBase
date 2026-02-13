import 'package:flutter/material.dart';
import 'package:loopsbase/core/extensions/extensions.dart';
import 'package:loopsbase/core/models/design_patterns.dart';
import 'package:loopsbase/shared/app_widgets.dart';
import 'package:loopsbase/shared/design_layouts.dart';

class PatternCategoryCard extends StatelessWidget {
  const PatternCategoryCard({
    required this.category,
    required this.onTap,
    this.showMoreDetailsWidgets = true,
    super.key,
  });

  final DesignPatternsCategory category;
  final VoidCallback? onTap;
  final bool showMoreDetailsWidgets;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final locale = context.l10n.localeName;
    final l10n = context.l10n;
    final isDark = context.isDark;
    final categoryColor = category.color;

    return Card(
      elevation: 0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              categoryColor.withValues(alpha: 0.05),
              categoryColor.withValues(alpha: 0.0125),
            ],
          ),
        ),
        child: InkWell(
          onTap: onTap,
          borderRadius: DL.inListCardBorderRadius,
          child: Stack(
            children: [
              // Background icon
              PositionedDirectional(
                bottom: -10,
                end: -10,
                child: Icon(
                  category.icon,
                  size: 140,
                  color: categoryColor.withValues(alpha: isDark ? 0.06 : 0.04),
                ),
              ),

              // Content
              Padding(
                padding: const .all(20),
                child: Column(
                  crossAxisAlignment: .stretch,
                  spacing: 10,
                  children: [
                    // Header with badges
                    Row(
                      crossAxisAlignment: .start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                category.title(locale),
                                style: context.textTheme.titleLarge?.copyWith(
                                  fontWeight: .w600,
                                  color: categoryColor,
                                ),
                              ),
                              const SizedBox(height: 10),

                              Row(
                                spacing: 10,
                                children: [
                                  // FilledIcon(
                                  //   icon: const Icon(Icons.grid_view_rounded),
                                  //   background: categoryColor.withAlpha(50),
                                  // ),
                                  if (category.isClassic) ...[
                                    FilledIcon(
                                      icon: const Icon(Icons.book),
                                      background: colors.tertiary.withAlpha(50),
                                    ),
                                  ],
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Category icon
                        FilledIcon(
                          icon: Icon(
                            category.icon,
                            size: 28,
                            color: categoryColor,
                          ),
                          padding: const .all(7.5),
                          background: categoryColor.withAlpha(15),
                          borderRadius: DL.inCardRadius,
                        ),
                      ],
                    ),

                    // Description
                    for (final content in category.description(locale))
                      ContentViewer(content),

                    if (showMoreDetailsWidgets) ...[
                      const LiteDivider(),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          l10n.viewDetails,
                          style: context.textTheme.labelMedium?.copyWith(
                            fontWeight: .w500,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
