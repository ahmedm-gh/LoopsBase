/// Interview question model for the Flutter interview questions feature.
library;

import 'package:tuts/core/models/code_block.dart';
import 'package:tuts/core/models/content.dart';

import '../enums/enums.dart';

/// Represents a single interview question with all its content
class InterviewQuestion {
  const InterviewQuestion({
    required this.id,
    required this.difficulty,
    required this.categories,
    required this.type,
    required this.tags,
    required this.contentEn,
    required this.contentAr,
    this.examples,
    List<String>? prosEn,
    List<String>? consEn,
    List<String>? prosAr,
    List<String>? consAr,
  }) : _consAr = consAr,
       _prosAr = prosAr,
       _consEn = consEn,
       _prosEn = prosEn;

  final String id;
  final DifficultyLevel difficulty;
  final List<QuestionCategory> categories;
  final QuestionType type;
  final List<String>? tags;
  final QuestionContent contentEn, contentAr;
  final List<StrCodeBlock>? examples;
  final List<String>? _prosEn, _prosAr;
  final List<String>? _consEn, _consAr;

  /// Get the localized content based on the current locale
  QuestionContent getLocalizedContent(String languageCode) {
    return languageCode == "ar" ? contentAr : contentEn;
  }

  /// Get the localized pros based on the current locale
  List<String>? getLocalizedPros(String languageCode) {
    return languageCode == "ar" ? _prosAr : _prosEn;
  }

  /// Get the localized cons based on the current locale
  List<String>? getLocalizedCons(String languageCode) {
    return languageCode == "ar" ? _consAr : _consEn;
  }
}

/// Content for a specific language
class QuestionContent {
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
}
