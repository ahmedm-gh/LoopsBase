import 'package:flutter/widgets.dart';
import 'package:tuts/core/code_examples.dart';
import 'package:tuts/core/models/code_block.dart';
import 'package:tuts/core/models/design_pattern.dart';
import 'package:tuts/l10n/app_localizations.dart';

class DesignPatternsRepository {
  static DesignPattern getPattern(BuildContext context, String id) {
    final l10n = AppLocalizations.of(context)!;

    // Get basic localized info
    final title = _getTitle(l10n, id);
    final description = _getDescription(l10n, id);
    final type = _getType(id);

    // Get code and references
    final codeData = _getCodeData(id);

    // Get localized lists
    final pros = _getLocalizedList(l10n, id, 'Pros');
    final cons = _getLocalizedList(l10n, id, 'Cons');
    final whenToUse = _getLocalizedList(l10n, id, 'WhenToUse');
    final bestUse = _getLocalizedList(l10n, id, 'BestUse');

    final noteKey = codeData['noteKey'] as String?;
    final note = noteKey != null ? _getNote(l10n, noteKey) : null;

    return DesignPattern(
      id: id,
      title: title,
      description: description,
      type: type,
      content: DesignPatternContent(
        badExample: codeData['bad'] as StrCodeBlock?,
        goodExample: codeData['good'] as StrCodeBlock?,
        notes: [?note],
        pros: pros,
        cons: cons,
        whenToUse: whenToUse,
        bestUse: bestUse,
        references: List<String>.from(
          codeData['refs'] is Iterable
              ? codeData['refs'] as Iterable
              : const [],
        ),
      ),
    );
  }

  static String _getType(String id) {
    // Basic mapping based on known IDs
    const creational = {
      'singleton',
      'factoryMethod',
      'abstractFactory',
      'builder',
      'prototype',
    };
    const structural = {
      'adapter',
      'bridge',
      'composite',
      'decorator',
      'facade',
      'flyweight',
      'proxy',
    };

    if (creational.contains(id)) return 'Creational';
    if (structural.contains(id)) return 'Structural';
    return 'Behavioral';
  }

  static String _getTitle(AppLocalizations l10n, String id) {
    // This mapping assumes similar keys exist or falls back to capitalized ID
    // In a real app we might have specific keys for titles if they differ from IDs
    return id[0].toUpperCase() + id.substring(1);
  }

  static String _getDescription(AppLocalizations l10n, String id) {
    return switch (id) {
      "factoryMethod" => l10n.factoryMethodDesc,
      "abstractFactory" => l10n.abstractFactoryDesc,
      "builder" => l10n.builderDesc,
      "prototype" => l10n.prototypeDesc,
      "singleton" => l10n.singletonDesc,
      "adapter" => l10n.adapterDesc,
      "bridge" => l10n.bridgeDesc,
      "composite" => l10n.compositeDesc,
      "decorator" => l10n.decoratorDesc,
      "facade" => l10n.facadeDesc,
      "flyweight" => l10n.flyweightDesc,
      "proxy" => l10n.proxyDesc,
      "chainOfResponsibility" => l10n.chainOfResponsibilityDesc,
      "command" => l10n.commandDesc,
      "iterator" => l10n.iteratorDesc,
      "interpreter" => l10n.interpreterDesc,
      "mediator" => l10n.mediatorDesc,
      "memento" => l10n.mementoDesc,
      "observer" => l10n.observerDesc,
      "state" => l10n.stateDesc,
      "strategy" => l10n.strategyDesc,
      "templateMethod" => l10n.templateMethodDesc,
      "visitor" => l10n.visitorDesc,
      _ => l10n.seeMore,
    };
  }

  static String? _getNote(AppLocalizations l10n, String key) {
    return switch (key) {
      "singletonNote" => l10n.singletonNote,
      "factoryMethodNote" => l10n.factoryMethodNote,
      "builderNote" => l10n.builderNote,
      _ => null,
    };
  }

