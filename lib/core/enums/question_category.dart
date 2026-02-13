import 'package:loopsbase/l10n/app_localizations.dart';

enum QuestionCategory {
  basic,
  security,
  oop,
  solid,
  designPatterns,
  dataStructures,
  stateManagement,
  performance,
  testing,
  networking,
  database,
  architecture,
  dartBasics,
  flutterBasics,
  ui,
  nativePlatform,
  animations,
  modernFeatures,
  deployment;

  QuestionCategory? tryParse(Object? value, {QuestionCategory? fallback}) {
    if (value == null) return fallback;
    if (value is QuestionCategory) return value;
    if (value is String) {
      return switch (value.toLowerCase()) {
        "basic" => basic,
        "security" => security,
        "oop" => oop,
        "solid" => solid,
        "designpatterns" || "design_patterns" => designPatterns,
        "datastructures" || "data_structures" => dataStructures,
        "statemanagement" || "state_management" => stateManagement,
        "performance" => performance,
        "testing" => testing,
        "networking" => networking,
        "database" => database,
        "architecture" => architecture,
        "dartbasics" || "dart_basics" => dartBasics,
        "flutterbasics" || "flutter_basics" => flutterBasics,
        "ui" => ui,
        "nativeplatform" || "native_platform" => nativePlatform,
        "animations" => animations,
        "modernfeatures" || "modern_features" => modernFeatures,
        "deployment" => deployment,
        _ => fallback,
      };
    }
    return fallback;
  }

  String label(AppLocalizations l10n) {
    return switch (this) {
      basic => l10n.cBasic,
      security => l10n.cSecurity,
      oop => l10n.cOOP,
      solid => l10n.cSolid,
      designPatterns => l10n.cDesignPatterns,
      dataStructures => l10n.cDataStructures,
      stateManagement => l10n.cStateManagement,
      performance => l10n.cPerformance,
      testing => l10n.cTesting,
      networking => l10n.cNetworking,
      database => l10n.cDatabase,
      architecture => l10n.cArchitecture,
      dartBasics => l10n.cDartBasics,
      flutterBasics => l10n.cFlutterBasics,
      ui => l10n.cUI,
      nativePlatform => l10n.cNativePlatform,
      animations => l10n.cAnimations,
      modernFeatures => l10n.cModernFeatures,
      deployment => l10n.cDeployment,
    };
  }
}
