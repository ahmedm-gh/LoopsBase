import "package:flutter/material.dart";
import "package:tuts/core/extensions.dart";
import "package:tuts/core/refactoring_data.dart";
import "package:tuts/l10n/app_localizations.dart";
import "package:tuts/shared/app_widgets.dart";

class RefactoringPage extends StatelessWidget {
  const RefactoringPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.refactoring)),
      body: ListView(
        padding: const .all(16),
        children: [
          _RefactoringCategory(
            title: l10n.composingMethods,
            description: l10n.composingMethodsDesc,
            techniques: const [
              "extractMethod",
              "inlineMethod",
              "extractVariable",
            ],
          ),
          const SizedBox(height: 32),
          _RefactoringCategory(
            title: l10n.movingFeatures,
            description: l10n.movingFeaturesDesc,
            techniques: const ["moveMethod", "moveField", "extractClass"],
          ),
          const SizedBox(height: 32),
          _RefactoringCategory(
            title: l10n.organizingData,
            description: l10n.organizingDataDesc,
            techniques: const [
              "selfEncapsulateField",
              "replaceDataValueWithObject",
            ],
          ),
        ],
      ),
    );
  }
}

class _RefactoringCategory extends StatelessWidget {
  final String title;
  final String description;
  final List<String> techniques;

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
      crossAxisAlignment: .start,
      children: [
        Text(
          title,
          style: textTheme.headlineSmall?.copyWith(
            fontWeight: .bold,
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
        ...techniques.map((t) => _TechniqueTile(techKey: t)),
      ],
    );
  }
}

class _TechniqueTile extends StatelessWidget {
  final String techKey;
  const _TechniqueTile({required this.techKey});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final name = _getTechName(l10n, techKey);

    return Card(
      margin: const .only(bottom: 8),
      child: ListTile(
        title: Text(name),
        leading: const Icon(
          Icons.auto_fix_normal_rounded,
          size: 20,
          color: Colors.orange,
        ),
        onTap: () {
          _showRefactoringDialog(context, l10n, name);
        },
      ),
    );
  }

  void _showRefactoringDialog(
    BuildContext context,
    AppLocalizations l10n,
    String title,
  ) {
    final content = RefactoringData.getContent(techKey);
    final before = content["before"] as String;
    final after = content["after"] as String;

    showDialog(
      context: context,
      builder: (context) => AppDialog(
        title: Text(title),
        content: SizedBox(
          width: .maxFinite,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: .min,
              crossAxisAlignment: .start,
              children: [
                Text(
                  l10n.refactoringTip,
                  textDirection: BidiUtil.getDirection(l10n.refactoringTip),
                ),
                const SizedBox(height: 16),
                Text(
                  "Before",
                  style: TextStyle(fontWeight: .bold, color: Colors.red[700]),
                ),
                CodeBlock(code: before, codeQuality: .bad),
                const SizedBox(height: 16),
                Text(
                  "After",
                  style: TextStyle(fontWeight: .bold, color: Colors.green[700]),
                ),
                CodeBlock(code: after),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.close),
          ),
        ],
      ),
    );
  }

  String _getTechName(AppLocalizations l10n, String key) {
    return switch (key) {
      "extractMethod" => l10n.extractMethod,
      "inlineMethod" => l10n.inlineMethod,
      "extractVariable" => l10n.extractVariable,
      "moveMethod" => l10n.moveMethod,
      "moveField" => l10n.moveField,
      "extractClass" => l10n.extractClass,
      "selfEncapsulateField" => l10n.selfEncapsulateField,
      "replaceDataValueWithObject" => l10n.replaceDataValueWithObject,
      _ => key,
    };
  }
}