  static List<String> _getLocalizedList(
    AppLocalizations l10n,
    String id,
    String suffix,
  ) {
    final key = '$id$suffix';
    final text = switch (key) {
      "singletonPros" => l10n.singletonPros,
      "singletonCons" => l10n.singletonCons,
      "singletonWhenToUse" => l10n.singletonWhenToUse,
      "singletonBestUse" => l10n.singletonBestUse,
      // Factory Method
      "factoryMethodPros" => l10n.factoryMethodPros,
      "factoryMethodCons" => l10n.factoryMethodCons,
      "factoryMethodWhenToUse" => l10n.factoryMethodWhenToUse,
      "factoryMethodBestUse" => l10n.factoryMethodBestUse,
      // Abstract Factory
      "abstractFactoryPros" => l10n.abstractFactoryPros,
      "abstractFactoryCons" => l10n.abstractFactoryCons,
      "abstractFactoryWhenToUse" => l10n.abstractFactoryWhenToUse,
      "abstractFactoryBestUse" => l10n.abstractFactoryBestUse,
      // Builder
      "builderPros" => l10n.builderPros,
      "builderCons" => l10n.builderCons,
      "builderWhenToUse" => l10n.builderWhenToUse,
      "builderBestUse" => l10n.builderBestUse,
      // Prototype
      "prototypePros" => l10n.prototypePros,
      "prototypeCons" => l10n.prototypeCons,
      "prototypeWhenToUse" => l10n.prototypeWhenToUse,
      "prototypeBestUse" => l10n.prototypeBestUse,
      // Adapter
      "adapterPros" => l10n.adapterPros,
      "adapterCons" => l10n.adapterCons,
      "adapterWhenToUse" => l10n.adapterWhenToUse,
      "adapterBestUse" => l10n.adapterBestUse,
      // Bridge
      "bridgePros" => l10n.bridgePros,
      "bridgeCons" => l10n.bridgeCons,
      "bridgeWhenToUse" => l10n.bridgeWhenToUse,
      "bridgeBestUse" => l10n.bridgeBestUse,
      // Composite
      "compositePros" => l10n.compositePros,
      "compositeCons" => l10n.compositeCons,
      "compositeWhenToUse" => l10n.compositeWhenToUse,
      "compositeBestUse" => l10n.compositeBestUse,
      // Decorator
      "decoratorPros" => l10n.decoratorPros,
      "decoratorCons" => l10n.decoratorCons,
      "decoratorWhenToUse" => l10n.decoratorWhenToUse,
      "decoratorBestUse" => l10n.decoratorBestUse,
      // Facade
      "facadePros" => l10n.facadePros,
      "facadeCons" => l10n.facadeCons,
      "facadeWhenToUse" => l10n.facadeWhenToUse,
      "facadeBestUse" => l10n.facadeBestUse,
      // Proxy
      "proxyPros" => l10n.proxyPros,
      "proxyCons" => l10n.proxyCons,
      "proxyWhenToUse" => l10n.proxyWhenToUse,
      "proxyBestUse" => l10n.proxyBestUse,
      // Observer
      "observerPros" => l10n.observerPros,
      "observerCons" => l10n.observerCons,
      "observerWhenToUse" => l10n.observerWhenToUse,
      "observerBestUse" => l10n.observerBestUse,
      // Strategy
      "strategyPros" => l10n.strategyPros,
      "strategyCons" => l10n.strategyCons,
      "strategyWhenToUse" => l10n.strategyWhenToUse,
      "strategyBestUse" => l10n.strategyBestUse,
      // Command
      "commandPros" => l10n.commandPros,
      "commandCons" => l10n.commandCons,
      "commandWhenToUse" => l10n.commandWhenToUse,
      "commandBestUse" => l10n.commandBestUse,
      // State
      "statePros" => l10n.statePros,
      "stateCons" => l10n.stateCons,
      "stateWhenToUse" => l10n.stateWhenToUse,
      "stateBestUse" => l10n.stateBestUse,
      // Chain of Responsibility
      "chainOfResponsibilityPros" => l10n.chainOfResponsibilityPros,
      "chainOfResponsibilityCons" => l10n.chainOfResponsibilityCons,
      "chainOfResponsibilityWhenToUse" => l10n.chainOfResponsibilityWhenToUse,
      "chainOfResponsibilityBestUse" => l10n.chainOfResponsibilityBestUse,
      // Iterator
      "iteratorPros" => l10n.iteratorPros,
      "iteratorCons" => l10n.iteratorCons,
      "iteratorWhenToUse" => l10n.iteratorWhenToUse,
      "iteratorBestUse" => l10n.iteratorBestUse,
      // Interpreter
      "interpreterPros" => l10n.interpreterPros,
      "interpreterCons" => l10n.interpreterCons,
      "interpreterWhenToUse" => l10n.interpreterWhenToUse,
      "interpreterBestUse" => l10n.interpreterBestUse,
      // Mediator
      "mediatorPros" => l10n.mediatorPros,
      "mediatorCons" => l10n.mediatorCons,
      "mediatorWhenToUse" => l10n.mediatorWhenToUse,
      "mediatorBestUse" => l10n.mediatorBestUse,
      // Memento
      "mementoPros" => l10n.mementoPros,
      "mementoCons" => l10n.mementoCons,
      "mementoWhenToUse" => l10n.mementoWhenToUse,
      "mementoBestUse" => l10n.mementoBestUse,
      // Template Method
      "templateMethodPros" => l10n.templateMethodPros,
      "templateMethodCons" => l10n.templateMethodCons,
      "templateMethodWhenToUse" => l10n.templateMethodWhenToUse,
      "templateMethodBestUse" => l10n.templateMethodBestUse,
      // Visitor
      "visitorPros" => l10n.visitorPros,
      "visitorCons" => l10n.visitorCons,
      "visitorWhenToUse" => l10n.visitorWhenToUse,
      "visitorBestUse" => l10n.visitorBestUse,
      // Flyweight
      "flyweightPros" => l10n.flyweightPros,
      "flyweightCons" => l10n.flyweightCons,
      "flyweightWhenToUse" => l10n.flyweightWhenToUse,
      "flyweightBestUse" => l10n.flyweightBestUse,
      _ => null,
    };

    return text?.split('\n') ?? [];
  }

  static Map<String, dynamic> _getCodeData(String key) {
    return switch (key) {
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
      // Added missing patterns
      "flyweight" => {
        "good": CodeExamples.flyweightGood,
        "refs": ["https://refactoring.guru/design-patterns/flyweight"],
      },
      "visitor" => {
        "good": CodeExamples.visitorGood,
        "refs": ["https://refactoring.guru/design-patterns/visitor"],
      },
      "templateMethod" => {
        "good": CodeExamples.templateMethodGood,
        "refs": ["https://refactoring.guru/design-patterns/template-method"],
      },
      "memento" => {
        "good": CodeExamples.mementoGood,
        "refs": ["https://refactoring.guru/design-patterns/memento"],
      },
      "mediator" => {
        "good": CodeExamples.mediatorGood,
        "refs": ["https://refactoring.guru/design-patterns/mediator"],
      },
      "interpreter" => {
        "good": CodeExamples.interpreterGood,
        "refs": ["https://refactoring.guru/design-patterns/interpreter"],
      },
      _ => {
        "bad": null,
        "good": "// Example coming soon...",
        "noteKey": null,
        "refs": ["https://refactoring.guru/design-patterns"],
      },
    };
  }
}
