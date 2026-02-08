/// Interview Questions Data
/// Questions are organized by difficulty and accessible by key
library;

class InterviewQuestionsData {
  /// All available tags in the system
  static const List<String> allTags = [
    "flutter",
    "dart",
    "widgets",
    "oop",
    "stateManagement",
    "navigation",
    "async",
    "performance",
    "designPattern",
    "dataStructures",
    "architecture",
    "concurrency",
    "comparison",
  ];

  /// Returns question keys grouped by difficulty
  static List<String> getQuestionsByDifficulty(String difficulty) {
    return switch (difficulty) {
      "basic" => const [
        "whatIsFlutter",
        "whatIsDart",
        "whatAreWidgets",
        "statelessVsStateful",
        "materialAppScaffold",
        "buildContext",
        "listsSetsMaps",
        "whatIsPolymorphism",
      ],
      "intermediate" => const [
        "whatIsKey",
        "hotReloadVsRestart",
        "widgetLifecycle",
        "whatAreMixins",
        "extensionMethods",
        "solidPrinciples",
        "blocPattern",
        "providerVsBloc",
        "futureVsStream",
        "navigationPushReplace",
        "futureBuilderStreamBuilder",
        "constructorFactory",
        "singletonPattern",
        "inheritanceVsComposition",
      ],
      "advanced" => const [
        "navigator1Vs2",
        "whatIsIsolate",
        "flutterPerformance",
        "renderingEngine",
        "flutterVsReactNative",
      ],
      _ => const [],
    };
  }

  /// Returns all question keys
  static List<String> get allQuestions {
    return [
      ...getQuestionsByDifficulty("basic"),
      ...getQuestionsByDifficulty("intermediate"),
      ...getQuestionsByDifficulty("advanced"),
    ];
  }

  /// Returns metadata for a specific question
  static Map<String, dynamic> getQuestionData(String questionKey) {
    return switch (questionKey) {
      // === BASIC ===
      "whatIsFlutter" => {
        "tags": ["flutter", "basic"],
        "difficulty": "basic",
        "hasCode": false,
      },
      "whatIsDart" => {
        "tags": ["dart", "basic"],
        "difficulty": "basic",
        "hasCode": false,
      },
      "whatAreWidgets" => {
        "tags": ["flutter", "widgets", "basic"],
        "difficulty": "basic",
        "hasCode": false,
      },
      "statelessVsStateful" => {
        "tags": ["flutter", "widgets", "performance"],
        "difficulty": "basic",
        "hasCode": true,
      },
      "materialAppScaffold" => {
        "tags": ["flutter", "widgets"],
        "difficulty": "basic",
        "hasCode": false,
      },
      "buildContext" => {
        "tags": ["flutter", "widgets"],
        "difficulty": "basic",
        "hasCode": false,
      },
      "listsSetsMaps" => {
        "tags": ["dart", "dataStructures"],
        "difficulty": "basic",
        "hasCode": false,
      },
      "whatIsPolymorphism" => {
        "tags": ["dart", "oop"],
        "difficulty": "basic",
        "hasCode": false,
      },

      // === INTERMEDIATE ===
      "whatIsKey" => {
        "tags": ["flutter", "widgets"],
        "difficulty": "intermediate",
        "hasCode": false,
      },
      "hotReloadVsRestart" => {
        "tags": ["flutter"],
        "difficulty": "intermediate",
        "hasCode": false,
      },
      "widgetLifecycle" => {
        "tags": ["flutter", "widgets"],
        "difficulty": "intermediate",
        "hasCode": false,
      },
      "whatAreMixins" => {
        "tags": ["dart", "oop"],
        "difficulty": "intermediate",
        "hasCode": true,
      },
      "extensionMethods" => {
        "tags": ["dart"],
        "difficulty": "intermediate",
        "hasCode": true,
      },
      "solidPrinciples" => {
        "tags": ["flutter", "architecture"],
        "difficulty": "intermediate",
        "hasCode": false,
      },
      "blocPattern" => {
        "tags": ["flutter", "stateManagement", "designPattern"],
        "difficulty": "intermediate",
        "hasCode": false,
      },
      "providerVsBloc" => {
        "tags": ["flutter", "stateManagement", "designPattern"],
        "difficulty": "intermediate",
        "hasCode": false,
      },
      "futureVsStream" => {
        "tags": ["dart", "async"],
        "difficulty": "intermediate",
        "hasCode": true,
      },
      "navigationPushReplace" => {
        "tags": ["flutter", "navigation"],
        "difficulty": "intermediate",
        "hasCode": false,
      },
      "futureBuilderStreamBuilder" => {
        "tags": ["flutter", "widgets", "async"],
        "difficulty": "intermediate",
        "hasCode": false,
      },
      "constructorFactory" => {
        "tags": ["dart", "oop"],
        "difficulty": "intermediate",
        "hasCode": true,
      },
      "singletonPattern" => {
        "tags": ["dart", "designPattern"],
        "difficulty": "intermediate",
        "hasCode": true,
      },
      "inheritanceVsComposition" => {
        "tags": ["dart", "oop"],
        "difficulty": "intermediate",
        "hasCode": false,
      },

      // === ADVANCED ===
      "navigator1Vs2" => {
        "tags": ["flutter", "navigation"],
        "difficulty": "advanced",
        "hasCode": false,
      },
      "whatIsIsolate" => {
        "tags": ["dart", "concurrency"],
        "difficulty": "advanced",
        "hasCode": false,
      },
      "flutterPerformance" => {
        "tags": ["flutter", "performance"],
        "difficulty": "advanced",
        "hasCode": false,
      },
      "renderingEngine" => {
        "tags": ["flutter", "performance"],
        "difficulty": "advanced",
        "hasCode": false,
      },
      "flutterVsReactNative" => {
        "tags": ["flutter", "comparison"],
        "difficulty": "advanced",
        "hasCode": false,
      },
      _ => {"tags": <String>[], "difficulty": "basic", "hasCode": false},
    };
  }
}
