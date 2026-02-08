import "package:flutter/material.dart";
import "package:tuts/core/extensions.dart";
import "package:tuts/core/repositories/design_patterns_repository.dart";
import "package:tuts/shared/app_widgets.dart";

class PatternDetailsPage extends StatelessWidget {
  final String patternKey;
  final String patternName;

  const PatternDetailsPage({
    super.key,
    required this.patternKey,
    required this.patternName,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = context.textTheme;
    final pattern = DesignPatternsRepository.getPattern(context, patternKey);

    return Scaffold(
      appBar: AppBar(title: Text(patternName)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              l10n.details,
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              pattern.description,
              textDirection: BidiUtil.getDirection(pattern.description),
            ),
            const SizedBox(height: 16),

            // Bad Example
            if (pattern.content.badExample != null) ...[
              Text(
                l10n.badExample,
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              if (pattern.content.badExample case final code?)
                CodeBlockViewer.fromStrCodeBlock(code),
              const SizedBox(height: 16),
            ],

            // Good Example
            if (pattern.content.goodExample != null) ...[
              Text(
                l10n.goodExample,
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              if (pattern.content.goodExample case final code?)
                CodeBlockViewer.fromStrCodeBlock(code),
              const SizedBox(height: 16),
            ],

            if (pattern.content.note != null) ...[
              NotesWidget(note: pattern.content.note!),
              const SizedBox(height: 16),
            ],

            const Divider(height: 1, thickness: 1),
            const SizedBox(height: 16),

            if (pattern.content.whenToUse.isNotEmpty) ...[
              SmallTitledList.whenToUse(
                items: pattern.content.whenToUse.map((e) => Text(e)).toList(),
              ),
              const SizedBox(height: 16),
            ],

            if (pattern.content.pros.isNotEmpty) ...[
              SmallTitledList.advantages(
                items: pattern.content.pros.map((e) => Text(e)).toList(),
              ),
              const SizedBox(height: 16),
            ],

            if (pattern.content.cons.isNotEmpty) ...[
              SmallTitledList.disadvantages(
                items: pattern.content.cons.map((e) => Text(e)).toList(),
              ),
              const SizedBox(height: 16),
            ],

            if (pattern.content.bestUse.isNotEmpty) ...[
              SmallTitledList.bestFor(
                items: pattern.content.bestUse.map((e) => Text(e)).toList(),
              ),
              const SizedBox(height: 16),
            ],

            if (pattern.content.references.isNotEmpty)
              ReferenceWidget(urls: pattern.content.references),
          ],
        ),
      ),
    );
  }
}
