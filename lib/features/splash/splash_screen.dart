import 'package:flutter/material.dart';
import 'package:loopsbase/core/services/routes.dart';

Future<void> init(void Function() onDone) async {
  await Future<void>.delayed(const Duration(seconds: 2));
  onDone();
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    init(() {
      Navigator.pushNamedAndRemoveUntil(context, Routes.home, (route) => false);
    });

    return const Material(
      child: Center(
        child: CircularProgressIndicator(strokeCap: .round, strokeWidth: 4),
      ),
    );
  }
}
