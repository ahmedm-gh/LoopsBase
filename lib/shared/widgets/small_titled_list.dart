import 'package:flutter/material.dart';
import 'package:tuts/l10n/app_localizations.dart';
import 'package:tuts/shared/widgets/icons.dart';

import '../../core/extensions/extensions.dart';

enum TitledListType {
  none,
  notes,
  whenToUse,
  advantages,
  disadvantages,
  bestFor,
  commonMistakes,
}

class SmallTitledList extends StatelessWidget {
  const SmallTitledList({
    required this.title,
    required this.icon,
    required this.color,
    super.key,
    this.content,
    this.items,
  }) : type = .none;

  const SmallTitledList.notes({
    super.key,
    this.title,
    this.content,
    this.items,
    this.icon = Icons.info_rounded,
    this.color = Colors.teal,
  }) : type = .notes;

  const SmallTitledList.whenToUse({
    super.key,
    this.title,
    this.content,
    this.items,
    this.icon = Icons.lightbulb_rounded,
    this.color = Colors.blue,
  }) : type = .whenToUse;

  const SmallTitledList.advantages({
    super.key,
    this.title,
    this.content,
    this.items,
    this.icon = Icons.thumb_up_rounded,
    this.color = Colors.green,
  }) : type = .advantages;

  const SmallTitledList.disadvantages({
    super.key,
    this.title,
    this.content,
    this.items,
    this.icon = Icons.thumb_down_rounded,
    this.color = Colors.red,
  }) : type = .disadvantages;

  const SmallTitledList.bestFor({
    super.key,
    this.title,
    this.content,
    this.items,
    this.icon = Icons.star_rounded,
    this.color = Colors.amber,
  }) : type = .bestFor;

  const SmallTitledList.commonMistakes({
    super.key,
    this.title,
    this.content,
    this.items,
    this.icon = Icons.warning_rounded,
    this.color = Colors.orange,
  }) : type = .commonMistakes;

  final Widget? title;
  final Widget? content;
  final List<Widget>? items;
  final IconData icon;
  final Color color;
  final TitledListType type;

  @override
  Widget build(BuildContext context) {
    if (content == null && items == null) {
      return const SizedBox.shrink();
    }

    final dir = Directionality.of(context);

    return Container(
      padding: const EdgeInsets.all(10),
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
        color: color.withValues(alpha: 0.035),
        borderRadius: .circular(8),
        border: .all(color: color.withValues(alpha: 0.1)),
      ),
      child: Column(
        crossAxisAlignment: .stretch,
        spacing: 5,
        children: [
          if (title ?? _getTitle(context.l10n) case final title?)
            Row(
              children: [
                FilledIcon(icon: icon, color: color),
                const SizedBox(width: 5),
                Expanded(
                  child: DefaultTextStyle.merge(
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: .bold,
                      color: color,
                    ),
                    child: title,
                  ),
                ),
              ],
            ),
          ?content,
          ...?buildItems(dir),
        ],
      ),
    );
  }

  Widget? _getTitle(AppLocalizations l10n) {
    final title = switch (type) {
      .notes => l10n.notes,
      .whenToUse => l10n.whenToUse,
      .advantages => l10n.pros,
      .disadvantages => l10n.cons,
      .bestFor => l10n.bestUse,
      .commonMistakes => l10n.commonMistakes,
      .none => null,
    };

    return title == null ? null : Text(title);
  }

  List<Widget>? buildItems(TextDirection dir) {
    if (items case final items?) {
      return [
        // Divider(color: color.withAlpha(100)),
        Padding(
          padding: const .symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: .start,
            spacing: 10,
            children: items.map((e) => _buildItem(dir, e)).toList(),
          ),
        ),
      ];
    }
    return null;
  }

  Widget _buildItem(TextDirection directionality, Widget child) {
    return Row(
      children: [
        Icon(
          directionality == .rtl
              ? Icons.subdirectory_arrow_left_rounded
              : Icons.subdirectory_arrow_right_rounded,
          color: color,
          size: 18,
        ),
        const SizedBox(width: 5),
        Expanded(child: child),
      ],
    );
  }
}
