import 'package:flutter/material.dart';
import 'package:loopsbase/core/services/routes.dart';
import 'package:loopsbase/shared/app_widgets.dart';
import 'package:loopsbase/shared/design_layouts.dart';

import '../../../core/extensions/extensions.dart';
import '../../../core/models/term.dart';
import '../../../data/programming_terms.dart';

class TermDetailsScreenArguments {
  const TermDetailsScreenArguments({required this.term});
  final ProgrammingTerm term;
}

class TermDetailsScreen extends StatelessWidget {
  const TermDetailsScreen({this.arguments, super.key});

  final TermDetailsScreenArguments? arguments;

  // id,
  // title,
  // quickOverview,
  // details,
  // type,
  // category,
  // notes,
  // bestUse,
  // languages,
  // relatedTerms,
  // aliases,
  // tags,
  // era,
  // popularityTier,
  // introducedYear,

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colorScheme;
    final langCode = l10n.localeName;
    final textStyle = context.textTheme;

    if (arguments case final args?) {
      final term = args.term;

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(term.title(langCode)),
        ),
        body: SingleChildScrollView(
          padding: DL.pagePadding,
          child: Column(
            crossAxisAlignment: .stretch,
            spacing: DL.listSeparatorHeight,
            children: [
              // Metadata Row
              Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    <String>[
                      term.type.label(l10n),
                      if (langCode != "en") term.type.enLabel().ltr,
                      ?term.era?.label(l10n),
                    ].join(" • "),
                    style: textStyle.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: IdText(id: term.id),
                  ),
                ],
              ),

              // Overview & Details Card
              Container(
                padding: DL.inListCardPadding,
                decoration: BoxDecoration(
                  color: colors.surfaceContainerLow,
                  borderRadius: DL.inListCardBorderRadius,
                  border: .all(
                    color: colors.outlineVariant.withValues(alpha: 0.5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: .stretch,
                  spacing: 12,
                  children: [
                    if (term.quickOverview(langCode) case final qo
                        when qo.isNotEmpty) ...[
                      for (final content in qo) ContentViewer(content),
                      const LiteDivider(),
                    ],
                    if (term.details(langCode) case final details
                        when details.isNotEmpty)
                      for (final content in details) ContentViewer(content),
                  ],
                ),
              ),

              // Popularity Tracker
              if (term.popularityTier case final pt?)
                Row(
                  children: [
                    FilledIcon(
                      background: pt.color,
                      padding: const .all(4),
                      child: Icon(
                        Icons.trending_up_rounded,
                        size: 16,
                        color: pt.color.pairedColor,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "${l10n.popularityTierLabel}: ${pt.label(l10n)}",
                      style: const TextStyle(fontSize: 14, fontWeight: .w500),
                    ),
                  ],
                ),

              // Best Use
              if (term.bestUse?.call(langCode) case final bestUse
                  when bestUse != null && bestUse.isNotEmpty)
                SmallTitledList.whenToUse(
                  title: Text(l10n.whenToUse),
                  items: bestUse.map(ContentViewer.new).toList(),
                ),

              // Notes
              if (term.notes?.call(langCode) case final notes
                  when notes != null && notes.isNotEmpty)
                SmallTitledList.notes(
                  title: Text(l10n.notes),
                  items: notes.map(ContentViewer.new).toList(),
                ),

              // Aliases
              if (term.aliases.isNotEmpty)
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  crossAxisAlignment: .center,
                  children: [
                    Text(
                      "${l10n.aliases}:",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: .bold,
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                    Text(
                      term.aliases.join(", "),
                      textDirection: .ltr,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),

              // Languages
              // if (term.languages.isNotEmpty)
              //   Wrap(
              //     spacing: 8,
              //     runSpacing: 8,
              //     crossAxisAlignment: .center,
              //     children: [
              //       Text(
              //         "${l10n.languagesLabel}:",
              //         textDirection: .ltr,
              //         style: TextStyle(
              //           fontSize: 12,
              //           fontWeight: .bold,
              //           color: colors.onSurfaceVariant,
              //         ),
              //       ),
              //       for (final lang in term.languages)
              //         TermChip(
              //           color: colors.secondary,
              //           child: Text(lang.label),
              //         ),
              //     ],
              //   ),

              // Tags
              if (term.tags.isNotEmpty) Tags(tags: term.tags),

              // Related Terms
              if (term.relatedTerms.isNotEmpty) ...[
                const LiteDivider(),
                Text(l10n.relatedTerms, style: textStyle.titleMedium),
                ActionChipsWrapper(
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 5,
                    children: [
                      for (final relatedId in term.relatedTerms)
                        if (allTerms[relatedId] case final relatedTerm?)
                          ActionChip(
                            label: Text(relatedTerm.title(langCode)),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                Routes.programmingTermDetails,
                                arguments: TermDetailsScreenArguments(
                                  term: relatedTerm,
                                ),
                              );
                            },
                          ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Center(child: Text(l10n.termNotFound, textAlign: TextAlign.center)),
    );
  }
}
