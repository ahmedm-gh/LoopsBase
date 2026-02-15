import "package:flutter/material.dart";
import "package:loopsbase/core/extensions/extensions.dart";
import "package:loopsbase/core/services/routes.dart";

import "../../../shared/design_layouts.dart";
import "widgets/home_button.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colorScheme;
    final textTheme = context.textTheme;
    final isDark = context.isDark;

    return Material(
      child: CustomPaint(
        painter: CirclesPainter.custom(
          circles: [
            CustomCircle(
              offset: const FractionalOffset(0.95, 0.05),
              color: colors.primary.withValues(alpha: 0.0125),
              radius: 140,
            ),
            CustomCircle(
              offset: const FractionalOffset(0.1, 0.3),
              color: colors.primary.withValues(alpha: 0.0075),
              radius: 90,
            ),
            CustomCircle(
              offset: const FractionalOffset(0.8, 0.8),
              color: colors.primary.withValues(alpha: 0.0125),
              radius: 160,
            ),
          ],
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: DL.pagePadding,
            child: Column(
              spacing: DL.listSeparatorHeight,
              crossAxisAlignment: .stretch,
              children: [
                // Greeting header
                const _GreetingHeader(),

                // Featured card: Design Patterns
                FeaturedTopicCard(
                  title: l10n.designPatterns,
                  subtitle: l10n.designPatternsSubtitle,
                  icon: const Icon(Icons.architecture_rounded),
                  gradientColors: const [Color(0xFF6C63FF), Color(0xFF9F44D3)],
                  onTap: () => Navigator.pushNamed(
                    context,
                    Routes.designPatternCategoriesScreen,
                  ),
                ),

                // Section: Explore
                Text(
                  l10n.explore,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: .w700,
                    color: colors.onSurface,
                    letterSpacing: 0.2,
                  ),
                ),

                // 2-column grid of compact cards
                // Responsive grid of compact cards
                _ResponsiveGrid(
                  children: [
                    CompactTopicCard(
                      title: l10n.interviewQuestions,
                      subtitle: l10n.interviewQuestionsSubtitle,
                      icon: const Icon(Icons.question_mark_rounded),
                      accentColor: const Color(0xFF2DC653),
                      onTap: () =>
                          Navigator.pushNamed(context, Routes.questionList),
                    ),
                    CompactTopicCard(
                      title: l10n.programmingTerms,
                      subtitle: l10n.programmingTermsSubtitle,
                      icon: const Icon(Icons.format_quote_rounded),
                      accentColor: const Color(0xFF00B4D8),
                      onTap: () => Navigator.pushNamed(
                        context,
                        Routes.programmingTermsList,
                      ),
                    ),
                  ],
                ),

                // Section: Extra Topics
                Text.rich(
                  TextSpan(
                    text: l10n.extraTopics,
                    children: [
                      TextSpan(
                        text: " (${l10n.comingSoon})",
                        style: TextStyle(
                          fontWeight: .w300,
                          color: colors.onSurfaceVariant,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: .w700,
                    color: colors.onSurface,
                    letterSpacing: 0.2,
                  ),
                ),

                // 2-column grid of coming-soon cards
                // Responsive grid of coming-soon cards
                _ResponsiveGrid(
                  children: [
                    CompactTopicCard(
                      title: l10n.refactoring,
                      subtitle: l10n.refactoringSubtitle,
                      icon: const Icon(Icons.auto_fix_high_rounded),
                      accentColor: const Color(0xFFF77F00),
                      onTap: null,
                    ),
                    CompactTopicCard(
                      title: l10n.usefulPubPackages,
                      subtitle: l10n.usefulPubPackagesSubtitle,
                      icon: const Icon(Icons.extension_rounded),
                      accentColor: const Color(0xFFE63946),
                      onTap: null,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GreetingHeader extends StatelessWidget {
  const _GreetingHeader();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colorScheme;

    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          l10n.welcomeBack.toUpperCase(),
          style: TextStyle(
            fontSize: 12,
            color: colors.onSurfaceVariant,
            letterSpacing: 1.5,
            fontWeight: .w500,
          ),
        ),
        Text(
          l10n.appTitle,
          textDirection: .ltr,
          style: const TextStyle(fontSize: 26, fontWeight: .bold, height: 1),
        ),
      ],
    );
  }
}

class _ResponsiveGrid extends StatelessWidget {
  const _ResponsiveGrid({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Calculate column count based on available width (min 1)
        final int targetCount = (constraints.maxWidth / 250).floor();
        final int crossAxisCount = targetCount < 1 ? 1 : targetCount;

        final rows = <Widget>[];
        for (int i = 0; i < children.length; i += crossAxisCount) {
          final end = (i + crossAxisCount < children.length)
              ? i + crossAxisCount
              : children.length;
          final chunk = children.sublist(i, end);

          final rowChildren = <Widget>[];
          for (final child in chunk) {
            rowChildren.add(Expanded(child: child));
          }

          // Add spacers to maintain alignment in the last row
          final missing = crossAxisCount - chunk.length;
          for (int j = 0; j < missing; j++) {
            rowChildren.add(const Spacer());
          }

          rows.add(
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 14,
              children: rowChildren,
            ),
          );
        }

        return Column(spacing: 14, children: rows);
      },
    );
  }
}
