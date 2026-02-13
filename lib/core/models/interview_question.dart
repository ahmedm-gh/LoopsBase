/// Interview question model for the Flutter interview questions feature.
library;

import 'package:equatable/equatable.dart';
import 'package:loopsbase/core/models/code_block.dart';
import 'package:loopsbase/core/models/content.dart';
import 'package:loopsbase/core/models/localized_text.dart';

import '../enums/enums.dart';

/// Represents a single interview question with all its content
class InterviewQuestion with EquatableMixin {
  const InterviewQuestion({
    required this.id,
    required this.difficulty,
    required this.categories,
    required this.type,
    required this.tags,
    required this.content,
    this.examples,
    this.cons,
    this.pros,
    this.whenToUse,
  });

  final String id;
  final DifficultyLevel difficulty;
  final List<QuestionCategory> categories;
  final QuestionType type;
  final List<String>? tags;
  final LocalizedValue<QuestionContent> content;
  final List<StrCodeBlock>? examples;

  final LocalizedValue<List<String>>? pros;
  final LocalizedValue<List<String>>? cons;

  final LocalizedValue<List<Content>>? whenToUse;

  /// Get the localized content based on the current locale
  QuestionContent getLocalizedContent(String languageCode) {
    return languageCode == "ar" ? content.ar : content.en;
  }

  /// Get the localized pros based on the current locale
  List<String>? getLocalizedPros(String languageCode) {
    return languageCode == "ar" ? pros?.ar : pros?.en;
  }

  /// Get the localized cons based on the current locale
  List<String>? getLocalizedCons(String languageCode) {
    return languageCode == "ar" ? cons?.ar : cons?.en;
  }

  /// Get the localized when to use based on the current locale
  List<Content>? getLocalizedWhenToUse(String languageCode) {
    return languageCode == "ar" ? whenToUse?.ar : whenToUse?.en;
  }

  @override
  List<Object?> get props => [
    id,
    difficulty,
    categories,
    type,
    tags,
    content,
    examples,
    pros,
    cons,
    whenToUse,
  ];
}

/// Content for a specific language
class QuestionContent with EquatableMixin {
  const QuestionContent({
    required this.question,
    required this.answer,
    this.notes,
    this.bestUse,
  });

  final String question;
  final List<Content> answer;
  final List<String>? notes;
  final String? bestUse;

  @override
  List<Object?> get props => [question, answer, notes, bestUse];
}
