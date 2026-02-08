import 'package:tuts/core/models/code_block.dart';

class RefactoringTechnique {
  final String id;
  final String title;
  final String description; // Detailed description
  final String category; // Organizing Data, Moving Features, etc.
  final StrCodeBlock simpleBefore;
  final StrCodeBlock simpleAfter;
  final StrCodeBlock? complexBefore;
  final StrCodeBlock? complexAfter;
  final String problem;
  final String solution;

  const RefactoringTechnique({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.simpleBefore,
    required this.simpleAfter,
    this.complexBefore,
    this.complexAfter,
    required this.problem,
    required this.solution,
  });
}
