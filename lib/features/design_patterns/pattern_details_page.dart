import "package:flutter/material.dart";
import "package:tuts/core/extensions/extensions.dart";
import "package:tuts/shared/app_widgets.dart";

import "../../core/models/design_patterns.dart";
import "../../data/design_patterns.dart";

class PatternDetailsScreenArguments {
  const PatternDetailsScreenArguments({required this.pattern});
  const PatternDetailsScreenArguments.none() : pattern = null;
  final DesignPattern? pattern;
}

class PatternDetailsScreen extends StatelessWidget {
  const PatternDetailsScreen({required this.pattern, super.key});
  final DesignPattern? pattern;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final l10n = context.l10n;

    if (pattern case final pattern?) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(pattern.getLocalizedTitle(l10n.localeName)),
        ),
        body: SingleChildScrollView(
          padding: const .all(16),
          child: Column(
            crossAxisAlignment: .stretch,
            spacing: 15,
            children: [
              // MISSING
              // - id
              // - group
              // - category
              // - level
              // - type

              // Question type and categories
              Row(
                spacing: 5,
                children: [
                  Expanded(
                    child: Text(
                      [
                        pattern.category.label(l10n),
                        pattern.group.label(l10n),
                        pattern.type?.label(l10n),
                      ].join(" • "),
                      // maxLines: 1,
                      // overflow: .ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                  PatternChip(name: pattern.id),
                ],
              ),

              Container(
                padding: const .all(16),
                decoration: BoxDecoration(
                  color: colors.surfaceContainerLow,
                  borderRadius: .circular(12),
                  border: .all(
                    color: colors.outlineVariant.withValues(alpha: 0.5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: .stretch,
                  spacing: 10,
                  children: [
                    // description
                    Text(pattern.getLocalizedDescription(l10n.localeName)),

                    // content
                    if (pattern.getLocalizedContent(l10n.localeName)
                        case final content when content.isNotEmpty)
                      for (final item in content) ContentViewer(item),
                  ],
                ),
              ),

              // title
              // Text(
              //   pattern.getLocalizedTitle(l10n.localeName),
              //   style: TextStyle(
              //     fontSize: 18,
              //     fontWeight: .bold,
              //     color: context.colorScheme.primary,
              //   ),
              // ),

              // Examples
              if (pattern.getLocalizedExamples(l10n.localeName)
                  case final examples? when examples.isNotEmpty) ...[
                for (final example in examples)
                  CodeBlockViewer.fromStrCodeBlock(example),
              ],

              // when to use
              if (pattern.getLocalizedWhenToUse(l10n.localeName)
                  case final whenToUse? when whenToUse.isNotEmpty)
                for (final item in whenToUse) ContentViewer(item),

              // pros
              if (pattern.getLocalizedPros(l10n.localeName) case final pros?
                  when pros.isNotEmpty)
                SmallTitledList.advantages(items: pros.map(Text.new).toList()),

              // cons
              if (pattern.getLocalizedCons(l10n.localeName) case final cons?
                  when cons.isNotEmpty)
                SmallTitledList.disadvantages(
                  items: cons.map(Text.new).toList(),
                ),

              // common mistakes
              if (pattern.getLocalizedCommonMistakes(l10n.localeName)
                  case final mistakes? when mistakes.isNotEmpty)
                SmallTitledList.commonMistakes(
                  items: mistakes.map(Text.new).toList(),
                ),

              if (pattern.relatedPatterns case final relatives?
                  when relatives.isNotEmpty)
                Wrap(
                  spacing: 10,
                  runSpacing: 5,
                  crossAxisAlignment: .center,
                  children: [
                    Text(
                      l10n.relatedPatterns,
                      style: TextStyle(
                        fontSize: 12,
                        color: context.colorScheme.onSurfaceVariant,
                        fontWeight: .bold,
                      ),
                    ),
                    for (final relative in relatives)
                      if (designPatterns[relative] case final pattern?)
                        PatternChip(name: pattern.title(l10n.localeName)),
                  ],
                ),
              if (pattern.oftenConfusedWith case final confusedWith?
                  when confusedWith.isNotEmpty)
                Wrap(
                  spacing: 10,
                  runSpacing: 5,
                  crossAxisAlignment: .center,
                  children: [
                    Text(
                      l10n.oftenConfusedWith,
                      style: TextStyle(
                        fontSize: 12,
                        color: context.colorScheme.onSurfaceVariant,
                        fontWeight: .bold,
                      ),
                    ),
                    for (final confPattern in confusedWith)
                      if (designPatterns[confPattern] case final pattern?)
                        PatternChip(
                          name: pattern.title(l10n.localeName),
                          color: colors.errorContainer,
                        ),
                  ],
                ),
            ],
          ),
        ),
      );
    }

    return Material(child: Center(child: Text(l10n.noPattern)));
  }
}

class PatternChip extends StatelessWidget {
  const PatternChip({required this.name, this.color, super.key});

  final String name;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7.5, vertical: 2.5),
      decoration: BoxDecoration(
        color: (color ?? colors.primaryContainer).withAlpha(50),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: color?.withAlpha(100) ?? colors.onPrimary),
      ),
      child: Text(
        name,
        textDirection: .ltr,
        style: const TextStyle(fontSize: 12, fontWeight: .bold),
      ),
    );
  }
}
