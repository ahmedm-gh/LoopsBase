import "package:flutter/material.dart";
import "package:loopsbase/core/extensions/extensions.dart";
import "package:loopsbase/core/services/routes.dart";
import "package:loopsbase/data/design_patterns.dart";
import "package:loopsbase/features/design_patterns/view/patterns_list.dart";
import "package:loopsbase/shared/design_layouts.dart";

import "../../../core/models/design_patterns.dart";
import "pattern_details_screen.dart";
import "widgets/pattern_cards_wrapper.dart";
import "widgets/pattern_category_card.dart";

void openPatternDetails(BuildContext context, DesignPattern pattern) {
  Navigator.pushNamed(
    context,
    Routes.designPatternDetails,
    arguments: PatternDetailsScreenArguments(pattern: pattern),
  );
}

class DesignPatternCategoriesScreen extends StatelessWidget {
  const DesignPatternCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(l10n.designPatterns),
      ),
      body: PatternCategoryCardWrapper(
        child: SingleChildScrollView(
          padding: DL.listPadding,
          child: Column(
            spacing: DL.listSeparatorHeight,
            crossAxisAlignment: .stretch,
            children: [
              for (final category in designPatternCategories)
                PatternCategoryCard(
                  category: category,
                  onTap: () => Navigator.pushNamed(
                    context,
                    Routes.designPatternListScreen,
                    arguments: PatternsListScreenArguments(category: category),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
