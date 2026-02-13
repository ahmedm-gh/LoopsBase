import 'package:flutter/material.dart';
import 'package:loopsbase/core/extensions/extensions.dart';

class Tags extends StatelessWidget {
  const Tags({required this.tags, super.key});

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return DefaultTextStyle.merge(
      style: TextStyle(color: colors.primary, fontSize: 12, fontWeight: .w500),
      // child: Text(
      //   tags.map((tag) => "#${tag.replaceAll(" ", "_")}").join(" "),
      //   textDirection: tags.join("_").getDirection(),
      // ),
      child: Wrap(
        spacing: 5,
        runSpacing: 5,
        children: tags
            .map(
              (tag) => Text(
                "#${tag.replaceAll(" ", "_")}",
                textDirection: tag.textDirection,
              ),
            )
            .toList(),
      ),
    );
  }
}
