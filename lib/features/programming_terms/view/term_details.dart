import 'package:flutter/material.dart';
import 'package:tuts/core/services/routes.dart';
import 'package:tuts/l10n/app_localizations.dart';
import 'package:tuts/shared/app_widgets.dart';
import 'package:tuts/shared/design_layouts.dart';

import '../../../core/extensions/extensions.dart';
import '../../../core/models/term.dart';
import '../../../data/programming_terms.dart';

class ProgrammingTermDetailsScreenArguments {
  const ProgrammingTermDetailsScreenArguments({required this.term});
  final ProgrammingTerm term;
}

class ProgrammingTermDetailsScreen extends StatelessWidget {
  const ProgrammingTermDetailsScreen({this.arguments, super.key});

  final ProgrammingTermDetailsScreenArguments? arguments;

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

    if (arguments case final args?) {
      final term = args.term;

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          title: Text(term.title(langCode)),
        ),
        body: SingleChildScrollView(
          padding: DL.pagePadding,
          child: Column(
            crossAxisAlignment: .stretch,
            spacing: DL.listSeparatorHeight,
            children: [
              // Metadata Row
              Row(
                spacing: 10,
                children: [
                  TermChip(
                    color: colors.primary,
                    child: Text(
                      <String>[
                        term.type.label(l10n),
                        if (langCode != "en") term.type.enLabel().ltr,
                      ].join(" • "),
                    ),
                  ),
                  if (term.era case final era?)
                    TermChip(
                      color: colors.secondary,
                      child: Text(era.label(l10n)),
                    ),
                  Expanded(
                    child: Text(
                      term.id.ltr,
                      textAlign: .end,
                      style: TextStyle(
                        fontSize: 12,
                        color: colors.onSurfaceVariant.withValues(alpha: 0.5),
                        fontFamily: 'monospace',
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                <String>[
                  term.category.label(l10n),
                  if (term.introducedYear case final year?)
                    "${l10n.introducedYearLabel}: $year",
                ].join(" • "),
                style: TextStyle(fontSize: 12, color: colors.onSurfaceVariant),
              ),

              // Overview & Details Card
              Container(
                padding: DL.inListCardPadding,
                decoration: BoxDecoration(
                  color: colors.surfaceContainerLow,
                  borderRadius: DL.inListCardBorderRadius,
                  border: Border.all(
                    color: colors.outlineVariant.withValues(alpha: 0.5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: .stretch,
                  spacing: 12,
                  children: [
                    if (term.quickOverview.call(langCode) case final qo
                        when qo.isNotEmpty) ...[
                      for (final content in qo) ContentViewer(content),
                      const LiteDivider(),
                    ],
                    if (term.details.call(langCode) case final details
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
                      icon: Icon(
                        Icons.trending_up_rounded,
                        size: 16,
                        color: pt.color.pairedColor,
                      ),
                      background: pt.color,
                      padding: const EdgeInsets.all(4),
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
                    for (final alias in term.aliases)
                      TermChip(child: Text(alias)),
                  ],
                ),

              // Languages
              if (term.languages.isNotEmpty)
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  crossAxisAlignment: .center,
                  children: [
                    Text(
                      "${l10n.languagesLabel}:",
                      textDirection: .ltr,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: .bold,
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                    for (final lang in term.languages)
                      TermChip(
                        color: colors.secondary,
                        child: Text(lang.label),
                      ),
                  ],
                ),

              // Tags
              if (term.tags.isNotEmpty)
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final tag in term.tags)
                      Text(
                        "#$tag",
                        textDirection: tag.getDirection(),
                        style: TextStyle(
                          fontSize: 12,
                          color: colors.primary.withValues(alpha: 0.7),
                          fontWeight: .bold,
                        ),
                      ),
                  ],
                ),

              // Related Terms
              if (term.relatedTerms.isNotEmpty) ...[
                const LiteDivider(),
                Text(
                  l10n.relatedPatterns, // Reuse this for simple cross-ref
                  style: const TextStyle(fontSize: 16, fontWeight: .bold),
                ),
                ChipTheme(
                  data: ChipThemeData(
                    backgroundColor: colors.surfaceContainerHigh.withValues(
                      alpha: 0.5,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(color: colors.outlineVariant),
                  ),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      for (final relatedId in term.relatedTerms)
                        if (allTerms[relatedId] case final relatedTerm?)
                          ActionChip(
                            label: Text(relatedTerm.title(langCode)),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                Routes.programmingTermDetails,
                                arguments:
                                    ProgrammingTermDetailsScreenArguments(
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

extension on AppLocalizations {
  String get languagesLabel => localeName == 'ar' ? 'اللغات' : 'Languages';
  String get introducedYearLabel =>
      localeName == 'ar' ? 'سنة التقديم' : 'Introduced';
}
