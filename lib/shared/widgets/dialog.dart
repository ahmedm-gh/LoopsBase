import 'package:flutter/material.dart';
import 'package:tuts/core/extensions.dart';

class AppDialog extends StatelessWidget {
  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;

  const AppDialog({super.key, this.title, this.content, this.actions});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Dialog(
      clipBehavior: .antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: .circular(10),
        side: BorderSide(color: colors.outlineVariant),
      ),
      backgroundColor: colors.surface,
      child: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .stretch,
        children: [
          if (title case final title)
            Container(
              padding: const .symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: colors.surfaceContainerHigh,
                border: Border(
                  bottom: BorderSide(color: colors.outlineVariant),
                ),
              ),
              child: title,
            ),
          if (content case final content?)
            Flexible(
              child: SingleChildScrollView(
                padding: const .all(16),
                child: content,
              ),
            ),
          if (actions case final actions?) ...[
            Divider(height: 1, thickness: 1),
            Row(children: actions),
          ],
        ],
      ),
    );
  }
}
