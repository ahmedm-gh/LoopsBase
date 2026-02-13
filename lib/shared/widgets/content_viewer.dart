import 'package:flutter/material.dart';
import 'package:loopsbase/core/extensions/extensions.dart';
import 'package:loopsbase/core/models/content.dart';

import 'code_block.dart';

class ContentViewer extends StatelessWidget {
  const ContentViewer(this.content, {super.key});

  final Content content;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return switch (content) {
      final StringContent value => Text(value.value),
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
      final CodeContent value => CodeBlockViewer.fromStrCodeBlock(value.code),
    };
  }

  // v2
  List<Widget> buildItems(ListContent content, ColorScheme colors) {
    return [
      for (var i = 0; i < content.value.length; i++)
        Row(
          children: [
            if (content is OrderedListContent)
              Container(
                decoration: BoxDecoration(
                  color: colors.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const .directional(start: 10),
                padding: const .symmetric(horizontal: 5, vertical: 2.5),
                alignment: .center,
                constraints: const BoxConstraints(minWidth: 25),
                child: Text("${i + 1}", style: const TextStyle(fontSize: 12)),
              )
            else
              Padding(
                padding: const .directional(start: 10),
                child: Text(
                  "•",
                  style: TextStyle(color: colors.primary, fontSize: 16),
                ),
              ),
            const SizedBox(width: 10),
            Expanded(child: Text(content.value[i])),
          ],
        ),
    ];
  }

  // v1
  // List<Widget> buildItems(ListContent content, ColorScheme colors) {
  //   if (content is OrderedListContent) {
  //     return [
  //       for (var i = 0; i < content.value.length; i++)
  //         Row(
  //           children: [
  //             Container(
  //               decoration: BoxDecoration(
  //                 color: colors.surfaceContainerHighest,
  //                 borderRadius: BorderRadius.circular(5),
  //               ),
  //               padding: const .symmetric(horizontal: 5, vertical: 2.5),
  //               alignment: .center,
  //               constraints: const BoxConstraints(minWidth: 30),
  //               child: Text(
  //                 "${i + 1}",
  //                 style: const TextStyle(fontWeight: .bold),
  //               ),
  //             ),
  //             const SizedBox(width: 5),
  //             Expanded(child: Text(content.value[i])),
  //           ],
  //         ),
  //     ];
  //   } else {
  //     return [
  //       Padding(
  //         padding: const .symmetric(horizontal: 16),
  //         child: Column(
  //           crossAxisAlignment: .stretch,
  //           spacing: 2.5,
  //           children: content.value.map(Text.new).toList(),
  //         ),
  //       ),
  //     ];
  //   }
  // }
}
