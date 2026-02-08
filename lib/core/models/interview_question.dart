/// Interview question model for the Flutter interview questions feature.
library;

import 'package:tuts/core/enums/difficulty_level.dart';
import 'package:tuts/core/models/question_answer.dart';

/// Represents a single interview question with all its content
class InterviewQuestion {
  final String id;
  final DifficultyLevel difficulty;
  final String category;
  final String type;
  final List<String> tags;
  final QuestionContent contentEn, contentAr;
  final List<String> pros;
  final List<String> cons;

  const InterviewQuestion({
    required this.id,
    required this.difficulty,
    required this.category,
    required this.type,
    required this.tags,
    required this.contentEn,
    required this.contentAr,
    this.pros = const [],
    this.cons = const [],
  });

  /// Get the localized content based on the current locale
  QuestionContent getLocalizedContent(String languageCode) {
    return languageCode == 'ar' ? contentAr : contentEn;
  }
}

/// Content for a specific language
class QuestionContent {
  final String question;
  final List<QuestionAnswer> answer;
  final String? example;
  final List<String>? notes;
  final String? bestUse;

  const QuestionContent({
    required this.question,
    required this.answer,
    this.example,
    this.notes,
    this.bestUse,
  });

  /// Parse code examples from the answer or example field
  List<String> get codeExamples {
    final examples = <String>[];

    // Extract code from example field
    if (example != null && example!.isNotEmpty) {
      examples.add(example!);
    }

    return examples;
  }
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
