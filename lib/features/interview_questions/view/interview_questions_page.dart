import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuts/core/enums/difficulty_level.dart';
import 'package:tuts/core/extensions/extensions.dart';
import 'package:tuts/core/models/interview_question.dart';
import 'package:tuts/features/interview_questions/controller/cubit/questions_cubit.dart';
import 'package:tuts/shared/app_widgets.dart';
import 'package:tuts/shared/design_layouts.dart';

import 'widgets/question_card.dart';

class InterviewQuestionsScreen extends StatelessWidget {
  const InterviewQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colorScheme;

    final cubit = context.read<QuestionsCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.interviewQuestions),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: .stretch,
        children: [
          // Search bar
          Padding(
            padding: const .only(right: 16, left: 16, bottom: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: cubit.searchController,
                        decoration: InputDecoration(
                          hintText: l10n.search,
                          suffixIcon: const Icon(Icons.search_rounded),
                        ),
                        onChanged: (query) =>
                            cubit.filterQuestions(query: () => query),
                      ),
                    ),
                    const SizedBox(width: 10),
                    BlocSelector<QuestionsCubit, QuestionsState, bool>(
                      selector: (state) {
                        return state.onlyBookmarked;
                      },
                      builder: (context, onlyBookmarked) {
                        return BookmarkIconButton(
                          tooltip: l10n.onlyBookmarked,
                          onPressed: cubit.toggleOnlyBookmarked,
                          isActive: onlyBookmarked,
                          animated: true,
                        );
                      },
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // Filter chips
                SizedBox(
                  width: .infinity,
                  child: SingleChildScrollView(
                    scrollDirection: .horizontal,
                    clipBehavior: .none,
                    child:
                        BlocSelector<
                          QuestionsCubit,
                          QuestionsState,
                          DifficultyLevel?
                        >(
                          selector: (state) => state.difficulty,
                          builder: (context, state) {
                            return Row(
                              spacing: 10,
                              children: [
                                AppFilterChip(
                                  label: l10n.allLevels,
                                  selected: state == null,
                                  onSelected: () {
                                    cubit.filterQuestions(
                                      query: () => cubit.searchController.text,
                                      difficulty: () => null,
                                    );
                                  },
                                  animated: true,
                                  color: colors.primary,
                                ),
                                ...DifficultyLevel.values.map(
                                  (level) => AppFilterChip(
                                    label: level.label(l10n),
                                    selected: state == level,
                                    color: level.color,
                                    onSelected: () {
                                      cubit.filterQuestions(
                                        difficulty: () => level,
                                      );
                                    },
                                    animated: true,
                                  ),
                                ),
                                // AppFilterChip(
                                //   label: l10n.onlyBookmarked,
                                //   selected: state.onlyBookmarked,
                                //   onSelected: cubit.toggleOnlyBookmarked,
                                //   animated: true,
                                //   color: colors.primary,
                                // ),
                              ],
                            );
                          },
                        ),
                  ),
                ),
              ],
            ),
          ),

          const LiteDivider(),

          // Questions list
          Expanded(
            child: BlocSelector<QuestionsCubit, QuestionsState, bool>(
              selector: (state) {
                return state.questions.isEmpty;
              },
              builder: (context, isEmpty) {
                return isEmpty
                    ? Center(child: Text(l10n.noResults))
                    : buildQuestionsList(colors);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildQuestionsList(ColorScheme colors) {
    return CardTheme(
      elevation: 0,
      color: colors.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        borderRadius: DL.inListCardBorderRadius,
        side: BorderSide(color: colors.outlineVariant.withValues(alpha: 0.35)),
      ),
      child:
          BlocSelector<QuestionsCubit, QuestionsState, List<InterviewQuestion>>(
            selector: (state) => state.questions,
            builder: (context, questions) {
              log("questions: ${questions.length}");
              return ListView.separated(
                padding: DL.listPadding,
                itemCount: questions.length,
                itemBuilder: (_, i) {
                  return QuestionCard(question: questions[i]);
                },
                separatorBuilder: (_, i) {
                  return const SizedBox(height: DL.listSeparatorHeight);
                },
              );
            },
          ),
    );
  }
}
