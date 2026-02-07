import "package:flutter/material.dart";
import "package:tuts/core/extensions.dart";
import "package:tuts/l10n/app_localizations.dart";
import "package:tuts/features/design_patterns/pattern_details_page.dart";

class DesignPatternsPage extends StatelessWidget {
  const DesignPatternsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.designPatterns)),
      body: ListView(
        padding: const .all(16),
        children: [
          _CategorySection(
            title: l10n.creationalPatterns,
            description: l10n.creationalPatternsDesc,
            patterns: const [
              "factoryMethod",
              "abstractFactory",
              "builder",
              "prototype",
              "singleton",
            ],
          ),
          Divider(height: 30),
          _CategorySection(
            title: l10n.structuralPatterns,
            description: l10n.structuralPatternsDesc,
            patterns: const [
              "adapter",
              "bridge",
              "composite",
              "decorator",
              "facade",
              "flyweight",
              "proxy",
            ],
          ),
          Divider(height: 30),
          _CategorySection(
            title: l10n.behavioralPatterns,
            description: l10n.behavioralPatternsDesc,
            patterns: const [
              "chainOfResponsibility",
              "command",
              "interpreter",
              "iterator",
              "mediator",
              "memento",
              "observer",
              "state",
              "strategy",
              "templateMethod",
              "visitor",
            ],
          ),
        ],
      ),
    );
  }
}

class _CategorySection extends StatelessWidget {
  final String title;
  final String description;
  final List<String> patterns;

  const _CategorySection({
    required this.title,
    required this.description,
    required this.patterns,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final colors = context.colorScheme;

    return ListTileTheme(
      tileColor: context.colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: context.colorScheme.outlineVariant.withAlpha(80),
        ),
        borderRadius: .circular(10),
      ),
      child: Material(
        type: .transparency,
        child: Column(
          crossAxisAlignment: .start,
          spacing: 10,
          children: [
            Text(
              title,
              style: textTheme.headlineSmall?.copyWith(
                fontWeight: .bold,
                color: colors.primary,
              ),
            ),
            Text(description),
            ...patterns.map(_PatternTile.new),
          ],
        ),
      ),
    );
  }
}

class _PatternTile extends StatelessWidget {
  final String pattern;
  const _PatternTile(this.pattern);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final name = _getPatternName(l10n, pattern);

    return ListTile(
      title: Text(name),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 14),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) {
            return PatternDetailsPage(patternKey: pattern, patternName: name);
          },
        ),
      ),
    );
  }

  String _getPatternName(AppLocalizations l10n, String key) {
    return switch (key) {
      "factoryMethod" => l10n.factoryMethod,
      "abstractFactory" => l10n.abstractFactory,
      "builder" => l10n.builder,
      "prototype" => l10n.prototype,
      "singleton" => l10n.singleton,
      "adapter" => l10n.adapter,
      "bridge" => l10n.bridge,
      "composite" => l10n.composite,
      "decorator" => l10n.decorator,
      "facade" => l10n.facade,
      "flyweight" => l10n.flyweight,
      "proxy" => l10n.proxy,
      "chainOfResponsibility" => l10n.chainOfResponsibility,
      "command" => l10n.command,
      "iterator" => l10n.iterator,
      "interpreter" => l10n.interpreter,
      "mediator" => l10n.mediator,
      "memento" => l10n.memento,
      "observer" => l10n.observer,
      "state" => l10n.state,
      "strategy" => l10n.strategy,
      "templateMethod" => l10n.templateMethod,
      "visitor" => l10n.visitor,
      _ => key,
    };
  }
}
