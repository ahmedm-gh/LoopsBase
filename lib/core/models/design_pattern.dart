import 'package:tuts/core/models/code_block.dart';

class DesignPattern {
  const DesignPattern({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.content,
  });
  final String id;
  final String title;
  final String description;
  final String type; // Creational, Structural, Behavioral
  final DesignPatternContent content;
}

class DesignPatternContent {
  const DesignPatternContent({
    this.badExample,
    this.goodExample,
    this.notes,
    this.pros,
    this.cons,
    this.whenToUse,
    this.bestUse,
    this.references,
  });

  final StrCodeBlock? badExample;
  final StrCodeBlock? goodExample;
  final List<String>? notes;
  final List<String>? pros;
  final List<String>? cons;
  final List<String>? whenToUse;
  final List<String>? bestUse;
  final List<String>? references;
}
