import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:loopsbase/core/models/code_block.dart';
import 'package:loopsbase/core/models/localized_text.dart';
import 'package:loopsbase/l10n/app_localizations.dart';

import 'content.dart';

enum PatternGroup {
  design,
  architectural,
  stateManagement,
  ui,
  projectStructure;

  String label(AppLocalizations l10n) => switch (this) {
    design => l10n.designPattern,
    architectural => l10n.architecturalPattern,
    stateManagement => l10n.stateManagementPattern,
    ui => l10n.uiPattern,
    projectStructure => l10n.projectStructurePattern,
  };
}

enum PatternType {
  creational,
  structural,
  behavioral;

  String label(AppLocalizations l10n) => switch (this) {
    creational => l10n.creationalPattern,
    structural => l10n.structuralPattern,
    behavioral => l10n.behavioralPattern,
  };
}

enum PatternCategory {
  // Gang of Four patterns
  GoF,

  // Non-GoF patterns
  nonGoF,

  // Practical patterns
  practical,

  // Modern patterns
  modern;

  String label(AppLocalizations l10n) => switch (this) {
    GoF => l10n.pGoF,
    nonGoF => l10n.pNonGoF,
    practical => l10n.pPractical,
    modern => l10n.pModern,
  };
}

enum PatternLevel {
  beginner,
  intermediate,
  advanced;

  String label(AppLocalizations l10n) => switch (this) {
    beginner => l10n.patternBeginnerLevel,
    intermediate => l10n.patternIntermediateLevel,
    advanced => l10n.patternAdvancedLevel,
  };
}

class DesignPatternsCategory with EquatableMixin {
  const DesignPatternsCategory({
    required this.id,
    required this.title,
    required this.description,
    required this.isClassic,
    required this.patterns,
    required this.keyCharacteristics,
    required this.icon,
    required this.color,
    this.commonUseCases,
    this.realWorldExamples,
    this.relatedCategories = const [],
    this.learningPath,
  });

  final String id;
  final LocalizedString title;
  final LocalizedValue<List<Content>> description;
  final bool isClassic;
  final List<String> patterns;

  /// Key defining characteristics of this pattern category
  final LocalizedValue<List<String>> keyCharacteristics;

  /// Icon representing this category
  final IconData icon;

  /// Primary color for this category
  final Color color;

  /// Common scenarios where patterns from this category are useful
  final LocalizedValue<List<String>>? commonUseCases;

  /// Real-world examples of applications/systems using these patterns
  final LocalizedValue<List<String>>? realWorldExamples;

  /// IDs of related pattern categories
  final List<String> relatedCategories;

  /// Suggested order for learning patterns in this category
  final List<String>? learningPath;

  int get patternCount => patterns.length;

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    isClassic,
    patterns,
    keyCharacteristics,
    icon,
    color,
    commonUseCases,
    realWorldExamples,
    relatedCategories,
    learningPath,
  ];
}

class DesignPattern with EquatableMixin {
  const DesignPattern({
    required this.id,
    required this.title,
    required this.description,
    required this.group,
    required this.category,
    required this.level,
    required this.content,
    this.type,
    this.examples,
    this.pros,
    this.cons,
    this.whenToUse,
    this.commonMistakes,
    this.relatedPatterns,
    this.oftenConfusedWith,
  });

  /// Stable unique identifier (used for routing, bookmarks, search)
  final String id;

  final LocalizedString title;
  final LocalizedString description;

  /// High-level classification
  final PatternGroup group;

  /// Design-pattern specific type (null for non-design patterns)
  final PatternType? type;

  /// GoF / Modern / Practical classification
  final PatternCategory category;

  /// Learning difficulty
  final PatternLevel level;

  /// Main educational content
  final LocalizedValue<List<Content>> content;

  /// Code examples (localized for comments/explanations)
  final LocalizedValue<List<StrCodeBlock>>? examples;

  /// Advantages
  final LocalizedValue<List<String>>? pros;

  /// Disadvantages
  final LocalizedValue<List<String>>? cons;

  /// When this pattern should be applied
  final LocalizedValue<List<Content>>? whenToUse;

  /// Common pitfalls and anti-pattern usage
  final LocalizedValue<List<String>>? commonMistakes;

  /// Related patterns (by id)
  final List<String>? relatedPatterns;

  /// Patterns that are often confused with this one (by id)
  final List<String>? oftenConfusedWith;

  bool get isClassic => category == .GoF;

  String getLocalizedTitle(String langCode) {
    return langCode == 'ar' ? title.ar : title.en;
  }

  String getLocalizedDescription(String langCode) {
    return langCode == 'ar' ? description.ar : description.en;
  }

  List<Content> getLocalizedContent(String langCode) {
    return langCode == 'ar' ? content.ar : content.en;
  }

  List<StrCodeBlock>? getLocalizedExamples(String langCode) {
    return langCode == 'ar' ? examples?.ar : examples?.en;
  }

  List<String>? getLocalizedPros(String langCode) {
    return langCode == 'ar' ? pros?.ar : pros?.en;
  }

  List<String>? getLocalizedCons(String langCode) {
    return langCode == 'ar' ? cons?.ar : cons?.en;
  }

  List<Content>? getLocalizedWhenToUse(String langCode) {
    return langCode == 'ar' ? whenToUse?.ar : whenToUse?.en;
  }

  List<String>? getLocalizedCommonMistakes(String langCode) {
    return langCode == 'ar' ? commonMistakes?.ar : commonMistakes?.en;
  }

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    group,
    type,
    category,
    level,
    content,
    examples,
    pros,
    cons,
    whenToUse,
    commonMistakes,
    relatedPatterns,
    oftenConfusedWith,
  ];
}
