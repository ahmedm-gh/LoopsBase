import 'package:flutter/widgets.dart';
import 'package:tuts/core/code_examples.dart';
import 'package:tuts/core/models/code_block.dart';
import 'package:tuts/core/models/refactoring_technique.dart';
import 'package:tuts/l10n/app_localizations.dart';

class RefactoringRepository {
  static List<RefactoringTechnique> getTechniquesByCategory(
    BuildContext context,
    String category,
  ) {
    if (category == 'composing') {
      return [
        getTechnique(context, 'extractMethod'),
        getTechnique(context, 'inlineMethod'),
        getTechnique(context, 'extractVariable'),
      ];
    } else if (category == 'moving') {
      return [
        getTechnique(context, 'moveMethod'),
        getTechnique(context, 'moveField'),
        getTechnique(context, 'extractClass'),
      ];
    } else if (category == 'organizing') {
      return [
        getTechnique(context, 'selfEncapsulateField'),
        getTechnique(context, 'replaceDataValueWithObject'),
      ];
    }
    return [];
  }

  static RefactoringTechnique getTechnique(BuildContext context, String id) {
    final l10n = AppLocalizations.of(context)!;

    // Basic mapping for titles (can be improved with specific l10n keys)
    final title = _getTitle(l10n, id);

    return RefactoringTechnique(
      id: id,
      title: title,
      description: _getDescription(l10n, id),
      category: _getCategory(id),
      problem: _getProblem(l10n, id),
      solution: _getSolution(l10n, id),
      simpleBefore: _getSimpleBefore(id),
      simpleAfter: _getSimpleAfter(id),
      complexBefore: _getComplexBefore(id),
      complexAfter: _getComplexAfter(id),
    );
  }

  static String _getTitle(AppLocalizations l10n, String id) {
    return switch (id) {
      "extractMethod" => l10n.extractMethod,
      "inlineMethod" => l10n.inlineMethod,
      "extractVariable" => l10n.extractVariable,
      "moveMethod" => l10n.moveMethod,
      "moveField" => l10n.moveField,
      "extractClass" => l10n.extractClass,
      "selfEncapsulateField" => l10n.selfEncapsulateField,
      "replaceDataValueWithObject" => l10n.replaceDataValueWithObject,
      _ => id,
    };
  }

  static String _getCategory(String id) {
    if (['extractMethod', 'inlineMethod', 'extractVariable'].contains(id)) {
      return 'Composing Methods';
    }
    if (['moveMethod', 'moveField', 'extractClass'].contains(id)) {
      return 'Moving Features';
    }
    return 'Organizing Data';
  }

  static String _getDescription(AppLocalizations l10n, String id) {
    // Providing more detailed descriptions as requested
    return switch (id) {
      "extractMethod" =>
        "Move a code fragment that can be grouped together into a separate new method and replace the old code with a call to the method. This improves readability and reduces code duplication.",
      "inlineMethod" =>
        "When a method body is more obvious than the method itself, replace calls to the method with the method's content and delete the method.",
      "extractVariable" =>
        "You have an expression that is hard to understand. Place the result of the expression or its parts into separate variables that are self-explanatory.",
      "moveMethod" =>
        "A method is used more in another class than in its own class. Create a new method in the class that uses it the most, and move code from the old method to there.",
      "moveField" =>
        "A field is used more in another class than in its own class. Create a field in the new class and redirect all users of the old field to it.",
      "extractClass" =>
        "When one class does the work of two, create a new class and move the relevant fields and methods into it.",
      "selfEncapsulateField" =>
        "You are accessing a field directly, but the coupling to the field is becoming awkward. Create getter and setter methods for the field and use them to access the field.",
      "replaceDataValueWithObject" =>
        "A class (or struct) has a data item. The data needs its own behavior or additional data. Turn the data item into an object.",
      _ => "Description coming soon...",
    };
  }

  static String _getProblem(AppLocalizations l10n, String id) {
    return switch (id) {
      "extractMethod" =>
        "The more code in a single method, the harder it is to understand what keeps happening.",
      "inlineMethod" => "A method's body is just as clear as its name.",
      "extractVariable" =>
        "Complext expressions are hard to read and understand.",
      _ => "Code is hard to maintain or understand.",
    };
  }

  static String _getSolution(AppLocalizations l10n, String id) {
    return switch (id) {
      "extractMethod" =>
        "Isolate independent parts of the code and move them to separate methods.",
      "inlineMethod" =>
        "Replace calls to the method with the content of the method itself.",
      "extractVariable" =>
        "Move the result of the expression to a separate variable with a clear name.",
      _ => "Refactor to reuse code and improve clarity.",
    };
  }

  // Reuse existing 'bad' examples as 'simple before' or simple variants
  static StrCodeBlock _getSimpleBefore(String id) {
    return switch (id) {
      "extractMethod" => CodeExamples.extractMethodBefore,
      "inlineMethod" => CodeExamples.inlineMethodBefore,
      "extractVariable" => CodeExamples.extractVariableBefore,
      "moveMethod" => CodeExamples.moveMethodBefore,
      "moveField" => CodeExamples.moveFieldBefore,
      "extractClass" => CodeExamples.extractClassBefore,
      "selfEncapsulateField" => CodeExamples.selfEncapsulateFieldBefore,
      "replaceDataValueWithObject" =>
        CodeExamples.replaceDataValueWithObjectBefore,
      _ => .empty,
    };
  }

  static StrCodeBlock _getSimpleAfter(String id) {
    return switch (id) {
      "extractMethod" => CodeExamples.extractMethodAfter,
      "inlineMethod" => CodeExamples.inlineMethodAfter,
      "extractVariable" => CodeExamples.extractVariableAfter,
      "moveMethod" => CodeExamples.moveMethodAfter,
      "moveField" => CodeExamples.moveFieldAfter,
      "extractClass" => CodeExamples.extractClassAfter,
      "selfEncapsulateField" => CodeExamples.selfEncapsulateFieldAfter,
      "replaceDataValueWithObject" =>
        CodeExamples.replaceDataValueWithObjectAfter,
      _ => .empty,
    };
  }

  // New Complex Examples
  static StrCodeBlock? _getComplexBefore(String id) {
    if (id == 'extractMethod') {
      return StrCodeBlock(r"""
void printOwing() {
  var outstanding = 0.0;
  
  // Print banner
  print("*****************************");
  print("****** Customer Owes ******");
  print("*****************************");

  // Calculate outstanding
  for (var order in _orders) {
    outstanding += order.amount;
  }

  // Print details
  print("name: $_name");
  print("amount: $outstanding");
}
""");
    }
    return null;
  }

  static StrCodeBlock? _getComplexAfter(String id) {
    if (id == 'extractMethod') {
      return StrCodeBlock(r"""
void printOwing() {
  printBanner();
  final outstanding = getOutstanding();
  printDetails(outstanding);
}

void printBanner() {
  print("*****************************");
  print("****** Customer Owes ******");
  print("*****************************");
}

double getOutstanding() {
  var result = 0.0;
  for (var order in _orders) {
    result += order.amount;
  }
  return result;
}

void printDetails(double outstanding) {
  print("name: $_name");
  print("amount: $outstanding");
}
""");
    }
    return null;
  }
}
