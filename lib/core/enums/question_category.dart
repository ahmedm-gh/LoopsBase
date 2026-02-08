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
}
