import 'package:flutter/material.dart';
import 'package:tuts/core/extensions/extensions.dart' show ContextExtensions;

class LiteDivider extends StatelessWidget {
  const LiteDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      thickness: 1,
      color: context.colorScheme.outlineVariant.withValues(alpha: 0.4),
    );
  }
}
