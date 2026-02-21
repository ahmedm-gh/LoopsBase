import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A collection of predefined [SystemUiOverlayStyle] presets
/// for consistent status bar and navigation bar appearances.
///
/// The [SystemUiPresets] class provides ready-to-use combinations
/// of light and dark styles for both the status bar and the
/// system navigation bar. These presets help maintain visual
/// consistency across different app screens.
///
/// You can also define your own [SystemUiOverlayStyle] if you need
/// more specific control over colors or brightness.
abstract final class SystemUiPresets {
  /// {@template light}
  /// `light` status & navigation bar
  /// {@endtemplate}
  static const light = SystemUiOverlayStyle(
    statusBarIconBrightness: .light,
    systemNavigationBarIconBrightness: .light,
    statusBarBrightness: .dark,
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
  );

  /// {@template dark}
  /// `dark` status & navigation bar
  /// {@endtemplate}
  static const dark = SystemUiOverlayStyle(
    statusBarIconBrightness: .dark,
    systemNavigationBarIconBrightness: .dark,
    statusBarBrightness: .light,
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
  );

  /// {@template light_status_bar_dark_nav_bar}
  /// `light` status bar & `dark` navigation bar
  /// {@endtemplate}
  static const lightStatusBarDarkNavBar = SystemUiOverlayStyle(
    statusBarIconBrightness: .light,
    statusBarBrightness: .dark,
    statusBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: .dark,
    systemNavigationBarColor: Colors.transparent,
  );

  /// {@template dark_status_bar_light_nav_bar}
  /// `dark` status bar & `light` navigation bar
  /// {@endtemplate}
  static const darkStatusBarLightNavBar = SystemUiOverlayStyle(
    statusBarIconBrightness: .dark,
    statusBarBrightness: .light,
    statusBarColor: Colors.transparent,
    systemNavigationBarIconBrightness: .light,
    systemNavigationBarColor: Colors.transparent,
  );
}

class SystemOverlay extends StatelessWidget {
  const SystemOverlay({
    required this.child,
    required SystemUiOverlayStyle this.value,
    super.key,
  }) : _default = value;

  /// {@macro light}
  const SystemOverlay.light({required this.child, this.value, super.key})
    : _default = SystemUiPresets.light;

  /// {@macro dark}
  const SystemOverlay.dark({required this.child, this.value, super.key})
    : _default = SystemUiPresets.dark;

  /// {@macro light_status_bar_dark_nav_bar}
  const SystemOverlay.lightStatusBarDarkNavBar({
    required this.child,
    this.value,
    super.key,
  }) : _default = SystemUiPresets.lightStatusBarDarkNavBar;

  /// {@macro dark_status_bar_light_nav_bar}
  const SystemOverlay.darkStatusBarLightNavBar({
    required this.child,
    this.value,
    super.key,
  }) : _default = SystemUiPresets.darkStatusBarLightNavBar;
  final Widget child;
  final SystemUiOverlayStyle? value;
  final SystemUiOverlayStyle _default;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(value: _value, child: child);
  }

  SystemUiOverlayStyle get _value {
    if (_default == value) return _default;

    return _default.copyWith(
      systemNavigationBarColor: value?.systemNavigationBarColor,
      systemNavigationBarDividerColor: value?.systemNavigationBarDividerColor,
      systemNavigationBarIconBrightness:
          value?.systemNavigationBarIconBrightness,
      systemNavigationBarContrastEnforced:
          value?.systemNavigationBarContrastEnforced,
      statusBarColor: value?.statusBarColor,
      statusBarBrightness: value?.statusBarBrightness,
      statusBarIconBrightness: value?.statusBarIconBrightness,
      systemStatusBarContrastEnforced: value?.systemStatusBarContrastEnforced,
    );
  }
}
