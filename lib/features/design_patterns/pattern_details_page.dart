import "package:flutter/material.dart";
import "package:tuts/core/extensions.dart";
import "package:tuts/l10n/app_localizations.dart";
import "package:tuts/shared/app_widgets.dart";
import "package:tuts/core/design_patterns_data.dart";

class PatternDetailsPage extends StatelessWidget {
  final String patternKey;
  final String patternName;

  const PatternDetailsPage({
    super.key,
    required this.patternKey,
    required this.patternName,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final description = _getPatternDescription(l10n, patternKey);
    final data = DesignPatternData.getCode(patternKey);
    final textTheme = context.textTheme;
    final String? note = _getNote(l10n, data["noteKey"]);

    return Scaffold(
      appBar: AppBar(title: Text(patternName)),
      body: SingleChildScrollView(
        padding: const .all(16),
        child: Column(
          crossAxisAlignment: .stretch,
          spacing: 10,
          children: [
            Text(
              l10n.details,
              style: textTheme.titleLarge?.copyWith(fontWeight: .bold),
            ),
            Text(
              description,
              textDirection: BidiUtil.getDirection(description),
            ),

            // Bad Example
            if (data["bad"] case final badCode?) ...[
              Text(
                l10n.badExample,
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.red,
                  fontWeight: .bold,
                ),
              ),
              CodeBlock(code: badCode, codeQuality: .bad),
              const SizedBox(height: 16),
            ],

            // Good Example
            if (data["good"] case final goodCode?) ...[
              Text(
                l10n.goodExample,
                style: textTheme.titleMedium?.copyWith(
                  color: Colors.green,
                  fontWeight: .bold,
                ),
              ),
              CodeBlock(code: goodCode, codeQuality: .good),
            ],

            if (note != null) NotesWidget(note: note),

            const Divider(height: 1, thickness: 1),

            if (_localizedText(l10n, patternKey, "WhenToUse") case final data?)
              SmallTitledList.whenToUse(
                items: data.split("\n").map((e) => Text(e)).toList(),
              ),

            if (_localizedText(l10n, patternKey, "Pros") case final data?)
              SmallTitledList.advantages(
                items: data.split("\n").map((e) => Text(e)).toList(),
              ),

            if (_localizedText(l10n, patternKey, "Cons") case final data?)
              SmallTitledList.disadvantages(
                items: data.split("\n").map((e) => Text(e)).toList(),
              ),

            if (_localizedText(l10n, patternKey, "BestUse") case final data?)
              SmallTitledList.bestFor(
                items: data.split("\n").map((e) => Text(e)).toList(),
              ),

            if (data["refs"] != null) ...[
              ReferenceWidget(urls: List<String>.from(data["refs"])),
            ],
          ],
        ),
      ),
    );
  }

  String? _getNote(AppLocalizations l10n, String? key) {
    if (key == null) return null;
    return switch (key) {
      "singletonNote" => l10n.singletonNote,
      "factoryMethodNote" => l10n.factoryMethodNote,
      "builderNote" => l10n.builderNote,
      _ => null,
    };
  }

  String _getPatternDescription(AppLocalizations l10n, String key) {
    return switch (key) {
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

  String? _localizedText(AppLocalizations l10n, String key, String type) {
    // Dynamic access via switch
    return switch ("$key$type") {
      // Singleton
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
  }
}
