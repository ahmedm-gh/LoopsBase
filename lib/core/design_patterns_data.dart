import "package:tuts/core/code_examples.dart";

class DesignPatternData {
  static Map<String, dynamic> getCode(String key) {
    return switch (key) {
      // Creational
      "singleton" => {
        "bad": CodeExamples.singletonBad,
        "good": CodeExamples.singletonGood,
        "noteKey": "singletonNote",
        "refs": [
          "https://refactoring.guru/design-patterns/singleton",
          "https://dart.dev/guides/language/language-tour#factory-constructors",
        ],
      },
      "factoryMethod" => {
        "bad": CodeExamples.factoryMethodBad,
        "good": CodeExamples.factoryMethodGood,
        "noteKey": "factoryMethodNote",
        "refs": ["https://refactoring.guru/design-patterns/factory-method"],
      },
      "abstractFactory" => {
        "good": CodeExamples.abstractFactoryGood,
        "refs": ["https://refactoring.guru/design-patterns/abstract-factory"],
      },
      "builder" => {
        "bad": CodeExamples.builderBad,
        "good": CodeExamples.builderGood,
        "noteKey": "builderNote",
        "refs": ["https://refactoring.guru/design-patterns/builder"],
      },
      "prototype" => {
        "good": CodeExamples.prototypeGood,
        "refs": ["https://refactoring.guru/design-patterns/prototype"],
      },

      // Structural
      "adapter" => {
        "good": CodeExamples.adapterGood,
        "refs": ["https://refactoring.guru/design-patterns/adapter"],
      },
      "bridge" => {
        "good": CodeExamples.bridgeGood,
        "refs": ["https://refactoring.guru/design-patterns/bridge"],
      },
      "composite" => {
        "good": CodeExamples.compositeGood,
        "refs": ["https://refactoring.guru/design-patterns/composite"],
      },
      "decorator" => {
        "good": CodeExamples.decoratorGood,
        "refs": ["https://refactoring.guru/design-patterns/decorator"],
      },
      "facade" => {
        "good": CodeExamples.facadeGood,
        "refs": ["https://refactoring.guru/design-patterns/facade"],
      },
      "proxy" => {
        "good": CodeExamples.proxyGood,
        "refs": ["https://refactoring.guru/design-patterns/proxy"],
      },

      // Behavioral
      "chainOfResponsibility" => {
        "good": CodeExamples.chainOfResponsibilityGood,
        "refs": [
          "https://refactoring.guru/design-patterns/chain-of-responsibility",
        ],
      },
      "command" => {
        "good": CodeExamples.commandGood,
        "refs": ["https://refactoring.guru/design-patterns/command"],
      },
      "iterator" => {
        "good": CodeExamples.iteratorGood,
        "refs": ["https://refactoring.guru/design-patterns/iterator"],
      },
      "observer" => {
        "good": CodeExamples.observerGood,
        "refs": ["https://refactoring.guru/design-patterns/observer"],
      },
      "state" => {
        "good": CodeExamples.stateGood,
        "refs": ["https://refactoring.guru/design-patterns/state"],
      },
      "strategy" => {
        "good": CodeExamples.strategyGood,
        "refs": ["https://refactoring.guru/design-patterns/strategy"],
      },

      _ => {
        "bad": null,
        "good":
            "// Optimized implementation of $key using Dart best practices...\n// (Detailed example coming soon)",
        "noteKey": null,
        "refs": ["https://refactoring.guru/design-patterns"],
      },
    };
  }
}
