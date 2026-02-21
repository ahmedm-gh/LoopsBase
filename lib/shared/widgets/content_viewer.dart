import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loopsbase/core/extensions/extensions.dart';
import 'package:loopsbase/core/models/content.dart';
import 'package:loopsbase/core/services/platform.dart';
import 'package:loopsbase/l10n/app_localizations.dart';
import 'package:loopsbase/shared/app_widgets.dart';

class ContentViewer extends StatelessWidget {
  const ContentViewer(this.content, {super.key});

  final Content content;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final textTheme = context.textTheme;
    final l10n = context.l10n;

    return switch (content) {
      // KEEP
      final StrContent value => Text(value.value),

      // KEEP
      final ListContent value => Column(
        crossAxisAlignment: .stretch,
        spacing: 7.5,
        children: [
          if (value.title case final title?)
            Text(
              title,
              style: TextStyle(
                fontWeight: .bold,
                fontSize: 16,
                color: colors.secondary,
              ),
            ),
          ...buildItems(value, colors),
        ],
      ),

      // KEEP
      final CodeContent value => CodeBlockViewer.fromStrCodeBlock(value.code),

      final NoteContent value => _buildNote(value, textTheme, l10n),

      final AnalogyContent value => _buildAnalogy(
        value,
        colors,
        textTheme,
        l10n,
      ),

      final ComparisonContent value => _buildComparison(
        value,
        colors,
        textTheme,
        l10n,
      ),

      final SvgDiagramContent _ => const SizedBox.shrink(),
      final DiagramContent _ => const SizedBox.shrink(),

      // final DiagramContent value => _buildDiagram(
      //   value,
      //   colors,
      //   textTheme,
      //   l10n,
      // ),

      // final SvgDiagramContent value => SvgDiagramViewer(content: value),
    };
  }

  Widget _buildNote(
    NoteContent content,
    TextTheme textTheme,
    AppLocalizations l10n,
  ) {
    final (icon, label, color) = switch (content.type) {
      NoteType.info => (Icons.info_outline, l10n.noteInfo, Colors.blue),
      NoteType.warning => (
        Icons.warning_amber_outlined,
        l10n.noteWarning,
        Colors.orange,
      ),
      NoteType.tip => (
        Icons.tips_and_updates_outlined,
        l10n.noteTip,
        Colors.green,
      ),
      NoteType.important => (
        Icons.priority_high,
        l10n.noteImportant,
        Colors.red,
      ),
    };

    return SmallTitledList(
      title: Text(label),
      icon: icon,
      color: color,
      content: Text(content.value),
    );
  }

  Widget _buildAnalogy(
    AnalogyContent content,
    ColorScheme colors,
    TextTheme textTheme,
    AppLocalizations l10n,
  ) {
    return SmallTitledList(
      title: Text(l10n.analogy),
      icon: Icons.lightbulb_outline,
      color: colors.primary,
      content: Text(
        content.value,
        style: textTheme.bodyMedium?.copyWith(height: 1.5),
      ),
    );
  }

  Widget _buildComparison(
    ComparisonContent content,
    ColorScheme colors,
    TextTheme textTheme,
    AppLocalizations l10n,
  ) {
    return SmallTitledList(
      title: Text(content.title ?? l10n.comparison),
      icon: Icons.compare_arrows_rounded,
      color: colors.tertiary,
      items: [
        for (final entry in content.value.entries)
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: colors.outline)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 2.5),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      entry.key,
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: .w600,
                        color: colors.tertiary,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 3,
                    child: Text(entry.value, style: textTheme.bodyMedium),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildDiagram(
    DiagramContent content,
    ColorScheme colors,
    TextTheme textTheme,
    AppLocalizations l10n,
  ) {
    return SmallTitledList(
      title: Text(l10n.structureDiagram),
      icon: Icons.account_tree_outlined,
      color: colors.primary,
      content: Container(
        width: .infinity,
        padding: const .all(12),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: .circular(6),
        ),
        child: Text(
          content.value,
          style: textTheme.bodyMedium?.copyWith(
            fontFamily: 'monospace',
            height: 1.6,
            letterSpacing: 0.2,
          ),
        ),
      ),
    );
  }

  List<Widget> buildItems(ListContent content, ColorScheme colors) {
    return [
      for (var i = 0; i < content.value.length; i++)
        Row(
          crossAxisAlignment: .start,
          children: [
            if (content is OLContent)
              Container(
                decoration: BoxDecoration(
                  color: colors.surfaceContainerHighest,
                  borderRadius: .circular(5),
                ),
                margin: const .directional(start: 10),
                padding: const .symmetric(horizontal: 5, vertical: 2.5),
                alignment: .center,
                constraints: const BoxConstraints(minWidth: 25),
                child: Text(
                  "${i + 1}",
                  style: const TextStyle(fontSize: 12, fontWeight: .w600),
                ),
              )
            else
              Padding(
                padding: const .directional(start: 10),
                child: Text(
                  "•",
                  style: TextStyle(
                    color: colors.primary,
                    fontSize: 18,
                    fontWeight: .bold,
                  ),
                ),
              ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                content.value[i],
                style: const TextStyle(height: 1.5),
              ),
            ),
          ],
        ),
    ];
  }
}

class SvgDiagramViewer extends StatefulWidget {
  const SvgDiagramViewer({required this.content, super.key});

  final SvgDiagramContent content;

  @override
  State<SvgDiagramViewer> createState() => _SvgDiagramViewerState();
}

class _SvgDiagramViewerState extends State<SvgDiagramViewer> {
  String locale = "en";

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        locale = context.l10n.localeName;
      });
    });
    super.initState();
  }

  void toggleLocale() {
    setState(() {
      locale = locale == "en" ? "ar" : "en";
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colorScheme;

    return Container(
      padding: const .all(16),
      decoration: BoxDecoration(
        // gradient: LinearGradient(
        //   colors: [
        //     color.withValues(alpha: 0.02),
        //     color.withValues(alpha: 0.05),
        //     color.withValues(alpha: 0.02),
        //   ],
        //   begin: .topLeft,
        //   end: .bottomRight,
        // ),
        color: colors.surface,
        borderRadius: const .all(.circular(16)),
        border: .all(
          color: colors.surfaceContainerHighest.withValues(alpha: 0.1),
        ),
      ),
      child: Column(
        children: [
          Row(
            spacing: 10,
            children: [
              FilledIcon(
                background: colors.primary.withValues(alpha: 0.1),
                child: const Icon(Icons.account_tree_rounded, size: 24),
              ),
              Expanded(
                child: Text(
                  l10n.structureDiagram,
                  style: const TextStyle(fontWeight: .w500, fontSize: 16),
                ),
              ),
              IconButton(
                visualDensity: .compact,
                icon: const Icon(Icons.translate_rounded),
                onPressed: toggleLocale,
              ),
            ],
          ),
          const SizedBox(height: 10),
          const LiteDivider(),
          const SizedBox(height: 10),
          Directionality(
            textDirection: .ltr,
            child: SizedBox(
              width: .infinity,
              child: PlatformHelper.isMobile
                  ? InteractiveViewer(
                      child: SvgPicture.string(
                        widget.content.value(locale, colors),
                      ),
                    )
                  : SvgPicture.string(widget.content.value(locale, colors)),
            ),
          ),
        ],
      ),
    );
  }
}
