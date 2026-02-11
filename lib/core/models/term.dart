import 'package:flutter/foundation.dart';

import 'content.dart';
import 'localized_text.dart';

@immutable
class ProgrammingTerm {
  const ProgrammingTerm({
    required this.id,
    required this.title,
    required this.quickOverview,
    required this.details,
    required this.type,
    required this.category,
    this.notes,
    this.bestUse,
    this.languages = const [],
    this.relatedTerms = const [],
    this.aliases = const [],
    this.tags = const [],
    this.era,
    this.popularityTier,
    this.introducedYear,
  });

  /// Unique stable identifier (ex: "oop_polymorphism")
  final String id;

  /// Localized title
  final LocalizedString title;

  /// Main explanation (Quick explanation)
  final LocalizedValue<List<Content>> quickOverview; // description (previously)

  /// Additional deep technical notes
  final LocalizedValue<List<Content>> details;

  /// Additional deep technical notes
  final LocalizedValue<List<Content>>? notes;

  /// When this term is best used
  final LocalizedValue<List<Content>>? bestUse;

  /// What kind of term this is
  final TermType type;

  /// Domain classification
  final TermCategory category;

  /// Strongly related languages/frameworks
  final List<ProgrammingLanguage> languages;

  /// Cross references (store IDs)
  final List<String> relatedTerms;

  /// Alternative names
  final List<String> aliases;

  /// Search optimization
  final List<String> tags;

  /// Classic / Modern / Emerging
  final TermEra? era;

  /// Usage popularity
  final PopularityTier? popularityTier;

  /// Historical reference
  final int? introducedYear;
}

enum TermType {
  concept,
  paradigm,
  pattern,
  principle,
  syntax,
  keyword,
  feature,
  architecture,
  dataStructure,
  algorithm,
  tool,
  framework,
  library,
  runtime,
  protocol,
  methodology,
  designSystem,
}

enum TermCategory {
  fundamentals,
  oop,
  functionalProgramming,
  proceduralProgramming,
  reactiveProgramming,
  concurrency,
  memoryManagement,
  networking,
  security,
  databases,
  uiUx,
  frontend,
  backend,
  mobileDevelopment,
  webDevelopment,
  devOps,
  testing,
  architecture,
  stateManagement,
  performance,
  compilerInternals,
  versionControl,
  cloud,
  artificialIntelligence,
}

enum ProgrammingLanguage {
  // Priority
  dart("Dart"),
  flutter("Flutter"),

  // Common modern languages
  java("Java"),
  kotlin("Kotlin"),
  swift("Swift"),
  objectiveC("Objective-C"),
  javascript("JavaScript"),
  typescript("TypeScript"),
  python("Python"),
  c("C"),
  cpp("C++"),
  csharp("C#"),
  go("Go"),
  rust("Rust"),
  php("PHP"),
  ruby("Ruby"),
  scala("Scala"),
  haskell("Haskell"),
  sql("SQL"),

  // Markup / Styling
  html("HTML"),
  css("CSS");

  const ProgrammingLanguage(this.label);
  final String label;
}

enum TermEra { classic, modern, emerging }

enum PopularityTier { veryHigh, high, medium, low, niche }
