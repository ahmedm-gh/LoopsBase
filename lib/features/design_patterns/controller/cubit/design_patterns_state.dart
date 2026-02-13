import 'package:equatable/equatable.dart';
import 'package:loopsbase/shared/methods/to_value.dart';

class DesignPatternsState extends Equatable {
  const DesignPatternsState({
    this.bookmarkedIds = const [],
    this.hiddenCategories = const {},
  });

  factory DesignPatternsState.fromMap(Map<String, dynamic> map) {
    return DesignPatternsState(
      bookmarkedIds: List<String>.from(toValue(map["bookmarkedIds"], const [])),
      hiddenCategories: Set<String>.from(
        toValue(map["hiddenCategories"], const []),
      ),
    );
  }
  final List<String> bookmarkedIds;
  final Set<String> hiddenCategories;

  DesignPatternsState copyWith({
    List<String>? bookmarkedIds,
    Set<String>? hiddenCategories,
  }) {
    return DesignPatternsState(
      bookmarkedIds: bookmarkedIds ?? this.bookmarkedIds,
      hiddenCategories: hiddenCategories ?? this.hiddenCategories,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "bookmarkedIds": bookmarkedIds,
      "hiddenCategories": hiddenCategories.toList(),
    };
  }

  @override
  List<Object> get props => [bookmarkedIds, hiddenCategories];
}
