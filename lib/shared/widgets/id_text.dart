import 'package:flutter/material.dart';
import 'package:loopsbase/core/extensions/extensions.dart';

class IdText extends StatelessWidget {
  const IdText({required this.id, super.key});
  final String id;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.surfaceContainerHigh,
        borderRadius: const .all(.circular(7.5)),
      ),
      child: Padding(
        padding: const .symmetric(horizontal: 5, vertical: 2.5),
        child: Text(
          id.ltr,
          style: TextStyle(fontSize: 12, color: colors.onSurfaceVariant),
        ),
      ),
    );
  }
}
