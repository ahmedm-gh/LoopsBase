import 'package:flutter/material.dart';

import '../../../core/extensions/extensions.dart';
import '../../../core/models/term.dart';

class ProgrammingTermDetailsScreenArguments {
  const ProgrammingTermDetailsScreenArguments({required this.term});
  final ProgrammingTerm term;
}

class ProgrammingTermDetailsScreen extends StatelessWidget {
  const ProgrammingTermDetailsScreen({this.arguments, super.key});

  final ProgrammingTermDetailsScreenArguments? arguments;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    if (arguments case final args?) {
      final term = args.term;

      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(term.title(l10n.localeName)),
        ),
        body: Center(
          child: Text(
            "${term.title(l10n.localeName)}\nComing Soon...",
            textAlign: .center,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Center(child: Text(l10n.termNotFound, textAlign: .center)),
    );
  }
}
