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

extension BidiUtil on String {
  TextDirection getDirection() {
    if (isEmpty) return .ltr;
    return intl.Bidi.detectRtlDirectionality(this) ? .rtl : .ltr;
  }

  // stable, tested, just (a sentences) may be not working for (some-sentences)
  String safeBidi() {
    return replaceAllMapped(
      RegExp(
        r'\.?[a-zA-Z_][a-zA-Z0-9_]*(?:[\.\s\-\/:]+[a-zA-Z_][a-zA-Z0-9_]*)*(?:\s*\([^)]*\))?'
        r'|\([^)]*\)',
      ),
      (match) {
        final segment = match.group(0) ?? "";
        if (RegExp(r'[a-zA-Z0-9]').hasMatch(segment)) {
          return segment.ltr;
        }
        return segment;
      },
    );
  }

  String get ltr => "\u2066$this\u2069";
}

extension ColorExtensions on Color {
  Color get pairedColor {
    return computeLuminance() > 0.5 ? Colors.black : Colors.white;
  }
}
