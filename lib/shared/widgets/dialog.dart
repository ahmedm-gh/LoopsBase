import 'package:flutter/material.dart';
import 'package:loopsbase/core/extensions/extensions.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({super.key, this.title, this.content, this.actions});
  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;

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
          if (title case final title?)
            Container(
              padding: const .only(left: 16, right: 16, top: 10, bottom: 7.5),
              decoration: BoxDecoration(
                color: colors.surfaceContainerHigh,
                border: Border(
                  bottom: BorderSide(color: colors.outlineVariant),
                ),
              ),
              child: DefaultTextStyle.merge(
                textHeightBehavior: const TextHeightBehavior(
                  applyHeightToFirstAscent: false,
                  applyHeightToLastDescent: false,
                ),
                style: const TextStyle(fontSize: 18),
                child: title,
              ),
            ),
          if (content case final content?)
            Flexible(
              child: SingleChildScrollView(
                padding: const .all(16),
                child: content,
              ),
            ),
          if (actions case final actions?) ...[
            const Divider(height: 1, thickness: 1),
            Padding(
              padding: const .all(8),
              child: Row(children: actions),
            ),
          ],
        ],
      ),
    );
  }
}
