part of 'terms_cubit.dart';

final class TermsState with EquatableMixin {
  const TermsState({
    required this.bookmarkedTerms,
    required this.terms,
    this.query,
    this.category,
    this.type,
    this.onlyBookmarked = false,
  });

  factory TermsState.fromJson(Map<String, dynamic> json) {
    return TermsState(
      bookmarkedTerms: toValue<Iterable<String>>(
        json["bookmarkedTerms"],
        const {},
      ).toSet(),
      terms: allTerms,
    );
  }

  final Set<String> bookmarkedTerms;
  final Map<String, ProgrammingTerm> terms;
  final String? query;
  final TermCategory? category;
  final TermType? type;
  final bool onlyBookmarked;

  TermsState copyWith({
    Set<String>? bookmarkedTerms,
    Map<String, ProgrammingTerm>? terms,
    ValueGetter<String?>? query,
    ValueGetter<TermCategory?>? category,
    ValueGetter<TermType?>? type,
    ValueGetter<bool>? onlyBookmarked,
  }) {
    return TermsState(
      bookmarkedTerms: bookmarkedTerms ?? this.bookmarkedTerms,
      terms: terms ?? this.terms,
      query: query != null ? query() : this.query,
      category: category != null ? category() : this.category,
      type: type != null ? type() : this.type,
      onlyBookmarked: onlyBookmarked != null
          ? onlyBookmarked()
          : this.onlyBookmarked,
    );
  }

  Map<String, dynamic> toJson() {
    return {"bookmarkedTerms": bookmarkedTerms.toList()};
  }

  @override
  List<Object?> get props => [
    bookmarkedTerms,
    terms,
    query,
    category,
    type,
    onlyBookmarked,
  ];
}
