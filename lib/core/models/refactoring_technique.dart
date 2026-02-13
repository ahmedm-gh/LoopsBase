import 'package:equatable/equatable.dart';
import 'package:loopsbase/core/models/code_block.dart';

class RefactoringTechnique with EquatableMixin {
  const RefactoringTechnique({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.simpleBefore,
    required this.simpleAfter,
    required this.problem,
    required this.solution,
    this.complexBefore,
    this.complexAfter,
  });

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

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    category,
    simpleBefore,
    simpleAfter,
    complexBefore,
    complexAfter,
    problem,
    solution,
  ];
}
