import 'package:flutter/material.dart';
import 'package:loopsbase/core/extensions/extensions.dart';

class BookmarkIconButton extends StatelessWidget {
  const BookmarkIconButton({
    required this.onPressed,
    this.isActive = false,
    this.animated = false,
    this.tooltip,
    this.compact = false,
    super.key,
    this.icon = const Icon(Icons.bookmark_outline_rounded),
    this.activeIcon = const Icon(Icons.bookmark_rounded),
  });

  const BookmarkIconButton.bookmarks({
    required this.onPressed,
    this.isActive = false,
    this.animated = false,
    this.tooltip,
    this.compact = false,
    super.key,
    this.icon = const Icon(Icons.bookmarks_outlined),
    this.activeIcon = const Icon(Icons.bookmarks_rounded),
  });

  const BookmarkIconButton.compact({
    required this.onPressed,
    this.isActive = false,
    this.animated = false,
    this.tooltip,
    super.key,
    this.icon = const Icon(Icons.bookmark_outline_rounded),
    this.activeIcon = const Icon(Icons.bookmark_rounded),
  }) : compact = true;

  const BookmarkIconButton.bookmarksCompact({
    required this.onPressed,
    this.isActive = false,
    this.animated = false,
    this.tooltip,
    super.key,
    this.icon = const Icon(Icons.bookmarks_outlined),
    this.activeIcon = const Icon(Icons.bookmarks_rounded),
    this.compact = false,
  });

  final VoidCallback? onPressed;
  final bool isActive;
  final bool animated;
  final String? tooltip;
  final bool compact;

  final Widget icon;
  final Widget activeIcon;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    final fIcon = isActive
        ? KeyedSubtree(key: const ValueKey(1), child: activeIcon)
        : KeyedSubtree(key: const ValueKey(0), child: icon);

    return IconButton(
      tooltip: tooltip,
      style: IconButton.styleFrom(
        side: .none,
        backgroundColor: colors.surfaceContainerLow,
      ),
      onPressed: onPressed,
      padding: compact ? const .all(5) : null,
      iconSize: compact ? 18 : null,
      constraints: compact
          ? const BoxConstraints(minWidth: 20, minHeight: 20)
          : null,
      icon: animated
          ? AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: fIcon,
            )
          : fIcon,
    );
  }
}
