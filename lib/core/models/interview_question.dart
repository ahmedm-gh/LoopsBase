/// Interview question model for the Flutter interview questions feature.
library;

import 'package:tuts/core/enums/difficulty_level.dart';
import 'package:tuts/core/models/code_block.dart';
import 'package:tuts/core/models/content.dart';

/// Represents a single interview question with all its content
class InterviewQuestion {
  final String id;
  final DifficultyLevel difficulty;
  final String category;
  final String type;
  final List<String>? tags;
  final QuestionContent contentEn, contentAr;
  final List<StrCodeBlock>? examples;
  final List<String>? _prosEn, _prosAr;
  final List<String>? _consEn, _consAr;

  const InterviewQuestion({
    required this.id,
    required this.difficulty,
    required this.category,
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
  final String question;
  final List<Content> answer;
  final List<String>? notes;
  final String? bestUse;

  const QuestionContent({
    required this.question,
    required this.answer,
    this.notes,
    this.bestUse,
  });
}

/// A section of the answer
class AnswerSection {
  final String? title;
  final String content;
  final String? codeExample;

  const AnswerSection({this.title, required this.content, this.codeExample});
}

/// Question category enum
enum QuestionCategory {
  basic("Basic", "أساسي"),
  oop("OOP", "البرمجة الكائنية"),
  solid("SOLID", "مبادئ SOLID"),
  designPatterns("Design Patterns", "أنماط التصميم"),
  stateManagement("State Management", "إدارة الحالة"),
  performance("Performance", "الأداء"),
  testing("Testing", "الاختبار"),
  architecture("Architecture", "البنية"),
  networking("Networking", "الشبكات"),
  database("Database", "قواعد البيانات"),
  animations("Animations", "الرسوم المتحركة"),
  security("Security", "الأمان"),
  deployment("Deployment", "النشر"),
  modernFeatures("Modern Features", "الميزات الحديثة"),
  nativePlatform("Native Platform", "المنصة الأصلية"),
  dataStructures("Data Structures", "هياكل البيانات"),
  algorithms("Algorithms", "الخوارزميات");

  final String nameEn;
  final String nameAr;

  const QuestionCategory(this.nameEn, this.nameAr);

  String getLocalizedName(String languageCode) {
    return languageCode == 'ar' ? nameAr : nameEn;
  }
}
