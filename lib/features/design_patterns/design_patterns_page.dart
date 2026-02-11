import "package:flutter/material.dart";
import "package:tuts/core/extensions/extensions.dart";
import "package:tuts/core/services/routes.dart";
import "package:tuts/data/design_patterns.dart";

import "pattern_details_page.dart";

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
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Material(
          type: .transparency,
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const .all(16),
                sliver: SliverList.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: .stretch,
                      spacing: 5,
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
                              borderRadius: BorderRadius.circular(12),
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
                    return const SizedBox(height: 16);
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
