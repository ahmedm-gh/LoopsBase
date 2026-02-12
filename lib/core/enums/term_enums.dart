import 'package:tuts/l10n/app_localizations.dart';
import 'package:tuts/l10n/app_localizations_en.dart';

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
  designSystem;

  String label(AppLocalizations l10n) {
    return switch (this) {
      concept => l10n.termTypeConcept,
      paradigm => l10n.termTypeParadigm,
      pattern => l10n.termTypePattern,
      principle => l10n.termTypePrinciple,
      syntax => l10n.termTypeSyntax,
      keyword => l10n.termTypeKeyword,
      feature => l10n.termTypeFeature,
      architecture => l10n.termTypeArchitecture,
      dataStructure => l10n.termTypeDataStructure,
      algorithm => l10n.termTypeAlgorithm,
      tool => l10n.termTypeTool,
      framework => l10n.termTypeFramework,
      library => l10n.termTypeLibrary,
      runtime => l10n.termTypeRuntime,
      protocol => l10n.termTypeProtocol,
      methodology => l10n.termTypeMethodology,
      designSystem => l10n.termTypeDesignSystem,
    };
  }

  String enLabel() => label(AppLocalizationsEn());
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
  artificialIntelligence;

  String label(AppLocalizations l10n) {
    return switch (this) {
      fundamentals => l10n.termCategoryFundamentals,
      oop => l10n.termCategoryOOP,
      functionalProgramming => l10n.termCategoryFunctionalProgramming,
      proceduralProgramming => l10n.termCategoryProceduralProgramming,
      reactiveProgramming => l10n.termCategoryReactiveProgramming,
      concurrency => l10n.termCategoryConcurrency,
      memoryManagement => l10n.termCategoryMemoryManagement,
      networking => l10n.termCategoryNetworking,
      security => l10n.termCategorySecurity,
      databases => l10n.termCategoryDatabases,
      uiUx => l10n.termCategoryUiUx,
      frontend => l10n.termCategoryFrontend,
      backend => l10n.termCategoryBackend,
      mobileDevelopment => l10n.termCategoryMobileDevelopment,
      webDevelopment => l10n.termCategoryWebDevelopment,
      devOps => l10n.termCategoryDevOps,
      testing => l10n.termCategoryTesting,
      architecture => l10n.termCategoryArchitecture,
      stateManagement => l10n.termCategoryStateManagement,
      performance => l10n.termCategoryPerformance,
      compilerInternals => l10n.termCategoryCompilerInternals,
      versionControl => l10n.termCategoryVersionControl,
      cloud => l10n.termCategoryCloud,
      artificialIntelligence => l10n.termCategoryArtificialIntelligence,
    };
  }

  String enLabel() => label(AppLocalizationsEn());
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
