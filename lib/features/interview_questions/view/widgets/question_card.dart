import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loopsbase/core/services/routes.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/models/interview_question.dart';
import '../../../../shared/widgets/bookmark_button.dart';
import '../../controller/cubit/questions_cubit.dart';
import '../question_details_page.dart';
import '../../../../shared/widgets/difficulty_chip.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({required this.question, super.key});
  final InterviewQuestion question;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colorScheme;

    final content = question.getLocalizedContent(l10n.localeName);

    return Card(
      child: InkWell(
        // borderRadius: .circular(16),
        onTap: () {
          Navigator.pushNamed(
            context,
            Routes.questionDetails,
            arguments: QuestionDetailsScreenArguments(question: question),
          );
        },
        child: Padding(
          padding: const .all(16),
          child: Column(
            crossAxisAlignment: .start,
            spacing: 10,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                crossAxisAlignment: .start,
                children: [
                  Expanded(
                    child: Row(
                      spacing: 5,
                      children: [
                        DifficultyChip(question.difficulty),
                        Flexible(
                          child: Text(
                            <String>[
                              question.type.label(l10n),
                              ...question.categories.map((c) => c.label(l10n)),
                            ].join(" • "),
                            maxLines: 1,
                            overflow: .ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              color: colors.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  BlocSelector<QuestionsCubit, QuestionsState, bool>(
                    selector: (state) {
                      return state.bookmarkedQuestions.contains(question.id);
                    },
                    builder: (context, selected) {
                      return BookmarkIconButton(
                        isActive: selected,
                        onPressed: () {
                          context.read<QuestionsCubit>().toggleBookmark(
                            question.id,
                          );
                        },
                        animated: true,
                      );
                    },
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: .end,
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: content.question.safeBidi(),
                        children: [
                          TextSpan(
                            text: "\n${question.id}",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: .normal,
                              color: colors.secondary,
                            ),
                          ),
                        ],
                      ),
                      style: const TextStyle(fontSize: 16, fontWeight: .w600),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Icon(Icons.chevron_right, color: colors.onSurfaceVariant),
                ],
              ),
              // ChipTheme(
              //   data: ChipThemeData(
              //     padding: .zero,
              //     labelPadding: const .symmetric(horizontal: 10),
              //     shape: RoundedRectangleBorder(borderRadius: .circular(5)),
              //     color: WidgetStatePropertyAll(colors.surfaceContainerLow),
              //     side: .none,
              //   ),
              //   child: Wrap(
              //     spacing: 4,
              //     runSpacing: 4,
              //     children: [
              //       ...?question.tags
              //           ?.take(3)
              //           .map(
              //             (tag) => Chip(
              //               visualDensity: .compact,
              //               label: Text(
              //                 tag,
              //                 style: TextStyle(
              //                   fontSize: 12,
              //                   color: colors.onSurface,
              //                 ),
              //               ),
              //             ),
              //           ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
