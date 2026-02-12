import 'package:flutter/material.dart';

import '../../core/extensions/extensions.dart';

class NoResult extends StatelessWidget {
  const NoResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(context.l10n.noResults));
  }
}
