import 'package:tuts/core/models/code_block.dart';

class DesignPattern {
  final String id;
  final String title;
  final String description;
  final String type; // Creational, Structural, Behavioral
  final DesignPatternContent content;

  const DesignPattern({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.content,
  });
}

class DesignPatternContent {
  final StrCodeBlock? badExample;
  final StrCodeBlock? goodExample;
  final String? note;
  final List<String> pros;
  final List<String> cons;
  final List<String> whenToUse;
  final List<String> bestUse;
  final List<String> references;

  const DesignPatternContent({
    this.badExample,
    this.goodExample,
    this.note,
    this.pros = const [],
    this.cons = const [],
    this.whenToUse = const [],
    this.bestUse = const [],
    this.references = const [],
  });
}
