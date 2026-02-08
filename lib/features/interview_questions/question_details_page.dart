import 'package:flutter/material.dart';
import 'package:tuts/core/extensions.dart';
import 'package:tuts/core/models/interview_question.dart';
import 'package:tuts/shared/widgets/q_answer.dart';
import 'package:tuts/shared/widgets/app_chip.dart';
import 'package:tuts/shared/widgets/code_block.dart';
import 'package:tuts/shared/widgets/small_titled_list.dart';

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
            if (content.example != null && content.example!.isNotEmpty) ...[
              Text(
                l10n.codeExample,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: .w600,
                  color: colors.onSurface,
                ),
              ),
              if (content.example case final example? when example.isNotEmpty)
                CodeBlockViewer(code: example, codeQuality: .normal),
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
            if (question.pros.isNotEmpty) ...[
              SmallTitledList.advantages(
                items: question.pros.map((p) => Text(p)).toList(),
              ),
            ],

            // Cons
            if (question.cons.isNotEmpty) ...[
              SmallTitledList.disadvantages(
                items: question.cons.map((c) => Text(c)).toList(),
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
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: question.tags
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
