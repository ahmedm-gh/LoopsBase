import 'package:flutter/material.dart';
import 'package:tuts/l10n/app_localizations.dart';

import '../../l10n/app_localizations_en.dart';

enum Era {
  classic,
  modern,
  emerging;

  String label(AppLocalizations l10n) {
    return switch (this) {
      classic => l10n.termEraClassic,
      modern => l10n.termEraModern,
      emerging => l10n.termEraEmerging,
    };
  }

  String enLabel() => label(AppLocalizationsEn());

  Color get color => switch (this) {
    classic => const Color(0xFF37474F),
    modern => const Color(0xFF1976D2),
    emerging => const Color(0xFF00C853),
  };
}
