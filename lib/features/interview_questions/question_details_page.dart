import 'package:flutter/material.dart';
import 'package:tuts/core/extensions.dart';
import 'package:tuts/core/models/interview_question.dart';
import 'package:tuts/shared/widgets/app_chip.dart';
import 'package:tuts/shared/widgets/q_answer.dart';
import 'package:tuts/shared/widgets/small_titled_list.dart';

import '../../shared/widgets/code_block.dart';

class QuestionDetailsPage extends StatelessWidget {
  final InterviewQuestion question;

  const QuestionDetailsPage({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    final langCode = context.l10n.localeName;
    final content = question.getLocalizedContent(langCode);
    final colors = context.colorScheme;
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.interviewQuestions),
        actions: [
          Padding(
            padding: const .symmetric(horizontal: 10),
            child: DifficultyChip(difficultyLevel: question.difficulty),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const .all(16),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 16,
          children: [
            // Question title
            Text(
              content.question,
              style: const TextStyle(fontSize: 20, fontWeight: .bold),
            ),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colors.surfaceContainerLow,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: colors.outlineVariant.withValues(alpha: 0.5),
                ),
              ),
              child: Column(
                crossAxisAlignment: .stretch,
                spacing: 10,
                children: [
                  Text(
                    l10n.answer,
                    style: const TextStyle(fontSize: 20, fontWeight: .bold),
                  ),
                  ...content.answer.map(QuestionAnswerViewer.new),
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
                items: notes.length < 2
                    ? null
                    : notes.map((note) => Text(note)).toList(),
              ),
            ],

            // Pros
            if (question.getLocalizedPros(langCode) case final pros?
                when pros.isNotEmpty) ...[
              SmallTitledList.advantages(
                items: pros.map((p) => Text(p)).toList(),
              ),
            ],

            // Cons
            if (question.getLocalizedCons(langCode) case final cons?
                when cons.isNotEmpty) ...[
              SmallTitledList.disadvantages(
                items: cons.map((c) => Text(c)).toList(),
              ),
            ],

            // Notes
            if (content.bestUse case final use? when use.isNotEmpty) ...[
              SmallTitledList.whenToUse(
                title: Text(l10n.whenToUse),
                content: Text(use),
              ),
            ],

            // Tags
            if (question.tags case final tags? when tags.isNotEmpty)
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: tags
                    .map(
                      (t) => Chip(
                        label: Text(t),
                        backgroundColor: colors.surfaceContainerHighest,
                      ),
                    )
                    .toList(),
              ),
          ],
        ),
      ),
    );
  }
}
