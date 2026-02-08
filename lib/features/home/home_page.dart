import "package:flutter/material.dart";
import "package:tuts/core/app_notifiers.dart";
import "package:tuts/core/extensions.dart";
import "package:tuts/features/design_patterns/design_patterns_page.dart";
import "package:tuts/features/interview_questions/interview_questions_page.dart";
import "package:tuts/features/refactoring/refactoring_page.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.translate_rounded),
            onPressed: AppNotifiers.toggleLocale,
            tooltip: l10n.language,
          ),
          ValueListenableBuilder(
            valueListenable: AppNotifiers.appNotifier,
            builder: (context, appValues, _) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: IconButton(
                  key: ValueKey(appValues.brightness),
                  icon: Icon(
                    appValues.brightness == .dark
                        ? Icons.light_mode_rounded
                        : Icons.dark_mode_rounded,
                  ),
                  onPressed: AppNotifiers.toggleTheme,
                  tooltip: appValues.brightness == .dark
                      ? l10n.lightMode
                      : l10n.darkMode,
                ),
              );
            },
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const .all(24),
          child: Column(
            crossAxisAlignment: .stretch,
            mainAxisAlignment: .center,
            spacing: 20,
            children: [
              HomeMenuCard(
                title: l10n.designPatterns,
                icon: Icons.architecture_rounded,
                color: colors.primary,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const DesignPatternsPage()),
                ),
              ),
              HomeMenuCard(
                title: l10n.refactoring,
                icon: Icons.auto_fix_high_rounded,
                color: colors.tertiary,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const RefactoringPage()),
                ),
              ),
              HomeMenuCard(
                title: l10n.interviewQuestions,
                icon: Icons.question_mark_rounded,
                color: colors.secondary,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const InterviewQuestionsPage(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeMenuCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const HomeMenuCard({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: .zero,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: context.colorScheme.outlineVariant),
        borderRadius: .circular(20),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: .circular(20),
        child: Padding(
          padding: const .all(17.5),
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Icon(icon, size: 48, color: color),
              const SizedBox(height: 16),
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: .bold, color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
