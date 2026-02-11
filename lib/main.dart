import "dart:convert";
import "dart:developer";

import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:flutter_svg/svg.dart";
import "package:tuts/core/app_notifiers.dart";
import "package:tuts/core/extensions/extensions.dart";
import "package:tuts/core/services/locator.dart";
import "package:tuts/core/services/routes.dart";
import "package:tuts/data/svg_icons.dart";
import "package:tuts/l10n/app_localizations.dart";
import "package:tuts/shared/app_widgets.dart";
import "package:url_launcher/url_launcher.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();
  static BuildContext? get currentContext => navigatorKey.currentContext;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppNotifiers.appNotifier,
      builder: (context, appValues, _) {
        log(
          [
            "locale: ${appValues.locale}",
            "brightness: ${appValues.brightness.name}",
          ].join("\n"),
          name: "app",
        );
        final colorScheme = ColorScheme.fromSeed(
          seedColor: const Color(0xff135bec),
          // seedColor: Colors.blueGrey,
          brightness: appValues.brightness,
        );
        return MaterialApp(
          builder: (context, child) {
            if (child == null) return const SizedBox.shrink();

            return Material(
              color: colorScheme.surface,
              // treat as a single unit
              child: FocusScope(
                child: Column(
                  children: [
                    Expanded(child: ClipRect(child: child)),
                    const AppBottomBar(),
                  ],
                ),
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
            splashFactory: kIsWeb ? NoSplash.splashFactory : null,
            useMaterial3: true,
            colorScheme: colorScheme,
            iconButtonTheme: IconButtonThemeData(
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: .circular(7.5),
                  // side: BorderSide(color: colorScheme.outlineVariant),
                ),
              ),
            ),
            inputDecorationTheme: InputDecorationTheme(
              contentPadding: const .symmetric(horizontal: 10, vertical: 10),
              filled: true,
              isDense: true,
              border: const OutlineInputBorder(
                borderRadius: .all(.circular(10)),
                borderSide: .none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: const .all(.circular(10)),
                borderSide: BorderSide(color: colorScheme.outlineVariant),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: const .all(.circular(10)),
                borderSide: BorderSide(color: colorScheme.primary),
              ),
            ),
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
          initialRoute: Routes.splash,
          onGenerateRoute: Routes.onGenerateRoute,
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
    // final l10n = context.l10n;

    return Directionality(
      textDirection: .ltr,
      child: Material(
        type: .transparency,
        child: Container(
          width: .infinity,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: context.colorScheme.outlineVariant),
            ),
          ),
          padding: const .all(7.5),
          child: SafeArea(
            top: false,
            child: Wrap(
              spacing: 5,
              runSpacing: 5,
              crossAxisAlignment: .center,
              children: [
                const IconButton(
                  onPressed: AppNotifiers.toggleLocale,
                  iconSize: 20,
                  icon: Icon(Icons.translate_rounded),
                ),
                IconButton(
                  key: ValueKey(appValues.brightness),
                  iconSize: 20,
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
                const Text("•"),
                IconButton(
                  onPressed: () {
                    launchUrl(Uri.parse("https://github.com/ahmedm-gh"));
                  },
                  icon: const SvgIcon(SvgIcons.gitHub),
                ),
                IconButton(
                  onPressed: () {
                    launchUrl(
                      Uri.parse("https://www.linkedin.com/in/ahmeds1/"),
                    );
                  },
                  icon: const SvgIcon(SvgIcons.linkedIn),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
