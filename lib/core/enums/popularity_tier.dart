import 'package:flutter/material.dart';
import 'package:tuts/l10n/app_localizations.dart';
import 'package:tuts/l10n/app_localizations_en.dart';

enum PopularityTier {
  veryHigh,
  high,
  medium,
  low,
  niche;

  String label(AppLocalizations l10n) {
    return switch (this) {
      veryHigh => l10n.popularityTierVeryHigh,
      high => l10n.popularityTierHigh,
      medium => l10n.popularityTierMedium,
      low => l10n.popularityTierLow,
      niche => l10n.popularityTierNiche,
    };
  }

  String enLabel() => label(AppLocalizationsEn());

  Color get color => switch (this) {
    veryHigh => const Color(0xFFD32F2F), // Strong Red 700 (immediate attention)
    high => const Color(0xFFF57C00), // Orange 700
    medium => const Color(0xFFFBC02D), // Yellow 700
    low => const Color(0xFF9E9E9E), // Grey 500
    niche => const Color(0xFFBDBDBD), // Grey 400 (more faded)
  };
}
