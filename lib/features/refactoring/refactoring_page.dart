import "package:flutter/material.dart";
import "package:tuts/core/extensions.dart";
import "package:tuts/core/models/refactoring_technique.dart";
import "package:tuts/core/repositories/refactoring_repository.dart";
import "package:tuts/features/refactoring/refactoring_details_page.dart";

class RefactoringPage extends StatelessWidget {
  const RefactoringPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.refactoring)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _RefactoringCategory(
            title: l10n.composingMethods,
            description: l10n.composingMethodsDesc,
            techniques: RefactoringRepository.getTechniquesByCategory(
              context,
              'composing',
            ),
          ),
          const SizedBox(height: 32),
          _RefactoringCategory(
            title: l10n.movingFeatures,
            description: l10n.movingFeaturesDesc,
            techniques: RefactoringRepository.getTechniquesByCategory(
              context,
              'moving',
            ),
          ),
          const SizedBox(height: 32),
          _RefactoringCategory(
            title: l10n.organizingData,
            description: l10n.organizingDataDesc,
            techniques: RefactoringRepository.getTechniquesByCategory(
              context,
              'organizing',
            ),
          ),
        ],
      ),
    );
  }
}

class _RefactoringCategory extends StatelessWidget {
  final String title;
  final String description;
  final List<RefactoringTechnique> techniques;

  const _RefactoringCategory({
    required this.title,
    required this.description,
    required this.techniques,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final colors = context.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: colors.tertiary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          textDirection: BidiUtil.getDirection(description),
          style: textTheme.bodySmall,
        ),
        const SizedBox(height: 16),
        ...techniques.map((t) => _TechniqueTile(technique: t)),
      ],
    );
  }
}

class _TechniqueTile extends StatelessWidget {
  final RefactoringTechnique technique;
  const _TechniqueTile({required this.technique});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(technique.title),
        leading: const Icon(
          Icons.auto_fix_normal_rounded,
          size: 20,
          color: Colors.orange,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  RefactoringDetailsPage(techniqueId: technique.id),
            ),
          );
        },
      ),
    );
  }
}
