import 'package:flutter/material.dart';
import 'package:tuts/l10n/app_localizations.dart';

/// Difficulty level enum
enum DifficultyLevel {
  basic,
  intermediate,
  advanced,
  expert;

  static DifficultyLevel parse(
    Object? value, {
    DifficultyLevel fallback = .basic,
  }) {
    if (value == null) return fallback;

    if (value is DifficultyLevel) return value;

    if (value is String) {
      return switch (value.toLowerCase()) {
        "basic" => .basic,
        "intermediate" => .intermediate,
        "advanced" => .advanced,
        "expert" => .expert,
        _ => fallback,
      };
    }

    if (value is int) {
      return switch (value) {
        0 => .basic,
        1 => .intermediate,
        2 => .advanced,
        3 => .expert,
        _ => fallback,
      };
    }

    return fallback;
  }

  int get order => switch (this) {
    .basic => 0,
    .intermediate => 1,
    .advanced => 2,
    .expert => 3,
  };

  Color get color => switch (this) {
    .basic => Colors.green,
    .intermediate => Colors.orange,
    .advanced => Colors.red,
    .expert => Colors.purple,
  };

  String label(AppLocalizations l10n) {
    return switch (this) {
      .basic => l10n.basicLevel,
      .intermediate => l10n.intermediateLevel,
      .advanced => l10n.advancedLevel,
      .expert => l10n.expertLevel,
    };
  }
}
