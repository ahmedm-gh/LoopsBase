import "package:flutter/material.dart";
import "package:tuts/core/extensions/extensions.dart";
import "package:tuts/core/services/routes.dart";
import "package:tuts/data/design_patterns.dart";
import "package:tuts/shared/design_layouts.dart";

import "pattern_details_screen.dart";

class DesignPatternsScreen extends StatelessWidget {
  const DesignPatternsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.designPatterns)),
      body: ListTileTheme(
        tileColor: colors.surfaceContainer,
        style: .list,
        shape: const RoundedRectangleBorder(
          borderRadius: DL.inListCardBorderRadius,
        ),
        child: Material(
          type: .transparency,
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: DL.listPadding,
                sliver: SliverList.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: .stretch,
                      spacing: DL.compactSeparatorHeight,
                      children: [
                        ListTile(
                          title: Text(
                            designPatternCategories[index].title(
                              l10n.localeName,
                            ),
                          ),
                        ),
                        for (final patternStr
                            in designPatternCategories[index].patterns)
                          if (designPatterns[patternStr] case final pattern?)
                            InkWell(
                              borderRadius: DL.inListCardBorderRadius,
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  Routes.designPatternDetails,
                                  arguments: PatternDetailsScreenArguments(
                                    pattern: pattern,
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const .all(10),
                                child: Text(pattern.title(l10n.localeName)),
                              ),
                            ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: DL.listSeparatorHeight);
                  },
                  itemCount: designPatternCategories.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
