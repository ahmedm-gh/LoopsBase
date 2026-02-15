import 'dart:io';

import 'package:flutter/foundation.dart';

// linux
// macOS
// windows
// android
// IOS
// fuchsia
// web

final class PlatformHelper {
  static final _isMobile = kIsWeb
      ? false
      : Platform.isAndroid || Platform.isIOS;

  static const isWeb = kIsWeb;
  static final isMobile = _isMobile;

  static T? tryAs<T>({
    T? linux,
    T? macOS,
    T? windows,
    T? android,
    T? ios,
    T? fuchsia,
    T? web,
    T? fallback,
  }) {
    if (Platform.isAndroid) {
      return android;
    } else if (Platform.isIOS) {
      return ios;
    } else if (Platform.isLinux) {
      return linux;
    } else if (Platform.isMacOS) {
      return macOS;
    } else if (Platform.isWindows) {
      return windows;
    } else if (Platform.isFuchsia) {
      return fuchsia;
    } else if (isWeb) {
      return web;
    }
    return fallback;
  }

  static T as<T>({
    required T fallback,
    T? linux,
    T? macOS,
    T? windows,
    T? android,
    T? ios,
    T? fuchsia,
    T? web,
  }) => tryAs(
    linux: linux,
    macOS: macOS,
    windows: windows,
    android: android,
    ios: ios,
    fuchsia: fuchsia,
    web: web,
    fallback: fallback,
  )!;
}
