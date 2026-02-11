import 'package:flutter/material.dart';
import 'package:tuts/core/services/routes.dart';
import 'package:tuts/features/programming_terms/view/term_details.dart';
import 'package:tuts/features/programming_terms/view/widgets/term_card.dart';

import '../../../core/extensions/extensions.dart';
import '../../../data/programming_terms.dart';
import '../../../shared/design_layouts.dart';

class ProgrammingTermsScreen extends StatelessWidget {
  const ProgrammingTermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(l10n.programmingTerms),
      ),
      body: CardTheme(
        elevation: 0,
        color: colors.surfaceContainerLow,
        shape: RoundedRectangleBorder(
          borderRadius: DL.inListCardBorderRadius,
          side: BorderSide(
            color: colors.outlineVariant.withValues(alpha: 0.35),
          ),
        ),

        child: ListView.separated(
          padding: DL.listPadding,
          itemBuilder: (context, index) {
            final term = terms[index];
            return TermCard(term: term);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: DL.listSeparatorHeight);
          },
          itemCount: terms.length,
        ),
      ),
    );
  }
}
