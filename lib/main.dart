import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:tuts/core/app_notifiers.dart";
import "package:tuts/features/home/home_page.dart";
import "package:tuts/l10n/app_localizations.dart";

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();
  static BuildContext? get currentContext => navigatorKey.currentContext;

  @override
  Widget build(BuildContext context) {
    // implement backbutton with esc key

    return ValueListenableBuilder(
      valueListenable: AppNotifiers.appNotifier,
      builder: (context, appValues, _) {
        log("locale: ${appValues.locale}", name: "app");
        log("brightness: ${appValues.brightness}", name: "app");
        final colorScheme = ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
          brightness: appValues.brightness,
        );
        return MaterialApp(
          builder: (context, child) {
            return ColoredBox(
              color: colorScheme.surface,
              child: Column(
                children: [
                  if (child case final child?)
                    Expanded(child: ClipRect(child: child))
                  else
                    const Spacer(),
                  const AppBottomBar(),
                ],
              ),
            );
          },
          navigatorKey: App.navigatorKey,
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
              radius: const .all(.circular(1)),
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

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final appValues = AppNotifiers.appNotifier.value;

    return Directionality(
      textDirection: .ltr,
      child: Material(
        type: .transparency,
        child: SafeArea(
          child: Padding(
            padding: const .all(5),
            child: SizedBox(
              width: .infinity,
              child: Wrap(
                spacing: 10,
                crossAxisAlignment: .center,
                children: [
                  const IconButton(
                    onPressed: AppNotifiers.toggleLocale,
                    icon: Icon(Icons.translate_rounded),
                  ),
                  IconButton(
                    key: ValueKey(appValues.brightness),
                    icon: Icon(
                      appValues.brightness == .dark
                          ? Icons.light_mode_rounded
                          : Icons.dark_mode_rounded,
                    ),
                    onPressed: AppNotifiers.toggleTheme,
                    // tooltip: appValues.brightness == .dark
                    //     ? l10n.lightMode
                    //     : l10n.darkMode,
                  ),
                  const Text("LinkedIn: @ahmeds1"),
                  const Text("GitHub: @ahmedm-gh"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
