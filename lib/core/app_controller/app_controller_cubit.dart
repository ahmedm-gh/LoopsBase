import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../extensions/brightness_extensions.dart';
import 'app_controller_state.dart';

class AppControllerCubit extends HydratedCubit<AppControllerState> {
  AppControllerCubit() : super(AppControllerState.initial());

  void toggleLocale() {
    emit(
      state.copyWith(
        locale: state.locale.languageCode == "en"
            ? const .new("ar")
            : const .new("en"),
      ),
    );
  }

  void toggleTheme() {
    emit(state.copyWith(brightness: state.brightness.opposite));
  }

  void setFontScale(double scale) {
    emit(state.copyWith(fontScale: scale));
  }

  void changeFontScale([double? scale]) {
    emit(
      state.copyWith(
        fontScale:
            scale ??
            switch (state.fontScale) {
              < 1.25 => 1.25,
              < 1.5 => 1.5,
              < 1.75 => 1.75,
              < 2 => 2,
              _ => 1,
            },
      ),
    );
  }

  @override
  AppControllerState? fromJson(Map<String, dynamic> json) {
    return AppControllerState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AppControllerState state) {
    return state.toJson();
  }
}
