import "dart:developer";

import "package:flutter/foundation.dart";
import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:hydrated_bloc/hydrated_bloc.dart";
import "package:loopsbase/core/app_controller/app_controller_cubit.dart";
import "package:loopsbase/core/app_controller/app_controller_state.dart";
import "package:loopsbase/core/services/locator.dart";
import "package:loopsbase/core/services/routes.dart";
import "package:loopsbase/l10n/app_localizations.dart";
import "package:loopsbase/shared/app_widgets.dart";
import "package:path_provider/path_provider.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? .web
        : .new((await getApplicationDocumentsDirectory()).path),
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
            state
                .toJson()
                .entries
                .map((e) => "${e.key}: ${e.value}")
                .join("\n"),
            name: "app",
          );
          final colorScheme = ColorScheme.fromSeed(
            seedColor: state.seedColor,
            brightness: state.brightness,
          );
          return MaterialApp(
            builder: (context, child) {
              if (child == null) return const SizedBox.shrink();

              // transparent system ui widget
              return SystemOverlay(
                value: SystemUiPresets.light,
                child: MediaQuery(
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
              fontFamily: "ReadexPro",
              // fontFamily: "SegoeUI",
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
