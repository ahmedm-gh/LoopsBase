import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuts/features/programming_terms/controller/cubit/terms_cubit.dart';
import 'package:tuts/l10n/app_localizations.dart';
import 'package:tuts/shared/app_widgets.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/models/term.dart';
import '../../../../core/services/routes.dart';
import '../../../../shared/design_layouts.dart';
import '../term_details.dart';

class TermCard extends StatelessWidget {
  const TermCard({required this.term, super.key});

  final ProgrammingTerm term;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colorScheme;

    return Card(
      child: InkWell(
        borderRadius: DL.inListCardBorderRadius,
        onTap: () {
          Navigator.pushNamed(
            context,
            Routes.programmingTermDetails,
            arguments: ProgrammingTermDetailsScreenArguments(term: term),
          );
        },
        child: Padding(
          padding: DL.inListCardPadding,
          child: Column(
            crossAxisAlignment: .start,
            spacing: DL.compactSeparatorHeight,
            children: [
              Row(
                crossAxisAlignment: .start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: .start,
                      spacing: 7.5,
                      children: [
                        // buildTitleWithLeading(l10n: l10n, colors: colors),
                        buildTitle(l10n: l10n, colors: colors),
                        Wrap(
                          spacing: 5,
                          runSpacing: 5,
                          crossAxisAlignment: .center,
                          children: [
                            TermChip(
                              color: colors.primary,
                              child: Text(
                                <String>[
                                  term.type.label(l10n),
                                  if (l10n.localeName != "en")
                                    term.type.enLabel().ltr,
                                ].join(" • "),
                              ),
                            ),
                            Text(
                              <String>[
                                ?term.era?.label(l10n),
                                term.category.label(l10n),
                              ].join(r" \ "),
                              maxLines: 1,
                              overflow: .ellipsis,
                              style: TextStyle(
                                fontSize: 12,
                                color: colors.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  BlocSelector<TermsCubit, TermsState, bool>(
                    selector: (state) {
                      return state.bookmarkedTerms.contains(term.id);
                    },
                    builder: (context, selected) {
                      return BookmarkIconButton.compact(
                        isActive: selected,
                        onPressed: () {
                          context.read<TermsCubit>().toggleBookmark(term.id);
                        },
                        animated: true,
                      );
                    },
                  ),
                ],
              ),

              if (term.quickOverview.call(l10n.localeName) case final qo
                  when qo.isNotEmpty)
                for (final content in qo) ContentViewer(content),

              if (term.popularityTier case final pt?)
                Row(
                  children: [
                    FilledIcon(
                      icon: Icon(
                        Icons.trending_up_rounded,
                        size: 12,
                        color: pt.color.pairedColor,
                      ),
                      background: pt.color,
                      padding: const EdgeInsets.all(2.5),
                    ),
                    const SizedBox(width: 7.5),
                    Flexible(
                      child: Text(
                        "${l10n.popularityTierLabel}: ${pt.label(l10n)}",
                        maxLines: 1,
                        overflow: .ellipsis,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTitleWithLeading({
    required AppLocalizations l10n,
    required ColorScheme colors,
  }) {
    return Row(
      children: [
        FilledIcon(
          icon: const Icon(Icons.chevron_right_rounded),
          background: colors.primary,
          padding: const EdgeInsets.all(2.5),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: buildTitle(l10n: l10n, colors: colors),
        ),
      ],
    );
  }

  Text buildTitle({
    required AppLocalizations l10n,
    required ColorScheme colors,
  }) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: term.title(l10n.localeName)),
          if (l10n.localeName != "en") ...[
            TextSpan(
              text: " • ${term.title("en").ltr}",
              style: TextStyle(
                fontSize: 14,
                fontWeight: .normal,
                color: colors.onSurfaceVariant,
              ),
            ),
          ],
        ],
      ),
      style: const TextStyle(fontSize: 16, fontWeight: .bold),
    );
  }
}
