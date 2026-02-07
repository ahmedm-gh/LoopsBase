import "package:flutter/material.dart";
import "package:intl/intl.dart" as intl;
import "package:tuts/l10n/app_localizations.dart";
import "package:tuts/l10n/app_localizations_en.dart";

extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => .of(this);
  ColorScheme get colorScheme => .of(this);
  Brightness get brightness => Theme.of(this).brightness;
  bool get isDark => brightness == .dark;

  AppLocalizations get l10n => .of(this) ?? AppLocalizationsEn();
}

class BidiUtil {
  static TextDirection getDirection(String text) {
    if (text.isEmpty) return .ltr;
    return intl.Bidi.detectRtlDirectionality(text) ? .rtl : .ltr;
  }
}
