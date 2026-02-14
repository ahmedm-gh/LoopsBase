import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:loopsbase/core/enums/enums.dart';

import 'content.dart';
import 'localized_text.dart';

@immutable
class ProgrammingTerm with EquatableMixin {
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
  final LocS title;

  /// Main explanation (Quick explanation)
  final LocV<List<Content>> quickOverview; // description (previously)

  /// Additional deep technical notes
  final LocV<List<Content>> details;

  /// Additional deep technical notes
  final LocV<List<Content>>? notes;

  /// When this term is best used
  final LocV<List<Content>>? bestUse;

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
  final Era? era;

  /// Usage popularity
  final PopularityTier? popularityTier;

  /// Historical reference
  final int? introducedYear;

  @override
  List<Object?> get props => [
    id,
    title,
    quickOverview,
    details,
    type,
    category,
    notes,
    bestUse,
    languages,
    relatedTerms,
    aliases,
    tags,
    era,
    popularityTier,
    introducedYear,
  ];
}
