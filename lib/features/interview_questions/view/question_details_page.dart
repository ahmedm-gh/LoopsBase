import 'package:flutter/material.dart';
import 'package:loopsbase/core/extensions/extensions.dart';
import 'package:loopsbase/core/models/interview_question.dart';

import '../../../shared/app_widgets.dart';
import '../../../shared/design_layouts.dart';
import '../../../shared/widgets/difficulty_chip.dart';

class QuestionDetailsScreenArguments {
  const QuestionDetailsScreenArguments({required this.question});
  final InterviewQuestion question;
}

// TODO: ADD .safeBidi()
class QuestionDetailsScreen extends StatelessWidget {
  const QuestionDetailsScreen({required this.arguments, super.key});
  final QuestionDetailsScreenArguments? arguments;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final question = arguments?.question;

    if (question == null) {
      return Material(child: Center(child: Text(l10n.questionNotFound)));
    }

    final langCode = l10n.localeName;
    final content = question.getLocalizedContent(langCode);
    final colors = context.colorScheme;
    final textStyles = context.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.interviewQuestions),
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const .symmetric(horizontal: 10),
            child: DifficultyChip(question.difficulty),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: DL.pagePadding,
        child: Column(
          crossAxisAlignment: .stretch,
          spacing: DL.listSeparatorHeight,
          children: [
            // Question id, type and categories
            Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  <String>[
                    question.type.label(l10n),
                    ...question.categories.map((c) => c.label(l10n)),
                  ].join(" • "),
                  style: textStyles.bodySmall?.copyWith(
                    color: colors.onSurfaceVariant,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: IdText(id: question.id),
                ),
              ],
            ),

            // Question title
            Text(
              content.question.safeBidi(),
              style: const TextStyle(fontSize: 20, fontWeight: .bold),
            ),

            // Question answer
            Container(
              padding: DL.inListCardPadding,
              decoration: BoxDecoration(
                color: colors.surfaceContainerLow,
                borderRadius: DL.inListCardBorderRadius,
                border: .all(
                  color: colors.outlineVariant.withValues(alpha: 0.5),
                ),
              ),
              child: Column(
                crossAxisAlignment: .stretch,
                spacing: DL.compactListSeparatorHeight,
                children: [
                  Text(
                    l10n.answer,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: .bold,
                      color: colors.primary,
                    ),
                  ),
                  ...content.answer.map(ContentViewer.new),
                ],
              ),
            ),

            // Code example
            if (question.examples case final examples?
                when examples.isNotEmpty) ...[
              Text(
                l10n.codeExample,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: .w600,
                  color: colors.onSurface,
                ),
              ),
              ...examples.map(CodeBlockViewer.fromStrCodeBlock),
            ],

            // Notes
            if (content.notes case final notes? when notes.isNotEmpty) ...[
              SmallTitledList.notes(
                title: Text(l10n.notes),
                content: notes.length == 1 ? Text(notes.first) : null,
                items: notes.length < 2 ? null : notes.map(Text.new).toList(),
              ),
            ],

            // Pros
            if (question.getLocalizedPros(langCode) case final pros?
                when pros.isNotEmpty) ...[
              SmallTitledList.advantages(items: pros.map(Text.new).toList()),
            ],

            // Cons
            if (question.getLocalizedCons(langCode) case final cons?
                when cons.isNotEmpty) ...[
              SmallTitledList.disadvantages(items: cons.map(Text.new).toList()),
            ],

            // // Notes
            // if (content.bestUse case final use? when use.isNotEmpty) ...[
            //   SmallTitledList.whenToUse(
            //     title: Text(l10n.whenToUse),
            //     content: Text(use),
            //   ),
            // ],

            // Notes
            if (question.getLocalizedWhenToUse(langCode) case final use?
                when use.isNotEmpty) ...[
              ...use.map(ContentViewer.new),
            ],

            const LiteDivider(),

            // Tags
            if (question.tags case final tags? when tags.isNotEmpty) ...[
              Tags(tags: tags),
            ],
          ],
        ),
      ),
    );
  }
}
