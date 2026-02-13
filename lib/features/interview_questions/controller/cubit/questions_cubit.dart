import 'package:flutter/widgets.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:loopsbase/data/interview_questions.dart';
import 'package:loopsbase/shared/methods/to_value.dart' show toValue;

import '../../../../core/enums/difficulty_level.dart';
import '../../../../core/models/interview_question.dart';

part 'questions_state.dart';

class QuestionsCubit extends HydratedCubit<QuestionsState> {
  QuestionsCubit()
    : super(
        const QuestionsState(bookmarkedQuestions: {}, questions: questionsData),
      );

  final searchController = TextEditingController();

  void filterQuestions({
    ValueGetter<String?>? query,
    ValueGetter<DifficultyLevel?>? difficulty,
    ValueGetter<bool>? onlyBookmarked,
  }) {
    // Determine the target values for filtering.
    // If a getter is provided, use its value (even if null).
    // If not provided (null), preserve the current state.
    final String targetQuery = query != null
        ? (query() ?? '')
        : (state.query ?? '');
    final DifficultyLevel? targetDifficulty = difficulty != null
        ? difficulty()
        : state.difficulty;
    final bool targetOnlyBookmarked = onlyBookmarked != null
        ? onlyBookmarked()
        : state.onlyBookmarked;

    // Always filter starting from the complete dataset (questionsData).
    final filtered = questionsData.where((question) {
      final matchesQuery =
          targetQuery.isEmpty ||
          (question.content.en.question + question.content.ar.question)
              .toLowerCase()
              .contains(targetQuery.toLowerCase());

      final matchesDifficulty =
          targetDifficulty == null || question.difficulty == targetDifficulty;

      final matchesOnlyBookmarked =
          !targetOnlyBookmarked ||
          state.bookmarkedQuestions.contains(question.id);

      return matchesQuery && matchesDifficulty && matchesOnlyBookmarked;
    }).toList();

    emit(
      state.copyWith(
        questions: filtered,
        query: () => targetQuery,
        difficulty: () => targetDifficulty,
        onlyBookmarked: () => targetOnlyBookmarked,
      ),
    );
  }

  void bookmarkQuestion(String id) {
    emit(
      state.copyWith(bookmarkedQuestions: {...state.bookmarkedQuestions, id}),
    );
  }

  void unbookmarkQuestion(String id) {
    emit(
      state.copyWith(
        bookmarkedQuestions: {...state.bookmarkedQuestions}..remove(id),
      ),
    );
  }

  void toggleBookmark(String id) {
    if (state.bookmarkedQuestions.contains(id)) {
      unbookmarkQuestion(id);
    } else {
      bookmarkQuestion(id);
    }
  }

  void toggleOnlyBookmarked() {
    filterQuestions(onlyBookmarked: () => !state.onlyBookmarked);
  }

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }

  @override
  QuestionsState? fromJson(Map<String, dynamic> json) {
    return QuestionsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(QuestionsState state) {
    return state.toJson();
  }
}
