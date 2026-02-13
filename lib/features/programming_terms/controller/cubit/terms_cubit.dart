import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:loopsbase/data/programming_terms.dart';
import 'package:loopsbase/shared/methods/to_value.dart';

import '../../../../core/enums/term_enums.dart';
import '../../../../core/models/term.dart';

part 'terms_state.dart';

class TermsCubit extends HydratedCubit<TermsState> {
  TermsCubit() : super(const TermsState(bookmarkedTerms: {}, terms: allTerms));

  final searchController = TextEditingController();

  void filterTerms({
    ValueGetter<String?>? query,
    ValueGetter<TermCategory?>? category,
    ValueGetter<TermType?>? type,
    ValueGetter<bool>? onlyBookmarked,
  }) {
    final String targetQuery = query != null
        ? (query() ?? '')
        : (state.query ?? '');

    final TermCategory? targetCategory = category != null
        ? category()
        : state.category;

    final TermType? targetType = type != null ? type() : state.type;

    final bool targetOnlyBookmarked = onlyBookmarked != null
        ? onlyBookmarked()
        : state.onlyBookmarked;

    final filtered = Map.fromEntries(
      allTerms.entries.where((entry) {
        final term = entry.value;
        final matchesQuery =
            targetQuery.isEmpty ||
            (term.title.en + term.title.ar + term.aliases.join(' '))
                .toLowerCase()
                .contains(targetQuery.toLowerCase());

        final matchesCategory =
            targetCategory == null || term.category == targetCategory;

        final matchesType = targetType == null || term.type == targetType;

        final matchesOnlyBookmarked =
            !targetOnlyBookmarked || state.bookmarkedTerms.contains(term.id);

        return matchesQuery &&
            matchesCategory &&
            matchesType &&
            matchesOnlyBookmarked;
      }),
    );

    emit(
      state.copyWith(
        terms: filtered,
        query: () => targetQuery,
        category: () => targetCategory,
        type: () => targetType,
        onlyBookmarked: () => targetOnlyBookmarked,
      ),
    );
  }

  void bookmarkTerm(String id) {
    emit(state.copyWith(bookmarkedTerms: {...state.bookmarkedTerms, id}));
  }

  void unbookmarkTerm(String id) {
    emit(
      state.copyWith(bookmarkedTerms: {...state.bookmarkedTerms}..remove(id)),
    );
  }

  void toggleBookmark(String id) {
    if (state.bookmarkedTerms.contains(id)) {
      unbookmarkTerm(id);
    } else {
      bookmarkTerm(id);
    }
  }

  void toggleOnlyBookmarked() {
    filterTerms(onlyBookmarked: () => !state.onlyBookmarked);
  }

  @override
  Future<void> close() {
    searchController.dispose();
    return super.close();
  }

  @override
  TermsState? fromJson(Map<String, dynamic> json) {
    return TermsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(TermsState state) {
    return state.toJson();
  }
}
