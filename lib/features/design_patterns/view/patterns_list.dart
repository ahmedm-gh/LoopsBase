import 'dart:math';

import 'package:flutter/material.dart';
import 'package:loopsbase/core/extensions/context_extensions.dart';
import 'package:loopsbase/core/models/design_patterns.dart';
import 'package:loopsbase/data/design_patterns.dart';
import 'package:loopsbase/features/design_patterns/view/widgets/pattern_cards_wrapper.dart';
import 'package:loopsbase/features/design_patterns/view/widgets/pattern_category_card.dart';
import 'package:loopsbase/shared/widgets/small_titled_list.dart';

import '../../../core/services/routes.dart';
import '../../../shared/design_layouts.dart';
import 'pattern_details_screen.dart';
import 'widgets/pattern_card.dart';

class PatternsListScreenArguments {
  const PatternsListScreenArguments({required this.category});

  final DesignPatternsCategory category;
}

class PatternsListScreen extends StatelessWidget {
  const PatternsListScreen({required this.arguments, super.key});

  final PatternsListScreenArguments? arguments;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final category = arguments?.category;
    final colors = context.colorScheme;
    final locale = context.l10n.localeName;
    final categoryColor = category?.color ?? colors.primary;

    final width =
        min(context.view.physicalSize.width, 500.0) -
        (DL.listPaddingValue + 50);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: switch (category?.title(l10n.localeName)) {
          final value? when value.isNotEmpty => Text(value),
          _ => null,
        },
      ),
      body: SingleChildScrollView(
        padding: DL.listPadding,
        child: Column(
          crossAxisAlignment: .stretch,
          spacing: DL.listSeparatorHeight,
          children: [
            if (category != null) ...[
              PatternCategoryCardWrapper(
                child: PatternCategoryCard(
                  category: category,
                  showMoreDetailsWidgets: false,
                  onTap: null,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: .horizontal,
                clipBehavior: .none,
                child: Row(
                  mainAxisSize: .min,
                  crossAxisAlignment: .start,
                  spacing: DL.listSeparatorHeight,
                  children: [
                    // Key Characteristics
                    if (category.keyCharacteristics(locale)
                        case final keys) ...[
                      SizedBox(
                        width: width,
                        child: SmallTitledList(
                          title: Text(l10n.keyCharacteristics),
                          icon: Icons.checklist_rounded,
                          color: categoryColor,
                          items: keys.map(Text.new).toList(),
                        ),
                      ),
                    ],

                    // Common Use Cases
                    if (category.commonUseCases case final cases?) ...[
                      SizedBox(
                        width: width,
                        child: SmallTitledList(
                          title: Text(l10n.commonUseCases),
                          icon: Icons.lightbulb_outline_rounded,
                          color: categoryColor,
                          items: cases(locale).map(Text.new).toList(),
                        ),
                      ),
                    ],

                    // Real World Examples
                    if (category.realWorldExamples case final examples?)
                      SizedBox(
                        width: width,
                        child: SmallTitledList(
                          icon: Icons.apps_rounded,
                          title: Text(l10n.realWorldExamples),
                          items: examples(locale).map(Text.new).toList(),
                          color: categoryColor,
                        ),
                      ),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(Icons.view_stream, color: categoryColor),
                  const SizedBox(width: 7.5),
                  Text(l10n.patterns, style: context.textTheme.titleMedium),
                ],
              ),
              PatternCardWrapper(
                child: Column(
                  spacing: DL.listSeparatorHeight,
                  children: [
                    for (final pattern in category.patterns)
                      if (designPatterns[pattern] case final pattern?)
                        DesignPatternCard(
                          pattern: pattern,
                          primaryColor: categoryColor,
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              Routes.designPatternDetails,
                              arguments: PatternDetailsScreenArguments(
                                pattern: pattern,
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
}
