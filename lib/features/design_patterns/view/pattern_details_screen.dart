import "package:flutter/material.dart";
import "package:loopsbase/core/extensions/extensions.dart";
import "package:loopsbase/shared/app_widgets.dart";
import "package:loopsbase/shared/design_layouts.dart";

import "../../../core/models/design_patterns.dart";
import "../../../core/services/routes.dart";
import "../../../data/design_patterns.dart";

class PatternDetailsScreenArguments {
  const PatternDetailsScreenArguments({required this.pattern});
  final DesignPattern pattern;
}

class PatternDetailsScreen extends StatelessWidget {
  const PatternDetailsScreen({required this.arguments, super.key});
  final PatternDetailsScreenArguments? arguments;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final l10n = context.l10n;
    final pattern = arguments?.pattern;
    final textStyles = context.textTheme;

    if (pattern case final pattern?) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(pattern.getLocalizedTitle(l10n.localeName)),
          // actions: [
          //   BlocBuilder<DesignPatternsCubit, DesignPatternsState>(
          //     builder: (context, state) {
          //       final isBookmarked = state.bookmarkedIds.contains(pattern.id);
          //       return IconButton(
          //         onPressed: () {
          //           context.read<DesignPatternsCubit>().toggleBookmark(
          //             pattern.id,
          //           );
          //         },
          //         icon: Icon(
          //           isBookmarked
          //               ? Icons.bookmark_rounded
          //               : Icons.bookmark_outline_rounded,
          //           color: isBookmarked ? colors.primary : null,
          //         ),
          //       );
          //     },
          //   ),
          //   const SizedBox(width: 8),
          // ],
        ),
        body: SingleChildScrollView(
          padding: DL.listPadding,
          child: Column(
            crossAxisAlignment: .stretch,
            spacing: DL.listSeparatorHeight,
            children: [
              // Question type and categories
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    <String>[
                      pattern.category.label(l10n),
                      pattern.group.label(l10n),
                      ?pattern.type?.label(l10n),
                    ].join(" • "),
                    style: textStyles.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: IdText(id: pattern.id),
                  ),
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

              const LiteDivider(),

              if (pattern.relatedPatterns case final relatives?
                  when relatives.isNotEmpty) ...[
                Column(
                  crossAxisAlignment: .stretch,
                  spacing: 5,
                  children: [
                    Text(l10n.relatedPatterns, style: textStyles.titleMedium),
                    ActionChipsWrapper(
                      backgroundColor: context.colorScheme.primary.withValues(
                        alpha: 0.2,
                      ),
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 5,
                        crossAxisAlignment: .center,
                        children: [
                          for (final relative in relatives)
                            if (designPatterns[relative] case final pattern?)
                              ActionChip(
                                label: Text(pattern.title(l10n.localeName)),
                                onPressed: () => replaceWith(context, pattern),
                              ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
              if (pattern.oftenConfusedWith case final confusedWith?
                  when confusedWith.isNotEmpty) ...[
                Column(
                  crossAxisAlignment: .stretch,
                  spacing: 5,
                  children: [
                    Text(
                      l10n.oftenConfusedWith,
                      style: textStyles.titleMedium?.copyWith(
                        color: colors.error,
                      ),
                    ),
                    ActionChipsWrapper(
                      backgroundColor: context.colorScheme.error.withValues(
                        alpha: 0.2,
                      ),
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 5,
                        crossAxisAlignment: .center,
                        children: [
                          for (final confPattern in confusedWith)
                            if (designPatterns[confPattern] case final pattern?)
                              ActionChip(
                                label: Text(pattern.title(l10n.localeName)),
                                onPressed: () => replaceWith(context, pattern),
                              ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      );
    }

    return Material(child: Center(child: Text(l10n.noPattern)));
  }

  Future<Object?> replaceWith(BuildContext context, DesignPattern pattern) {
    return Navigator.pushReplacementNamed(
      context,
      Routes.designPatternDetails,
      arguments: PatternDetailsScreenArguments(pattern: pattern),
    );
  }
}
