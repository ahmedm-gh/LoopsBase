import "dart:developer";

import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:path_provider/path_provider.dart";
import "package:loopsbase/core/app_controller/app_controller_cubit.dart";
import "package:loopsbase/core/app_controller/app_controller_state.dart";
import "package:loopsbase/core/extensions/extensions.dart";
import "package:loopsbase/core/services/locator.dart";
import "package:loopsbase/core/services/routes.dart";
import "package:loopsbase/data/svg_icons.dart";
import "package:loopsbase/l10n/app_localizations.dart";
import "package:loopsbase/shared/app_widgets.dart";
import "package:url_launcher/url_launcher.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory(
            (await getApplicationDocumentsDirectory()).path,
          ),
  );
  setupLocator();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();
  static BuildContext? get currentContext => navigatorKey.currentContext;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppControllerCubit>(
      create: (context) => sl(),
      child: BlocBuilder<AppControllerCubit, AppControllerState>(
        builder: (context, state) {
          log(
            [
              "locale: ${state.locale}",
              "brightness: ${state.brightness.name}",
              "fontScale: ${state.fontScale}",
            ].join("\n"),
            name: "app",
          );
          final colorScheme = ColorScheme.fromSeed(
            seedColor: Colors.blue,
            brightness: state.brightness,
          );
          return MaterialApp(
            builder: (context, child) {
              if (child == null) return const SizedBox.shrink();

              return MediaQuery(
                data: MediaQuery.of(
                  context,
                ).copyWith(textScaler: TextScaler.linear(state.fontScale)),
                child: Material(
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
                ),
              );
            },
            navigatorKey: App.navigatorKey,
            locale: state.locale,
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
              buttonTheme: ButtonThemeData(
                shape: RoundedRectangleBorder(borderRadius: .circular(7.5)),
              ),
              iconButtonTheme: IconButtonThemeData(
                style: IconButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: .circular(7.5)),
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
      ),
    );
  }
}

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return BlocBuilder<AppControllerCubit, AppControllerState>(
      builder: (context, state) {
        final cubit = context.read<AppControllerCubit>();
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
                    IconButton(
                      onPressed: cubit.toggleLocale,
                      iconSize: 20,
                      icon: const Icon(Icons.translate_rounded),
                    ),
                    IconButton(
                      key: ValueKey(state.brightness),
                      iconSize: 20,
                      icon: Icon(
                        state.brightness == Brightness.dark
                            ? Icons.light_mode_rounded
                            : Icons.dark_mode_rounded,
                      ),
                      onPressed: cubit.toggleTheme,
                    ),
                    // Font scale controls
                    IconButton(
                      iconSize: 20,
                      icon: const Icon(Icons.text_fields_rounded),
                      onPressed: cubit.changeFontScale,
                    ),
                    Icon(
                      Icons.square_rounded,
                      size: 6,
                      color: colors.outlineVariant,
                    ),
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
      },
    );
  }
}
