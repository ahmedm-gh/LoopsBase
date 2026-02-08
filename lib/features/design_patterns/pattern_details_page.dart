import "package:flutter/material.dart";
import "package:tuts/core/extensions.dart";
import "package:tuts/core/repositories/design_patterns_repository.dart";
import "package:tuts/shared/app_widgets.dart";

class PatternDetailsPage extends StatelessWidget {
  const PatternDetailsPage({
    required this.patternKey,
    required this.patternName,
    super.key,
  });
  final String patternKey;
  final String patternName;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = context.textTheme;
    final pattern = DesignPatternsRepository.getPattern(context, patternKey);
    final content = pattern.content;

    return Scaffold(
      appBar: AppBar(title: Text(patternName)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: .stretch,
          spacing: 15,
          children: [
            Text(
              l10n.details,
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              pattern.description,
              textDirection: BidiUtil.getDirection(pattern.description),
            ),

            // Bad Example
            if (content.badExample != null) ...[
              Text(
                l10n.badExample,
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (content.badExample case final code?)
                CodeBlockViewer.fromStrCodeBlock(code),
            ],

            // Good Example
            if (content.goodExample != null) ...[
              Text(
                l10n.goodExample,
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (content.goodExample case final code?)
                CodeBlockViewer.fromStrCodeBlock(code),
            ],

            if (content.notes case final notes? when notes.isNotEmpty)
              SmallTitledList.notes(
                content: notes.length == 1 ? Text(notes.first) : null,
                items: notes.length > 1 ? notes.map(Text.new).toList() : null,
              ),

            if (content.whenToUse case final whenToUse?
                when whenToUse.isNotEmpty)
              SmallTitledList.whenToUse(
                items: whenToUse.map(Text.new).toList(),
              ),

            if (content.pros case final pros? when pros.isNotEmpty)
              SmallTitledList.advantages(items: pros.map(Text.new).toList()),

            if (content.cons case final cons? when cons.isNotEmpty)
              SmallTitledList.disadvantages(items: cons.map(Text.new).toList()),

            if (content.bestUse case final bestUse? when bestUse.isNotEmpty)
              SmallTitledList.bestFor(items: bestUse.map(Text.new).toList()),

            if (content.references case final refs? when refs.isNotEmpty)
              ReferenceWidget(urls: refs),
          ],
        ),
      ),
    );
  }
}
