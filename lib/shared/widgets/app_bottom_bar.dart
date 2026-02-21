import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loopsbase/core/app_controller/app_controller_cubit.dart';
import 'package:loopsbase/core/app_controller/app_controller_state.dart';
import 'package:loopsbase/core/extensions/extensions.dart';
import 'package:loopsbase/data/svg_icons.dart';
import 'package:loopsbase/main.dart';
import 'package:loopsbase/shared/app_widgets.dart';
import 'package:loopsbase/shared/widgets/seed_color_selector.dart';
import 'package:url_launcher/url_launcher.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppControllerCubit, AppControllerState>(
      builder: (context, state) {
        final cubit = context.read<AppControllerCubit>();

        return Directionality(
          textDirection: TextDirection.ltr,
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: context.colorScheme.outlineVariant),
                ),
              ),
              padding: const EdgeInsets.all(7.5),
              child: SafeArea(
                top: false,
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: [
                    IconButton(
                      onPressed: cubit.toggleLocale,
                      iconSize: 20,
                      icon: const Icon(Icons.translate_rounded),
                    ),
                    IconButton(
                      iconSize: 20,
                      icon: const Icon(Icons.text_fields_rounded),
                      onPressed: () {
                        if (App.currentContext case final context?) {
                          if (FontScaler.isOpen) {
                            Navigator.of(context).pop();
                            return;
                          }
                          showFontScaler(context);
                        }
                      },
                    ),
                    const IconSeparator(),
                    IconButton(
                      key: ValueKey(state.brightness),
                      iconSize: 20,
                      icon: Icon(
                        state.brightness.isDark(
                          Icons.light_mode_rounded,
                          Icons.dark_mode_rounded,
                        ),
                      ),
                      onPressed: cubit.toggleTheme,
                    ),
                    IconButton(
                      iconSize: 20,
                      icon: const Icon(Icons.color_lens_rounded),
                      onPressed: () {
                        if (App.currentContext case final context?) {
                          if (SeedColorSelector.isOpen) {
                            Navigator.of(context).pop();
                            return;
                          }
                          showSeedColorSelector(context);
                        }
                      },
                    ),
                    const IconSeparator(),
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

class IconSeparator extends StatelessWidget {
  const IconSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.square_rounded,
      size: 6,
      color: context.colorScheme.outlineVariant,
      applyTextScaling: false,
    );
  }
}
