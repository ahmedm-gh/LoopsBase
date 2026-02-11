import 'package:flutter/material.dart';
import 'package:tuts/shared/app_widgets.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/models/term.dart';
import '../../../../core/services/routes.dart';
import '../../../../shared/design_layouts.dart';
import '../term_details.dart';

// required this.id,
// required this.title,
// required this.quickOverview,
// required this.details,
// required this.type,
// required this.category,
// this.notes,
// this.bestUse,
// this.languages = const [],
// this.relatedTerms = const [],
// this.aliases = const [],
// this.tags = const [],
// this.era,
// this.popularityTier,
// this.introducedYear,

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
                children: [
                  FilledIcon(
                    icon: Icons.chevron_right_rounded,
                    color: colors.primary,
                    padding: const .all(2.5),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: term.title(l10n.localeName)),
                          if (l10n.localeName != "en") ...[
                            // const TextSpan(text: " • "),
                            TextSpan(
                              text: " • \u2066${term.title("en")}\u2069",
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
                    ),
                  ),
                ],
              ),

              if (term.quickOverview.call(l10n.localeName) case final qo
                  when qo.isNotEmpty)
                for (final content in qo) ContentViewer(content),
            ],
          ),
        ),
      ),
    );
  }
}
