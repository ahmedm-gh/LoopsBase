import 'package:flutter/material.dart';
import 'package:tuts/core/extensions.dart';
import 'package:tuts/core/models/content.dart';

class ContentViewer extends StatelessWidget {
  const ContentViewer(this.content, {super.key});

  final Content content;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return switch (content) {
      StringContent value => Text(value.value),
      ListContent value => Column(
        crossAxisAlignment: .stretch,
        spacing: 7.5,
        children: [
          if (value.title case final title?)
            Text(title, style: TextStyle(fontWeight: .bold, fontSize: 16)),
          ...buildItems(value, colors),
        ],
      ),
    };
  }

  List<Widget> buildItems(ListContent content, ColorScheme colors) {
    if (content is OrderedListContent) {
      return [
        for (var i = 0; i < content.value.length; i++)
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: colors.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const .symmetric(horizontal: 5, vertical: 2.5),
                alignment: .center,
                constraints: const BoxConstraints(minWidth: 30),
                child: Text(
                  "${i + 1}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 5),
              Expanded(child: Text(content.value[i])),
            ],
          ),
      ];
    } else {
      return content.value.map((item) => Text(item)).toList();
    }
  }
}
