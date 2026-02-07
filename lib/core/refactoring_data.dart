import "package:tuts/core/code_examples.dart";

class RefactoringData {
  static Map<String, dynamic> getContent(String key) {
    return switch (key) {
      "extractMethod" => {
        "before": CodeExamples.extractMethodBefore,
        "after": CodeExamples.extractMethodAfter,
      },
      "inlineMethod" => {
        "before": CodeExamples.inlineMethodBefore,
        "after": CodeExamples.inlineMethodAfter,
      },
      "extractVariable" => {
        "before": CodeExamples.extractVariableBefore,
        "after": CodeExamples.extractVariableAfter,
      },
      "moveMethod" => {
        "before": CodeExamples.moveMethodBefore,
        "after": CodeExamples.moveMethodAfter,
      },
      "moveField" => {
        "before": CodeExamples.moveFieldBefore,
        "after": CodeExamples.moveFieldAfter,
      },
      "extractClass" => {
        "before": CodeExamples.extractClassBefore,
        "after": CodeExamples.extractClassAfter,
      },
      "selfEncapsulateField" => {
        "before": CodeExamples.selfEncapsulateFieldBefore,
        "after": CodeExamples.selfEncapsulateFieldAfter,
      },
      "replaceDataValueWithObject" => {
        "before": CodeExamples.replaceDataValueWithObjectBefore,
        "after": CodeExamples.replaceDataValueWithObjectAfter,
      },
      _ => {
        "before": "// Example coming soon...",
        "after": "// Example coming soon...",
      },
    };
  }
}
