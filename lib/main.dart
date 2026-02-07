import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:tuts/l10n/app_localizations.dart";
import "package:tuts/core/app_notifiers.dart";
import "package:tuts/features/home/home_page.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppNotifiers.appNotifier,
      builder: (context, appValues, _) {
        log("appValues.locale: ${appValues.locale}");
        log("appValues.brightness: ${appValues.brightness}");
        final colorScheme = ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
          brightness: appValues.brightness,
        );

        return MaterialApp(
          locale: appValues.locale,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: colorScheme,
            dividerTheme: DividerThemeData(
              color: colorScheme.outlineVariant,
              thickness: 1,
              space: 15,
              radius: .all(.circular(1)),
            ),
            appBarTheme: AppBarTheme(
              backgroundColor: colorScheme.surfaceContainerHigh,
            ),
            dialogTheme: DialogThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: .circular(10),
                side: BorderSide(color: colorScheme.outlineVariant),
              ),
            ),
            cardTheme: CardThemeData(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: .circular(16),
                side: BorderSide(color: colorScheme.outlineVariant),
              ),
            ),
          ),
          home: const HomePage(),
        );
      },
    );
  }
}
