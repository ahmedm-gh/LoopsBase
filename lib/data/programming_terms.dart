import '../core/models/content.dart';
import '../core/models/localized_text.dart';
import '../core/models/term.dart';

abstract class TermKeys {
  static const fundamentalsVariable = "fundamentals-variable";
  static const fundamentalsDataType = "fundamentals-data-type";
  static const fundamentalsFunction = "fundamentals-function";
  static const fundamentalsArgument = "fundamentals-argument";
  static const fundamentalsConditional = "fundamentals-conditional";
  static const fundamentalsLoop = "fundamentals-loop";
  static const fundamentalsAlgorithm = "fundamentals-algorithm";
  static const fundamentalsBigO = "fundamentals-big-o";
  static const dataStructureArray = "data-structure-array";
  static const dataStructureSet = "data-structure-set";
  static const dataStructureMap = "data-structure-map";
  static const dataStructureStack = "data-structure-stack";
  static const dataStructureQueue = "data-structure-queue";
  static const dataStructureLinkedList = "data-structure-linked-list";
  static const dataStructureTree = "data-structure-tree";
  static const dataStructureGraph = "data-structure-graph";
  static const oopClass = "oop-class";
  static const oopObject = "oop-object";
  static const oopInterface = "oop-interface";
  static const oopAbstractClass = "oop-abstract-class";
  static const oopInheritance = "oop-inheritance";
  static const oopPolymorphism = "oop-polymorphism";
  static const oopEncapsulation = "oop-encapsulation";
  static const oopAbstraction = "oop-abstraction";
  static const oopMethod = "oop-method";
  static const paradigmOop = "paradigm-oop";
  static const paradigmFunctional = "paradigm-functional";
  static const paradigmProcedural = "paradigm-procedural";
  static const concurrencyThread = "concurrency-thread";
  static const concurrencyProcess = "concurrency-process";
  static const concurrencySemaphore = "concurrency-semaphore";
  static const concurrencyDeadlock = "concurrency-deadlock";
  static const concurrencyRaceCondition = "concurrency-race-condition";
  static const concurrencyAsync = "concurrency-async";
  static const dartLanguage = "dart-language";
  static const flutterFramework = "flutter-framework";
  static const flutterWidget = "flutter-widget";
  static const flutterStatelessWidget = "flutter-stateless-widget";
  static const flutterStatefulWidget = "flutter-stateful-widget";
  static const flutterHotReload = "flutter-hot-reload";
  static const flutterHotRestart = "flutter-hot-restart";
  static const flutterMaterialDesign = "flutter-material-design";
  static const dartNullSafety = "dart-null-safety";
  static const dartPub = "dart-pub";
  static const dartIsolate = "dart-isolate";
  static const dartFuture = "dart-future";
  static const dartStream = "dart-stream";
  static const dartMixin = "dart-mixin";
  static const fundamentalsConstant = "fundamentals-constant";
  static const fundamentalsParameter = "fundamentals-parameter";
  static const fundamentalsReturnValue = "fundamentals-return-value";
  static const fundamentalsNull = "fundamentals-null";
  static const fundamentalsRecursion = "fundamentals-recursion";
  static const oopConstructor = "oop-constructor";
  static const oopGetterSetter = "oop-getter-setter";
  static const immutable = "immutable";
  static const state = "state";
  static const typeInference = "type-inference";
  static const staticTyping = "static-typing";
  static const dynamicTyping = "dynamic-typing";
  static const compilation = "compilation";
  static const runtime = "runtime";
  static const compiler = "compiler";
  static const interpreter = "interpreter";
  static const package = "package";
  static const dependency = "dependency";
  static const library = "library";
  static const importExport = "import-export";
  static const frameworkConcept = "framework-concept";
  static const sdk = "sdk";
  static const api = "api";
  static const exception = "exception";
  static const errorHandling = "error-handling";
  static const tryCatch = "try-catch";
  static const assertion = "assertion";
  static const testing = "testing";
  static const unitTest = "unit-test";
  static const widgetTest = "widget-test";
  static const integrationTest = "integration-test";
  static const mock = "mock";
  static const versionControl = "version-control";
  static const git = "git";
  static const commit = "commit";
  static const branch = "branch";
  static const merge = "merge";
  static const pullRequest = "pull-request";
  static const codeReview = "code-review";
  static const singleton = "singleton";
  static const factoryConstructor = "factory-constructor";
  static const observerPattern = "observer-pattern";
  static const mvc = "mvc";
  static const mvvm = "mvvm";
  static const dependencyInjection = "dependency-injection";
  static const callback = "callback";
  static const json = "json";
  static const serialization = "serialization";
  static const httpHttps = "http-https";
  static const restApi = "rest-api";
  static const websocket = "websocket";
  static const authentication = "authentication";
  static const authorization = "authorization";
  static const jwt = "jwt";
  static const stateManagement = "state-management";
  static const bloc = "bloc";
  static const providerPattern = "provider-pattern";
  static const reactiveProgramming = "reactive-programming";
  static const buildMethod = "build-method";
  static const buildContext = "build-context";
  static const eventLoop = "event-loop";
  static const architectureClean = "architecture-clean";
  static const architectureLayered = "architecture-layered";
  static const patternRepository = "pattern-repository";
  static const patternServiceLocator = "pattern-service-locator";
  static const stateManagementCubit = "state-management-cubit";
  static const toolRiverpod = "tool-riverpod";
  static const toolGetIt = "tool-get-it";
  static const patternRedux = "pattern-redux";
  static const conceptDesignPattern = "concept-design-pattern";
  static const principleSolid = "principle-solid";
  static const principleDry = "principle-dry";
  static const principleKiss = "principle-kiss";
  static const principleYagni = "principle-yagni";
  static const gitRebase = "git-rebase";
  static const conceptRefactoring = "concept-refactoring";
  static const conceptCodeSmell = "concept-code-smell";
  static const technicalDebt = "technical-debt";
  static const toolLint = "tool-lint";
  static const memoryGarbageCollection = "memory-garbage-collection";
  static const memoryLeak = "memory-leak";
  static const memoryHeap = "memory-heap";
  static const memoryStack = "memory-stack";
  static const conceptPointer = "concept-pointer";
  static const conceptReference = "concept-reference";
  static const dataDeserialization = "data-deserialization";
  static const securityEncryption = "security-encryption";
  static const securityHashing = "security-hashing";
  static const dbDatabase = "db-database";
  static const dbSql = "db-sql";
  static const dbNosql = "db-nosql";
  static const dbOrm = "db-orm";
  static const performanceCaching = "performance-caching";
  static const devopsDocker = "devops-docker";
  static const devopsContainerization = "devops-containerization";
  static const cloudComputing = "cloud-computing";
  static const cloudServerless = "cloud-serverless";
  static const architectureMicroservices = "architecture-microservices";
  static const architectureMonolith = "architecture-monolith";
  static const devopsConcept = "devops-concept";
  static const devopsCiCd = "devops-ci-cd";
  static const devopsDeployment = "devops-deployment";
  static const environmentConcept = "environment-concept";
  static const environmentProduction = "environment-production";
  static const environmentStaging = "environment-staging";
  static const toolDebugMode = "tool-debug-mode";
  static const toolReleaseMode = "tool-release-mode";
  static const uiResponsive = "ui-responsive";
  static const flutterCupertino = "flutter-cupertino";
  static const uiAnimation = "ui-animation";
  static const conceptLifecycle = "concept-lifecycle";
  static const flutterLifecycleMethod = "flutter-lifecycle-method";
  static const flutterRendering = "flutter-rendering";
  static const flutterWidgetLayout = "flutter-widget-layout";
  static const flutterConstraint = "flutter-constraint";
  static const flutterWidgetFlex = "flutter-widget-flex";
  static const flutterWidgetExpanded = "flutter-widget-expanded";
  static const flutterWidgetMediaQuery = "flutter-widget-media-query";
  static const flutterNavigator = "flutter-navigator";
  static const flutterRouting = "flutter-routing";
  static const flutterDeepLinking = "flutter-deep-linking";
  static const uiTheming = "ui-theming";
  static const i18nL10N = "i18n-l10n";
  static const uiAccessibility = "ui-accessibility";
  static const performanceOptimization = "performance-optimization";
  static const performanceLazyLoading = "performance-lazy-loading";
  static const compilationAot = "compilation-aot";
  static const compilationJit = "compilation-jit";
  static const conceptTreeShaking = "concept-tree-shaking";
  static const conceptObfuscation = "concept-obfuscation";
  static const dartGenerics = "dart-generics";
  static const dartExtensions = "dart-extensions";
  static const dartRecords = "dart-records";
  static const dartPatterns = "dart-patterns";
  static const flutterPlatformChannel = "flutter-platform-channel";
  static const flutterGoldenTest = "flutter-golden-test";
  static const methodologyTdd = "methodology-tdd";
  static const methodologyBdd = "methodology-bdd";
  static const netGraphql = "net-graphql";
  static const netGrpc = "net-grpc";
  static const securitySslPinning = "security-ssl-pinning";
  static const conceptCodeSplitting = "concept-code-splitting";
  static const toolFormatter = "tool-formatter";
  static const dbMigration = "db-migration";
  static const dbIndex = "db-index";
  static const testingStub = "testing-stub";
  static const conceptModule = "concept-module";
  static const conceptNamespace = "concept-namespace";
}

const Map<String, ProgrammingTerm> allTerms = {
  TermKeys.fundamentalsVariable: ProgrammingTerm(
    id: TermKeys.fundamentalsVariable,
    title: LocS(en: 'Variable', ar: 'المتغير'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An abstract storage location with a symbolic name that holds data. Variables allow programs to store and update values during execution.',
        ),
      ],
      ar: [
        StrContent(
          'موقع تخزين مجرد له اسم رمزي يحتوي على البيانات. تسمح المتغيرات للبرامج بتخزين القيم وتحديثها أثناء التنفيذ.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Think of it as a labeled box where you can put different values.',
        ),
        ULContent(
          title: 'In Dart, variables can be declared using:',
          value: [
            'var - type is inferred automatically',
            'final - value cannot be changed after initialization',
            'const - compile-time constant',
            'Explicit types (int, String, double, etc.)',
          ],
        ),
      ],
      ar: [
        StrContent('فكر فيه كصندوق مُسمى يمكنك وضع قيم مختلفة فيه.'),
        ULContent(
          title: 'في Dart، يمكن تعريف المتغيرات باستخدام:',
          value: [
            'var - يتم استنتاج النوع تلقائيًا',
            'final - لا يمكن تغيير القيمة بعد التهيئة',
            'const - ثابت وقت الترجمة',
            'أنواع صريحة (int، String، double، إلخ)',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .c, .python, .javascript],
    relatedTerms: [TermKeys.fundamentalsDataType, TermKeys.dartNullSafety],
    tags: ['storage', 'data', 'declaration', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.fundamentalsDataType: ProgrammingTerm(
    id: TermKeys.fundamentalsDataType,
    title: LocS(en: 'Data Type', ar: 'نوع البيانات'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A classification of data that defines what values it can hold and what operations can be performed on it.',
        ),
      ],
      ar: [
        StrContent(
          'تصنيف للبيانات يحدد القيم التي يمكن أن تحتويها والعمليات التي يمكن إجراؤها عليها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Data types tell the compiler or interpreter how to use the data.',
        ),
        ULContent(
          title: 'Common primitive types:',
          value: [
            'Integer (int) - whole numbers like 1, 42, -5',
            'Float/Double - decimal numbers like 3.14, -0.5',
            'Boolean (bool) - true or false',
            'String - text like "Hello"',
            "Character (char) - single character like 'A'",
          ],
        ),
        StrContent(
          'Dart has strong, static typing with null safety, meaning types are checked at compile time and null errors are prevented.',
        ),
      ],
      ar: [
        StrContent(
          'تخبر أنواع البيانات المترجم أو المفسر كيفية استخدام البيانات.',
        ),
        ULContent(
          title: 'الأنواع الأساسية الشائعة:',
          value: [
            'عدد صحيح (int) - أعداد كاملة مثل 1، 42، -5',
            'عدد عشري (Float/Double) - أعداد عشرية مثل 3.14، -0.5',
            'منطقي (bool) - صحيح أو خاطئ',
            'نص (String) - نصوص مثل "مرحبا"',
            "حرف (char) - حرف واحد مثل 'أ'",
          ],
        ),
        StrContent(
          'يمتلك Dart نظام كتابة قوي وثابت مع أمان من القيم الفارغة، مما يعني أن الأنواع يتم فحصها في وقت الترجمة ويتم منع أخطاء القيم الفارغة.',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .c, .python],
    relatedTerms: [TermKeys.fundamentalsVariable, TermKeys.dartNullSafety],
    tags: ['types', 'primitive', 'classification', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.fundamentalsFunction: ProgrammingTerm(
    id: TermKeys.fundamentalsFunction,
    title: LocS(en: 'Function', ar: 'الدالة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A reusable block of code that performs a specific task. Functions take input (parameters), process it, and optionally return a result.',
        ),
      ],
      ar: [
        StrContent(
          'كتلة قابلة لإعادة الاستخدام من التعليمات البرمجية تؤدي مهمة محددة. تأخذ الدوال مدخلات (معاملات)، تعالجها، وتُرجع نتيجة اختياريًا.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Benefits of functions:',
          value: [
            'Code reusability - write once, use many times',
            'Modularity - break complex problems into smaller pieces',
            'Maintainability - easier to update and debug',
            'Abstraction - hide implementation details',
          ],
        ),
        StrContent(
          'In Dart, functions are first-class objects (can be assigned to variables, passed as arguments) and support closures. Methods are functions that belong to a class.',
        ),
      ],
      ar: [
        ULContent(
          title: 'فوائد الدوال:',
          value: [
            'إعادة استخدام الكود - اكتب مرة واحدة، استخدم عدة مرات',
            'النمطية - تقسيم المشاكل المعقدة إلى أجزاء أصغر',
            'قابلية الصيانة - أسهل في التحديث وإصلاح الأخطاء',
            'التجريد - إخفاء تفاصيل التنفيذ',
          ],
        ),
        StrContent(
          'في Dart، الدوال هي كائنات من الدرجة الأولى (يمكن تعيينها للمتغيرات، تمريرها كوسائط) وتدعم الإغلاقات. الأساليب هي دوال تنتمي إلى فئة.',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .python, .javascript, .java],
    relatedTerms: [TermKeys.fundamentalsArgument, TermKeys.oopMethod],
    aliases: ['Method', 'Procedure', 'Subroutine'],
    tags: ['reusable', 'modular', 'code organization', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.fundamentalsArgument: ProgrammingTerm(
    id: TermKeys.fundamentalsArgument,
    title: LocS(en: 'Argument', ar: 'الوسيط'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The actual value or expression passed to a function when it is called. Arguments are the concrete data you provide to a function.',
        ),
      ],
      ar: [
        StrContent(
          'القيمة الفعلية أو التعبير الذي يتم تمريره إلى دالة عند استدعائها. الوسائط هي البيانات الفعلية التي تقدمها للدالة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Important distinction:',
          value: [
            'Parameter - the variable name in the function definition',
            'Argument - the actual value passed when calling the function',
          ],
        ),
        CodeContent(
          'void greet(String name) { ... }  // "name" is a parameter\n'
          'greet("Alice");  // "Alice" is an argument',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'تمييز مهم:',
          value: [
            'المعامل (Parameter) - اسم المتغير في تعريف الدالة',
            'الوسيط (Argument) - القيمة الفعلية الممررة عند استدعاء الدالة',
          ],
        ),
        CodeContent(
          'void greet(String name) { ... }  // "name" هو معامل\n'
          'greet("Alice");  // "Alice" هو وسيط',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .c, .java, .python],
    relatedTerms: [TermKeys.fundamentalsFunction],
    aliases: ['Parameter value'],
    tags: ['function', 'parameter', 'input', 'basics'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.fundamentalsConditional: ProgrammingTerm(
    id: TermKeys.fundamentalsConditional,
    title: LocS(en: 'Conditional (If-Else)', ar: 'الجملة الشرطية'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A control flow statement that executes different code blocks based on whether a condition is true or false.',
        ),
      ],
      ar: [
        StrContent(
          'جملة تحكم في التدفق تنفذ كتل كود مختلفة بناءً على ما إذا كان الشرط صحيحًا أم خاطئًا.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('Conditionals allow programs to make decisions.'),
        ULContent(
          title: 'Common conditional structures:',
          value: [
            'if - execute code if condition is true',
            'else - execute code if condition is false',
            'else if - check additional conditions',
            'switch/case - choose between multiple options',
            'ternary operator (?:) - compact if-else',
          ],
        ),
        StrContent('Example in Dart:'),
        CodeContent(
          'if (age >= 18) {\n'
          '  print("Adult");\n'
          '} else {\n'
          '  print("Minor");\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent('تسمح الجمل الشرطية للبرامج باتخاذ القرارات.'),
        ULContent(
          title: 'هياكل الشرط الشائعة:',
          value: [
            'if - تنفيذ الكود إذا كان الشرط صحيحًا',
            'else - تنفيذ الكود إذا كان الشرط خاطئًا',
            'else if - فحص شروط إضافية',
            'switch/case - الاختيار بين خيارات متعددة',
            'العامل الثلاثي (?:) - if-else مضغوط',
          ],
        ),
        StrContent('مثال في Dart:'),
        CodeContent(
          'if (age >= 18) {\n'
          '  print("بالغ");\n'
          '} else {\n'
          '  print("قاصر");\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .syntax,
    category: .fundamentals,
    languages: [.dart, .java, .c, .python, .javascript],
    relatedTerms: [TermKeys.fundamentalsLoop],
    aliases: ['If statement', 'Branching', 'Decision structure'],
    tags: ['control flow', 'decision', 'branching', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.fundamentalsLoop: ProgrammingTerm(
    id: TermKeys.fundamentalsLoop,
    title: LocS(en: 'Loop', ar: 'الحلقة التكرارية'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A control structure that repeats a block of code multiple times until a condition is met.',
        ),
      ],
      ar: [
        StrContent(
          'هيكل تحكم يكرر كتلة من التعليمات البرمجية عدة مرات حتى يتم استيفاء شرط.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('Loops allow you to automate repetitive tasks.'),
        ULContent(
          title: 'Types of loops:',
          value: [
            'for - repeat a specific number of times',
            'while - repeat while condition is true',
            'do-while - execute at least once, then repeat while condition is true',
            'for-in/forEach - iterate over collections',
          ],
        ),
        StrContent('Example in Dart:'),
        CodeContent(
          'for (int i = 0; i < 5; i++) {\n'
          '  print("Count: \$i");\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent('تسمح لك الحلقات بأتمتة المهام المتكررة.'),
        ULContent(
          title: 'أنواع الحلقات:',
          value: [
            'for - التكرار عدد محدد من المرات',
            'while - التكرار طالما الشرط صحيح',
            'do-while - التنفيذ مرة واحدة على الأقل، ثم التكرار طالما الشرط صحيح',
            'for-in/forEach - التكرار عبر المجموعات',
          ],
        ),
        StrContent('مثال في Dart:'),
        CodeContent(
          'for (int i = 0; i < 5; i++) {\n'
          '  print("العدد: \$i");\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .syntax,
    category: .fundamentals,
    languages: [.dart, .c, .java, .python],
    relatedTerms: [
      TermKeys.fundamentalsConditional,
      TermKeys.dataStructureArray,
    ],
    aliases: ['Iteration', 'Repetition'],
    tags: ['control flow', 'iteration', 'repeat', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.fundamentalsAlgorithm: ProgrammingTerm(
    id: TermKeys.fundamentalsAlgorithm,
    title: LocS(en: 'Algorithm', ar: 'الخوارزمية'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A step-by-step set of instructions designed to solve a specific problem or perform a computation.',
        ),
      ],
      ar: [
        StrContent(
          'مجموعة خطوات متسلسلة من التعليمات المصممة لحل مشكلة محددة أو إجراء عملية حسابية.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'An algorithm must be:',
          value: [
            'Well-defined - each step is clear and unambiguous',
            'Finite - it must eventually end',
            'Effective - each step can be performed',
          ],
        ),
        ULContent(
          title: 'Examples of algorithms:',
          value: [
            'Sorting algorithms (bubble sort, quick sort, merge sort)',
            'Search algorithms (linear search, binary search)',
            'Path-finding algorithms (Dijkstra, A*)',
            'Encryption algorithms (AES, RSA)',
          ],
        ),
        StrContent(
          'Every program implements one or more algorithms to accomplish its goals.',
        ),
      ],
      ar: [
        ULContent(
          title: 'يجب أن تكون الخوارزمية:',
          value: [
            'محددة جيدًا - كل خطوة واضحة ولا لبس فيها',
            'محدودة - يجب أن تنتهي في النهاية',
            'فعالة - يمكن تنفيذ كل خطوة',
          ],
        ),
        ULContent(
          title: 'أمثلة على الخوارزميات:',
          value: [
            'خوارزميات الترتيب (الفقاعي، السريع، الدمج)',
            'خوارزميات البحث (الخطي، الثنائي)',
            'خوارزميات إيجاد المسار (Dijkstra، A*)',
            'خوارزميات التشفير (AES، RSA)',
          ],
        ),
        StrContent(
          'كل برنامج ينفذ واحدة أو أكثر من الخوارزميات لتحقيق أهدافه.',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    relatedTerms: [TermKeys.fundamentalsBigO],
    tags: ['problem solving', 'computation', 'logic', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.fundamentalsBigO: ProgrammingTerm(
    id: TermKeys.fundamentalsBigO,
    title: LocS(en: 'Big O Notation', ar: 'ترميز O الكبير'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A mathematical notation that describes how the runtime or space requirements of an algorithm grow as the input size increases.',
        ),
      ],
      ar: [
        StrContent(
          'ترميز رياضي يصف كيف تنمو متطلبات وقت التشغيل أو المساحة للخوارزمية مع زيادة حجم المدخلات.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('It measures the worst-case scenario.'),
        ULContent(
          title: 'Common Big O complexities (from fastest to slowest):',
          value: [
            'O(1) - Constant: same time regardless of input size',
            'O(log n) - Logarithmic: very efficient, doubles with each step',
            'O(n) - Linear: time grows proportionally with input',
            'O(n log n) - Linearithmic: efficient sorting algorithms',
            'O(n²) - Quadratic: nested loops, slower for large inputs',
            'O(2ⁿ) - Exponential: very slow, doubles with each input',
          ],
        ),
        StrContent(
          'Example: Binary search is O(log n), much faster than linear search O(n).',
        ),
      ],
      ar: [
        StrContent('يقيس أسوأ سيناريو.'),
        ULContent(
          title: 'تعقيدات O الكبير الشائعة (من الأسرع إلى الأبطأ):',
          value: [
            'O(1) - ثابت: نفس الوقت بغض النظر عن حجم المدخلات',
            'O(log n) - لوغاريتمي: فعال جدًا، يتضاعف مع كل خطوة',
            'O(n) - خطي: الوقت ينمو بشكل متناسب مع المدخلات',
            'O(n log n) - خطي لوغاريتمي: خوارزميات الترتيب الفعالة',
            'O(n²) - تربيعي: حلقات متداخلة، أبطأ للمدخلات الكبيرة',
            'O(2ⁿ) - أسي: بطيء جدًا، يتضاعف مع كل مدخل',
          ],
        ),
        StrContent(
          'مثال: البحث الثنائي هو O(log n)، أسرع بكثير من البحث الخطي O(n).',
        ),
      ],
    ),
    type: .concept,
    category: .performance,
    relatedTerms: [TermKeys.fundamentalsAlgorithm],
    aliases: ['Time complexity', 'Space complexity', 'Algorithmic complexity'],
    tags: ['performance', 'complexity', 'analysis', 'optimization'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.dataStructureArray: ProgrammingTerm(
    id: TermKeys.dataStructureArray,
    title: LocS(en: 'Array / List', ar: 'المصفوفة / القائمة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An ordered collection of elements of the same type, accessed by index (position number).',
        ),
      ],
      ar: [
        StrContent(
          'مجموعة مرتبة من العناصر من نفس النوع، يتم الوصول إليها بواسطة الفهرس (رقم الموضع).',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('Arrays are one of the most fundamental data structures.'),
        ULContent(
          title: 'Key features:',
          value: [
            'Fast access - retrieve any element in O(1) time using its index',
            'Sequential storage - elements are stored in contiguous memory',
            'Fixed or dynamic size - depends on the language',
          ],
        ),
        StrContent('In Dart, the List class provides a growable array:'),
        CodeContent(
          'List<int> numbers = [1, 2, 3, 4, 5];\n'
          'print(numbers[0]); // prints 1',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent('المصفوفات هي واحدة من هياكل البيانات الأساسية.'),
        ULContent(
          title: 'الميزات الرئيسية:',
          value: [
            'وصول سريع - استرجاع أي عنصر في وقت O(1) باستخدام فهرسه',
            'تخزين متسلسل - يتم تخزين العناصر في ذاكرة متجاورة',
            'حجم ثابت أو ديناميكي - يعتمد على اللغة',
          ],
        ),
        StrContent('في Dart، توفر فئة List مصفوفة قابلة للنمو:'),
        CodeContent(
          'List<int> numbers = [1, 2, 3, 4, 5];\n'
          'print(numbers[0]); // يطبع 1',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .c, .java, .python],
    relatedTerms: [TermKeys.fundamentalsLoop, TermKeys.dataStructureLinkedList],
    aliases: ['Vector', 'Dynamic array'],
    tags: ['collection', 'indexed', 'sequence', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.dataStructureSet: ProgrammingTerm(
    id: TermKeys.dataStructureSet,
    title: LocS(en: 'Set', ar: 'المجموعة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A collection of unique elements with no particular order. Sets automatically prevent duplicates.',
        ),
      ],
      ar: [
        StrContent(
          'مجموعة من العناصر الفريدة بدون ترتيب معين. تمنع المجموعات التكرارات تلقائيًا.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key features:',
          value: [
            'Uniqueness - each element appears only once',
            'Fast membership testing - check if element exists quickly',
            'No indexing - elements have no specific order',
            'Set operations - union, intersection, difference',
          ],
        ),
        StrContent('In Dart:'),
        CodeContent(
          "Set<String> fruits = {'apple', 'banana', 'apple'};\n"
          "print(fruits); // {apple, banana} - no duplicates",
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الميزات الرئيسية:',
          value: [
            'التفرد - كل عنصر يظهر مرة واحدة فقط',
            'اختبار عضوية سريع - التحقق من وجود العنصر بسرعة',
            'بدون فهرسة - العناصر ليس لها ترتيب محدد',
            'عمليات المجموعات - الاتحاد، التقاطع، الفرق',
          ],
        ),
        StrContent('في Dart:'),
        CodeContent(
          "Set<String> fruits = {'apple', 'banana', 'apple'};\n"
          "print(fruits); // {apple, banana} - لا تكرارات",
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .python, .java],
    relatedTerms: [TermKeys.dataStructureMap],
    tags: ['collection', 'unique', 'unordered', 'no duplicates'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.dataStructureMap: ProgrammingTerm(
    id: TermKeys.dataStructureMap,
    title: LocS(en: 'Map / Dictionary', ar: 'الخريطة / القاموس'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A collection of key-value pairs where each key is unique and maps to exactly one value.',
        ),
      ],
      ar: [
        StrContent(
          'مجموعة من أزواج مفتاح-قيمة حيث كل مفتاح فريد ويرتبط بقيمة واحدة بالضبط.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Also known as a hash table, dictionary, or associative array.',
        ),
        ULContent(
          title: 'Key features:',
          value: [
            'Fast lookup - find values by key in O(1) average time',
            'Key uniqueness - each key appears only once',
            'Flexible keys - keys can be strings, numbers, or objects',
          ],
        ),
        StrContent('In Dart:'),
        CodeContent(
          'Map<String, int> ages = {\n'
          "  'Alice': 30,\n"
          "  'Bob': 25,\n"
          '};\n'
          "print(ages['Alice']); // 30",
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent(
          'يُعرف أيضًا باسم جدول التجزئة، القاموس، أو المصفوفة الترابطية.',
        ),
        ULContent(
          title: 'الميزات الرئيسية:',
          value: [
            'بحث سريع - البحث عن القيم بالمفتاح في وقت O(1) في المتوسط',
            'تفرد المفتاح - كل مفتاح يظهر مرة واحدة فقط',
            'مفاتيح مرنة - يمكن أن تكون المفاتيح نصوصًا أو أرقامًا أو كائنات',
          ],
        ),
        StrContent('في Dart:'),
        CodeContent(
          'Map<String, int> ages = {\n'
          "  'Alice': 30,\n"
          "  'Bob': 25,\n"
          '};\n'
          "print(ages['Alice']); // 30",
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .java, .python, .javascript],
    relatedTerms: [TermKeys.dataStructureSet],
    aliases: [
      'Hash table',
      'Hash map',
      'Associative array',
      'Object (JavaScript)',
    ],
    tags: ['collection', 'key-value', 'lookup', 'hash'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.dataStructureStack: ProgrammingTerm(
    id: TermKeys.dataStructureStack,
    title: LocS(en: 'Stack', ar: 'المكدس'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A Last-In-First-Out (LIFO) data structure. Think of it like a stack of plates - you can only add or remove from the top.',
        ),
      ],
      ar: [
        StrContent(
          'هيكل بيانات الأخير في الأول خارج (LIFO). فكر فيه مثل كومة من الأطباق - يمكنك فقط الإضافة أو الإزالة من الأعلى.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key operations:',
          value: [
            'Push - add an element to the top',
            'Pop - remove and return the top element',
            'Peek - view the top element without removing it',
          ],
        ),
        ULContent(
          title: 'Common uses:',
          value: [
            'Undo functionality in editors',
            'Function call stack (how recursion works)',
            'Expression evaluation',
            'Backtracking algorithms',
          ],
        ),
        StrContent('In Dart, use List as a stack:'),
        CodeContent(
          'List<int> stack = [];\n'
          'stack.add(1);  // push\n'
          'stack.removeLast();  // pop',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'العمليات الرئيسية:',
          value: [
            'دفع (Push) - إضافة عنصر إلى الأعلى',
            'إخراج (Pop) - إزالة وإرجاع العنصر العلوي',
            'نظرة خاطفة (Peek) - عرض العنصر العلوي دون إزالته',
          ],
        ),
        ULContent(
          title: 'الاستخدامات الشائعة:',
          value: [
            'وظيفة التراجع في المحررات',
            'مكدس استدعاء الدوال (كيف يعمل التكرار)',
            'تقييم التعبيرات',
            'خوارزميات التتبع العكسي',
          ],
        ),
        StrContent('في Dart، استخدم List كمكدس:'),
        CodeContent(
          'List<int> stack = [];\n'
          'stack.add(1);  // دفع\n'
          'stack.removeLast();  // إخراج',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .cpp, .java],
    relatedTerms: [TermKeys.dataStructureQueue],
    tags: ['lifo', 'collection', 'undo', 'recursion'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.dataStructureQueue: ProgrammingTerm(
    id: TermKeys.dataStructureQueue,
    title: LocS(en: 'Queue', ar: 'الطابور'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A First-In-First-Out (FIFO) data structure. Think of it like a line of people waiting - the first person to arrive is the first to be served.',
        ),
      ],
      ar: [
        StrContent(
          'هيكل بيانات الأول في الأول خارج (FIFO). فكر فيه مثل طابور من الأشخاص المنتظرين - أول شخص يصل هو أول من يتم خدمته.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key operations:',
          value: [
            'Enqueue - add an element to the back',
            'Dequeue - remove and return the front element',
            'Peek - view the front element without removing it',
          ],
        ),
        ULContent(
          title: 'Common uses:',
          value: [
            'Task scheduling',
            'Breadth-first search (BFS)',
            'Print job queues',
            'Message queues in systems',
          ],
        ),
        StrContent('In Dart:'),
        CodeContent(
          "import 'dart:collection';\n"
          'Queue<String> queue = Queue();\n'
          "queue.add('first');  // enqueue\n"
          'queue.removeFirst();  // dequeue',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'العمليات الرئيسية:',
          value: [
            'إدخال في الطابور (Enqueue) - إضافة عنصر إلى الخلف',
            'إخراج من الطابور (Dequeue) - إزالة وإرجاع العنصر الأمامي',
            'نظرة خاطفة (Peek) - عرض العنصر الأمامي دون إزالته',
          ],
        ),
        ULContent(
          title: 'الاستخدامات الشائعة:',
          value: [
            'جدولة المهام',
            'البحث بالعرض أولاً (BFS)',
            'طوابير الطباعة',
            'طوابير الرسائل في الأنظمة',
          ],
        ),
        StrContent('في Dart:'),
        CodeContent(
          "import 'dart:collection';\n"
          'Queue<String> queue = Queue();\n'
          "queue.add('أول');  // إدخال في الطابور\n"
          'queue.removeFirst();  // إخراج من الطابور',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .java, .python],
    relatedTerms: [TermKeys.dataStructureStack],
    tags: ['fifo', 'collection', 'scheduling', 'ordering'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.dataStructureLinkedList: ProgrammingTerm(
    id: TermKeys.dataStructureLinkedList,
    title: LocS(en: 'Linked List', ar: 'القائمة المترابطة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A linear data structure where elements (nodes) are connected by pointers. Each node contains data and a reference to the next node.',
        ),
      ],
      ar: [
        StrContent(
          'هيكل بيانات خطي حيث يتم ربط العناصر (العقد) بواسطة مؤشرات. تحتوي كل عقدة على بيانات ومرجع للعقدة التالية.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Advantages:',
          value: [
            'Dynamic size - grows and shrinks easily',
            'Efficient insertion/deletion - O(1) if you have the position',
            'No wasted memory - uses only what it needs',
          ],
        ),
        ULContent(
          title: 'Disadvantages:',
          value: [
            'No random access - must traverse from the start',
            'Extra memory for pointers',
          ],
        ),
        ULContent(
          title: 'Types:',
          value: [
            'Singly linked - points to next node only',
            'Doubly linked - points to both next and previous',
            'Circular - last node points back to first',
          ],
        ),
        StrContent(
          "Note: Dart doesn't have a built-in LinkedList, but you can implement it manually.",
        ),
      ],
      ar: [
        ULContent(
          title: 'المزايا:',
          value: [
            'حجم ديناميكي - ينمو ويتقلص بسهولة',
            'إدراج/حذف فعال - O(1) إذا كان لديك الموضع',
            'لا ذاكرة مهدرة - يستخدم فقط ما يحتاجه',
          ],
        ),
        ULContent(
          title: 'العيوب:',
          value: [
            'لا وصول عشوائي - يجب التنقل من البداية',
            'ذاكرة إضافية للمؤشرات',
          ],
        ),
        ULContent(
          title: 'الأنواع:',
          value: [
            'مترابطة أحادية - تشير للعقدة التالية فقط',
            'مترابطة مزدوجة - تشير للعقدة التالية والسابقة',
            'دائرية - العقدة الأخيرة تشير للأولى',
          ],
        ),
        StrContent(
          'ملاحظة: Dart ليس لديه LinkedList مدمج، لكن يمكنك تنفيذه يدويًا.',
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.c, .cpp, .java],
    relatedTerms: [TermKeys.dataStructureArray],
    tags: ['linear', 'dynamic', 'pointer', 'nodes'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.dataStructureTree: ProgrammingTerm(
    id: TermKeys.dataStructureTree,
    title: LocS(en: 'Tree', ar: 'الشجرة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A hierarchical data structure with nodes connected in a parent-child relationship. It has one root node at the top, and every other node has exactly one parent.',
        ),
      ],
      ar: [
        StrContent(
          'هيكل بيانات هرمي مع عقد متصلة في علاقة والد-طفل. له عقدة جذر واحدة في الأعلى، وكل عقدة أخرى لها والد واحد بالضبط.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key concepts:',
          value: [
            'Root - the top node with no parent',
            'Parent - a node with children',
            'Child - a node descended from another',
            'Leaf - a node with no children',
            'Height - longest path from root to leaf',
          ],
        ),
        ULContent(
          title: 'Common types:',
          value: [
            'Binary tree - each node has at most 2 children',
            'Binary search tree - left child < parent < right child',
            'AVL tree - self-balancing binary search tree',
            'Heap - complete binary tree with heap property',
          ],
        ),
        StrContent(
          'Used for: file systems, DOM, databases, decision trees, Flutter widget tree.',
        ),
      ],
      ar: [
        ULContent(
          title: 'المفاهيم الرئيسية:',
          value: [
            'الجذر (Root) - العقدة العليا بدون والد',
            'الوالد (Parent) - عقدة لها أطفال',
            'الطفل (Child) - عقدة منحدرة من أخرى',
            'الورقة (Leaf) - عقدة بدون أطفال',
            'الارتفاع (Height) - أطول مسار من الجذر إلى ورقة',
          ],
        ),
        ULContent(
          title: 'الأنواع الشائعة:',
          value: [
            'الشجرة الثنائية - كل عقدة لها طفلان على الأكثر',
            'شجرة البحث الثنائية - الطفل الأيسر < الوالد < الطفل الأيمن',
            'شجرة AVL - شجرة بحث ثنائية ذاتية التوازن',
            'الكومة (Heap) - شجرة ثنائية كاملة مع خاصية الكومة',
          ],
        ),
        StrContent(
          'تُستخدم في: أنظمة الملفات، DOM، قواعد البيانات، أشجار القرار، شجرة ويدجت Flutter.',
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .java, .cpp],
    relatedTerms: [TermKeys.dataStructureGraph, TermKeys.flutterWidget],
    tags: ['hierarchical', 'nodes', 'binary', 'recursive'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.dataStructureGraph: ProgrammingTerm(
    id: TermKeys.dataStructureGraph,
    title: LocS(en: 'Graph', ar: 'الرسم البياني'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A collection of vertices (nodes) connected by edges. Graphs model relationships and networks.',
        ),
      ],
      ar: [
        StrContent(
          'مجموعة من الرؤوس (العقد) المتصلة بحواف. تمثل الرسوم البيانية العلاقات والشبكات.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types:',
          value: [
            'Directed - edges have direction (A → B)',
            'Undirected - edges have no direction (A ↔ B)',
            'Weighted - edges have values/costs',
            'Cyclic - contains cycles (loops back)',
            'Acyclic - no cycles (DAG)',
          ],
        ),
        ULContent(
          title: 'Representations:',
          value: [
            'Adjacency matrix - 2D array of connections',
            'Adjacency list - map of node to its neighbors',
          ],
        ),
        StrContent(
          'Used for: social networks, maps/GPS, recommendation systems, dependency resolution.',
        ),
        CodeContent(
          '// In Dart, use Map<Node, List<Node>> for adjacency lists.',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الأنواع:',
          value: [
            'موجه - الحواف لها اتجاه (A → B)',
            'غير موجه - الحواف ليس لها اتجاه (A ↔ B)',
            'موزون - الحواف لها قيم/تكاليف',
            'دوري - يحتوي على دورات (يعود للخلف)',
            'لا دوري - لا دورات (DAG)',
          ],
        ),
        ULContent(
          title: 'التمثيلات:',
          value: [
            'مصفوفة التجاور - مصفوفة ثنائية للاتصالات',
            'قائمة التجاور - خريطة من العقدة إلى جيرانها',
          ],
        ),
        StrContent(
          'تُستخدم في: الشبكات الاجتماعية، الخرائط/GPS، أنظمة التوصيات، حل التبعيات.',
        ),
        CodeContent(
          '// في Dart، استخدم Map<Node, List<Node>> لقوائم التجاور.',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .java, .python],
    relatedTerms: [TermKeys.dataStructureTree],
    tags: ['network', 'vertices', 'edges', 'relationships'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.oopClass: ProgrammingTerm(
    id: TermKeys.oopClass,
    title: LocS(en: 'Class', ar: 'الفئة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A blueprint or template for creating objects. A class defines the properties (data) and methods (behavior) that objects of that class will have.',
        ),
      ],
      ar: [
        StrContent(
          'مخطط أو قالب لإنشاء الكائنات. تحدد الفئة الخصائص (البيانات) والأساليب (السلوك) التي ستمتلكها كائنات تلك الفئة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Think of a class as a cookie cutter, and objects as the cookies made from it.',
        ),
        StrContent('In Dart:'),
        CodeContent(
          'class Person {\n'
          '  String name;\n'
          '  int age;\n'
          '  \n'
          '  Person(this.name, this.age);\n'
          '  \n'
          '  void introduce() {\n'
          '    print("Hi, I\'m \$name, age \$age");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent(
          'Classes are fundamental to Object-Oriented Programming (OOP).',
        ),
      ],
      ar: [
        StrContent(
          'فكر في الفئة كقالب البسكويت، والكائنات كالبسكويت المصنوع منه.',
        ),
        StrContent('في Dart:'),
        CodeContent(
          'class Person {\n'
          '  String name;\n'
          '  int age;\n'
          '  \n'
          '  Person(this.name, this.age);\n'
          '  \n'
          '  void introduce() {\n'
          '    print("مرحبًا، أنا \$name، عمري \$age");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent('الفئات أساسية للبرمجة الموجهة للكائنات (OOP).'),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .cpp, .python],
    relatedTerms: [TermKeys.oopObject, TermKeys.oopInheritance],
    tags: ['oop', 'blueprint', 'template', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.oopObject: ProgrammingTerm(
    id: TermKeys.oopObject,
    title: LocS(en: 'Object', ar: 'الكائن'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An instance of a class - a concrete entity with actual data. If a class is a blueprint, an object is the actual building created from it.',
        ),
      ],
      ar: [
        StrContent(
          'نسخة من فئة - كيان ملموس ببيانات فعلية. إذا كانت الفئة مخططًا، فالكائن هو المبنى الفعلي المنشأ منه.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Objects have:',
          value: [
            'State - the current values of their properties',
            'Behavior - the methods they can perform',
            'Identity - a unique reference in memory',
          ],
        ),
        StrContent('Example in Dart:'),
        CodeContent(
          'Person alice = Person("Alice", 30);\n'
          'Person bob = Person("Bob", 25);\n'
          'alice.introduce();  // "Hi, I\'m Alice, age 30"',
          codeLanguage: .dart,
        ),
        StrContent(
          'alice and bob are different objects (instances) of the Person class.',
        ),
      ],
      ar: [
        ULContent(
          title: 'للكائنات:',
          value: [
            'الحالة - القيم الحالية لخصائصها',
            'السلوك - الأساليب التي يمكنها تنفيذها',
            'الهوية - مرجع فريد في الذاكرة',
          ],
        ),
        StrContent('مثال في Dart:'),
        CodeContent(
          'Person alice = Person("Alice", 30);\n'
          'Person bob = Person("Bob", 25);\n'
          'alice.introduce();  // "مرحبًا، أنا Alice، عمري 30"',
          codeLanguage: .dart,
        ),
        StrContent('alice و bob كائنان مختلفان (نسخ) من فئة Person.'),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .cpp, .python],
    relatedTerms: [TermKeys.oopClass],
    aliases: ['Instance'],
    tags: ['oop', 'instance', 'entity', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.oopInterface: ProgrammingTerm(
    id: TermKeys.oopInterface,
    title: LocS(en: 'Interface', ar: 'الواجهة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A contract that defines a set of method signatures (names and parameters) without implementation. Classes that implement an interface must provide concrete implementations for all its methods.',
        ),
      ],
      ar: [
        StrContent(
          'عقد يحدد مجموعة من تواقيع الأساليب (الأسماء والمعاملات) بدون تنفيذ. الفئات التي تنفذ واجهة يجب أن توفر تطبيقات ملموسة لجميع أساليبها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Purpose:',
          value: [
            'Define a common API for different classes',
            'Enable polymorphism - treat different objects uniformly',
            'Separate "what" from "how" (interface from implementation)',
          ],
        ),
        StrContent('In Dart, any class can serve as an interface:'),
        CodeContent(
          'class Flyable {\n'
          '  void fly();\n'
          '}\n\n'
          'class Bird implements Flyable {\n'
          '  @override\n'
          '  void fly() => print("Flapping wings");\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الغرض:',
          value: [
            'تحديد واجهة برمجة تطبيقات مشتركة لفئات مختلفة',
            'تمكين تعدد الأشكال - التعامل مع كائنات مختلفة بشكل موحد',
            'فصل "ماذا" عن "كيف" (الواجهة عن التنفيذ)',
          ],
        ),
        StrContent('في Dart، يمكن لأي فئة أن تكون واجهة:'),
        CodeContent(
          'class Flyable {\n'
          '  void fly();\n'
          '}\n\n'
          'class Bird implements Flyable {\n'
          '  @override\n'
          '  void fly() => print("رفرفة الأجنحة");\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .csharp, .typescript],
    relatedTerms: [TermKeys.oopAbstractClass, TermKeys.oopPolymorphism],
    aliases: ['Contract', 'Protocol'],
    tags: ['oop', 'contract', 'abstraction', 'api'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.oopAbstractClass: ProgrammingTerm(
    id: TermKeys.oopAbstractClass,
    title: LocS(en: 'Abstract Class', ar: 'الفئة المجردة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A class that cannot be instantiated directly and typically contains abstract methods (methods without implementation). It serves as a base class for other classes.',
        ),
      ],
      ar: [
        StrContent(
          'فئة لا يمكن إنشاء نسخ منها مباشرة وعادة تحتوي على أساليب مجردة (أساليب بدون تنفيذ). تعمل كفئة أساس لفئات أخرى.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Differences from interfaces:',
          value: [
            'Can have concrete (implemented) methods',
            'Can have fields/properties',
            'Can have constructors',
            'A class can extend only one abstract class (single inheritance)',
          ],
        ),
        StrContent('In Dart:'),
        CodeContent(
          'abstract class Animal {\n'
          '  String name;\n'
          '  Animal(this.name);\n'
          '  \n'
          '  void speak();  // abstract method\n'
          '  void eat() => print("\$name is eating");  // concrete method\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الفروقات عن الواجهات:',
          value: [
            'يمكن أن تحتوي على أساليب ملموسة (منفذة)',
            'يمكن أن تحتوي على حقول/خصائص',
            'يمكن أن تحتوي على منشئات',
            'يمكن للفئة أن ترث فئة مجردة واحدة فقط (وراثة أحادية)',
          ],
        ),
        StrContent('في Dart:'),
        CodeContent(
          'abstract class Animal {\n'
          '  String name;\n'
          '  Animal(this.name);\n'
          '  \n'
          '  void speak();  // أسلوب مجرد\n'
          '  void eat() => print("\$name يأكل");  // أسلوب ملموس\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .cpp, .csharp],
    relatedTerms: [TermKeys.oopInterface, TermKeys.oopInheritance],
    tags: ['oop', 'base class', 'abstract', 'template'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.oopInheritance: ProgrammingTerm(
    id: TermKeys.oopInheritance,
    title: LocS(en: 'Inheritance', ar: 'الوراثة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A mechanism where a class (child/subclass) derives properties and methods from another class (parent/superclass). It enables code reuse and creates hierarchical relationships.',
        ),
      ],
      ar: [
        StrContent(
          'آلية حيث تستمد فئة (الطفل/الفئة الفرعية) الخصائص والأساليب من فئة أخرى (الوالد/الفئة الأساسية). تمكن من إعادة استخدام الكود وإنشاء علاقات هرمية.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Benefits:',
          value: [
            'Code reusability - inherit existing functionality',
            'Extensibility - add or override behavior',
            'Hierarchical organization - model real-world relationships',
          ],
        ),
        StrContent('In Dart:'),
        CodeContent(
          'class Animal {\n'
          '  void eat() => print("Eating");\n'
          '}\n\n'
          'class Dog extends Animal {\n'
          '  void bark() => print("Woof!");\n'
          '}\n\n'
          'Dog d = Dog();\n'
          'd.eat();  // inherited from Animal\n'
          'd.bark(); // own method',
          codeLanguage: .dart,
        ),
        StrContent('Dart supports single inheritance (one parent only).'),
      ],
      ar: [
        ULContent(
          title: 'الفوائد:',
          value: [
            'إعادة استخدام الكود - وراثة الوظائف الموجودة',
            'القابلية للتوسع - إضافة أو تجاوز السلوك',
            'التنظيم الهرمي - نمذجة العلاقات الواقعية',
          ],
        ),
        StrContent('في Dart:'),
        CodeContent(
          'class Animal {\n'
          '  void eat() => print("يأكل");\n'
          '}\n\n'
          'class Dog extends Animal {\n'
          '  void bark() => print("عواء!");\n'
          '}\n\n'
          'Dog d = Dog();\n'
          'd.eat();  // موروث من Animal\n'
          'd.bark(); // أسلوب خاص',
          codeLanguage: .dart,
        ),
        StrContent('Dart يدعم الوراثة الأحادية (والد واحد فقط).'),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .cpp, .python],
    relatedTerms: [
      TermKeys.oopClass,
      TermKeys.oopPolymorphism,
      TermKeys.dartMixin,
    ],
    aliases: ['Extends', 'Subclassing'],
    tags: ['oop', 'hierarchy', 'reuse', 'extends'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.oopPolymorphism: ProgrammingTerm(
    id: TermKeys.oopPolymorphism,
    title: LocS(en: 'Polymorphism', ar: 'تعدد الأشكال'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The ability of objects of different types to be treated as objects of a common type. "Poly" means many, "morph" means forms - literally "many forms."',
        ),
      ],
      ar: [
        StrContent(
          'قدرة كائنات من أنواع مختلفة على أن تُعامل ككائنات من نوع مشترك. "Poly" تعني كثير، "morph" تعني أشكال - حرفيًا "أشكال كثيرة."',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Two main types:',
          value: [
            'Compile-time (Method Overloading) - same method name, different parameters',
            'Runtime (Method Overriding) - subclass provides specific implementation',
          ],
        ),
        StrContent('Example in Dart:'),
        CodeContent(
          'void makeSound(Animal animal) {\n'
          '  animal.speak();  // different behavior for Dog, Cat, Bird\n'
          '}\n\n'
          'makeSound(Dog());   // "Woof!"\n'
          'makeSound(Cat());   // "Meow!"\n'
          'makeSound(Bird());  // "Tweet!"',
          codeLanguage: .dart,
        ),
        StrContent('This enables writing flexible, reusable code.'),
      ],
      ar: [
        ULContent(
          title: 'نوعان رئيسيان:',
          value: [
            'وقت الترجمة (تحميل زائد للأساليب) - نفس اسم الأسلوب، معاملات مختلفة',
            'وقت التشغيل (تجاوز الأساليب) - الفئة الفرعية توفر تنفيذًا محددًا',
          ],
        ),
        StrContent('مثال في Dart:'),
        CodeContent(
          'void makeSound(Animal animal) {\n'
          '  animal.speak();  // سلوك مختلف لـ Dog، Cat، Bird\n'
          '}\n\n'
          'makeSound(Dog());   // "عواء!"\n'
          'makeSound(Cat());   // "مواء!"\n'
          'makeSound(Bird());  // "تغريد!"',
          codeLanguage: .dart,
        ),
        StrContent('هذا يمكن من كتابة كود مرن وقابل لإعادة الاستخدام.'),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .cpp, .csharp],
    relatedTerms: [TermKeys.oopInheritance, TermKeys.oopInterface],
    aliases: ['Method overriding', 'Dynamic dispatch'],
    tags: ['oop', 'flexibility', 'override', 'interface'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.oopEncapsulation: ProgrammingTerm(
    id: TermKeys.oopEncapsulation,
    title: LocS(en: 'Encapsulation', ar: 'التغليف'),
    quickOverview: LocV(
      en: [
        StrContent(
          'Bundling data (properties) and methods that operate on that data within a single unit (class), and restricting direct access to some components.',
        ),
      ],
      ar: [
        StrContent(
          'تجميع البيانات (الخصائص) والأساليب التي تعمل على تلك البيانات ضمن وحدة واحدة (فئة)، وتقييد الوصول المباشر إلى بعض المكونات.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Benefits:',
          value: [
            'Data hiding - internal details are protected',
            'Controlled access - use getters/setters',
            'Flexibility - change implementation without affecting external code',
            'Modularity - self-contained units',
          ],
        ),
        StrContent('In Dart, use underscore prefix for private members:'),
        CodeContent(
          'class BankAccount {\n'
          '  double _balance = 0;  // private\n'
          '  \n'
          '  double get balance => _balance;  // public getter\n'
          '  \n'
          '  void deposit(double amount) {  // public method\n'
          '    if (amount > 0) _balance += amount;\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الفوائد:',
          value: [
            'إخفاء البيانات - التفاصيل الداخلية محمية',
            'وصول محكوم - استخدام getters/setters',
            'المرونة - تغيير التنفيذ دون التأثير على الكود الخارجي',
            'النمطية - وحدات مستقلة',
          ],
        ),
        StrContent('في Dart، استخدم شرطة سفلية كبادئة للأعضاء الخاصة:'),
        CodeContent(
          'class BankAccount {\n'
          '  double _balance = 0;  // خاص\n'
          '  \n'
          '  double get balance => _balance;  // getter عام\n'
          '  \n'
          '  void deposit(double amount) {  // أسلوب عام\n'
          '    if (amount > 0) _balance += amount;\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .principle,
    category: .oop,
    languages: [.dart, .java, .cpp],
    relatedTerms: [TermKeys.oopAbstraction],
    aliases: ['Data hiding', 'Information hiding'],
    tags: ['oop', 'privacy', 'data protection', 'modularity'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.oopAbstraction: ProgrammingTerm(
    id: TermKeys.oopAbstraction,
    title: LocS(en: 'Abstraction', ar: 'التجريد'),
    quickOverview: LocV(
      en: [
        StrContent(
          'Hiding complex implementation details and showing only the essential features. Abstraction simplifies complexity by modeling classes at an appropriate level.',
        ),
      ],
      ar: [
        StrContent(
          'إخفاء تفاصيل التنفيذ المعقدة وإظهار الميزات الأساسية فقط. يبسط التجريد التعقيد من خلال نمذجة الفئات في المستوى المناسب.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Think of driving a car:',
          value: [
            'You use simple interfaces (steering wheel, pedals)',
            "You don't need to know how the engine works internally",
          ],
        ),
        ULContent(
          title: 'In programming:',
          value: [
            'Abstract classes and interfaces define "what" without "how"',
            'High-level operations hide low-level details',
            'User works with simple, intuitive APIs',
          ],
        ),
        StrContent(
          "Example: Using List in Dart - you don't need to know the internal array implementation, you just use add(), remove(), etc.",
        ),
      ],
      ar: [
        ULContent(
          title: 'فكر في قيادة السيارة:',
          value: [
            'تستخدم واجهات بسيطة (عجلة القيادة، الدواسات)',
            'لا تحتاج لمعرفة كيف يعمل المحرك داخليًا',
          ],
        ),
        ULContent(
          title: 'في البرمجة:',
          value: [
            'الفئات المجردة والواجهات تحدد "ماذا" بدون "كيف"',
            'العمليات عالية المستوى تخفي التفاصيل منخفضة المستوى',
            'المستخدم يعمل مع واجهات برمجة بسيطة وبديهية',
          ],
        ),
        StrContent(
          'مثال: استخدام List في Dart - لا تحتاج لمعرفة تنفيذ المصفوفة الداخلي، فقط تستخدم add()، remove()، إلخ.',
        ),
      ],
    ),
    type: .principle,
    category: .oop,
    languages: [.dart, .java, .cpp],
    relatedTerms: [
      TermKeys.oopEncapsulation,
      TermKeys.oopInterface,
      TermKeys.oopAbstractClass,
    ],
    tags: ['oop', 'simplification', 'interface', 'hiding complexity'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.paradigmOop: ProgrammingTerm(
    id: TermKeys.paradigmOop,
    title: LocS(
      en: 'Object-Oriented Programming',
      ar: 'البرمجة الموجهة للكائنات',
    ),
    quickOverview: LocV(
      en: [
        StrContent(
          'A programming paradigm based on the concept of "objects" - entities that encapsulate data and behavior. OOP organizes code around objects rather than functions and logic.',
        ),
      ],
      ar: [
        StrContent(
          'نموذج برمجة يعتمد على مفهوم "الكائنات" - كيانات تغلف البيانات والسلوك. تنظم OOP الكود حول الكائنات بدلاً من الدوال والمنطق.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Four pillars of OOP:',
          value: [
            '1. Encapsulation - bundling data and methods',
            '2. Abstraction - hiding complexity',
            '3. Inheritance - code reuse through class hierarchies',
            '4. Polymorphism - objects taking many forms',
          ],
        ),
        ULContent(
          title: 'Benefits:',
          value: [
            'Modularity - code is organized in self-contained units',
            'Reusability - inherit and reuse existing code',
            'Maintainability - easier to update and extend',
            'Real-world modeling - maps naturally to real concepts',
          ],
        ),
        StrContent(
          'Dart is fundamentally object-oriented - everything is an object.',
        ),
      ],
      ar: [
        ULContent(
          title: 'الأعمدة الأربعة لـ OOP:',
          value: [
            '1. التغليف - تجميع البيانات والأساليب',
            '2. التجريد - إخفاء التعقيد',
            '3. الوراثة - إعادة استخدام الكود عبر التسلسلات الهرمية للفئات',
            '4. تعدد الأشكال - الكائنات تأخذ أشكالاً عديدة',
          ],
        ),
        ULContent(
          title: 'الفوائد:',
          value: [
            'النمطية - الكود منظم في وحدات مستقلة',
            'إعادة الاستخدام - وراثة وإعادة استخدام الكود الموجود',
            'قابلية الصيانة - أسهل في التحديث والتوسع',
            'نمذجة العالم الواقعي - يتوافق بشكل طبيعي مع المفاهيم الواقعية',
          ],
        ),
        StrContent('Dart هو في الأساس موجه للكائنات - كل شيء هو كائن.'),
      ],
    ),
    type: .paradigm,
    category: .oop,
    languages: [.dart, .java, .cpp, .csharp, .python],
    relatedTerms: [
      TermKeys.oopClass,
      TermKeys.oopObject,
      TermKeys.oopEncapsulation,
      TermKeys.oopAbstraction,
      TermKeys.oopInheritance,
      TermKeys.oopPolymorphism,
    ],
    aliases: ['OOP'],
    tags: ['paradigm', 'oop', 'objects', 'classes'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.paradigmFunctional: ProgrammingTerm(
    id: TermKeys.paradigmFunctional,
    title: LocS(en: 'Functional Programming', ar: 'البرمجة الوظيفية'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A programming paradigm where computation is done by evaluating mathematical functions and avoiding changing state or mutable data.',
        ),
      ],
      ar: [
        StrContent(
          'نموذج برمجة حيث يتم الحساب من خلال تقييم الدوال الرياضية وتجنب تغيير الحالة أو البيانات القابلة للتعديل.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key concepts:',
          value: [
            'Pure functions - same input always produces same output, no side effects',
            'Immutability - data cannot be changed after creation',
            'First-class functions - functions as values',
            'Higher-order functions - functions that take or return functions',
            'Function composition - combining simple functions to build complex ones',
          ],
        ),
        StrContent('Common operations: map, filter, reduce'),
        StrContent(
          'Dart supports functional programming with first-class functions:',
        ),
        CodeContent(
          'final numbers = [1, 2, 3, 4];\n'
          'final doubled = numbers.map((n) => n * 2).toList();',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'المفاهيم الرئيسية:',
          value: [
            'دوال نقية - نفس المدخل ينتج دائمًا نفس المخرج، بدون آثار جانبية',
            'عدم القابلية للتغيير - لا يمكن تغيير البيانات بعد إنشائها',
            'دوال من الدرجة الأولى - الدوال كقيم',
            'دوال من رتبة أعلى - دوال تأخذ أو ترجع دوال',
            'تركيب الدوال - دمج دوال بسيطة لبناء دوال معقدة',
          ],
        ),
        StrContent('العمليات الشائعة: map، filter، reduce'),
        StrContent('Dart يدعم البرمجة الوظيفية مع دوال من الدرجة الأولى:'),
        CodeContent(
          'final numbers = [1, 2, 3, 4];\n'
          'final doubled = numbers.map((n) => n * 2).toList();',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .paradigm,
    category: .functionalProgramming,
    languages: [.dart, .haskell, .scala, .javascript],
    relatedTerms: [TermKeys.fundamentalsFunction],
    aliases: ['FP'],
    tags: ['paradigm', 'functional', 'pure functions', 'immutable'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.paradigmProcedural: ProgrammingTerm(
    id: TermKeys.paradigmProcedural,
    title: LocS(en: 'Procedural Programming', ar: 'البرمجة الإجرائية'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A programming paradigm based on the concept of procedure calls - step-by-step instructions organized into procedures (functions/subroutines).',
        ),
      ],
      ar: [
        StrContent(
          'نموذج برمجة يعتمد على مفهوم استدعاءات الإجراءات - تعليمات خطوة بخطوة منظمة في إجراءات (دوال/إجراءات فرعية).',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Characteristics:',
          value: [
            'Sequential execution - code runs from top to bottom',
            'Procedures/functions - organize code into reusable blocks',
            'Shared state - global and local variables',
            'Focus on "how" - step-by-step instructions',
          ],
        ),
        StrContent(
          'Languages like C and Pascal are procedural. Even in OOP languages like Dart, simple scripts often use procedural style:',
        ),
        CodeContent(
          'void main() {\n'
          '  var name = getName();\n'
          '  var greeting = createGreeting(name);\n'
          '  print(greeting);\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الخصائص:',
          value: [
            'تنفيذ متسلسل - الكود يعمل من الأعلى إلى الأسفل',
            'إجراءات/دوال - تنظيم الكود في كتل قابلة لإعادة الاستخدام',
            'حالة مشتركة - متغيرات عامة ومحلية',
            'التركيز على "كيف" - تعليمات خطوة بخطوة',
          ],
        ),
        StrContent(
          'لغات مثل C و Pascal هي إجرائية. حتى في لغات OOP مثل Dart، البرامج النصية البسيطة غالبًا تستخدم الأسلوب الإجرائي:',
        ),
        CodeContent(
          'void main() {\n'
          '  var name = getName();\n'
          '  var greeting = createGreeting(name);\n'
          '  print(greeting);\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .paradigm,
    category: .proceduralProgramming,
    languages: [.c, .dart],
    relatedTerms: [TermKeys.fundamentalsFunction],
    tags: ['paradigm', 'procedural', 'sequential', 'imperative'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.concurrencyThread: ProgrammingTerm(
    id: TermKeys.concurrencyThread,
    title: LocS(en: 'Thread', ar: 'الخيط'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The smallest sequence of programmed instructions that can be managed independently by a scheduler. Threads allow multiple tasks to run concurrently within a single process.',
        ),
      ],
      ar: [
        StrContent(
          'أصغر تسلسل من التعليمات المبرمجة التي يمكن إدارتها بشكل مستقل بواسطة مجدول. تسمح الخيوط بتشغيل مهام متعددة بشكل متزامن ضمن عملية واحدة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key points:',
          value: [
            'Lightweight - share memory and resources within the same process',
            'Concurrent execution - multiple threads can run "simultaneously"',
            'Shared memory - can access same variables (requires synchronization)',
          ],
        ),
        StrContent(
          'Note: Dart uses isolates instead of traditional threads. Isolates have their own memory and communicate via message passing, avoiding shared memory issues.',
        ),
      ],
      ar: [
        ULContent(
          title: 'النقاط الرئيسية:',
          value: [
            'خفيف الوزن - يشارك الذاكرة والموارد ضمن نفس العملية',
            'تنفيذ متزامن - يمكن لخيوط متعددة العمل "بشكل متزامن"',
            'ذاكرة مشتركة - يمكن الوصول لنفس المتغيرات (يتطلب تزامن)',
          ],
        ),
        StrContent(
          'ملاحظة: Dart يستخدم isolates بدلاً من الخيوط التقليدية. لدى Isolates ذاكرتها الخاصة وتتواصل عبر تمرير الرسائل، متجنبة مشاكل الذاكرة المشتركة.',
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    languages: [.java, .csharp, .cpp, .python],
    relatedTerms: [
      TermKeys.concurrencyProcess,
      TermKeys.dartIsolate,
      TermKeys.concurrencyRaceCondition,
    ],
    tags: ['concurrency', 'parallelism', 'multithreading'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.concurrencyProcess: ProgrammingTerm(
    id: TermKeys.concurrencyProcess,
    title: LocS(en: 'Process', ar: 'العملية'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An instance of a computer program that is being executed. A process has its own memory space, resources, and execution context.',
        ),
      ],
      ar: [
        StrContent(
          'نسخة من برنامج كمبيوتر قيد التنفيذ. للعملية مساحة ذاكرة خاصة بها، موارد، وسياق تنفيذ.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key differences from threads:',
          value: [
            "Isolated memory - processes don't share memory",
            'Heavier - more overhead to create and manage',
            "Independent - crash in one process doesn't affect others",
            'IPC needed - Inter-Process Communication for data sharing',
          ],
        ),
        StrContent(
          'Operating systems run multiple processes concurrently. Dart/Flutter apps typically run in a single process with multiple isolates.',
        ),
      ],
      ar: [
        ULContent(
          title: 'الفروقات الرئيسية عن الخيوط:',
          value: [
            'ذاكرة معزولة - العمليات لا تشارك الذاكرة',
            'أثقل - تكلفة أكبر للإنشاء والإدارة',
            'مستقلة - انهيار عملية لا يؤثر على الأخرى',
            'تحتاج IPC - اتصال بين العمليات لمشاركة البيانات',
          ],
        ),
        StrContent(
          'أنظمة التشغيل تشغل عمليات متعددة بشكل متزامن. تطبيقات Dart/Flutter عادة تعمل في عملية واحدة مع isolates متعددة.',
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    relatedTerms: [TermKeys.concurrencyThread, TermKeys.dartIsolate],
    tags: ['os', 'execution', 'memory', 'isolation'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.concurrencySemaphore: ProgrammingTerm(
    id: TermKeys.concurrencySemaphore,
    title: LocS(en: 'Semaphore', ar: 'الإشارة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A synchronization primitive used to control access to shared resources in concurrent systems. A semaphore maintains a counter that limits how many threads/processes can access a resource.',
        ),
      ],
      ar: [
        StrContent(
          'بدائية تزامن تُستخدم للتحكم في الوصول إلى الموارد المشتركة في الأنظمة المتزامنة. تحافظ الإشارة على عداد يحد من عدد الخيوط/العمليات التي يمكنها الوصول إلى مورد.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types:',
          value: [
            'Binary semaphore (mutex) - allows 0 or 1 thread (like a lock)',
            'Counting semaphore - allows N threads (e.g., connection pool)',
          ],
        ),
        ULContent(
          title: 'Operations:',
          value: [
            'Wait/P/acquire - decrement counter, block if zero',
            'Signal/V/release - increment counter, wake waiting thread',
          ],
        ),
        StrContent(
          'Used to prevent race conditions and coordinate access to limited resources.',
        ),
      ],
      ar: [
        ULContent(
          title: 'الأنواع:',
          value: [
            'إشارة ثنائية (mutex) - تسمح بـ 0 أو 1 خيط (مثل القفل)',
            'إشارة عد - تسمح بـ N خيط (مثل، تجمع الاتصالات)',
          ],
        ),
        ULContent(
          title: 'العمليات:',
          value: [
            'انتظار/P/استحواذ - تقليل العداد، حظر إذا كان صفرًا',
            'إشارة/V/إطلاق - زيادة العداد، إيقاظ خيط منتظر',
          ],
        ),
        StrContent(
          'تُستخدم لمنع ظروف السباق وتنسيق الوصول إلى الموارد المحدودة.',
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    relatedTerms: [
      TermKeys.concurrencyRaceCondition,
      TermKeys.concurrencyDeadlock,
    ],
    tags: ['synchronization', 'concurrency', 'mutex', 'lock'],
    era: .classic,
    popularityTier: .low,
  ),
  TermKeys.concurrencyDeadlock: ProgrammingTerm(
    id: TermKeys.concurrencyDeadlock,
    title: LocS(en: 'Deadlock', ar: 'الجمود'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A situation in concurrent programming where two or more threads/processes are permanently blocked, each waiting for a resource held by another.',
        ),
      ],
      ar: [
        StrContent(
          'موقف في البرمجة المتزامنة حيث يتم حظر خيطين أو أكثر/عمليات بشكل دائم، كل منها ينتظر موردًا يحتفظ به الآخر.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Classic example:',
          value: [
            'Thread A holds Resource 1, waits for Resource 2',
            'Thread B holds Resource 2, waits for Resource 1',
            'Both threads wait forever → deadlock!',
          ],
        ),
        ULContent(
          title: 'Four necessary conditions for deadlock:',
          value: [
            "Mutual exclusion - resources can't be shared",
            'Hold and wait - holding while requesting more',
            "No preemption - resources can't be forcibly taken",
            'Circular wait - circular chain of waiting',
          ],
        ),
        StrContent(
          'Prevention: avoid circular dependencies, use timeouts, acquire locks in consistent order.',
        ),
      ],
      ar: [
        ULContent(
          title: 'مثال كلاسيكي:',
          value: [
            'الخيط A يحتفظ بالمورد 1، ينتظر المورد 2',
            'الخيط B يحتفظ بالمورد 2، ينتظر المورد 1',
            'كلا الخيطين ينتظران للأبد → جمود!',
          ],
        ),
        ULContent(
          title: 'أربعة شروط ضرورية للجمود:',
          value: [
            'الاستبعاد المتبادل - لا يمكن مشاركة الموارد',
            'الاحتفاظ والانتظار - الاحتفاظ أثناء طلب المزيد',
            'عدم الانتزاع - لا يمكن أخذ الموارد بالقوة',
            'الانتظار الدائري - سلسلة دائرية من الانتظار',
          ],
        ),
        StrContent(
          'الوقاية: تجنب التبعيات الدائرية، استخدام مهلات، الحصول على الأقفال بترتيب ثابت.',
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    relatedTerms: [
      TermKeys.concurrencySemaphore,
      TermKeys.concurrencyRaceCondition,
    ],
    tags: ['concurrency', 'blocking', 'circular wait', 'bug'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.concurrencyRaceCondition: ProgrammingTerm(
    id: TermKeys.concurrencyRaceCondition,
    title: LocS(en: 'Race Condition', ar: 'ظرف السباق'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A bug that occurs when the behavior of software depends on the timing or ordering of uncontrollable events.',
        ),
      ],
      ar: [
        StrContent(
          'خطأ يحدث عندما يعتمد سلوك البرنامج على توقيت أو ترتيب الأحداث التي لا يمكن التحكم فيها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In multi-threaded programs, this happens when multiple threads access shared data without proper synchronization.',
        ),
        ULContent(
          title: 'Example:',
          value: [
            'Thread 1: reads counter (value = 5)',
            'Thread 2: reads counter (value = 5)',
            'Thread 1: increments and writes (counter = 6)',
            'Thread 2: increments and writes (counter = 6)',
            'Expected: 7, Got: 6 → race condition!',
          ],
        ),
        ULContent(
          title: 'Prevention:',
          value: [
            'Use locks/mutexes for synchronization',
            'Use atomic operations',
            'Avoid shared mutable state',
            'In Dart, use isolates to avoid shared memory',
          ],
        ),
      ],
      ar: [
        StrContent(
          'في البرامج متعددة الخيوط، يحدث هذا عندما تصل خيوط متعددة إلى بيانات مشتركة بدون تزامن مناسب.',
        ),
        ULContent(
          title: 'مثال:',
          value: [
            'الخيط 1: يقرأ العداد (القيمة = 5)',
            'الخيط 2: يقرأ العداد (القيمة = 5)',
            'الخيط 1: يزيد ويكتب (العداد = 6)',
            'الخيط 2: يزيد ويكتب (العداد = 6)',
            'المتوقع: 7، الناتج: 6 → ظرف سباق!',
          ],
        ),
        ULContent(
          title: 'الوقاية:',
          value: [
            'استخدام الأقفال/mutexes للتزامن',
            'استخدام العمليات الذرية',
            'تجنب الحالة المشتركة القابلة للتغيير',
            'في Dart، استخدم isolates لتجنب الذاكرة المشتركة',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    relatedTerms: [
      TermKeys.concurrencyThread,
      TermKeys.concurrencySemaphore,
      TermKeys.dartIsolate,
    ],
    tags: ['concurrency', 'bug', 'synchronization', 'shared state'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.concurrencyAsync: ProgrammingTerm(
    id: TermKeys.concurrencyAsync,
    title: LocS(en: 'Asynchronous Programming', ar: 'البرمجة غير المتزامنة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A programming model where operations run without blocking the main execution flow.',
        ),
      ],
      ar: [
        StrContent(
          'نموذج برمجة حيث تعمل العمليات دون حظر تدفق التنفيذ الرئيسي.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Long-running tasks (I/O, network requests) run in the background while the program continues.',
        ),
        ULContent(
          title: 'Benefits:',
          value: [
            'Responsiveness - UI stays responsive during long operations',
            'Efficiency - better resource utilization',
            'Scalability - handle many concurrent operations',
          ],
        ),
        StrContent('In Dart, use async/await:'),
        CodeContent(
          'Future<String> fetchData() async {\n'
          '  final response = await http.get(url);\n'
          '  return response.body;\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent(
          'The await keyword waits for the Future without blocking the event loop.',
        ),
      ],
      ar: [
        StrContent(
          'المهام طويلة الأمد (الإدخال/الإخراج، طلبات الشبكة) تعمل في الخلفية بينما يستمر البرنامج.',
        ),
        ULContent(
          title: 'الفوائد:',
          value: [
            'الاستجابة - تبقى واجهة المستخدم مستجيبة أثناء العمليات الطويلة',
            'الكفاءة - استخدام أفضل للموارد',
            'قابلية التوسع - التعامل مع عمليات متزامنة كثيرة',
          ],
        ),
        StrContent('في Dart، استخدم async/await:'),
        CodeContent(
          'Future<String> fetchData() async {\n'
          '  final response = await http.get(url);\n'
          '  return response.body;\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent('الكلمة المفتاحية await تنتظر Future دون حظر حلقة الأحداث.'),
      ],
    ),
    type: .concept,
    category: .concurrency,
    languages: [.dart, .javascript, .python, .csharp],
    relatedTerms: [TermKeys.dartFuture, TermKeys.dartStream],
    aliases: ['Async/await', 'Non-blocking'],
    tags: ['async', 'concurrency', 'non-blocking', 'responsive'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.dartLanguage: ProgrammingTerm(
    id: TermKeys.dartLanguage,
    title: LocS(en: 'Dart', ar: 'دارت'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A modern, client-optimized programming language developed by Google for building apps on multiple platforms.',
        ),
      ],
      ar: [
        StrContent(
          'لغة برمجة حديثة محسنة للعميل طورتها Google لبناء التطبيقات على منصات متعددة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('Dart is the language used to build Flutter applications.'),
        ULContent(
          title: 'Key features:',
          value: [
            'Object-oriented - everything is an object',
            'Strongly typed - with type inference',
            'Null safety - prevents null reference errors',
            'AOT & JIT compilation - fast development and performance',
            'Garbage collected - automatic memory management',
            'Async/await - built-in asynchronous programming',
          ],
        ),
        ULContent(
          title: 'Dart can compile to:',
          value: ['Native machine code (mobile/desktop)', 'JavaScript (web)'],
        ),
        StrContent(
          'Used for: Flutter apps, web apps, server-side development.',
        ),
      ],
      ar: [
        StrContent('Dart هي اللغة المستخدمة لبناء تطبيقات Flutter.'),
        ULContent(
          title: 'الميزات الرئيسية:',
          value: [
            'موجهة للكائنات - كل شيء هو كائن',
            'كتابة قوية - مع استنتاج النوع',
            'أمان القيم الفارغة - يمنع أخطاء المراجع الفارغة',
            'ترجمة AOT و JIT - تطوير سريع وأداء عالي',
            'جمع القمامة - إدارة تلقائية للذاكرة',
            'Async/await - برمجة غير متزامنة مدمجة',
          ],
        ),
        ULContent(
          title: 'يمكن لـ Dart الترجمة إلى:',
          value: ['كود آلة أصلي (موبايل/سطح مكتب)', 'JavaScript (ويب)'],
        ),
        StrContent(
          'تُستخدم في: تطبيقات Flutter، تطبيقات الويب، التطوير من جانب الخادم.',
        ),
      ],
    ),
    type: .tool,
    category: .mobileDevelopment,
    languages: [.dart],
    relatedTerms: [TermKeys.flutterFramework, TermKeys.dartNullSafety],
    tags: ['language', 'dart', 'google', 'flutter'],
    era: .modern,
    popularityTier: .veryHigh,
    introducedYear: 2011,
  ),
  TermKeys.flutterFramework: ProgrammingTerm(
    id: TermKeys.flutterFramework,
    title: LocS(en: 'Flutter', ar: 'فلاتر'),
    quickOverview: LocV(
      en: [
        StrContent(
          "Google's open-source UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase using Dart.",
        ),
      ],
      ar: [
        StrContent(
          'مجموعة أدوات واجهة المستخدم مفتوحة المصدر من Google لبناء تطبيقات جميلة مترجمة أصليًا للموبايل والويب وسطح المكتب من كود واحد باستخدام Dart.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key features:',
          value: [
            'Write once, run anywhere - single codebase for all platforms',
            'Hot reload - see changes instantly without losing state',
            'Beautiful UIs - rich set of customizable widgets',
            'Fast performance - compiles to native ARM code',
            'Material Design & Cupertino - platform-specific designs',
          ],
        ),
        StrContent(
          'Flutter uses a widget tree architecture where everything is a widget. Widgets describe what the UI should look like.',
        ),
      ],
      ar: [
        ULContent(
          title: 'الميزات الرئيسية:',
          value: [
            'اكتب مرة، شغل في أي مكان - كود واحد لجميع المنصات',
            'إعادة التحميل الساخن - شاهد التغييرات فورًا دون فقدان الحالة',
            'واجهات مستخدم جميلة - مجموعة غنية من الويدجت القابلة للتخصيص',
            'أداء سريع - يترجم إلى كود ARM أصلي',
            'Material Design و Cupertino - تصاميم خاصة بالمنصة',
          ],
        ),
        StrContent(
          'Flutter يستخدم معمارية شجرة الويدجت حيث كل شيء هو ويدجت. تصف الويدجت كيف يجب أن تبدو واجهة المستخدم.',
        ),
      ],
    ),
    type: .framework,
    category: .mobileDevelopment,
    languages: [.flutter, .dart],
    relatedTerms: [
      TermKeys.dartLanguage,
      TermKeys.flutterWidget,
      TermKeys.flutterHotReload,
    ],
    tags: ['framework', 'ui', 'cross-platform', 'google'],
    era: .modern,
    popularityTier: .veryHigh,
    introducedYear: 2017,
  ),
  TermKeys.flutterWidget: ProgrammingTerm(
    id: TermKeys.flutterWidget,
    title: LocS(en: 'Widget', ar: 'الويدجت'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The fundamental building block of a Flutter user interface. A widget is an immutable description of part of the UI.',
        ),
      ],
      ar: [
        StrContent(
          'اللبنة الأساسية لواجهة المستخدم في Flutter. الويدجت هو وصف ثابت لجزء من واجهة المستخدم.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Everything in Flutter is a widget:',
          value: [
            'Layout widgets - Row, Column, Container, Stack',
            'Interactive widgets - Button, TextField, Slider',
            'Styling widgets - Text, Icon, Image',
            'Material/Cupertino widgets - platform-specific designs',
          ],
        ),
        StrContent(
          'Widgets are arranged in a tree hierarchy. When state changes, Flutter rebuilds the affected widgets efficiently.',
        ),
        ULContent(
          title: 'Two main types:',
          value: [
            'StatelessWidget - for static content',
            'StatefulWidget - for dynamic content that can change',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'كل شيء في Flutter هو ويدجت:',
          value: [
            'ويدجت التخطيط - Row، Column، Container، Stack',
            'ويدجت تفاعلي - Button، TextField، Slider',
            'ويدجت التنسيق - Text، Icon، Image',
            'ويدجت Material/Cupertino - تصاميم خاصة بالمنصة',
          ],
        ),
        StrContent(
          'يتم ترتيب الويدجت في تسلسل هرمي شجري. عندما تتغير الحالة، يعيد Flutter بناء الويدجت المتأثر بكفاءة.',
        ),
        ULContent(
          title: 'نوعان رئيسيان:',
          value: [
            'StatelessWidget - للمحتوى الثابت',
            'StatefulWidget - للمحتوى الديناميكي الذي يمكن أن يتغير',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [
      TermKeys.flutterStatelessWidget,
      TermKeys.flutterStatefulWidget,
      TermKeys.flutterFramework,
    ],
    tags: ['flutter', 'ui', 'component', 'building block'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.flutterStatelessWidget: ProgrammingTerm(
    id: TermKeys.flutterStatelessWidget,
    title: LocS(en: 'StatelessWidget', ar: 'ويدجت بدون حالة'),
    quickOverview: LocV(
      en: [
        StrContent(
          "A Flutter widget that has no mutable state. Its appearance is completely determined by its constructor parameters and doesn't change over time.",
        ),
      ],
      ar: [
        StrContent(
          'ويدجت Flutter ليس له حالة قابلة للتغيير. يتم تحديد مظهره بالكامل بواسطة معاملات المنشئ ولا يتغير مع مرور الوقت.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Use StatelessWidget when:',
          value: [
            "The UI doesn't change dynamically",
            'You only display static information',
            'Widget depends only on constructor parameters',
          ],
        ),
        StrContent('Example:'),
        CodeContent(
          'class Greeting extends StatelessWidget {\n'
          '  final String name;\n'
          '  \n'
          '  const Greeting({required this.name});\n'
          '  \n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Text("Hello, \$name!");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'استخدم StatelessWidget عندما:',
          value: [
            'لا تتغير واجهة المستخدم ديناميكيًا',
            'تعرض معلومات ثابتة فقط',
            'يعتمد الويدجت فقط على معاملات المنشئ',
          ],
        ),
        StrContent('مثال:'),
        CodeContent(
          'class Greeting extends StatelessWidget {\n'
          '  final String name;\n'
          '  \n'
          '  const Greeting({required this.name});\n'
          '  \n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Text("مرحبًا، \$name!");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterStatefulWidget, TermKeys.flutterWidget],
    tags: ['flutter', 'widget', 'immutable', 'static'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.flutterStatefulWidget: ProgrammingTerm(
    id: TermKeys.flutterStatefulWidget,
    title: LocS(en: 'StatefulWidget', ar: 'ويدجت ذو حالة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A Flutter widget that maintains mutable state in a separate State object. When the state changes, the widget can rebuild to reflect those changes.',
        ),
      ],
      ar: [
        StrContent(
          'ويدجت Flutter يحافظ على حالة قابلة للتغيير في كائن State منفصل. عندما تتغير الحالة، يمكن للويدجت إعادة البناء لتعكس تلك التغييرات.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Use StatefulWidget when:',
          value: [
            'The UI changes based on user interaction',
            'You need to update the display dynamically',
            'Widget has internal data that can change',
          ],
        ),
        StrContent('Example:'),
        CodeContent(
          'class Counter extends StatefulWidget {\n'
          '  @override\n'
          '  State<Counter> createState() => _CounterState();\n'
          '}\n\n'
          'class _CounterState extends State<Counter> {\n'
          '  int count = 0;\n'
          '  \n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Column(\n'
          '      children: [\n'
          '        Text("\$count"),\n'
          '        ElevatedButton(\n'
          '          onPressed: () => setState(() => count++),\n'
          '          child: Text("Increment"),\n'
          '        ),\n'
          '      ],\n'
          '    );\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'استخدم StatefulWidget عندما:',
          value: [
            'تتغير واجهة المستخدم بناءً على تفاعل المستخدم',
            'تحتاج لتحديث العرض ديناميكيًا',
            'الويدجت له بيانات داخلية يمكن أن تتغير',
          ],
        ),
        StrContent('مثال:'),
        CodeContent(
          'class Counter extends StatefulWidget {\n'
          '  @override\n'
          '  State<Counter> createState() => _CounterState();\n'
          '}\n\n'
          'class _CounterState extends State<Counter> {\n'
          '  int count = 0;\n'
          '  \n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Column(\n'
          '      children: [\n'
          '        Text("\$count"),\n'
          '        ElevatedButton(\n'
          '          onPressed: () => setState(() => count++),\n'
          '          child: Text("زيادة"),\n'
          '        ),\n'
          '      ],\n'
          '    );\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .stateManagement,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterStatelessWidget, TermKeys.flutterWidget],
    tags: ['flutter', 'widget', 'mutable', 'dynamic', 'state'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.flutterHotReload: ProgrammingTerm(
    id: TermKeys.flutterHotReload,
    title: LocS(en: 'Hot Reload', ar: 'إعادة التحميل الساخن'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A Flutter feature that allows you to inject updated source code into a running app and see changes almost instantly without restarting the app or losing its state.',
        ),
      ],
      ar: [
        StrContent(
          'ميزة Flutter تسمح لك بحقن كود مصدر محدث في تطبيق قيد التشغيل ورؤية التغييرات على الفور تقريبًا دون إعادة تشغيل التطبيق أو فقدان حالته.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Benefits:',
          value: [
            'Instant feedback - see changes in less than a second',
            'Preserves state - app stays in the same place',
            'Boosts productivity - faster development cycle',
            'Works on all platforms - mobile, web, desktop',
          ],
        ),
        ULContent(
          title: 'How to use:',
          value: [
            'Press "r" in terminal',
            'Click hot reload button in IDE',
            'Save the file (if auto-reload enabled)',
          ],
        ),
        StrContent(
          "Hot reload is one of Flutter's most loved features for rapid development.",
        ),
      ],
      ar: [
        ULContent(
          title: 'الفوائد:',
          value: [
            'ملاحظات فورية - شاهد التغييرات في أقل من ثانية',
            'يحافظ على الحالة - التطبيق يبقى في نفس المكان',
            'يعزز الإنتاجية - دورة تطوير أسرع',
            'يعمل على جميع المنصات - موبايل، ويب، سطح مكتب',
          ],
        ),
        ULContent(
          title: 'كيفية الاستخدام:',
          value: [
            'اضغط "r" في الطرفية',
            'انقر زر إعادة التحميل الساخن في IDE',
            'احفظ الملف (إذا كانت إعادة التحميل التلقائي مفعلة)',
          ],
        ),
        StrContent(
          'إعادة التحميل الساخن هي واحدة من أكثر ميزات Flutter المحبوبة للتطوير السريع.',
        ),
      ],
    ),
    type: .feature,
    category: .mobileDevelopment,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterHotRestart, TermKeys.flutterFramework],
    tags: ['flutter', 'development', 'productivity', 'instant'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.flutterHotRestart: ProgrammingTerm(
    id: TermKeys.flutterHotRestart,
    title: LocS(en: 'Hot Restart', ar: 'إعادة التشغيل الساخن'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A Flutter feature similar to hot reload, but restarts the app from the main() function. This loses the current state but is faster than a full restart.',
        ),
      ],
      ar: [
        StrContent(
          'ميزة Flutter مشابهة لإعادة التحميل الساخن، لكنها تعيد تشغيل التطبيق من دالة main(). هذا يفقد الحالة الحالية لكنه أسرع من إعادة التشغيل الكاملة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Differences from hot reload:',
          value: [
            'Restarts from main() - loses all state',
            'Slower than hot reload (but faster than full restart)',
            'More thorough - catches more types of changes',
          ],
        ),
        ULContent(
          title: 'When to use hot restart:',
          value: [
            "When hot reload doesn't pick up changes",
            'After changing app initialization code',
            'To reset the app state quickly',
            'When hot reload shows unexpected behavior',
          ],
        ),
        StrContent(
          'How to use: Press "R" (capital) in terminal or click the hot restart button.',
        ),
      ],
      ar: [
        ULContent(
          title: 'الفروقات عن إعادة التحميل الساخن:',
          value: [
            'يعيد التشغيل من main() - يفقد كل الحالة',
            'أبطأ من إعادة التحميل الساخن (لكن أسرع من إعادة التشغيل الكاملة)',
            'أكثر شمولاً - يلتقط أنواعًا أكثر من التغييرات',
          ],
        ),
        ULContent(
          title: 'متى تستخدم إعادة التشغيل الساخن:',
          value: [
            'عندما لا تلتقط إعادة التحميل الساخن التغييرات',
            'بعد تغيير كود تهيئة التطبيق',
            'لإعادة تعيين حالة التطبيق بسرعة',
            'عندما تظهر إعادة التحميل الساخن سلوكًا غير متوقع',
          ],
        ),
        StrContent(
          'كيفية الاستخدام: اضغط "R" (كبير) في الطرفية أو انقر زر إعادة التشغيل الساخن.',
        ),
      ],
    ),
    type: .feature,
    category: .mobileDevelopment,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterHotReload],
    tags: ['flutter', 'development', 'restart', 'debugging'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.flutterMaterialDesign: ProgrammingTerm(
    id: TermKeys.flutterMaterialDesign,
    title: LocS(en: 'Material Design', ar: 'تصميم ماتيريال'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An open-source design system created by Google that provides guidelines for visual, motion, and interaction design across platforms and devices.',
        ),
      ],
      ar: [
        StrContent(
          'نظام تصميم مفتوح المصدر أنشأته Google يوفر إرشادات للتصميم المرئي والحركي والتفاعلي عبر المنصات والأجهزة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title:
              "Flutter's material library implements Material Design components:",
          value: [
            'MaterialApp - root widget for Material apps',
            'Scaffold - basic app structure with app bar, drawer, etc.',
            'Material widgets - Button, Card, Dialog, AppBar, etc.',
            'Material theming - consistent colors, typography, shapes',
          ],
        ),
        ULContent(
          title: 'Material Design principles:',
          value: [
            'Material as metaphor - inspired by physical materials',
            'Bold, graphic, intentional - clear visual hierarchy',
            'Motion provides meaning - purposeful animations',
          ],
        ),
        StrContent(
          'Widely used for Android apps and cross-platform consistency.',
        ),
      ],
      ar: [
        ULContent(
          title: 'مكتبة material في Flutter تنفذ مكونات Material Design:',
          value: [
            'MaterialApp - ويدجت جذر لتطبيقات Material',
            'Scaffold - هيكل تطبيق أساسي مع شريط تطبيق، درج، إلخ.',
            'ويدجت Material - Button، Card، Dialog، AppBar، إلخ.',
            'تصميم Material - ألوان متسقة، طباعة، أشكال',
          ],
        ),
        ULContent(
          title: 'مبادئ Material Design:',
          value: [
            'المادة كاستعارة - مستوحى من المواد الفيزيائية',
            'جريء، رسومي، متعمد - تسلسل هرمي بصري واضح',
            'الحركة توفر معنى - رسوم متحركة هادفة',
          ],
        ),
        StrContent('يستخدم على نطاق واسع لتطبيقات Android واتساق عبر المنصات.'),
      ],
    ),
    type: .designSystem,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterFramework, TermKeys.flutterWidget],
    tags: ['design system', 'ui', 'google', 'android'],
    era: .modern,
    popularityTier: .veryHigh,
    introducedYear: 2014,
  ),
  TermKeys.dartNullSafety: ProgrammingTerm(
    id: TermKeys.dartNullSafety,
    title: LocS(en: 'Null Safety', ar: 'أمان القيم الفارغة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A Dart language feature that helps prevent null reference errors by distinguishing between nullable and non-nullable types at compile time.',
        ),
      ],
      ar: [
        StrContent(
          'ميزة لغة Dart تساعد في منع أخطاء المراجع الفارغة من خلال التمييز بين الأنواع القابلة للقيم الفارغة وغير القابلة في وقت الترجمة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key concepts:',
          value: [
            "Non-nullable by default - variables can't be null unless explicitly marked",
            'Nullable types - use "?" to allow null (e.g., String?)',
            'Null-aware operators - ?., ??, ??=, !',
            'Compile-time safety - catch errors before runtime',
          ],
        ),
        StrContent('Examples:'),
        CodeContent(
          'String name = "Alice";  // Cannot be null\n'
          'String? nickname;  // Can be null\n'
          'int length = nickname?.length ?? 0;  // Safe access',
          codeLanguage: .dart,
        ),
        StrContent(
          'Null safety eliminates one of the most common sources of runtime errors.',
        ),
      ],
      ar: [
        ULContent(
          title: 'المفاهيم الرئيسية:',
          value: [
            'غير فارغة افتراضيًا - المتغيرات لا يمكن أن تكون فارغة إلا إذا وُسمت صراحة',
            'أنواع قابلة للقيم الفارغة - استخدم "?" للسماح بقيم فارغة (مثل، String?)',
            'عوامل واعية بالقيم الفارغة - ?.، ??، ??=، !',
            'أمان وقت الترجمة - اكتشاف الأخطاء قبل وقت التشغيل',
          ],
        ),
        StrContent('أمثلة:'),
        CodeContent(
          'String name = "Alice";  // لا يمكن أن يكون فارغًا\n'
          'String? nickname;  // يمكن أن يكون فارغًا\n'
          'int length = nickname?.length ?? 0;  // وصول آمن',
          codeLanguage: .dart,
        ),
        StrContent(
          'أمان القيم الفارغة يزيل واحدًا من أكثر مصادر أخطاء وقت التشغيل شيوعًا.',
        ),
      ],
    ),
    type: .feature,
    category: .fundamentals,
    languages: [.dart],
    relatedTerms: [TermKeys.fundamentalsDataType, TermKeys.dartLanguage],
    tags: ['safety', 'null', 'type system', 'error prevention'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.dartPub: ProgrammingTerm(
    id: TermKeys.dartPub,
    title: LocS(en: 'pub (Package Manager)', ar: 'pub (مدير الحزم)'),
    quickOverview: LocV(
      en: [
        StrContent(
          "Dart's package manager and command-line tool for managing dependencies, publishing packages, and running scripts.",
        ),
      ],
      ar: [
        StrContent(
          'مدير حزم Dart وأداة سطر الأوامر لإدارة التبعيات، نشر الحزم، وتشغيل البرامج النصية.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key features:',
          value: [
            'Dependency management - install and update packages',
            'Package repository - pub.dev hosts thousands of packages',
            'Version resolution - handles compatible versions',
            'Script running - execute Dart scripts',
          ],
        ),
        ULContent(
          title: 'Common commands:',
          value: [
            'pub get - install dependencies from pubspec.yaml',
            'pub upgrade - update to latest compatible versions',
            'pub publish - publish a package to pub.dev',
          ],
        ),
        StrContent('Similar to: npm (JavaScript), pip (Python), Maven (Java)'),
      ],
      ar: [
        ULContent(
          title: 'الميزات الرئيسية:',
          value: [
            'إدارة التبعيات - تثبيت وتحديث الحزم',
            'مستودع الحزم - pub.dev يستضيف آلاف الحزم',
            'حل الإصدار - يتعامل مع الإصدارات المتوافقة',
            'تشغيل البرامج النصية - تنفيذ برامج Dart النصية',
          ],
        ),
        ULContent(
          title: 'الأوامر الشائعة:',
          value: [
            'pub get - تثبيت التبعيات من pubspec.yaml',
            'pub upgrade - التحديث لأحدث الإصدارات المتوافقة',
            'pub publish - نشر حزمة على pub.dev',
          ],
        ),
        StrContent('مشابه لـ: npm (JavaScript)، pip (Python)، Maven (Java)'),
      ],
    ),
    type: .tool,
    category: .mobileDevelopment,
    languages: [.dart],
    relatedTerms: [TermKeys.dartLanguage],
    aliases: ['Package manager', 'pub.dev'],
    tags: ['package manager', 'dependencies', 'dart', 'tool'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.dartIsolate: ProgrammingTerm(
    id: TermKeys.dartIsolate,
    title: LocS(en: 'Isolate', ar: 'العزلة'),
    quickOverview: LocV(
      en: [
        StrContent(
          "Dart's concurrency model - an independent worker with its own memory heap and event loop. Isolates run code in parallel without sharing memory.",
        ),
      ],
      ar: [
        StrContent(
          'نموذج التزامن في Dart - عامل مستقل له كومة ذاكرة خاصة وحلقة أحداث. تعمل Isolates بشكل متوازي دون مشاركة الذاكرة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key features:',
          value: [
            'True parallelism - run on separate threads',
            'Memory isolation - each isolate has its own memory',
            'Message passing - communicate via SendPort/ReceivePort',
            'No shared state - prevents race conditions and deadlocks',
          ],
        ),
        ULContent(
          title: 'Use isolates for:',
          value: [
            'CPU-intensive computations (parsing large JSON, image processing)',
            'Preventing UI freezes in Flutter apps',
            'Running background tasks',
          ],
        ),
        StrContent('Example:'),
        CodeContent(
          'await Isolate.spawn(heavyComputation, data);',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الميزات الرئيسية:',
          value: [
            'توازي حقيقي - تعمل على خيوط منفصلة',
            'عزل الذاكرة - لكل isolate ذاكرتها الخاصة',
            'تمرير الرسائل - التواصل عبر SendPort/ReceivePort',
            'بدون حالة مشتركة - يمنع ظروف السباق والجمود',
          ],
        ),
        ULContent(
          title: 'استخدم isolates لـ:',
          value: [
            'الحسابات المكثفة لوحدة المعالجة المركزية (تحليل JSON كبير، معالجة الصور)',
            'منع تجميد واجهة المستخدم في تطبيقات Flutter',
            'تشغيل المهام في الخلفية',
          ],
        ),
        StrContent('مثال:'),
        CodeContent(
          'await Isolate.spawn(heavyComputation, data);',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    languages: [.dart],
    relatedTerms: [
      TermKeys.concurrencyThread,
      TermKeys.concurrencyProcess,
      TermKeys.concurrencyAsync,
    ],
    tags: ['concurrency', 'parallelism', 'isolate', 'dart'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.dartFuture: ProgrammingTerm(
    id: TermKeys.dartFuture,
    title: LocS(en: 'Future', ar: 'المستقبل'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A Dart object representing a value or error that will be available at some point in the future. Futures are used for asynchronous operations.',
        ),
      ],
      ar: [
        StrContent(
          'كائن Dart يمثل قيمة أو خطأ سيكون متاحًا في وقت ما في المستقبل. تُستخدم Futures للعمليات غير المتزامنة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'States of a Future:',
          value: [
            'Uncompleted - operation still running',
            'Completed with value - operation succeeded',
            'Completed with error - operation failed',
          ],
        ),
        StrContent('Using Futures:'),
        CodeContent(
          'Future<String> fetchData() async {\n'
          '  await Future.delayed(Duration(seconds: 2));\n'
          '  return "Data loaded";\n'
          '}\n\n'
          'void main() async {\n'
          '  String result = await fetchData();\n'
          '  print(result);\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent('Similar to: Promise in JavaScript, Task in C#'),
      ],
      ar: [
        ULContent(
          title: 'حالات Future:',
          value: [
            'غير مكتمل - العملية لا تزال قيد التشغيل',
            'مكتمل بقيمة - العملية نجحت',
            'مكتمل بخطأ - العملية فشلت',
          ],
        ),
        StrContent('استخدام Futures:'),
        CodeContent(
          'Future<String> fetchData() async {\n'
          '  await Future.delayed(Duration(seconds: 2));\n'
          '  return "تم تحميل البيانات";\n'
          '}\n\n'
          'void main() async {\n'
          '  String result = await fetchData();\n'
          '  print(result);\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent('مشابه لـ: Promise في JavaScript، Task في C#'),
      ],
    ),
    type: .concept,
    category: .concurrency,
    languages: [.dart],
    relatedTerms: [TermKeys.concurrencyAsync, TermKeys.dartStream],
    aliases: ['Promise', 'Async result'],
    tags: ['async', 'future', 'promise', 'asynchronous'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.dartStream: ProgrammingTerm(
    id: TermKeys.dartStream,
    title: LocS(en: 'Stream', ar: 'التدفق'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A sequence of asynchronous events delivered over time. Unlike Future (single value), Stream can deliver multiple values.',
        ),
      ],
      ar: [
        StrContent(
          'تسلسل من الأحداث غير المتزامنة يتم تسليمها عبر الزمن. على عكس Future (قيمة واحدة)، يمكن لـ Stream تسليم قيم متعددة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types:',
          value: [
            'Single-subscription - only one listener allowed',
            'Broadcast - multiple listeners allowed',
          ],
        ),
        ULContent(
          title: 'Use streams for:',
          value: [
            'User input events (clicks, keyboard)',
            'File I/O - reading files chunk by chunk',
            'Real-time data - WebSocket, sensors',
            'Timer events - periodic updates',
          ],
        ),
        StrContent('Example:'),
        CodeContent(
          'Stream<int> countStream() async* {\n'
          '  for (int i = 1; i <= 5; i++) {\n'
          '    await Future.delayed(Duration(seconds: 1));\n'
          '    yield i;\n'
          '  }\n'
          '}\n\n'
          'await for (int value in countStream()) {\n'
          '  print(value);  // 1, 2, 3, 4, 5 (one per second)\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الأنواع:',
          value: [
            'اشتراك واحد - مستمع واحد فقط مسموح',
            'بث - مستمعون متعددون مسموحون',
          ],
        ),
        ULContent(
          title: 'استخدم التدفقات لـ:',
          value: [
            'أحداث إدخال المستخدم (نقرات، لوحة المفاتيح)',
            'إدخال/إخراج الملفات - قراءة الملفات جزءًا تلو الآخر',
            'بيانات في الوقت الفعلي - WebSocket، أجهزة الاستشعار',
            'أحداث المؤقت - تحديثات دورية',
          ],
        ),
        StrContent('مثال:'),
        CodeContent(
          'Stream<int> countStream() async* {\n'
          '  for (int i = 1; i <= 5; i++) {\n'
          '    await Future.delayed(Duration(seconds: 1));\n'
          '    yield i;\n'
          '  }\n'
          '}\n\n'
          'await for (int value in countStream()) {\n'
          '  print(value);  // 1، 2، 3، 4، 5 (واحد كل ثانية)\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    languages: [.dart],
    relatedTerms: [TermKeys.dartFuture, TermKeys.concurrencyAsync],
    aliases: ['Observable', 'Event stream'],
    tags: ['async', 'stream', 'events', 'reactive'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.dartMixin: ProgrammingTerm(
    id: TermKeys.dartMixin,
    title: LocS(en: 'Mixin', ar: 'المزيج'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A way to reuse code in multiple class hierarchies without using inheritance. Mixins allow you to add functionality to classes.',
        ),
      ],
      ar: [
        StrContent(
          'طريقة لإعادة استخدام الكود في تسلسلات هرمية متعددة للفئات دون استخدام الوراثة. تسمح لك Mixins بإضافة وظائف للفئات.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Benefits:',
          value: [
            'Code reuse - share methods across unrelated classes',
            'Multiple "inheritance" - use multiple mixins on one class',
            'Composition over inheritance - more flexible than extending',
          ],
        ),
        StrContent('Example:'),
        CodeContent(
          'mixin Swimmer {\n'
          '  void swim() => print("Swimming");\n'
          '}\n\n'
          'mixin Flyer {\n'
          '  void fly() => print("Flying");\n'
          '}\n\n'
          'class Duck with Swimmer, Flyer {\n'
          '  void quack() => print("Quack!");\n'
          '}\n\n'
          'Duck duck = Duck();\n'
          'duck.swim();  // From Swimmer mixin\n'
          'duck.fly();   // From Flyer mixin\n'
          'duck.quack(); // Own method',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الفوائد:',
          value: [
            'إعادة استخدام الكود - مشاركة الأساليب عبر فئات غير مرتبطة',
            '"وراثة" متعددة - استخدام mixins متعددة على فئة واحدة',
            'التركيب على الوراثة - أكثر مرونة من التمديد',
          ],
        ),
        StrContent('مثال:'),
        CodeContent(
          'mixin Swimmer {\n'
          '  void swim() => print("سباحة");\n'
          '}\n\n'
          'mixin Flyer {\n'
          '  void fly() => print("طيران");\n'
          '}\n\n'
          'class Duck with Swimmer, Flyer {\n'
          '  void quack() => print("كواك!");\n'
          '}\n\n'
          'Duck duck = Duck();\n'
          'duck.swim();  // من Swimmer mixin\n'
          'duck.fly();   // من Flyer mixin\n'
          'duck.quack(); // أسلوب خاص',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart],
    relatedTerms: [TermKeys.oopInheritance, TermKeys.oopClass],
    aliases: ['Trait', 'Mix-in'],
    tags: ['dart', 'code reuse', 'composition', 'multiple inheritance'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.fundamentalsConstant: ProgrammingTerm(
    id: TermKeys.fundamentalsConstant,
    title: LocS(en: 'Constant', ar: 'الثابت'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A value that cannot be changed after it is set. Constants are used to define values that remain the same throughout program execution.',
        ),
      ],
      ar: [
        StrContent(
          'قيمة لا يمكن تغييرها بعد تعيينها. تُستخدم الثوابت لتعريف القيم التي تبقى كما هي طوال تنفيذ البرنامج.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Benefits of constants:',
          value: [
            'Prevents accidental modification of important values',
            'Makes code more readable and maintainable',
            'Compiler can optimize constant values',
            'Type safety - errors caught at compile time',
          ],
        ),
        StrContent('In Dart:'),
        CodeContent(
          'const double pi = 3.14159;  // Compile-time constant\n'
          'final currentTime = DateTime.now();  // Runtime constant\n'
          '\n'
          '// const vs final:\n'
          '// const - value must be known at compile time\n'
          '// final - value set once at runtime, then immutable',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'فوائد الثوابت:',
          value: [
            'تمنع التعديل العرضي للقيم المهمة',
            'تجعل الكود أكثر قابلية للقراءة والصيانة',
            'يمكن للمترجم تحسين القيم الثابتة',
            'أمان النوع - يتم اكتشاف الأخطاء في وقت الترجمة',
          ],
        ),
        StrContent('في Dart:'),
        CodeContent(
          'const double pi = 3.14159;  // ثابت وقت الترجمة\n'
          'final currentTime = DateTime.now();  // ثابت وقت التشغيل\n'
          '\n'
          '// const مقابل final:\n'
          '// const - يجب معرفة القيمة في وقت الترجمة\n'
          '// final - يتم تعيين القيمة مرة واحدة في وقت التشغيل، ثم تصبح ثابتة',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .c, .cpp, .javascript],
    relatedTerms: [TermKeys.fundamentalsVariable, TermKeys.immutable],
    aliases: ['Immutable value', 'Final value'],
    tags: ['immutable', 'const', 'final', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.fundamentalsParameter: ProgrammingTerm(
    id: TermKeys.fundamentalsParameter,
    title: LocS(en: 'Parameter', ar: 'المعامل'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A variable in a function definition that receives a value when the function is called. Parameters define what inputs a function expects.',
        ),
      ],
      ar: [
        StrContent(
          'متغير في تعريف الدالة يتلقى قيمة عند استدعاء الدالة. تحدد المعاملات المدخلات التي تتوقعها الدالة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types of parameters in Dart:',
          value: [
            'Required positional - must be provided in order',
            'Optional positional - wrapped in [ ], can be omitted',
            'Named - wrapped in { }, called by name',
            'Required named - named parameters that must be provided',
          ],
        ),
        StrContent('Examples:'),
        CodeContent(
          '// Required positional\n'
          'void greet(String name) { }\n'
          '\n'
          '// Optional positional\n'
          'void greet(String name, [String? title]) { }\n'
          '\n'
          '// Named parameters\n'
          'void greet({String? name, int? age}) { }\n'
          '\n'
          '// Required named\n'
          'void greet({required String name}) { }',
          codeLanguage: .dart,
        ),
        StrContent(
          'Important: Parameter is the variable in the definition, Argument is the actual value passed.',
        ),
      ],
      ar: [
        ULContent(
          title: 'أنواع المعاملات في Dart:',
          value: [
            'موضعي مطلوب - يجب توفيره بالترتيب',
            'موضعي اختياري - ملفوف في [ ]، يمكن حذفه',
            'مسمى - ملفوف في { }، يُستدعى بالاسم',
            'مسمى مطلوب - معاملات مسماة يجب توفيرها',
          ],
        ),
        StrContent('أمثلة:'),
        CodeContent(
          '// موضعي مطلوب\n'
          'void greet(String name) { }\n'
          '\n'
          '// موضعي اختياري\n'
          'void greet(String name, [String? title]) { }\n'
          '\n'
          '// معاملات مسماة\n'
          'void greet({String? name, int? age}) { }\n'
          '\n'
          '// مسمى مطلوب\n'
          'void greet({required String name}) { }',
          codeLanguage: .dart,
        ),
        StrContent(
          'مهم: المعامل هو المتغير في التعريف، الوسيط هو القيمة الفعلية الممررة.',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .python, .javascript],
    relatedTerms: [
      TermKeys.fundamentalsFunction,
      TermKeys.fundamentalsArgument,
    ],
    tags: ['function', 'input', 'parameter', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.fundamentalsReturnValue: ProgrammingTerm(
    id: TermKeys.fundamentalsReturnValue,
    title: LocS(en: 'Return Value', ar: 'القيمة المرجعة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The output that a function sends back to the caller. A function can return a value using the return statement.',
        ),
      ],
      ar: [
        StrContent(
          'الناتج الذي ترسله الدالة إلى المستدعي. يمكن للدالة إرجاع قيمة باستخدام جملة return.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key points:',
          value: [
            'Functions can return a value to the caller',
            'Return type must be specified in function signature',
            'void means no return value',
            'return statement stops function execution',
          ],
        ),
        StrContent('Examples:'),
        CodeContent(
          'int add(int a, int b) {\n'
          '  return a + b;  // Returns an integer\n'
          '}\n'
          '\n'
          'String greet(String name) {\n'
          '  return "Hello, \$name";  // Returns a string\n'
          '}\n'
          '\n'
          'void printMessage() {\n'
          '  print("No return value");  // void = no return\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'النقاط الرئيسية:',
          value: [
            'يمكن للدوال إرجاع قيمة للمستدعي',
            'يجب تحديد نوع الإرجاع في توقيع الدالة',
            'void تعني عدم وجود قيمة مرجعة',
            'جملة return توقف تنفيذ الدالة',
          ],
        ),
        StrContent('أمثلة:'),
        CodeContent(
          'int add(int a, int b) {\n'
          '  return a + b;  // يرجع عددًا صحيحًا\n'
          '}\n'
          '\n'
          'String greet(String name) {\n'
          '  return "مرحبًا، \$name";  // يرجع نصًا\n'
          '}\n'
          '\n'
          'void printMessage() {\n'
          '  print("لا قيمة مرجعة");  // void = لا إرجاع\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .python, .javascript],
    relatedTerms: [TermKeys.fundamentalsFunction],
    aliases: ['Function output', 'Result'],
    tags: ['function', 'return', 'output', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.fundamentalsNull: ProgrammingTerm(
    id: TermKeys.fundamentalsNull,
    title: LocS(en: 'Null', ar: 'القيمة الفارغة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A special value representing the absence of a value. Null indicates that a variable has no value assigned to it.',
        ),
      ],
      ar: [
        StrContent(
          'قيمة خاصة تمثل غياب القيمة. تشير null إلى أن المتغير لا يحتوي على قيمة مخصصة له.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Important concepts:',
          value: [
            'Null is different from 0, empty string, or false',
            'Accessing null values can cause runtime errors',
            'Modern languages provide null safety features',
          ],
        ),
        StrContent('In Dart with null safety:'),
        CodeContent(
          'String name = "Alice";  // Cannot be null\n'
          'String? nickname;  // Can be null (notice the ?)\n'
          '\n'
          'print(nickname);  // null\n'
          '\n'
          '// Safe access with null-aware operators:\n'
          'int? length = nickname?.length;  // null if nickname is null\n'
          'String display = nickname ?? "No nickname";  // Default value\n'
          '\n'
          '// Force unwrap (use carefully!):\n'
          'int length2 = nickname!.length;  // Throws if null',
          codeLanguage: .dart,
        ),
        StrContent(
          'Null pointer exceptions are one of the most common programming errors, which is why Dart has built-in null safety.',
        ),
      ],
      ar: [
        ULContent(
          title: 'مفاهيم مهمة:',
          value: [
            'null مختلف عن 0، نص فارغ، أو false',
            'الوصول إلى قيم null يمكن أن يسبب أخطاء وقت التشغيل',
            'توفر اللغات الحديثة ميزات أمان القيم الفارغة',
          ],
        ),
        StrContent('في Dart مع أمان القيم الفارغة:'),
        CodeContent(
          'String name = "Alice";  // لا يمكن أن يكون null\n'
          'String? nickname;  // يمكن أن يكون null (لاحظ ?)\n'
          '\n'
          'print(nickname);  // null\n'
          '\n'
          '// وصول آمن مع عوامل واعية بـ null:\n'
          'int? length = nickname?.length;  // null إذا كان nickname فارغًا\n'
          'String display = nickname ?? "لا لقب";  // قيمة افتراضية\n'
          '\n'
          '// فك الإجباري (استخدم بحذر!):\n'
          'int length2 = nickname!.length;  // يرمي خطأ إذا كان null',
          codeLanguage: .dart,
        ),
        StrContent(
          'استثناءات المؤشر الفارغ هي واحدة من أكثر أخطاء البرمجة شيوعًا، ولهذا السبب لدى Dart أمان مدمج للقيم الفارغة.',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .javascript, .python],
    relatedTerms: [TermKeys.dartNullSafety, TermKeys.fundamentalsDataType],
    aliases: ['Nil', 'None', 'undefined'],
    tags: ['null', 'empty', 'absence', 'safety'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.fundamentalsRecursion: ProgrammingTerm(
    id: TermKeys.fundamentalsRecursion,
    title: LocS(en: 'Recursion', ar: 'التكرار الذاتي'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A programming technique where a function calls itself to solve a problem by breaking it down into smaller, similar subproblems.',
        ),
      ],
      ar: [
        StrContent(
          'تقنية برمجة حيث تستدعي الدالة نفسها لحل مشكلة من خلال تقسيمها إلى مشاكل فرعية أصغر ومشابهة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Every recursive function needs:',
          value: [
            'Base case - condition to stop recursion',
            'Recursive case - function calls itself with modified input',
            'Progress toward base case - each call gets closer to ending',
          ],
        ),
        StrContent('Classic example - calculating factorial:'),
        CodeContent(
          'int factorial(int n) {\n'
          '  // Base case\n'
          '  if (n <= 1) return 1;\n'
          '  \n'
          '  // Recursive case\n'
          '  return n * factorial(n - 1);\n'
          '}\n'
          '\n'
          '// factorial(5) = 5 * factorial(4)\n'
          '//              = 5 * 4 * factorial(3)\n'
          '//              = 5 * 4 * 3 * factorial(2)\n'
          '//              = 5 * 4 * 3 * 2 * factorial(1)\n'
          '//              = 5 * 4 * 3 * 2 * 1 = 120',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'Advantages:',
          value: [
            'Elegant solutions for naturally recursive problems (trees, graphs)',
            'Simpler code for complex problems',
          ],
        ),
        ULContent(
          title: 'Disadvantages:',
          value: [
            'Can cause stack overflow if too deep',
            'Often slower than iteration',
            'Uses more memory',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'كل دالة تكرارية تحتاج:',
          value: [
            'حالة أساسية - شرط لإيقاف التكرار',
            'حالة تكرارية - الدالة تستدعي نفسها مع مدخل معدل',
            'تقدم نحو الحالة الأساسية - كل استدعاء يقترب من النهاية',
          ],
        ),
        StrContent('مثال كلاسيكي - حساب المضروب:'),
        CodeContent(
          'int factorial(int n) {\n'
          '  // الحالة الأساسية\n'
          '  if (n <= 1) return 1;\n'
          '  \n'
          '  // الحالة التكرارية\n'
          '  return n * factorial(n - 1);\n'
          '}\n'
          '\n'
          '// factorial(5) = 5 * factorial(4)\n'
          '//              = 5 * 4 * factorial(3)\n'
          '//              = 5 * 4 * 3 * factorial(2)\n'
          '//              = 5 * 4 * 3 * 2 * factorial(1)\n'
          '//              = 5 * 4 * 3 * 2 * 1 = 120',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'المزايا:',
          value: [
            'حلول أنيقة للمشاكل التكرارية الطبيعية (الأشجار، الرسوم البيانية)',
            'كود أبسط للمشاكل المعقدة',
          ],
        ),
        ULContent(
          title: 'العيوب:',
          value: [
            'يمكن أن يسبب فيضان المكدس إذا كان عميقًا جدًا',
            'غالبًا أبطأ من التكرار',
            'يستخدم ذاكرة أكثر',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .python, .c],
    relatedTerms: [TermKeys.fundamentalsFunction, 'iteration'],
    tags: ['recursion', 'function', 'algorithm', 'self-call'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.oopMethod: ProgrammingTerm(
    id: TermKeys.oopMethod,
    title: LocS(en: 'Method', ar: 'الأسلوب'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A function that belongs to a class or object. Methods define the behaviors and actions that objects of that class can perform.',
        ),
      ],
      ar: [
        StrContent(
          'دالة تنتمي إلى فئة أو كائن. تحدد الأساليب السلوكيات والإجراءات التي يمكن لكائنات تلك الفئة تنفيذها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types of methods:',
          value: [
            'Instance methods - operate on object instances',
            'Static methods - belong to the class itself, not instances',
            'Getters - retrieve property values',
            'Setters - modify property values',
          ],
        ),
        StrContent('Example in Dart:'),
        CodeContent(
          'class Car {\n'
          '  String brand;\n'
          '  int speed = 0;\n'
          '  \n'
          '  Car(this.brand);\n'
          '  \n'
          '  // Instance method\n'
          '  void accelerate(int amount) {\n'
          '    speed += amount;\n'
          '  }\n'
          '  \n'
          '  // Getter\n'
          '  String get info => "\$brand at \$speed km/h";\n'
          '  \n'
          '  // Static method\n'
          '  static Car createSportsCar() {\n'
          '    return Car("Ferrari");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'أنواع الأساليب:',
          value: [
            'أساليب النسخة - تعمل على نسخ الكائنات',
            'أساليب ثابتة - تنتمي للفئة نفسها، وليس النسخ',
            'Getters - استرجاع قيم الخصائص',
            'Setters - تعديل قيم الخصائص',
          ],
        ),
        StrContent('مثال في Dart:'),
        CodeContent(
          'class Car {\n'
          '  String brand;\n'
          '  int speed = 0;\n'
          '  \n'
          '  Car(this.brand);\n'
          '  \n'
          '  // أسلوب النسخة\n'
          '  void accelerate(int amount) {\n'
          '    speed += amount;\n'
          '  }\n'
          '  \n'
          '  // Getter\n'
          '  String get info => "\$brand عند \$speed كم/ساعة";\n'
          '  \n'
          '  // أسلوب ثابت\n'
          '  static Car createSportsCar() {\n'
          '    return Car("فيراري");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .cpp, .python],
    relatedTerms: [TermKeys.fundamentalsFunction, TermKeys.oopClass],
    aliases: ['Member function', 'Class function'],
    tags: ['oop', 'function', 'behavior', 'class'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.oopConstructor: ProgrammingTerm(
    id: TermKeys.oopConstructor,
    title: LocS(en: 'Constructor', ar: 'المنشئ'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A special method that is automatically called when creating a new object. Constructors initialize the object\'s properties and set up its initial state.',
        ),
      ],
      ar: [
        StrContent(
          'أسلوب خاص يتم استدعاؤه تلقائيًا عند إنشاء كائن جديد. تقوم المنشئات بتهيئة خصائص الكائن وإعداد حالته الأولية.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Constructor types in Dart:',
          value: [
            'Default constructor - same name as class',
            'Named constructor - class.name() syntax',
            'Const constructor - for compile-time constants',
            'Factory constructor - can return existing instances',
          ],
        ),
        StrContent('Examples:'),
        CodeContent(
          'class Person {\n'
          '  String name;\n'
          '  int age;\n'
          '  \n'
          '  // Default constructor\n'
          '  Person(this.name, this.age);\n'
          '  \n'
          '  // Named constructor\n'
          '  Person.guest() : name = "Guest", age = 0;\n'
          '  \n'
          '  // Const constructor\n'
          '  const Person.anonymous() : name = "Anonymous", age = 0;\n'
          '}\n'
          '\n'
          '// Usage:\n'
          'var p1 = Person("Alice", 30);\n'
          'var p2 = Person.guest();\n'
          'const p3 = Person.anonymous();',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'أنواع المنشئات في Dart:',
          value: [
            'المنشئ الافتراضي - نفس اسم الفئة',
            'المنشئ المسمى - صيغة class.name()',
            'المنشئ الثابت - للثوابت في وقت الترجمة',
            'المنشئ المصنعي - يمكنه إرجاع نسخ موجودة',
          ],
        ),
        StrContent('أمثلة:'),
        CodeContent(
          'class Person {\n'
          '  String name;\n'
          '  int age;\n'
          '  \n'
          '  // المنشئ الافتراضي\n'
          '  Person(this.name, this.age);\n'
          '  \n'
          '  // المنشئ المسمى\n'
          '  Person.guest() : name = "ضيف", age = 0;\n'
          '  \n'
          '  // المنشئ الثابت\n'
          '  const Person.anonymous() : name = "مجهول", age = 0;\n'
          '}\n'
          '\n'
          '// الاستخدام:\n'
          'var p1 = Person("أليس", 30);\n'
          'var p2 = Person.guest();\n'
          'const p3 = Person.anonymous();',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .cpp, .csharp],
    relatedTerms: [
      TermKeys.oopClass,
      TermKeys.oopObject,
      TermKeys.factoryConstructor,
    ],
    tags: ['oop', 'initialization', 'constructor', 'object creation'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.oopGetterSetter: ProgrammingTerm(
    id: TermKeys.oopGetterSetter,
    title: LocS(en: 'Getter and Setter', ar: 'المُحصِّل والمُعيِّن'),
    quickOverview: LocV(
      en: [
        StrContent(
          'Special methods for accessing (getter) and modifying (setter) private properties of a class. They provide controlled access to object data.',
        ),
      ],
      ar: [
        StrContent(
          'أساليب خاصة للوصول (getter) وتعديل (setter) الخصائص الخاصة لفئة. توفر وصولاً محكومًا لبيانات الكائن.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Benefits:',
          value: [
            'Encapsulation - control how properties are accessed',
            'Validation - check values before setting',
            'Computed properties - calculate values on demand',
            'Read-only properties - getter without setter',
          ],
        ),
        StrContent('Example in Dart:'),
        CodeContent(
          'class Temperature {\n'
          '  double _celsius;  // Private property\n'
          '  \n'
          '  Temperature(this._celsius);\n'
          '  \n'
          '  // Getter\n'
          '  double get celsius => _celsius;\n'
          '  \n'
          '  // Setter with validation\n'
          '  set celsius(double value) {\n'
          '    if (value < -273.15) {\n'
          '      throw ArgumentError("Below absolute zero!");\n'
          '    }\n'
          '    _celsius = value;\n'
          '  }\n'
          '  \n'
          '  // Computed property (getter only)\n'
          '  double get fahrenheit => (_celsius * 9/5) + 32;\n'
          '}\n'
          '\n'
          'var temp = Temperature(25);\n'
          'print(temp.celsius);  // 25.0\n'
          'print(temp.fahrenheit);  // 77.0\n'
          'temp.celsius = 30;  // Uses setter',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الفوائد:',
          value: [
            'التغليف - التحكم في كيفية الوصول للخصائص',
            'التحقق - فحص القيم قبل التعيين',
            'خصائص محسوبة - حساب القيم عند الطلب',
            'خصائص للقراءة فقط - getter بدون setter',
          ],
        ),
        StrContent('مثال في Dart:'),
        CodeContent(
          'class Temperature {\n'
          '  double _celsius;  // خاصية خاصة\n'
          '  \n'
          '  Temperature(this._celsius);\n'
          '  \n'
          '  // Getter\n'
          '  double get celsius => _celsius;\n'
          '  \n'
          '  // Setter مع تحقق\n'
          '  set celsius(double value) {\n'
          '    if (value < -273.15) {\n'
          '      throw ArgumentError("أقل من الصفر المطلق!");\n'
          '    }\n'
          '    _celsius = value;\n'
          '  }\n'
          '  \n'
          '  // خاصية محسوبة (getter فقط)\n'
          '  double get fahrenheit => (_celsius * 9/5) + 32;\n'
          '}\n'
          '\n'
          'var temp = Temperature(25);\n'
          'print(temp.celsius);  // 25.0\n'
          'print(temp.fahrenheit);  // 77.0\n'
          'temp.celsius = 30;  // يستخدم setter',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .csharp, .javascript],
    relatedTerms: [TermKeys.oopEncapsulation, TermKeys.oopMethod],
    aliases: ['Accessor', 'Mutator', 'Property'],
    tags: ['oop', 'encapsulation', 'getter', 'setter', 'property'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.immutable: ProgrammingTerm(
    id: TermKeys.immutable,
    title: LocS(en: 'Immutable', ar: 'غير قابل للتغيير'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An object or value that cannot be modified after creation. Once created, its state remains constant throughout its lifetime.',
        ),
      ],
      ar: [
        StrContent(
          'كائن أو قيمة لا يمكن تعديلها بعد الإنشاء. بمجرد إنشائها، تبقى حالتها ثابتة طوال عمرها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Benefits of immutability:',
          value: [
            'Thread safety - no race conditions',
            'Predictability - easier to reason about code',
            'Caching - safe to share and reuse',
            'Debugging - state doesn\'t change unexpectedly',
          ],
        ),
        StrContent('Examples in Dart:'),
        CodeContent(
          '// Immutable class\n'
          'class Point {\n'
          '  final int x;\n'
          '  final int y;\n'
          '  \n'
          '  const Point(this.x, this.y);\n'
          '}\n'
          '\n'
          '// Immutable collections\n'
          'final list = const [1, 2, 3];\n'
          '// list.add(4);  // Error! Cannot modify\n'
          '\n'
          '// Built-in immutable types:\n'
          'const pi = 3.14159;\n'
          'final name = "Alice";  // Strings are immutable in Dart',
          codeLanguage: .dart,
        ),
        StrContent('Opposite: Mutable objects can be changed after creation.'),
      ],
      ar: [
        ULContent(
          title: 'فوائد عدم القابلية للتغيير:',
          value: [
            'أمان الخيوط - لا ظروف سباق',
            'قابلية التنبؤ - أسهل للتفكير في الكود',
            'التخزين المؤقت - آمن للمشاركة وإعادة الاستخدام',
            'تصحيح الأخطاء - الحالة لا تتغير بشكل غير متوقع',
          ],
        ),
        StrContent('أمثلة في Dart:'),
        CodeContent(
          '// فئة غير قابلة للتغيير\n'
          'class Point {\n'
          '  final int x;\n'
          '  final int y;\n'
          '  \n'
          '  const Point(this.x, this.y);\n'
          '}\n'
          '\n'
          '// مجموعات غير قابلة للتغيير\n'
          'final list = const [1, 2, 3];\n'
          '// list.add(4);  // خطأ! لا يمكن التعديل\n'
          '\n'
          '// أنواع غير قابلة للتغيير مدمجة:\n'
          'const pi = 3.14159;\n'
          'final name = "أليس";  // النصوص غير قابلة للتغيير في Dart',
          codeLanguage: .dart,
        ),
        StrContent('العكس: الكائنات القابلة للتغيير يمكن تعديلها بعد الإنشاء.'),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .javascript, .scala],
    relatedTerms: [TermKeys.fundamentalsConstant, 'mutable'],
    tags: ['immutable', 'const', 'final', 'thread-safe'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.state: ProgrammingTerm(
    id: TermKeys.state,
    title: LocS(en: 'State', ar: 'الحالة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The data that an application or component maintains and can change over time. State represents the current condition or snapshot of an object or system.',
        ),
      ],
      ar: [
        StrContent(
          'البيانات التي يحافظ عليها التطبيق أو المكون ويمكن أن تتغير بمرور الوقت. تمثل الحالة الوضع الحالي أو اللقطة لكائن أو نظام.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types of state:',
          value: [
            'Local state - data used within a single widget/component',
            'App state - data shared across multiple parts of the app',
            'Ephemeral state - temporary, doesn\'t need persistence',
            'Persistent state - saved between app sessions',
          ],
        ),
        StrContent('Example in Flutter:'),
        CodeContent(
          'class CounterWidget extends StatefulWidget {\n'
          '  @override\n'
          '  State<CounterWidget> createState() => _CounterWidgetState();\n'
          '}\n'
          '\n'
          'class _CounterWidgetState extends State<CounterWidget> {\n'
          '  int _counter = 0;  // This is the state\n'
          '  \n'
          '  void _increment() {\n'
          '    setState(() {  // Updates the state\n'
          '      _counter++;\n'
          '    });\n'
          '  }\n'
          '  \n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Text("\$_counter");  // UI reflects state\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'أنواع الحالة:',
          value: [
            'حالة محلية - بيانات مستخدمة ضمن ويدجت/مكون واحد',
            'حالة التطبيق - بيانات مشتركة عبر أجزاء متعددة من التطبيق',
            'حالة مؤقتة - مؤقتة، لا تحتاج استمرارية',
            'حالة مستمرة - محفوظة بين جلسات التطبيق',
          ],
        ),
        StrContent('مثال في Flutter:'),
        CodeContent(
          'class CounterWidget extends StatefulWidget {\n'
          '  @override\n'
          '  State<CounterWidget> createState() => _CounterWidgetState();\n'
          '}\n'
          '\n'
          'class _CounterWidgetState extends State<CounterWidget> {\n'
          '  int _counter = 0;  // هذه هي الحالة\n'
          '  \n'
          '  void _increment() {\n'
          '    setState(() {  // يحدث الحالة\n'
          '      _counter++;\n'
          '    });\n'
          '  }\n'
          '  \n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Text("\$_counter");  // واجهة المستخدم تعكس الحالة\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .stateManagement,
    languages: [.dart, .flutter, .javascript, .react],
    relatedTerms: [TermKeys.flutterStatefulWidget, TermKeys.stateManagement],
    tags: ['state', 'data', 'management', 'ui'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.typeInference: ProgrammingTerm(
    id: TermKeys.typeInference,
    title: LocS(en: 'Type Inference', ar: 'استنتاج النوع'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The ability of a compiler to automatically deduce the data type of a variable based on its initial value, without requiring explicit type declaration.',
        ),
      ],
      ar: [
        StrContent(
          'قدرة المترجم على استنتاج نوع بيانات المتغير تلقائيًا بناءً على قيمته الأولية، دون الحاجة لتصريح النوع صراحة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Type inference makes code cleaner while maintaining type safety.',
        ),
        StrContent('Examples in Dart:'),
        CodeContent(
          '// Explicit type\n'
          'String name = "Alice";\n'
          'int age = 30;\n'
          '\n'
          '// Type inference with var\n'
          'var name2 = "Bob";  // Inferred as String\n'
          'var age2 = 25;      // Inferred as int\n'
          '\n'
          '// Type inference in collections\n'
          'var numbers = [1, 2, 3];  // Inferred as List<int>\n'
          'var map = {"key": "value"};  // Inferred as Map<String, String>\n'
          '\n'
          '// Still type-safe!\n'
          '// name2 = 123;  // Error: A value of type int can\'t be assigned to String',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'Benefits:',
          value: [
            'Less verbose code',
            'Maintains type safety',
            'Easier refactoring',
            'Better readability for complex types',
          ],
        ),
      ],
      ar: [
        StrContent('استنتاج النوع يجعل الكود أنظف مع الحفاظ على أمان النوع.'),
        StrContent('أمثلة في Dart:'),
        CodeContent(
          '// نوع صريح\n'
          'String name = "أليس";\n'
          'int age = 30;\n'
          '\n'
          '// استنتاج النوع مع var\n'
          'var name2 = "بوب";  // مستنتج كـ String\n'
          'var age2 = 25;      // مستنتج كـ int\n'
          '\n'
          '// استنتاج النوع في المجموعات\n'
          'var numbers = [1, 2, 3];  // مستنتج كـ List<int>\n'
          'var map = {"key": "value"};  // مستنتج كـ Map<String, String>\n'
          '\n'
          '// لا يزال آمنًا من ناحية النوع!\n'
          '// name2 = 123;  // خطأ: لا يمكن تعيين قيمة من نوع int إلى String',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'الفوائد:',
          value: [
            'كود أقل إسهابًا',
            'يحافظ على أمان النوع',
            'إعادة هيكلة أسهل',
            'قابلية قراءة أفضل للأنواع المعقدة',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .typescript, .kotlin, .swift],
    relatedTerms: [
      TermKeys.fundamentalsDataType,
      TermKeys.fundamentalsVariable,
    ],
    tags: ['type system', 'inference', 'var', 'automatic'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.staticTyping: ProgrammingTerm(
    id: TermKeys.staticTyping,
    title: LocS(en: 'Static Typing', ar: 'الكتابة الثابتة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A type system where variable types are checked at compile time. Once a variable is declared with a type, it cannot hold values of other types.',
        ),
      ],
      ar: [
        StrContent(
          'نظام كتابة حيث يتم فحص أنواع المتغيرات في وقت الترجمة. بمجرد تصريح متغير بنوع، لا يمكنه احتواء قيم من أنواع أخرى.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Characteristics:',
          value: [
            'Types are known before runtime',
            'Compiler catches type errors early',
            'Better IDE support (autocomplete, refactoring)',
            'Usually better performance',
          ],
        ),
        StrContent('Example in Dart (statically typed):'),
        CodeContent(
          'int age = 25;\n'
          '// age = "twenty-five";  // Compile error!\n'
          '\n'
          'String name = "Alice";\n'
          '// name = 123;  // Compile error!\n'
          '\n'
          'List<int> numbers = [1, 2, 3];\n'
          '// numbers.add("four");  // Compile error!',
          codeLanguage: .dart,
        ),
        StrContent(
          'Statically typed languages: Dart, Java, C++, C#, TypeScript, Swift',
        ),
      ],
      ar: [
        ULContent(
          title: 'الخصائص:',
          value: [
            'الأنواع معروفة قبل وقت التشغيل',
            'المترجم يكتشف أخطاء النوع مبكرًا',
            'دعم أفضل من IDE (إكمال تلقائي، إعادة هيكلة)',
            'عادة أداء أفضل',
          ],
        ),
        StrContent('مثال في Dart (مكتوب بشكل ثابت):'),
        CodeContent(
          'int age = 25;\n'
          '// age = "خمسة وعشرون";  // خطأ في الترجمة!\n'
          '\n'
          'String name = "أليس";\n'
          '// name = 123;  // خطأ في الترجمة!\n'
          '\n'
          'List<int> numbers = [1, 2, 3];\n'
          '// numbers.add("أربعة");  // خطأ في الترجمة!',
          codeLanguage: .dart,
        ),
        StrContent(
          'لغات مكتوبة بشكل ثابت: Dart، Java، C++، C#، TypeScript، Swift',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .cpp, .csharp, .typescript],
    relatedTerms: [TermKeys.dynamicTyping, TermKeys.fundamentalsDataType],
    tags: ['type system', 'compile-time', 'type checking', 'safety'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.dynamicTyping: ProgrammingTerm(
    id: TermKeys.dynamicTyping,
    title: LocS(en: 'Dynamic Typing', ar: 'الكتابة الديناميكية'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A type system where variable types are checked at runtime. Variables can hold values of any type and can change types during execution.',
        ),
      ],
      ar: [
        StrContent(
          'نظام كتابة حيث يتم فحص أنواع المتغيرات في وقت التشغيل. يمكن للمتغيرات احتواء قيم من أي نوع ويمكنها تغيير الأنواع أثناء التنفيذ.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Characteristics:',
          value: [
            'Types are determined at runtime',
            'More flexible but less safe',
            'Errors found during execution',
            'Faster to prototype',
          ],
        ),
        StrContent('Example in Python (dynamically typed):'),
        CodeContent(
          'x = 42        # x is an integer\n'
          'x = "hello"   # Now x is a string (allowed!)\n'
          'x = [1, 2, 3] # Now x is a list (also allowed!)',
          codeLanguage: .python,
        ),
        StrContent('Dart supports dynamic typing with the dynamic keyword:'),
        CodeContent(
          'dynamic value = 42;\n'
          'value = "hello";  // Allowed with dynamic\n'
          'value = [1, 2, 3];  // Also allowed\n'
          '\n'
          '// But loses compile-time safety\n'
          'print(value.length);  // No error until runtime',
          codeLanguage: .dart,
        ),
        StrContent(
          'Dynamically typed languages: Python, JavaScript, Ruby, PHP',
        ),
      ],
      ar: [
        ULContent(
          title: 'الخصائص:',
          value: [
            'يتم تحديد الأنواع في وقت التشغيل',
            'أكثر مرونة لكن أقل أمانًا',
            'يتم اكتشاف الأخطاء أثناء التنفيذ',
            'أسرع للنماذج الأولية',
          ],
        ),
        StrContent('مثال في Python (مكتوب بشكل ديناميكي):'),
        CodeContent(
          'x = 42        # x عدد صحيح\n'
          'x = "hello"   # الآن x نص (مسموح!)\n'
          'x = [1, 2, 3] # الآن x قائمة (مسموح أيضًا!)',
          codeLanguage: .python,
        ),
        StrContent('Dart يدعم الكتابة الديناميكية بالكلمة المفتاحية dynamic:'),
        CodeContent(
          'dynamic value = 42;\n'
          'value = "hello";  // مسموح مع dynamic\n'
          'value = [1, 2, 3];  // مسموح أيضًا\n'
          '\n'
          '// لكن يفقد أمان وقت الترجمة\n'
          'print(value.length);  // لا خطأ حتى وقت التشغيل',
          codeLanguage: .dart,
        ),
        StrContent('لغات مكتوبة بشكل ديناميكي: Python، JavaScript، Ruby، PHP'),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.python, .javascript, .ruby, .php],
    relatedTerms: [TermKeys.staticTyping, TermKeys.fundamentalsDataType],
    tags: ['type system', 'runtime', 'flexible', 'dynamic'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.compilation: ProgrammingTerm(
    id: TermKeys.compilation,
    title: LocS(en: 'Compilation', ar: 'الترجمة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of translating source code written in a high-level programming language into machine code or intermediate code that a computer can execute.',
        ),
      ],
      ar: [
        StrContent(
          'عملية ترجمة الكود المصدري المكتوب بلغة برمجة عالية المستوى إلى كود آلة أو كود وسيط يمكن للكمبيوتر تنفيذه.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Compilation process stages:',
          value: [
            'Lexical analysis - breaking code into tokens',
            'Syntax analysis - checking grammar and structure',
            'Semantic analysis - checking meaning and types',
            'Optimization - improving performance',
            'Code generation - producing executable code',
          ],
        ),
        ULContent(
          title: 'Types of compilation:',
          value: [
            'AOT (Ahead-of-Time) - compiled before execution',
            'JIT (Just-in-Time) - compiled during execution',
          ],
        ),
        StrContent(
          'Dart uses both: JIT during development (hot reload), AOT for production (better performance).',
        ),
      ],
      ar: [
        ULContent(
          title: 'مراحل عملية الترجمة:',
          value: [
            'التحليل المعجمي - تقسيم الكود إلى رموز',
            'التحليل النحوي - فحص القواعد والهيكل',
            'التحليل الدلالي - فحص المعنى والأنواع',
            'التحسين - تحسين الأداء',
            'توليد الكود - إنتاج كود قابل للتنفيذ',
          ],
        ),
        ULContent(
          title: 'أنواع الترجمة:',
          value: [
            'AOT (مسبقًا) - يترجم قبل التنفيذ',
            'JIT (في الوقت المناسب) - يترجم أثناء التنفيذ',
          ],
        ),
        StrContent(
          'Dart يستخدم كليهما: JIT أثناء التطوير (إعادة التحميل الساخن)، AOT للإنتاج (أداء أفضل).',
        ),
      ],
    ),
    type: .concept,
    category: .compilerInternals,
    languages: [.dart, .c, .cpp, .java],
    relatedTerms: [TermKeys.compiler, TermKeys.runtime, 'aot-jit'],
    tags: ['compilation', 'compiler', 'translation', 'build'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.runtime: ProgrammingTerm(
    id: TermKeys.runtime,
    title: LocS(en: 'Runtime', ar: 'وقت التشغيل'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The period during which a program is executing. Also refers to the environment and libraries needed to run a program.',
        ),
      ],
      ar: [
        StrContent(
          'الفترة التي يكون فيها البرنامج قيد التنفيذ. يشير أيضًا إلى البيئة والمكتبات اللازمة لتشغيل البرنامج.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Runtime includes:',
          value: [
            'Execution environment - where code runs',
            'Runtime libraries - built-in functions and services',
            'Memory management - garbage collection, allocation',
            'Error handling - exception management',
          ],
        ),
        ULContent(
          title: 'Compile-time vs Runtime:',
          value: [
            'Compile-time - errors caught by compiler before running',
            'Runtime - errors that occur during program execution',
          ],
        ),
        StrContent('Examples:'),
        CodeContent(
          '// Compile-time error (caught before running)\n'
          '// int x = "hello";  // Type mismatch\n'
          '\n'
          '// Runtime error (happens during execution)\n'
          'int divide(int a, int b) {\n'
          '  return a ~/ b;  // Throws error if b is 0\n'
          '}\n'
          '\n'
          'divide(10, 0);  // Runtime error: division by zero',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'وقت التشغيل يشمل:',
          value: [
            'بيئة التنفيذ - حيث يعمل الكود',
            'مكتبات وقت التشغيل - دوال وخدمات مدمجة',
            'إدارة الذاكرة - جمع القمامة، التخصيص',
            'معالجة الأخطاء - إدارة الاستثناءات',
          ],
        ),
        ULContent(
          title: 'وقت الترجمة مقابل وقت التشغيل:',
          value: [
            'وقت الترجمة - أخطاء يكتشفها المترجم قبل التشغيل',
            'وقت التشغيل - أخطاء تحدث أثناء تنفيذ البرنامج',
          ],
        ),
        StrContent('أمثلة:'),
        CodeContent(
          '// خطأ وقت الترجمة (يُكتشف قبل التشغيل)\n'
          '// int x = "hello";  // عدم تطابق النوع\n'
          '\n'
          '// خطأ وقت التشغيل (يحدث أثناء التنفيذ)\n'
          'int divide(int a, int b) {\n'
          '  return a ~/ b;  // يرمي خطأ إذا كان b يساوي 0\n'
          '}\n'
          '\n'
          'divide(10, 0);  // خطأ وقت التشغيل: قسمة على صفر',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .compilerInternals,
    languages: [.dart, .java, .javascript, .python],
    relatedTerms: [TermKeys.compilation, TermKeys.compiler],
    tags: ['runtime', 'execution', 'environment', 'errors'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.compiler: ProgrammingTerm(
    id: TermKeys.compiler,
    title: LocS(en: 'Compiler', ar: 'المترجم'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A program that translates source code from a high-level programming language into machine code or intermediate code.',
        ),
      ],
      ar: [
        StrContent(
          'برنامج يترجم الكود المصدري من لغة برمجة عالية المستوى إلى كود آلة أو كود وسيط.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'What compilers do:',
          value: [
            'Check syntax and type errors',
            'Optimize code for performance',
            'Generate executable files or bytecode',
            'Produce error messages and warnings',
          ],
        ),
        StrContent(
          'Examples: GCC (C/C++), javac (Java), Dart compiler, rustc (Rust)',
        ),
        StrContent(
          'The Dart compiler can produce: native machine code (mobile/desktop), JavaScript (web), or kernel bytecode.',
        ),
      ],
      ar: [
        ULContent(
          title: 'ما يفعله المترجمون:',
          value: [
            'فحص أخطاء البناء والنوع',
            'تحسين الكود للأداء',
            'توليد ملفات قابلة للتنفيذ أو bytecode',
            'إنتاج رسائل أخطاء وتحذيرات',
          ],
        ),
        StrContent(
          'أمثلة: GCC (C/C++)، javac (Java)، مترجم Dart، rustc (Rust)',
        ),
        StrContent(
          'يمكن لمترجم Dart إنتاج: كود آلة أصلي (موبايل/سطح مكتب)، JavaScript (ويب)، أو kernel bytecode.',
        ),
      ],
    ),
    type: .tool,
    category: .compilerInternals,
    relatedTerms: [
      TermKeys.compilation,
      TermKeys.runtime,
      TermKeys.interpreter,
    ],
    tags: ['compiler', 'translation', 'tool', 'build'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.interpreter: ProgrammingTerm(
    id: TermKeys.interpreter,
    title: LocS(en: 'Interpreter', ar: 'المفسر'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A program that directly executes source code line-by-line without prior compilation to machine code.',
        ),
      ],
      ar: [
        StrContent(
          'برنامج ينفذ الكود المصدري مباشرة سطرًا بسطر دون ترجمة مسبقة إلى كود آلة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Compiler vs Interpreter:',
          value: [
            'Compiler - translates entire program, then runs it',
            'Interpreter - translates and runs code line by line',
            'Compiled - faster execution, slower to start',
            'Interpreted - slower execution, faster to start',
          ],
        ),
        StrContent(
          'Examples: Python interpreter, JavaScript engines (V8, SpiderMonkey), Ruby interpreter',
        ),
        StrContent(
          'Note: Modern systems often use a hybrid approach (e.g., JIT compilation).',
        ),
      ],
      ar: [
        ULContent(
          title: 'المترجم مقابل المفسر:',
          value: [
            'المترجم - يترجم البرنامج بالكامل، ثم يشغله',
            'المفسر - يترجم ويشغل الكود سطرًا بسطر',
            'مترجم - تنفيذ أسرع، بداية أبطأ',
            'مفسر - تنفيذ أبطأ، بداية أسرع',
          ],
        ),
        StrContent(
          'أمثلة: مفسر Python، محركات JavaScript (V8، SpiderMonkey)، مفسر Ruby',
        ),
        StrContent(
          'ملاحظة: الأنظمة الحديثة غالبًا تستخدم نهجًا هجينًا (مثل، ترجمة JIT).',
        ),
      ],
    ),
    type: .tool,
    category: .compilerInternals,
    relatedTerms: [TermKeys.compiler, TermKeys.runtime],
    tags: ['interpreter', 'execution', 'tool', 'runtime'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.package: ProgrammingTerm(
    id: TermKeys.package,
    title: LocS(en: 'Package', ar: 'الحزمة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A collection of related code files and resources bundled together that can be shared and reused across projects.',
        ),
      ],
      ar: [
        StrContent(
          'مجموعة من ملفات الكود والموارد ذات الصلة مجمعة معًا يمكن مشاركتها وإعادة استخدامها عبر المشاريع.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Packages provide:',
          value: [
            'Code reusability - use pre-built functionality',
            'Modularity - organize large projects',
            'Version management - track updates and dependencies',
            'Distribution - share code with others',
          ],
        ),
        StrContent('In Dart/Flutter:'),
        CodeContent(
          '// pubspec.yaml\n'
          'dependencies:\n'
          '  http: ^1.1.0  # HTTP client package\n'
          '  provider: ^6.0.0  # State management\n',
          codeLanguage: .yaml,
        ),
        CodeContent(
          '// Using packages in code:\n'
          "import 'package:http/http.dart' as http;\n"
          "import 'package:provider/provider.dart';",
          codeLanguage: .dart,
        ),
        StrContent(
          'Packages are hosted on pub.dev for Dart/Flutter, npm for JavaScript, PyPI for Python.',
        ),
      ],
      ar: [
        ULContent(
          title: 'توفر الحزم:',
          value: [
            'إعادة استخدام الكود - استخدام وظائف مبنية مسبقًا',
            'النمطية - تنظيم المشاريع الكبيرة',
            'إدارة الإصدارات - تتبع التحديثات والتبعيات',
            'التوزيع - مشاركة الكود مع الآخرين',
          ],
        ),
        StrContent('في Dart/Flutter:'),
        CodeContent(
          '// pubspec.yaml\n'
          'dependencies:\n'
          '  http: ^1.1.0  # حزمة عميل HTTP\n'
          '  provider: ^6.0.0  # إدارة الحالة\n'
          '\n'
          '// استخدام الحزم في الكود:\n'
          "import 'package:http/http.dart' as http;\n"
          "import 'package:provider/provider.dart';",
          codeLanguage: .dart,
        ),
        StrContent(
          'تُستضاف الحزم على pub.dev لـ Dart/Flutter، npm لـ JavaScript، PyPI لـ Python.',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .python, .javascript],
    relatedTerms: [TermKeys.dartPub, TermKeys.dependency, TermKeys.library],
    aliases: ['Module', 'Library'],
    tags: ['package', 'dependency', 'module', 'reusable'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.dependency: ProgrammingTerm(
    id: TermKeys.dependency,
    title: LocS(en: 'Dependency', ar: 'التبعية'),
    quickOverview: LocV(
      en: [
        StrContent(
          'External code that a project relies on to function. Dependencies are packages or libraries that your code imports and uses.',
        ),
      ],
      ar: [
        StrContent(
          'كود خارجي يعتمد عليه المشروع للعمل. التبعيات هي حزم أو مكتبات يستوردها كودك ويستخدمها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types of dependencies:',
          value: [
            'Direct dependencies - packages you directly use',
            'Transitive dependencies - dependencies of your dependencies',
            'Dev dependencies - only needed during development',
            'Peer dependencies - required by packages you use',
          ],
        ),
        StrContent('Managing dependencies in Dart:'),
        CodeContent(
          '// pubspec.yaml\n'
          'dependencies:\n'
          '  http: ^1.1.0  # Production dependency\n'
          '  \n'
          'dev_dependencies:\n'
          '  test: ^1.24.0  # Only for testing\n'
          '  build_runner: ^2.4.0  # Only for code generation\n'
          '\n'
          '// Install dependencies:\n'
          '// dart pub get',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'Best practices:',
          value: [
            'Keep dependencies up to date',
            'Minimize number of dependencies',
            'Review dependency licenses',
            'Check for security vulnerabilities',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'أنواع التبعيات:',
          value: [
            'تبعيات مباشرة - حزم تستخدمها مباشرة',
            'تبعيات انتقالية - تبعيات تبعياتك',
            'تبعيات التطوير - مطلوبة فقط أثناء التطوير',
            'تبعيات النظير - مطلوبة من الحزم التي تستخدمها',
          ],
        ),
        StrContent('إدارة التبعيات في Dart:'),
        CodeContent(
          '// pubspec.yaml\n'
          'dependencies:\n'
          '  http: ^1.1.0  # تبعية الإنتاج\n'
          '  \n'
          'dev_dependencies:\n'
          '  test: ^1.24.0  # للاختبار فقط\n'
          '  build_runner: ^2.4.0  # لتوليد الكود فقط\n'
          '\n'
          '// تثبيت التبعيات:\n'
          '// dart pub get',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'أفضل الممارسات:',
          value: [
            'حافظ على تحديث التبعيات',
            'قلل عدد التبعيات',
            'راجع تراخيص التبعيات',
            'تحقق من ثغرات الأمان',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .javascript, .python, .java],
    relatedTerms: [TermKeys.package, TermKeys.dartPub, TermKeys.library],
    tags: ['dependency', 'package', 'external', 'management'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.library: ProgrammingTerm(
    id: TermKeys.library,
    title: LocS(en: 'Library', ar: 'المكتبة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A collection of pre-written code that provides specific functionality and can be imported into programs to avoid rewriting common operations.',
        ),
      ],
      ar: [
        StrContent(
          'مجموعة من الكود المكتوب مسبقًا توفر وظائف محددة ويمكن استيرادها في البرامج لتجنب إعادة كتابة العمليات الشائعة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types of libraries:',
          value: [
            'Standard library - comes with the language',
            'Third-party library - created by community',
            'Internal library - created for your project',
          ],
        ),
        StrContent('Dart standard libraries:'),
        CodeContent(
          "import 'dart:core';  // Core types (automatically imported)\n"
          "import 'dart:async';  // Async programming (Future, Stream)\n"
          "import 'dart:collection';  // Collections (Queue, etc.)\n"
          "import 'dart:convert';  // JSON encoding/decoding\n"
          "import 'dart:io';  // File, network I/O\n"
          "import 'dart:math';  // Math functions",
          codeLanguage: .dart,
        ),
        StrContent('Creating your own library:'),
        CodeContent(
          '// lib/my_library.dart\n'
          'library my_library;\n'
          '\n'
          'export \'src/utils.dart\';\n'
          'export \'src/models.dart\';\n'
          '\n'
          '// In another file:\n'
          "import 'package:my_project/my_library.dart';",
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'أنواع المكتبات:',
          value: [
            'المكتبة القياسية - تأتي مع اللغة',
            'مكتبة من طرف ثالث - أنشأتها المجتمع',
            'مكتبة داخلية - أنشئت لمشروعك',
          ],
        ),
        StrContent('مكتبات Dart القياسية:'),
        CodeContent(
          "import 'dart:core';  // الأنواع الأساسية (مستوردة تلقائيًا)\n"
          "import 'dart:async';  // البرمجة غير المتزامنة (Future، Stream)\n"
          "import 'dart:collection';  // المجموعات (Queue، إلخ)\n"
          "import 'dart:convert';  // ترميز/فك ترميز JSON\n"
          "import 'dart:io';  // إدخال/إخراج الملفات والشبكة\n"
          "import 'dart:math';  // دوال رياضية",
          codeLanguage: .dart,
        ),
        StrContent('إنشاء مكتبتك الخاصة:'),
        CodeContent(
          '// lib/my_library.dart\n'
          'library my_library;\n'
          '\n'
          'export \'src/utils.dart\';\n'
          'export \'src/models.dart\';\n'
          '\n'
          '// في ملف آخر:\n'
          "import 'package:my_project/my_library.dart';",
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .python, .javascript],
    relatedTerms: [
      TermKeys.package,
      TermKeys.dependency,
      TermKeys.importExport,
    ],
    aliases: ['Package', 'Module'],
    tags: ['library', 'reusable', 'module', 'import'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.importExport: ProgrammingTerm(
    id: TermKeys.importExport,
    title: LocS(en: 'Import/Export', ar: 'الاستيراد/التصدير'),
    quickOverview: LocV(
      en: [
        StrContent(
          'Mechanisms for using code from other files or packages (import) and making code available to other files (export).',
        ),
      ],
      ar: [
        StrContent(
          'آليات لاستخدام الكود من ملفات أو حزم أخرى (استيراد) وجعل الكود متاحًا لملفات أخرى (تصدير).',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('Import in Dart:'),
        CodeContent(
          "// Import entire library\n"
          "import 'dart:math';\n"
          '\n'
          '// Import with prefix\n'
          "import 'dart:math' as math;\n"
          '\n'
          '// Import only specific items\n'
          "import 'dart:math' show pi, sqrt;\n"
          '\n'
          '// Import everything except specific items\n'
          "import 'dart:math' hide Random;\n"
          '\n'
          '// Import from package\n'
          "import 'package:http/http.dart';\n"
          '\n'
          '// Import relative file\n'
          "import 'models/user.dart';",
          codeLanguage: .dart,
        ),
        StrContent('Export in Dart:'),
        CodeContent(
          '// lib/my_library.dart\n'
          '// Re-export files\n'
          "export 'src/models.dart';\n"
          "export 'src/utils.dart';\n"
          '\n'
          '// Selective export\n'
          "export 'src/internal.dart' show PublicClass;",
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent('الاستيراد في Dart:'),
        CodeContent(
          "// استيراد المكتبة بالكامل\n"
          "import 'dart:math';\n"
          '\n'
          '// استيراد مع بادئة\n'
          "import 'dart:math' as math;\n"
          '\n'
          '// استيراد عناصر محددة فقط\n'
          "import 'dart:math' show pi, sqrt;\n"
          '\n'
          '// استيراد كل شيء عدا عناصر محددة\n'
          "import 'dart:math' hide Random;\n"
          '\n'
          '// استيراد من حزمة\n'
          "import 'package:http/http.dart';\n"
          '\n'
          '// استيراد ملف نسبي\n'
          "import 'models/user.dart';",
          codeLanguage: .dart,
        ),
        StrContent('التصدير في Dart:'),
        CodeContent(
          '// lib/my_library.dart\n'
          '// إعادة تصدير الملفات\n'
          "export 'src/models.dart';\n"
          "export 'src/utils.dart';\n"
          '\n'
          '// تصدير انتقائي\n'
          "export 'src/internal.dart' show PublicClass;",
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .syntax,
    category: .fundamentals,
    languages: [.dart, .javascript, .python, .java],
    relatedTerms: [TermKeys.library, TermKeys.package, TermKeys.dependency],
    tags: ['import', 'export', 'module', 'namespace'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.frameworkConcept: ProgrammingTerm(
    id: TermKeys.frameworkConcept,
    title: LocS(en: 'Framework', ar: 'إطار العمل'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A pre-built structure that provides a foundation for developing applications. Frameworks dictate the architecture and provide reusable components.',
        ),
      ],
      ar: [
        StrContent(
          'هيكل مبني مسبقًا يوفر أساسًا لتطوير التطبيقات. تحدد أطر العمل المعمارية وتوفر مكونات قابلة لإعادة الاستخدام.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Framework vs Library:',
          value: [
            'Library - you call its code (you are in control)',
            'Framework - it calls your code (inversion of control)',
            'Library - use what you need',
            'Framework - follow its structure and conventions',
          ],
        ),
        ULContent(
          title: 'Examples:',
          value: [
            'Flutter - UI framework for building cross-platform apps',
            'Django - Python web framework',
            'Spring - Java enterprise framework',
            'React - JavaScript UI framework',
            'Angular - TypeScript web framework',
          ],
        ),
        StrContent(
          'Frameworks typically provide: project structure, build tools, routing, state management, and common patterns.',
        ),
      ],
      ar: [
        ULContent(
          title: 'إطار العمل مقابل المكتبة:',
          value: [
            'المكتبة - أنت تستدعي كودها (أنت في السيطرة)',
            'إطار العمل - يستدعي كودك (انعكاس السيطرة)',
            'المكتبة - استخدم ما تحتاجه',
            'إطار العمل - اتبع هيكله واتفاقياته',
          ],
        ),
        ULContent(
          title: 'أمثلة:',
          value: [
            'Flutter - إطار واجهة المستخدم لبناء تطبيقات متعددة المنصات',
            'Django - إطار ويب Python',
            'Spring - إطار عمل Java للمؤسسات',
            'React - إطار واجهة المستخدم JavaScript',
            'Angular - إطار ويب TypeScript',
          ],
        ),
        StrContent(
          'عادة ما توفر أطر العمل: هيكل المشروع، أدوات البناء، التوجيه، إدارة الحالة، والأنماط الشائعة.',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.flutter, .java, .python, .javascript],
    relatedTerms: [TermKeys.flutterFramework, TermKeys.library],
    tags: ['framework', 'architecture', 'structure', 'foundation'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.sdk: ProgrammingTerm(
    id: TermKeys.sdk,
    title: LocS(
      en: 'SDK (Software Development Kit)',
      ar: 'حزمة تطوير البرمجيات',
    ),
    quickOverview: LocV(
      en: [
        StrContent(
          'A collection of tools, libraries, documentation, and code samples that developers use to create applications for a specific platform or framework.',
        ),
      ],
      ar: [
        StrContent(
          'مجموعة من الأدوات والمكتبات والوثائق وعينات الكود التي يستخدمها المطورون لإنشاء تطبيقات لمنصة أو إطار عمل محدد.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'SDK typically includes:',
          value: [
            'Compiler or interpreter',
            'Debugger',
            'Libraries and APIs',
            'Documentation',
            'Code samples and templates',
            'Build tools',
          ],
        ),
        ULContent(
          title: 'Examples:',
          value: [
            'Dart SDK - tools for Dart development',
            'Flutter SDK - framework + tools for Flutter apps',
            'Android SDK - tools for Android development',
            'iOS SDK - tools for iOS development',
            'JDK (Java Development Kit)',
          ],
        ),
        StrContent(
          'Installing Flutter SDK gives you the Flutter framework, Dart SDK, and development tools.',
        ),
      ],
      ar: [
        ULContent(
          title: 'عادة ما يتضمن SDK:',
          value: [
            'مترجم أو مفسر',
            'مصحح أخطاء',
            'مكتبات وواجهات برمجة التطبيقات',
            'وثائق',
            'عينات كود وقوالب',
            'أدوات البناء',
          ],
        ),
        ULContent(
          title: 'أمثلة:',
          value: [
            'Dart SDK - أدوات لتطوير Dart',
            'Flutter SDK - إطار العمل + أدوات لتطبيقات Flutter',
            'Android SDK - أدوات لتطوير Android',
            'iOS SDK - أدوات لتطوير iOS',
            'JDK (حزمة تطوير Java)',
          ],
        ),
        StrContent(
          'تثبيت Flutter SDK يمنحك إطار Flutter، Dart SDK، وأدوات التطوير.',
        ),
      ],
    ),
    type: .tool,
    category: .mobileDevelopment,
    languages: [.dart, .flutter, .java, .swift],
    relatedTerms: [
      TermKeys.dartLanguage,
      TermKeys.flutterFramework,
      TermKeys.api,
    ],
    aliases: ['Development Kit', 'Toolkit'],
    tags: ['sdk', 'tools', 'development', 'platform'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.api: ProgrammingTerm(
    id: TermKeys.api,
    title: LocS(
      en: 'API (Application Programming Interface)',
      ar: 'واجهة برمجة التطبيقات',
    ),
    quickOverview: LocV(
      en: [
        StrContent(
          'A set of rules, protocols, and tools that define how software components should interact. APIs specify what operations are available and how to use them.',
        ),
      ],
      ar: [
        StrContent(
          'مجموعة من القواعد والبروتوكولات والأدوات التي تحدد كيف يجب أن تتفاعل مكونات البرمجيات. تحدد واجهات برمجة التطبيقات العمليات المتاحة وكيفية استخدامها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types of APIs:',
          value: [
            'Library/Framework API - functions and classes you can use',
            'Web API (REST, GraphQL) - HTTP endpoints for data',
            'Operating System API - interact with OS features',
            'Hardware API - access device capabilities',
          ],
        ),
        StrContent('Example - using a REST API:'),
        CodeContent(
          "import 'package:http/http.dart' as http;\n"
          '\n'
          'Future<void> fetchUser() async {\n'
          "  final response = await http.get(\n"
          "    Uri.parse('https://api.example.com/users/1'),\n"
          '  );\n'
          '  \n'
          '  if (response.statusCode == 200) {\n'
          '    print(\'User data: \${response.body}\');\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent(
          'APIs allow programs to communicate without knowing internal implementation details.',
        ),
      ],
      ar: [
        ULContent(
          title: 'أنواع واجهات برمجة التطبيقات:',
          value: [
            'واجهة المكتبة/إطار العمل - دوال وفئات يمكنك استخدامها',
            'واجهة الويب (REST، GraphQL) - نقاط نهاية HTTP للبيانات',
            'واجهة نظام التشغيل - التفاعل مع ميزات OS',
            'واجهة الأجهزة - الوصول إلى قدرات الجهاز',
          ],
        ),
        StrContent('مثال - استخدام REST API:'),
        CodeContent(
          "import 'package:http/http.dart' as http;\n"
          '\n'
          'Future<void> fetchUser() async {\n'
          "  final response = await http.get(\n"
          "    Uri.parse('https://api.example.com/users/1'),\n"
          '  );\n'
          '  \n'
          '  if (response.statusCode == 200) {\n'
          '    print(\'بيانات المستخدم: \${response.body}\');\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent(
          'تسمح واجهات برمجة التطبيقات للبرامج بالتواصل دون معرفة تفاصيل التنفيذ الداخلية.',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .python, .javascript],
    relatedTerms: [TermKeys.restApi, TermKeys.httpHttps],
    aliases: ['Interface', 'Web Service'],
    tags: ['api', 'interface', 'communication', 'integration'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.exception: ProgrammingTerm(
    id: TermKeys.exception,
    title: LocS(en: 'Exception', ar: 'الاستثناء'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An event that disrupts the normal flow of program execution. Exceptions represent errors or unexpected conditions that occur during runtime.',
        ),
      ],
      ar: [
        StrContent(
          'حدث يعطل التدفق الطبيعي لتنفيذ البرنامج. تمثل الاستثناءات الأخطاء أو الظروف غير المتوقعة التي تحدث أثناء وقت التشغيل.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Common types of exceptions:',
          value: [
            'NullPointerException - accessing null object',
            'IndexOutOfBoundsException - invalid array/list index',
            'FormatException - parsing error',
            'TimeoutException - operation took too long',
            'IOException - input/output error',
          ],
        ),
        StrContent('Example in Dart:'),
        CodeContent(
          'void divide(int a, int b) {\n'
          '  if (b == 0) {\n'
          '    throw Exception(\'Cannot divide by zero\');\n'
          '  }\n'
          '  print(a / b);\n'
          '}\n'
          '\n'
          '// Custom exception\n'
          'class InvalidAgeException implements Exception {\n'
          '  final String message;\n'
          '  InvalidAgeException(this.message);\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'أنواع الاستثناءات الشائعة:',
          value: [
            'NullPointerException - الوصول إلى كائن فارغ',
            'IndexOutOfBoundsException - فهرس مصفوفة/قائمة غير صالح',
            'FormatException - خطأ في التحليل',
            'TimeoutException - استغرقت العملية وقتًا طويلاً',
            'IOException - خطأ في الإدخال/الإخراج',
          ],
        ),
        StrContent('مثال في Dart:'),
        CodeContent(
          'void divide(int a, int b) {\n'
          '  if (b == 0) {\n'
          '    throw Exception(\'لا يمكن القسمة على صفر\');\n'
          '  }\n'
          '  print(a / b);\n'
          '}\n'
          '\n'
          '// استثناء مخصص\n'
          'class InvalidAgeException implements Exception {\n'
          '  final String message;\n'
          '  InvalidAgeException(this.message);\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .python, .csharp],
    relatedTerms: [TermKeys.errorHandling, TermKeys.tryCatch],
    aliases: ['Error', 'Runtime error'],
    tags: ['exception', 'error', 'runtime', 'throw'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.errorHandling: ProgrammingTerm(
    id: TermKeys.errorHandling,
    title: LocS(en: 'Error Handling', ar: 'معالجة الأخطاء'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of anticipating, detecting, and resolving errors that occur during program execution to prevent crashes and provide graceful degradation.',
        ),
      ],
      ar: [
        StrContent(
          'عملية توقع واكتشاف وحل الأخطاء التي تحدث أثناء تنفيذ البرنامج لمنع الانهيارات وتوفير تدهور تدريجي.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Error handling strategies:',
          value: [
            'Try-catch blocks - catch and handle exceptions',
            'Throwing exceptions - signal errors to caller',
            'Error return values - return special values on error',
            'Logging - record errors for debugging',
            'User feedback - inform users of errors gracefully',
          ],
        ),
        StrContent('Best practices:'),
        ULContent(
          value: [
            'Handle expected errors, let unexpected ones crash',
            'Provide meaningful error messages',
            'Clean up resources (close files, connections)',
            'Don\'t swallow exceptions silently',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'استراتيجيات معالجة الأخطاء:',
          value: [
            'كتل Try-catch - اصطياد ومعالجة الاستثناءات',
            'رمي الاستثناءات - الإشارة للأخطاء للمستدعي',
            'قيم إرجاع الأخطاء - إرجاع قيم خاصة عند الخطأ',
            'التسجيل - تسجيل الأخطاء لتصحيح الأخطاء',
            'ملاحظات المستخدم - إعلام المستخدمين بالأخطاء بلطف',
          ],
        ),
        StrContent('أفضل الممارسات:'),
        ULContent(
          value: [
            'تعامل مع الأخطاء المتوقعة، دع غير المتوقعة تنهار',
            'وفر رسائل خطأ ذات معنى',
            'نظف الموارد (أغلق الملفات، الاتصالات)',
            'لا تبتلع الاستثناءات بصمت',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .python, .javascript],
    relatedTerms: [TermKeys.exception, TermKeys.tryCatch],
    tags: ['error', 'exception', 'handling', 'robustness'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.tryCatch: ProgrammingTerm(
    id: TermKeys.tryCatch,
    title: LocS(en: 'Try-Catch', ar: 'Try-Catch'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A control structure for handling exceptions. Code that might throw an exception is placed in the try block, and error handling code goes in the catch block.',
        ),
      ],
      ar: [
        StrContent(
          'هيكل تحكم لمعالجة الاستثناءات. يُوضع الكود الذي قد يرمي استثناءً في كتلة try، ويذهب كود معالجة الأخطاء في كتلة catch.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('Syntax in Dart:'),
        CodeContent(
          'try {\n'
          '  // Code that might throw an exception\n'
          '  int result = 10 ~/ 0;  // Division by zero\n'
          '} catch (e) {\n'
          '  // Handle the exception\n'
          '  print(\'Error: \$e\');\n'
          '} finally {\n'
          '  // Always executes (optional)\n'
          '  print(\'Cleanup code\');\n'
          '}\n'
          '\n'
          '// Catching specific exceptions\n'
          'try {\n'
          '  // risky code\n'
          '} on FormatException catch (e) {\n'
          '  print(\'Format error: \$e\');\n'
          '} on Exception catch (e) {\n'
          '  print(\'Other error: \$e\');\n'
          '} catch (e) {\n'
          '  print(\'Unknown error: \$e\');\n'
          '}',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'Key points:',
          value: [
            'try - contains code that might fail',
            'catch - handles the exception',
            'finally - executes regardless of exception',
            'on - catches specific exception types',
          ],
        ),
      ],
      ar: [
        StrContent('الصيغة في Dart:'),
        CodeContent(
          'try {\n'
          '  // كود قد يرمي استثناءً\n'
          '  int result = 10 ~/ 0;  // قسمة على صفر\n'
          '} catch (e) {\n'
          '  // معالجة الاستثناء\n'
          '  print(\'خطأ: \$e\');\n'
          '} finally {\n'
          '  // يُنفذ دائمًا (اختياري)\n'
          '  print(\'كود التنظيف\');\n'
          '}\n'
          '\n'
          '// اصطياد استثناءات محددة\n'
          'try {\n'
          '  // كود خطر\n'
          '} on FormatException catch (e) {\n'
          '  print(\'خطأ في التنسيق: \$e\');\n'
          '} on Exception catch (e) {\n'
          '  print(\'خطأ آخر: \$e\');\n'
          '} catch (e) {\n'
          '  print(\'خطأ غير معروف: \$e\');\n'
          '}',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'نقاط رئيسية:',
          value: [
            'try - يحتوي على كود قد يفشل',
            'catch - يعالج الاستثناء',
            'finally - يُنفذ بغض النظر عن الاستثناء',
            'on - يصطاد أنواع استثناءات محددة',
          ],
        ),
      ],
    ),
    type: .syntax,
    category: .fundamentals,
    languages: [.dart, .java, .javascript, .python],
    relatedTerms: [TermKeys.exception, TermKeys.errorHandling],
    aliases: ['Exception handling', 'Try-except'],
    tags: ['try', 'catch', 'exception', 'error handling'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.assertion: ProgrammingTerm(
    id: TermKeys.assertion,
    title: LocS(en: 'Assertion', ar: 'التأكيد'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A statement that checks if a condition is true during development. If false, the program throws an error. Assertions help catch bugs early.',
        ),
      ],
      ar: [
        StrContent(
          'جملة تتحقق من صحة شرط أثناء التطوير. إذا كانت خاطئة، يرمي البرنامج خطأ. تساعد التأكيدات في اكتشاف الأخطاء مبكرًا.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('In Dart:'),
        CodeContent(
          'void setAge(int age) {\n'
          '  assert(age >= 0, \'Age cannot be negative\');\n'
          '  assert(age < 150, \'Age seems unrealistic\');\n'
          '  // ... rest of code\n'
          '}\n'
          '\n'
          '// Assertions are only active in debug mode\n'
          '// In production (release mode), they are ignored\n'
          '\n'
          '// Enable assertions when running:\n'
          '// dart run --enable-asserts my_app.dart',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'When to use assertions:',
          value: [
            'Verify assumptions during development',
            'Document code requirements',
            'Catch programming errors early',
            'NOT for user input validation (use exceptions)',
          ],
        ),
      ],
      ar: [
        StrContent('في Dart:'),
        CodeContent(
          'void setAge(int age) {\n'
          '  assert(age >= 0, \'لا يمكن أن يكون العمر سالبًا\');\n'
          '  assert(age < 150, \'العمر يبدو غير واقعي\');\n'
          '  // ... بقية الكود\n'
          '}\n'
          '\n'
          '// التأكيدات نشطة فقط في وضع التصحيح\n'
          '// في الإنتاج (وضع الإصدار)، يتم تجاهلها\n'
          '\n'
          '// تمكين التأكيدات عند التشغيل:\n'
          '// dart run --enable-asserts my_app.dart',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'متى تستخدم التأكيدات:',
          value: [
            'التحقق من الافتراضات أثناء التطوير',
            'توثيق متطلبات الكود',
            'اكتشاف أخطاء البرمجة مبكرًا',
            'ليس للتحقق من إدخال المستخدم (استخدم الاستثناءات)',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .c, .python],
    relatedTerms: [TermKeys.exception, 'debugging'],
    aliases: ['Assert'],
    tags: ['assertion', 'debug', 'validation', 'testing'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.testing: ProgrammingTerm(
    id: TermKeys.testing,
    title: LocS(en: 'Testing', ar: 'الاختبار'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of evaluating software to find bugs and verify it works as expected. Testing ensures code quality and reliability.',
        ),
      ],
      ar: [
        StrContent(
          'عملية تقييم البرمجيات لإيجاد الأخطاء والتحقق من عملها كما هو متوقع. يضمن الاختبار جودة الكود وموثوقيته.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types of testing:',
          value: [
            'Unit Testing - test individual functions/classes',
            'Integration Testing - test how parts work together',
            'Widget Testing (Flutter) - test UI components',
            'End-to-End Testing - test complete user flows',
            'Manual Testing - human testers use the app',
          ],
        ),
        ULContent(
          title: 'Benefits:',
          value: [
            'Catch bugs early',
            'Enable confident refactoring',
            'Document expected behavior',
            'Reduce debugging time',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'أنواع الاختبار:',
          value: [
            'اختبار الوحدة - اختبار دوال/فئات فردية',
            'اختبار التكامل - اختبار كيف تعمل الأجزاء معًا',
            'اختبار الويدجت (Flutter) - اختبار مكونات واجهة المستخدم',
            'الاختبار من البداية للنهاية - اختبار تدفقات المستخدم الكاملة',
            'الاختبار اليدوي - مختبرون بشريون يستخدمون التطبيق',
          ],
        ),
        ULContent(
          title: 'الفوائد:',
          value: [
            'اكتشاف الأخطاء مبكرًا',
            'تمكين إعادة الهيكلة بثقة',
            'توثيق السلوك المتوقع',
            'تقليل وقت تصحيح الأخطاء',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .testing,
    languages: [.dart, .flutter, .java, .python],
    relatedTerms: [
      TermKeys.unitTest,
      TermKeys.widgetTest,
      TermKeys.integrationTest,
    ],
    tags: ['testing', 'quality', 'bugs', 'verification'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.unitTest: ProgrammingTerm(
    id: TermKeys.unitTest,
    title: LocS(en: 'Unit Test', ar: 'اختبار الوحدة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A test that verifies the behavior of a single unit of code (usually a function or method) in isolation from the rest of the system.',
        ),
      ],
      ar: [
        StrContent(
          'اختبار يتحقق من سلوك وحدة واحدة من الكود (عادة دالة أو أسلوب) بمعزل عن بقية النظام.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('Example in Dart:'),
        CodeContent(
          "import 'package:test/test.dart';\n"
          '\n'
          '// Function to test\n'
          'int add(int a, int b) => a + b;\n'
          '\n'
          '// Unit test\n'
          "void main() {\n"
          "  test('add returns sum of two numbers', () {\n"
          '    expect(add(2, 3), equals(5));\n'
          '    expect(add(-1, 1), equals(0));\n'
          '    expect(add(0, 0), equals(0));\n'
          '  });\n'
          '  \n'
          "  test('add handles negative numbers', () {\n"
          '    expect(add(-5, -3), equals(-8));\n'
          '  });\n'
          '}',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'Best practices:',
          value: [
            'Test one thing per test',
            'Tests should be fast',
            'Tests should be independent',
            'Use descriptive test names',
            'Follow AAA pattern: Arrange, Act, Assert',
          ],
        ),
      ],
      ar: [
        StrContent('مثال في Dart:'),
        CodeContent(
          "import 'package:test/test.dart';\n"
          '\n'
          '// دالة للاختبار\n'
          'int add(int a, int b) => a + b;\n'
          '\n'
          '// اختبار الوحدة\n'
          "void main() {\n"
          "  test('add يرجع مجموع رقمين', () {\n"
          '    expect(add(2, 3), equals(5));\n'
          '    expect(add(-1, 1), equals(0));\n'
          '    expect(add(0, 0), equals(0));\n'
          '  });\n'
          '  \n'
          "  test('add يتعامل مع الأرقام السالبة', () {\n"
          '    expect(add(-5, -3), equals(-8));\n'
          '  });\n'
          '}',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'أفضل الممارسات:',
          value: [
            'اختبر شيئًا واحدًا لكل اختبار',
            'يجب أن تكون الاختبارات سريعة',
            'يجب أن تكون الاختبارات مستقلة',
            'استخدم أسماء اختبار وصفية',
            'اتبع نمط AAA: ترتيب، تصرف، تأكيد',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .testing,
    languages: [.dart, .java, .python, .javascript],
    relatedTerms: [TermKeys.testing, TermKeys.widgetTest, TermKeys.mock],
    tags: ['unit test', 'testing', 'isolation', 'verification'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.widgetTest: ProgrammingTerm(
    id: TermKeys.widgetTest,
    title: LocS(en: 'Widget Test', ar: 'اختبار الويدجت'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A Flutter-specific test that verifies the behavior of widgets. Tests user interactions, widget rendering, and state changes.',
        ),
      ],
      ar: [
        StrContent(
          'اختبار خاص بـ Flutter يتحقق من سلوك الويدجت. يختبر تفاعلات المستخدم، عرض الويدجت، وتغييرات الحالة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('Example:'),
        CodeContent(
          "import 'package:flutter_test/flutter_test.dart';\n"
          "import 'package:flutter/material.dart';\n"
          '\n'
          'void main() {\n'
          "  testWidgets('Counter increments', (tester) async {\n"
          '    // Build widget\n'
          '    await tester.pumpWidget(MyApp());\n'
          '    \n'
          '    // Verify initial state\n'
          "    expect(find.text('0'), findsOneWidget);\n"
          "    expect(find.text('1'), findsNothing);\n"
          '    \n'
          '    // Tap button\n'
          '    await tester.tap(find.byIcon(Icons.add));\n'
          '    await tester.pump();\n'
          '    \n'
          '    // Verify updated state\n'
          "    expect(find.text('0'), findsNothing);\n"
          "    expect(find.text('1'), findsOneWidget);\n"
          '  });\n'
          '}',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'Key methods:',
          value: [
            'pumpWidget - build the widget tree',
            'pump - trigger a frame',
            'tap - simulate tap gesture',
            'find - locate widgets',
            'expect - verify assertions',
          ],
        ),
      ],
      ar: [
        StrContent('مثال:'),
        CodeContent(
          "import 'package:flutter_test/flutter_test.dart';\n"
          "import 'package:flutter/material.dart';\n"
          '\n'
          'void main() {\n'
          "  testWidgets('العداد يزداد', (tester) async {\n"
          '    // بناء الويدجت\n'
          '    await tester.pumpWidget(MyApp());\n'
          '    \n'
          '    // التحقق من الحالة الأولية\n'
          "    expect(find.text('0'), findsOneWidget);\n"
          "    expect(find.text('1'), findsNothing);\n"
          '    \n'
          '    // النقر على الزر\n'
          '    await tester.tap(find.byIcon(Icons.add));\n'
          '    await tester.pump();\n'
          '    \n'
          '    // التحقق من الحالة المحدثة\n'
          "    expect(find.text('0'), findsNothing);\n"
          "    expect(find.text('1'), findsOneWidget);\n"
          '  });\n'
          '}',
          codeLanguage: .dart,
        ),
        ULContent(
          title: 'الأساليب الرئيسية:',
          value: [
            'pumpWidget - بناء شجرة الويدجت',
            'pump - تشغيل إطار',
            'tap - محاكاة لمسة النقر',
            'find - تحديد موقع الويدجت',
            'expect - التحقق من التأكيدات',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .testing,
    languages: [.flutter],
    relatedTerms: [TermKeys.testing, TermKeys.unitTest, TermKeys.flutterWidget],
    tags: ['widget test', 'flutter', 'ui testing', 'automation'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.integrationTest: ProgrammingTerm(
    id: TermKeys.integrationTest,
    title: LocS(en: 'Integration Test', ar: 'اختبار التكامل'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A test that verifies how different parts of the system work together. Tests complete features or user flows across multiple components.',
        ),
      ],
      ar: [
        StrContent(
          'اختبار يتحقق من كيفية عمل أجزاء مختلفة من النظام معًا. يختبر ميزات كاملة أو تدفقات المستخدم عبر مكونات متعددة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'What integration tests verify:',
          value: [
            'Multiple components working together',
            'Database interactions',
            'API calls and responses',
            'Complete user workflows',
            'Real device/platform behavior',
          ],
        ),
        StrContent(
          'In Flutter, integration tests run on real devices or emulators:',
        ),
        CodeContent(
          "import 'package:flutter_test/flutter_test.dart';\n"
          "import 'package:integration_test/integration_test.dart';\n"
          '\n'
          'void main() {\n'
          '  IntegrationTestWidgetsFlutterBinding.ensureInitialized();\n'
          '  \n'
          "  testWidgets('Complete login flow', (tester) async {\n"
          '    await tester.pumpWidget(MyApp());\n'
          '    \n'
          '    // Enter credentials\n'
          "    await tester.enterText(find.byKey(Key('email')), 'user@example.com');\n"
          "    await tester.enterText(find.byKey(Key('password')), 'password123');\n"
          '    \n'
          '    // Submit\n'
          "    await tester.tap(find.text('Login'));\n"
          '    await tester.pumpAndSettle();\n'
          '    \n'
          '    // Verify navigation to home screen\n'
          "    expect(find.text('Welcome'), findsOneWidget);\n"
          '  });\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'ما يتحقق منه اختبار التكامل:',
          value: [
            'مكونات متعددة تعمل معًا',
            'تفاعلات قاعدة البيانات',
            'استدعاءات واستجابات API',
            'تدفقات عمل المستخدم الكاملة',
            'سلوك الجهاز/المنصة الحقيقي',
          ],
        ),
        StrContent(
          'في Flutter، تعمل اختبارات التكامل على أجهزة حقيقية أو محاكيات:',
        ),
        CodeContent(
          "import 'package:flutter_test/flutter_test.dart';\n"
          "import 'package:integration_test/integration_test.dart';\n"
          '\n'
          'void main() {\n'
          '  IntegrationTestWidgetsFlutterBinding.ensureInitialized();\n'
          '  \n'
          "  testWidgets('تدفق تسجيل الدخول الكامل', (tester) async {\n"
          '    await tester.pumpWidget(MyApp());\n'
          '    \n'
          '    // إدخال بيانات الاعتماد\n'
          "    await tester.enterText(find.byKey(Key('email')), 'user@example.com');\n"
          "    await tester.enterText(find.byKey(Key('password')), 'password123');\n"
          '    \n'
          '    // إرسال\n'
          "    await tester.tap(find.text('تسجيل الدخول'));\n"
          '    await tester.pumpAndSettle();\n'
          '    \n'
          '    // التحقق من الانتقال لشاشة الرئيسية\n'
          "    expect(find.text('مرحبًا'), findsOneWidget);\n"
          '  });\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .testing,
    languages: [.dart, .flutter, .java, .python],
    relatedTerms: [TermKeys.testing, TermKeys.unitTest, TermKeys.widgetTest],
    aliases: ['End-to-end test', 'E2E test'],
    tags: ['integration', 'testing', 'workflow', 'e2e'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.mock: ProgrammingTerm(
    id: TermKeys.mock,
    title: LocS(en: 'Mock', ar: 'المحاكاة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A simulated object that mimics the behavior of real objects in testing. Mocks replace dependencies to test code in isolation.',
        ),
      ],
      ar: [
        StrContent(
          'كائن محاكى يحاكي سلوك الكائنات الحقيقية في الاختبار. تستبدل المحاكيات التبعيات لاختبار الكود بمعزل.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Why use mocks:',
          value: [
            'Test without external dependencies (database, API)',
            'Control test conditions precisely',
            'Make tests faster and more reliable',
            'Verify interactions (method calls, parameters)',
          ],
        ),
        StrContent('Example using Mockito in Dart:'),
        CodeContent(
          "import 'package:mockito/mockito.dart';\n"
          "import 'package:test/test.dart';\n"
          '\n'
          '// Interface to mock\n'
          'abstract class UserRepository {\n'
          '  Future<User> getUser(String id);\n'
          '}\n'
          '\n'
          '// Mock implementation\n'
          'class MockUserRepository extends Mock implements UserRepository {}\n'
          '\n'
          'void main() {\n'
          "  test('fetchUserData returns user', () async {\n"
          '    // Create mock\n'
          '    final mockRepo = MockUserRepository();\n'
          '    \n'
          '    // Define behavior\n'
          "    when(mockRepo.getUser('123'))\n"
          "        .thenAnswer((_) async => User(id: '123', name: 'Alice'));\n"
          '    \n'
          '    // Test using mock\n'
          "    final user = await mockRepo.getUser('123');\n"
          "    expect(user.name, equals('Alice'));\n"
          '    \n'
          '    // Verify interaction\n'
          "    verify(mockRepo.getUser('123')).called(1);\n"
          '  });\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'لماذا نستخدم المحاكيات:',
          value: [
            'الاختبار بدون تبعيات خارجية (قاعدة بيانات، API)',
            'التحكم في ظروف الاختبار بدقة',
            'جعل الاختبارات أسرع وأكثر موثوقية',
            'التحقق من التفاعلات (استدعاءات الأساليب، المعاملات)',
          ],
        ),
        StrContent('مثال باستخدام Mockito في Dart:'),
        CodeContent(
          "import 'package:mockito/mockito.dart';\n"
          "import 'package:test/test.dart';\n"
          '\n'
          '// واجهة للمحاكاة\n'
          'abstract class UserRepository {\n'
          '  Future<User> getUser(String id);\n'
          '}\n'
          '\n'
          '// تنفيذ المحاكاة\n'
          'class MockUserRepository extends Mock implements UserRepository {}\n'
          '\n'
          'void main() {\n'
          "  test('fetchUserData يرجع مستخدم', () async {\n"
          '    // إنشاء محاكاة\n'
          '    final mockRepo = MockUserRepository();\n'
          '    \n'
          '    // تحديد السلوك\n'
          "    when(mockRepo.getUser('123'))\n"
          "        .thenAnswer((_) async => User(id: '123', name: 'أليس'));\n"
          '    \n'
          '    // الاختبار باستخدام المحاكاة\n'
          "    final user = await mockRepo.getUser('123');\n"
          "    expect(user.name, equals('أليس'));\n"
          '    \n'
          '    // التحقق من التفاعل\n'
          "    verify(mockRepo.getUser('123')).called(1);\n"
          '  });\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .testing,
    languages: [.dart, .java, .python, .javascript],
    relatedTerms: [TermKeys.unitTest, 'stub'],
    aliases: ['Test double', 'Fake'],
    tags: ['mock', 'testing', 'isolation', 'simulation'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.versionControl: ProgrammingTerm(
    id: TermKeys.versionControl,
    title: LocS(en: 'Version Control', ar: 'التحكم في الإصدار'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A system that tracks changes to files over time, allowing you to recall specific versions, collaborate with others, and manage code history.',
        ),
      ],
      ar: [
        StrContent(
          'نظام يتتبع التغييرات على الملفات مع مرور الوقت، مما يسمح لك باسترجاع إصدارات محددة، التعاون مع الآخرين، وإدارة تاريخ الكود.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Benefits:',
          value: [
            'Track all changes to code',
            'Collaborate with multiple developers',
            'Revert to previous versions',
            'Branch for new features',
            'Review code before merging',
          ],
        ),
        ULContent(
          title: 'Popular systems:',
          value: [
            'Git - most widely used (GitHub, GitLab, Bitbucket)',
            'SVN (Subversion) - centralized system',
            'Mercurial - distributed system',
          ],
        ),
        StrContent('Git is the industry standard for version control.'),
      ],
      ar: [
        ULContent(
          title: 'الفوائد:',
          value: [
            'تتبع جميع التغييرات على الكود',
            'التعاون مع مطورين متعددين',
            'العودة لإصدارات سابقة',
            'التفرع للميزات الجديدة',
            'مراجعة الكود قبل الدمج',
          ],
        ),
        ULContent(
          title: 'الأنظمة الشائعة:',
          value: [
            'Git - الأكثر استخدامًا (GitHub، GitLab، Bitbucket)',
            'SVN (Subversion) - نظام مركزي',
            'Mercurial - نظام موزع',
          ],
        ),
        StrContent('Git هو المعيار الصناعي للتحكم في الإصدار.'),
      ],
    ),
    type: .concept,
    category: .versionControl,
    relatedTerms: [TermKeys.git, TermKeys.commit, TermKeys.branch],
    aliases: ['Source control', 'SCM'],
    tags: ['version control', 'git', 'collaboration', 'history'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.git: ProgrammingTerm(
    id: TermKeys.git,
    title: LocS(en: 'Git', ar: 'Git'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A distributed version control system that tracks changes in source code. Created by Linus Torvalds in 2005.',
        ),
      ],
      ar: [
        StrContent(
          'نظام تحكم في الإصدار موزع يتتبع التغييرات في الكود المصدري. أنشأه Linus Torvalds في 2005.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Basic Git commands:',
          value: [
            'git init - create a new repository',
            'git clone - copy a repository',
            'git add - stage changes',
            'git commit - save changes',
            'git push - upload to remote',
            'git pull - download from remote',
            'git status - check current state',
          ],
        ),
        StrContent('Basic workflow:'),
        CodeContent(
          '# Initialize repository\n'
          'git init\n'
          '\n'
          '# Add files\n'
          'git add .\n'
          '\n'
          '# Commit changes\n'
          'git commit -m "Initial commit"\n'
          '\n'
          '# Connect to remote\n'
          'git remote add origin https://github.com/user/repo.git\n'
          '\n'
          '# Push to remote\n'
          'git push -u origin main',
          codeLanguage: .bash,
        ),
      ],
      ar: [
        ULContent(
          title: 'أوامر Git الأساسية:',
          value: [
            'git init - إنشاء مستودع جديد',
            'git clone - نسخ مستودع',
            'git add - تجهيز التغييرات',
            'git commit - حفظ التغييرات',
            'git push - رفع للخادم البعيد',
            'git pull - تنزيل من الخادم البعيد',
            'git status - فحص الحالة الحالية',
          ],
        ),
        StrContent('سير العمل الأساسي:'),
        CodeContent(
          '# تهيئة المستودع\n'
          'git init\n'
          '\n'
          '# إضافة الملفات\n'
          'git add .\n'
          '\n'
          '# حفظ التغييرات\n'
          'git commit -m "الإضافة الأولية"\n'
          '\n'
          '# الاتصال بالخادم البعيد\n'
          'git remote add origin https://github.com/user/repo.git\n'
          '\n'
          '# رفع للخادم البعيد\n'
          'git push -u origin main',
          codeLanguage: .bash,
        ),
      ],
    ),
    type: .tool,
    category: .versionControl,
    relatedTerms: [TermKeys.versionControl, TermKeys.commit, TermKeys.branch],
    tags: ['git', 'vcs', 'version control', 'collaboration'],
    era: .classic,
    popularityTier: .veryHigh,
    introducedYear: 2005,
  ),
  TermKeys.commit: ProgrammingTerm(
    id: TermKeys.commit,
    title: LocS(en: 'Commit', ar: 'الإيداع'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A snapshot of changes in version control. A commit saves the current state of files with a descriptive message.',
        ),
      ],
      ar: [
        StrContent(
          'لقطة من التغييرات في التحكم في الإصدار. يحفظ الإيداع الحالة الحالية للملفات مع رسالة وصفية.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Good commit practices:',
          value: [
            'Write clear, descriptive messages',
            'Make atomic commits (one logical change)',
            'Commit often (small, frequent changes)',
            'Don\'t commit broken code',
          ],
        ),
        StrContent('Creating commits:'),
        CodeContent(
          '# Stage specific files\n'
          'git add file1.dart file2.dart\n'
          '\n'
          '# Stage all changes\n'
          'git add .\n'
          '\n'
          '# Commit with message\n'
          'git commit -m "Add user authentication feature"\n'
          '\n'
          '# Commit all tracked changes\n'
          'git commit -am "Fix login bug"\n'
          '\n'
          '# View commit history\n'
          'git log',
          codeLanguage: .bash,
        ),
      ],
      ar: [
        ULContent(
          title: 'ممارسات الإيداع الجيدة:',
          value: [
            'اكتب رسائل واضحة ووصفية',
            'قم بإيداعات ذرية (تغيير منطقي واحد)',
            'قم بالإيداع كثيرًا (تغييرات صغيرة متكررة)',
            'لا تودع كودًا مكسورًا',
          ],
        ),
        StrContent('إنشاء الإيداعات:'),
        CodeContent(
          '# تجهيز ملفات محددة\n'
          'git add file1.dart file2.dart\n'
          '\n'
          '# تجهيز جميع التغييرات\n'
          'git add .\n'
          '\n'
          '# الإيداع مع رسالة\n'
          'git commit -m "إضافة ميزة مصادقة المستخدم"\n'
          '\n'
          '# إيداع جميع التغييرات المتتبعة\n'
          'git commit -am "إصلاح خطأ تسجيل الدخول"\n'
          '\n'
          '# عرض تاريخ الإيداعات\n'
          'git log',
          codeLanguage: .bash,
        ),
      ],
    ),
    type: .concept,
    category: .versionControl,
    relatedTerms: [TermKeys.git, TermKeys.versionControl],
    aliases: ['Check-in', 'Revision'],
    tags: ['commit', 'git', 'snapshot', 'save'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.branch: ProgrammingTerm(
    id: TermKeys.branch,
    title: LocS(en: 'Branch', ar: 'الفرع'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A parallel version of a repository. Branches allow you to work on new features or fixes without affecting the main codebase.',
        ),
      ],
      ar: [
        StrContent(
          'نسخة موازية من المستودع. تسمح الفروع بالعمل على ميزات أو إصلاحات جديدة دون التأثير على قاعدة الكود الرئيسية.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Common branching strategies:',
          value: [
            'main/master - production-ready code',
            'develop - integration branch for features',
            'feature/* - new features',
            'bugfix/* - bug fixes',
            'hotfix/* - urgent production fixes',
          ],
        ),
        StrContent('Working with branches:'),
        CodeContent(
          '# Create and switch to new branch\n'
          'git checkout -b feature/user-profile\n'
          '\n'
          '# List all branches\n'
          'git branch\n'
          '\n'
          '# Switch to existing branch\n'
          'git checkout main\n'
          '\n'
          '# Delete branch\n'
          'git branch -d feature/user-profile\n'
          '\n'
          '# Push branch to remote\n'
          'git push origin feature/user-profile',
          codeLanguage: .bash,
        ),
      ],
      ar: [
        ULContent(
          title: 'استراتيجيات التفرع الشائعة:',
          value: [
            'main/master - كود جاهز للإنتاج',
            'develop - فرع التكامل للميزات',
            'feature/* - ميزات جديدة',
            'bugfix/* - إصلاحات الأخطاء',
            'hotfix/* - إصلاحات إنتاج عاجلة',
          ],
        ),
        StrContent('العمل مع الفروع:'),
        CodeContent(
          '# إنشاء والانتقال لفرع جديد\n'
          'git checkout -b feature/user-profile\n'
          '\n'
          '# عرض جميع الفروع\n'
          'git branch\n'
          '\n'
          '# الانتقال لفرع موجود\n'
          'git checkout main\n'
          '\n'
          '# حذف فرع\n'
          'git branch -d feature/user-profile\n'
          '\n'
          '# رفع فرع للخادم البعيد\n'
          'git push origin feature/user-profile',
          codeLanguage: .bash,
        ),
      ],
    ),
    type: .concept,
    category: .versionControl,
    relatedTerms: [TermKeys.git, TermKeys.merge, TermKeys.commit],
    tags: ['branch', 'git', 'parallel development', 'workflow'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.merge: ProgrammingTerm(
    id: TermKeys.merge,
    title: LocS(en: 'Merge', ar: 'الدمج'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of combining changes from one branch into another. Merging integrates separate development lines.',
        ),
      ],
      ar: [
        StrContent(
          'عملية دمج التغييرات من فرع إلى آخر. يدمج الدمج خطوط التطوير المنفصلة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('Merging branches:'),
        CodeContent(
          '# Switch to target branch\n'
          'git checkout main\n'
          '\n'
          '# Merge feature branch into main\n'
          'git merge feature/user-profile\n'
          '\n'
          '# If there are conflicts:\n'
          '# 1. Resolve conflicts in files\n'
          '# 2. Stage resolved files: git add .\n'
          '# 3. Complete merge: git commit',
          codeLanguage: .bash,
        ),
        ULContent(
          title: 'Merge conflicts occur when:',
          value: [
            'Same lines modified in both branches',
            'File deleted in one branch, modified in another',
            'Both branches modify same file differently',
          ],
        ),
        StrContent(
          'Best practice: Pull latest changes before merging to minimize conflicts.',
        ),
      ],
      ar: [
        StrContent('دمج الفروع:'),
        CodeContent(
          '# الانتقال للفرع المستهدف\n'
          'git checkout main\n'
          '\n'
          '# دمج فرع الميزة في main\n'
          'git merge feature/user-profile\n'
          '\n'
          '# إذا كانت هناك تعارضات:\n'
          '# 1. حل التعارضات في الملفات\n'
          '# 2. تجهيز الملفات المحلولة: git add .\n'
          '# 3. إكمال الدمج: git commit',
          codeLanguage: .bash,
        ),
        ULContent(
          title: 'تحدث تعارضات الدمج عندما:',
          value: [
            'تعديل نفس الأسطر في كلا الفرعين',
            'حذف ملف في فرع، تعديله في آخر',
            'تعديل كلا الفرعين لنفس الملف بشكل مختلف',
          ],
        ),
        StrContent(
          'أفضل ممارسة: اسحب أحدث التغييرات قبل الدمج لتقليل التعارضات.',
        ),
      ],
    ),
    type: .concept,
    category: .versionControl,
    relatedTerms: [TermKeys.branch, TermKeys.git, 'rebase'],
    aliases: ['Integration'],
    tags: ['merge', 'git', 'integration', 'conflicts'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.pullRequest: ProgrammingTerm(
    id: TermKeys.pullRequest,
    title: LocS(en: 'Pull Request (PR)', ar: 'طلب السحب'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A request to merge code changes from one branch into another. PRs enable code review and discussion before integration.',
        ),
      ],
      ar: [
        StrContent(
          'طلب لدمج تغييرات الكود من فرع إلى آخر. تتيح طلبات السحب مراجعة الكود والنقاش قبل الدمج.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Pull request workflow:',
          value: [
            '1. Create feature branch',
            '2. Make changes and commit',
            '3. Push branch to remote',
            '4. Create pull request on GitHub/GitLab',
            '5. Team reviews code',
            '6. Address feedback and update',
            '7. PR approved and merged',
          ],
        ),
        ULContent(
          title: 'Good PR practices:',
          value: [
            'Write clear description of changes',
            'Keep PRs small and focused',
            'Link to related issues/tickets',
            'Request specific reviewers',
            'Respond to feedback promptly',
          ],
        ),
        StrContent('Also called "Merge Request" (MR) in GitLab.'),
      ],
      ar: [
        ULContent(
          title: 'سير عمل طلب السحب:',
          value: [
            '1. إنشاء فرع الميزة',
            '2. إجراء التغييرات والإيداع',
            '3. رفع الفرع للخادم البعيد',
            '4. إنشاء طلب سحب على GitHub/GitLab',
            '5. الفريق يراجع الكود',
            '6. معالجة الملاحظات والتحديث',
            '7. الموافقة على طلب السحب ودمجه',
          ],
        ),
        ULContent(
          title: 'ممارسات طلب السحب الجيدة:',
          value: [
            'اكتب وصفًا واضحًا للتغييرات',
            'اجعل طلبات السحب صغيرة ومركزة',
            'اربط بالمشاكل/التذاكر ذات الصلة',
            'اطلب مراجعين محددين',
            'استجب للملاحظات بسرعة',
          ],
        ),
        StrContent('يُسمى أيضًا "طلب الدمج" (MR) في GitLab.'),
      ],
    ),
    type: .concept,
    category: .versionControl,
    relatedTerms: [TermKeys.merge, TermKeys.codeReview, TermKeys.branch],
    aliases: ['Merge Request', 'MR'],
    tags: ['pull request', 'code review', 'collaboration', 'git'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.codeReview: ProgrammingTerm(
    id: TermKeys.codeReview,
    title: LocS(en: 'Code Review', ar: 'مراجعة الكود'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The practice of examining code written by others to find bugs, improve quality, share knowledge, and ensure standards are met.',
        ),
      ],
      ar: [
        StrContent(
          'ممارسة فحص الكود المكتوب من قبل الآخرين لإيجاد الأخطاء، تحسين الجودة، مشاركة المعرفة، والتأكد من استيفاء المعايير.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'What reviewers check:',
          value: [
            'Correctness - does it work as intended?',
            'Code quality - is it readable and maintainable?',
            'Tests - are there adequate tests?',
            'Performance - any potential bottlenecks?',
            'Security - any vulnerabilities?',
            'Standards - follows team conventions?',
          ],
        ),
        ULContent(
          title: 'Benefits:',
          value: [
            'Catch bugs early',
            'Improve code quality',
            'Share knowledge across team',
            'Maintain consistent style',
            'Mentor junior developers',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'ما يفحصه المراجعون:',
          value: [
            'الصحة - هل يعمل كما هو مقصود؟',
            'جودة الكود - هل هو قابل للقراءة والصيانة؟',
            'الاختبارات - هل هناك اختبارات كافية؟',
            'الأداء - أي اختناقات محتملة؟',
            'الأمان - أي ثغرات؟',
            'المعايير - يتبع اتفاقيات الفريق؟',
          ],
        ),
        ULContent(
          title: 'الفوائد:',
          value: [
            'اكتشاف الأخطاء مبكرًا',
            'تحسين جودة الكود',
            'مشاركة المعرفة عبر الفريق',
            'الحفاظ على نمط متسق',
            'توجيه المطورين المبتدئين',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    relatedTerms: [TermKeys.pullRequest, 'refactoring'],
    tags: ['code review', 'quality', 'collaboration', 'best practices'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.singleton: ProgrammingTerm(
    id: TermKeys.singleton,
    title: LocS(en: 'Singleton Pattern', ar: 'نمط المفرد'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A design pattern that ensures a class has only one instance and provides a global point of access to it.',
        ),
      ],
      ar: [
        StrContent(
          'نمط تصميم يضمن أن للفئة نسخة واحدة فقط ويوفر نقطة وصول عامة لها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Use cases:',
          value: [
            'Database connections',
            'Configuration settings',
            'Logging services',
            'Cache managers',
          ],
        ),
        StrContent('Implementation in Dart:'),
        CodeContent(
          'class DatabaseConnection {\n'
          '  // Private constructor\n'
          '  DatabaseConnection._();\n'
          '  \n'
          '  // Single instance\n'
          '  static final DatabaseConnection _instance = DatabaseConnection._();\n'
          '  \n'
          '  // Factory constructor returns same instance\n'
          '  factory DatabaseConnection() => _instance;\n'
          '  \n'
          '  void query(String sql) {\n'
          '    print("Executing: \$sql");\n'
          '  }\n'
          '}\n'
          '\n'
          '// Usage:\n'
          'var db1 = DatabaseConnection();\n'
          'var db2 = DatabaseConnection();\n'
          'print(identical(db1, db2));  // true - same instance',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'حالات الاستخدام:',
          value: [
            'اتصالات قاعدة البيانات',
            'إعدادات التكوين',
            'خدمات التسجيل',
            'مدراء التخزين المؤقت',
          ],
        ),
        StrContent('التنفيذ في Dart:'),
        CodeContent(
          'class DatabaseConnection {\n'
          '  // منشئ خاص\n'
          '  DatabaseConnection._();\n'
          '  \n'
          '  // نسخة واحدة\n'
          '  static final DatabaseConnection _instance = DatabaseConnection._();\n'
          '  \n'
          '  // منشئ مصنعي يرجع نفس النسخة\n'
          '  factory DatabaseConnection() => _instance;\n'
          '  \n'
          '  void query(String sql) {\n'
          '    print("تنفيذ: \$sql");\n'
          '  }\n'
          '}\n'
          '\n'
          '// الاستخدام:\n'
          'var db1 = DatabaseConnection();\n'
          'var db2 = DatabaseConnection();\n'
          'print(identical(db1, db2));  // true - نفس النسخة',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .pattern,
    category: .architecture,
    languages: [.dart, .java, .csharp, .python],
    relatedTerms: [TermKeys.oopConstructor, 'design-patterns'],
    tags: ['singleton', 'design pattern', 'instance', 'global'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.factoryConstructor: ProgrammingTerm(
    id: TermKeys.factoryConstructor,
    title: LocS(en: 'Factory Constructor', ar: 'المنشئ المصنعي'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A special constructor in Dart that can return an existing instance or a subclass instance instead of always creating a new object.',
        ),
      ],
      ar: [
        StrContent(
          'منشئ خاص في Dart يمكنه إرجاع نسخة موجودة أو نسخة فئة فرعية بدلاً من إنشاء كائن جديد دائمًا.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Factory constructors can:',
          value: [
            'Return cached instances',
            'Return subclass instances',
            'Perform complex initialization',
            'Implement singleton pattern',
          ],
        ),
        StrContent('Examples:'),
        CodeContent(
          'class Logger {\n'
          '  final String name;\n'
          '  static final Map<String, Logger> _cache = {};\n'
          '  \n'
          '  // Private constructor\n'
          '  Logger._(this.name);\n'
          '  \n'
          '  // Factory constructor with caching\n'
          '  factory Logger(String name) {\n'
          '    return _cache.putIfAbsent(name, () => Logger._(name));\n'
          '  }\n'
          '}\n'
          '\n'
          '// Factory returning subclass\n'
          'abstract class Shape {\n'
          '  factory Shape(String type) {\n'
          '    if (type == "circle") return Circle();\n'
          '    if (type == "square") return Square();\n'
          '    throw ArgumentError("Unknown shape");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'يمكن للمنشئات المصنعية:',
          value: [
            'إرجاع نسخ مخزنة مؤقتًا',
            'إرجاع نسخ فئة فرعية',
            'إجراء تهيئة معقدة',
            'تنفيذ نمط المفرد',
          ],
        ),
        StrContent('أمثلة:'),
        CodeContent(
          'class Logger {\n'
          '  final String name;\n'
          '  static final Map<String, Logger> _cache = {};\n'
          '  \n'
          '  // منشئ خاص\n'
          '  Logger._(this.name);\n'
          '  \n'
          '  // منشئ مصنعي مع تخزين مؤقت\n'
          '  factory Logger(String name) {\n'
          '    return _cache.putIfAbsent(name, () => Logger._(name));\n'
          '  }\n'
          '}\n'
          '\n'
          '// منشئ مصنعي يرجع فئة فرعية\n'
          'abstract class Shape {\n'
          '  factory Shape(String type) {\n'
          '    if (type == "circle") return Circle();\n'
          '    if (type == "square") return Square();\n'
          '    throw ArgumentError("شكل غير معروف");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart],
    relatedTerms: [TermKeys.oopConstructor, TermKeys.singleton],
    tags: ['factory', 'constructor', 'pattern', 'dart'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.observerPattern: ProgrammingTerm(
    id: TermKeys.observerPattern,
    title: LocS(en: 'Observer Pattern', ar: 'نمط المراقب'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A design pattern where an object (subject) maintains a list of dependents (observers) and notifies them of state changes.',
        ),
      ],
      ar: [
        StrContent(
          'نمط تصميم حيث يحتفظ كائن (الموضوع) بقائمة من التابعين (المراقبين) ويخطرهم بتغييرات الحالة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Components:',
          value: [
            'Subject - maintains observers, notifies them',
            'Observer - receives notifications',
            'ConcreteSubject - specific implementation',
            'ConcreteObserver - specific response to changes',
          ],
        ),
        StrContent('Example in Dart:'),
        CodeContent(
          'abstract class Observer {\n'
          '  void update(String message);\n'
          '}\n'
          '\n'
          'class Subject {\n'
          '  final List<Observer> _observers = [];\n'
          '  \n'
          '  void attach(Observer observer) => _observers.add(observer);\n'
          '  void detach(Observer observer) => _observers.remove(observer);\n'
          '  \n'
          '  void notify(String message) {\n'
          '    for (var observer in _observers) {\n'
          '      observer.update(message);\n'
          '    }\n'
          '  }\n'
          '}\n'
          '\n'
          'class EmailNotifier implements Observer {\n'
          '  @override\n'
          '  void update(String message) {\n'
          '    print("Email sent: \$message");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent(
          'Used in: Event systems, MVC, reactive programming (Streams in Dart).',
        ),
      ],
      ar: [
        ULContent(
          title: 'المكونات:',
          value: [
            'الموضوع - يحتفظ بالمراقبين، يخطرهم',
            'المراقب - يتلقى الإخطارات',
            'الموضوع الملموس - تنفيذ محدد',
            'المراقب الملموس - استجابة محددة للتغييرات',
          ],
        ),
        StrContent('مثال في Dart:'),
        CodeContent(
          'abstract class Observer {\n'
          '  void update(String message);\n'
          '}\n'
          '\n'
          'class Subject {\n'
          '  final List<Observer> _observers = [];\n'
          '  \n'
          '  void attach(Observer observer) => _observers.add(observer);\n'
          '  void detach(Observer observer) => _observers.remove(observer);\n'
          '  \n'
          '  void notify(String message) {\n'
          '    for (var observer in _observers) {\n'
          '      observer.update(message);\n'
          '    }\n'
          '  }\n'
          '}\n'
          '\n'
          'class EmailNotifier implements Observer {\n'
          '  @override\n'
          '  void update(String message) {\n'
          '    print("إرسال بريد إلكتروني: \$message");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent(
          'يُستخدم في: أنظمة الأحداث، MVC، البرمجة التفاعلية (Streams في Dart).',
        ),
      ],
    ),
    type: .pattern,
    category: .architecture,
    languages: [.dart, .java, .javascript, .csharp],
    relatedTerms: [TermKeys.dartStream, TermKeys.reactiveProgramming],
    aliases: ['Publish-Subscribe', 'Event Listener'],
    tags: ['observer', 'design pattern', 'event', 'notification'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.mvc: ProgrammingTerm(
    id: TermKeys.mvc,
    title: LocS(en: 'MVC (Model-View-Controller)', ar: 'نمط MVC'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An architectural pattern that separates an application into three interconnected components: Model (data), View (UI), and Controller (logic).',
        ),
      ],
      ar: [
        StrContent(
          'نمط معماري يفصل التطبيق إلى ثلاثة مكونات متصلة: النموذج (البيانات)، العرض (واجهة المستخدم)، والمتحكم (المنطق).',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Components:',
          value: [
            'Model - manages data and business logic',
            'View - displays data to user (UI)',
            'Controller - handles user input, updates model/view',
          ],
        ),
        ULContent(
          title: 'Benefits:',
          value: [
            'Separation of concerns',
            'Easier testing',
            'Parallel development',
            'Code reusability',
          ],
        ),
        StrContent(
          'Flow: User interacts with View → Controller updates Model → Model notifies View → View updates display',
        ),
      ],
      ar: [
        ULContent(
          title: 'المكونات:',
          value: [
            'النموذج - يدير البيانات ومنطق الأعمال',
            'العرض - يعرض البيانات للمستخدم (واجهة المستخدم)',
            'المتحكم - يتعامل مع إدخال المستخدم، يحدث النموذج/العرض',
          ],
        ),
        ULContent(
          title: 'الفوائد:',
          value: [
            'فصل الاهتمامات',
            'اختبار أسهل',
            'تطوير متوازي',
            'إعادة استخدام الكود',
          ],
        ),
        StrContent(
          'التدفق: المستخدم يتفاعل مع العرض → المتحكم يحدث النموذج → النموذج يخطر العرض → العرض يحدث العرض',
        ),
      ],
    ),
    type: .architecture,
    category: .architecture,
    relatedTerms: [TermKeys.mvvm, 'design-patterns'],
    aliases: ['Model-View-Controller'],
    tags: ['mvc', 'architecture', 'pattern', 'separation'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.mvvm: ProgrammingTerm(
    id: TermKeys.mvvm,
    title: LocS(en: 'MVVM (Model-View-ViewModel)', ar: 'نمط MVVM'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An architectural pattern that separates UI (View) from business logic through a ViewModel that exposes data and commands for the View to bind to.',
        ),
      ],
      ar: [
        StrContent(
          'نمط معماري يفصل واجهة المستخدم (العرض) عن منطق الأعمال من خلال ViewModel يعرض البيانات والأوامر للعرض للربط بها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Components:',
          value: [
            'Model - data and business logic',
            'View - UI elements (widgets)',
            'ViewModel - mediator between Model and View',
          ],
        ),
        ULContent(
          title: 'Key differences from MVC:',
          value: [
            'View binds directly to ViewModel',
            'No direct View-Model communication',
            'Better suited for declarative UI (like Flutter)',
          ],
        ),
        StrContent(
          'Popular in Flutter with Provider, Riverpod, or BLoC for state management.',
        ),
      ],
      ar: [
        ULContent(
          title: 'المكونات:',
          value: [
            'النموذج - البيانات ومنطق الأعمال',
            'العرض - عناصر واجهة المستخدم (الويدجت)',
            'ViewModel - وسيط بين النموذج والعرض',
          ],
        ),
        ULContent(
          title: 'الفروقات الرئيسية عن MVC:',
          value: [
            'العرض يرتبط مباشرة بـ ViewModel',
            'لا تواصل مباشر بين العرض والنموذج',
            'أنسب لواجهة المستخدم التصريحية (مثل Flutter)',
          ],
        ),
        StrContent(
          'شائع في Flutter مع Provider، Riverpod، أو BLoC لإدارة الحالة.',
        ),
      ],
    ),
    type: .architecture,
    category: .architecture,
    languages: [.flutter, .dart, .csharp],
    relatedTerms: [TermKeys.mvc, TermKeys.stateManagement],
    aliases: ['Model-View-ViewModel'],
    tags: ['mvvm', 'architecture', 'pattern', 'binding'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.dependencyInjection: ProgrammingTerm(
    id: TermKeys.dependencyInjection,
    title: LocS(en: 'Dependency Injection', ar: 'حقن التبعية'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A design pattern where objects receive their dependencies from external sources rather than creating them internally.',
        ),
      ],
      ar: [
        StrContent(
          'نمط تصميم حيث تتلقى الكائنات تبعياتها من مصادر خارجية بدلاً من إنشائها داخليًا.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Benefits:',
          value: [
            'Loose coupling - easier to change implementations',
            'Testability - inject mock dependencies',
            'Reusability - same code with different dependencies',
            'Single Responsibility - objects don\'t manage dependencies',
          ],
        ),
        StrContent('Example without DI:'),
        CodeContent(
          'class UserService {\n'
          '  final database = Database();  // Tight coupling!\n'
          '  \n'
          '  void saveUser(User user) {\n'
          '    database.save(user);\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent('With DI (Constructor Injection):'),
        CodeContent(
          'class UserService {\n'
          '  final Database database;\n'
          '  \n'
          '  // Dependency injected via constructor\n'
          '  UserService(this.database);\n'
          '  \n'
          '  void saveUser(User user) {\n'
          '    database.save(user);\n'
          '  }\n'
          '}\n'
          '\n'
          '// Now we can easily test with mock:\n'
          'final service = UserService(MockDatabase());',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الفوائد:',
          value: [
            'ارتباط فضفاض - أسهل لتغيير التنفيذات',
            'قابلية الاختبار - حقن تبعيات محاكاة',
            'إعادة الاستخدام - نفس الكود مع تبعيات مختلفة',
            'مسؤولية واحدة - الكائنات لا تدير التبعيات',
          ],
        ),
        StrContent('مثال بدون DI:'),
        CodeContent(
          'class UserService {\n'
          '  final database = Database();  // ارتباط محكم!\n'
          '  \n'
          '  void saveUser(User user) {\n'
          '    database.save(user);\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent('مع DI (حقن المنشئ):'),
        CodeContent(
          'class UserService {\n'
          '  final Database database;\n'
          '  \n'
          '  // التبعية محقونة عبر المنشئ\n'
          '  UserService(this.database);\n'
          '  \n'
          '  void saveUser(User user) {\n'
          '    database.save(user);\n'
          '  }\n'
          '}\n'
          '\n'
          '// الآن يمكننا الاختبار بسهولة مع محاكاة:\n'
          'final service = UserService(MockDatabase());',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .pattern,
    category: .architecture,
    languages: [.dart, .java, .csharp, .typescript],
    relatedTerms: ['service-locator', 'get-it'],
    aliases: ['DI', 'Inversion of Control'],
    tags: ['dependency injection', 'pattern', 'testability', 'decoupling'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.callback: ProgrammingTerm(
    id: TermKeys.callback,
    title: LocS(en: 'Callback', ar: 'الاستدعاء الراجع'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A function passed as an argument to another function, to be executed later when a certain event occurs or condition is met.',
        ),
      ],
      ar: [
        StrContent(
          'دالة تُمرر كوسيط لدالة أخرى، ليتم تنفيذها لاحقًا عند حدوث حدث معين أو استيفاء شرط.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Common uses:',
          value: [
            'Event handlers (button clicks, gestures)',
            'Asynchronous operations',
            'Custom behavior injection',
            'Animation completion',
          ],
        ),
        StrContent('Examples in Dart:'),
        CodeContent(
          '// Simple callback\n'
          'void fetchData(void Function(String) onComplete) {\n'
          '  // Simulate async operation\n'
          '  Future.delayed(Duration(seconds: 2), () {\n'
          "    onComplete('Data loaded');\n"
          '  });\n'
          '}\n'
          '\n'
          '// Usage:\n'
          'fetchData((result) {\n'
          '  print(result);  // Prints: Data loaded\n'
          '});\n'
          '\n'
          '// In Flutter widgets:\n'
          'ElevatedButton(\n'
          '  onPressed: () {  // Callback\n'
          "    print('Button clicked');\n"
          '  },\n'
          "  child: Text('Click Me'),\n"
          ')',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الاستخدامات الشائعة:',
          value: [
            'معالجات الأحداث (نقرات الأزرار، الإيماءات)',
            'العمليات غير المتزامنة',
            'حقن السلوك المخصص',
            'إكمال الرسوم المتحركة',
          ],
        ),
        StrContent('أمثلة في Dart:'),
        CodeContent(
          '// استدعاء راجع بسيط\n'
          'void fetchData(void Function(String) onComplete) {\n'
          '  // محاكاة عملية غير متزامنة\n'
          '  Future.delayed(Duration(seconds: 2), () {\n'
          "    onComplete('تم تحميل البيانات');\n"
          '  });\n'
          '}\n'
          '\n'
          '// الاستخدام:\n'
          'fetchData((result) {\n'
          '  print(result);  // يطبع: تم تحميل البيانات\n'
          '});\n'
          '\n'
          '// في ويدجت Flutter:\n'
          'ElevatedButton(\n'
          '  onPressed: () {  // استدعاء راجع\n'
          "    print('تم النقر على الزر');\n"
          '  },\n'
          "  child: Text('انقر هنا'),\n"
          ')',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .javascript, .python, .java],
    relatedTerms: [TermKeys.fundamentalsFunction, TermKeys.concurrencyAsync],
    aliases: ['Event handler', 'Listener'],
    tags: ['callback', 'function', 'async', 'event'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.json: ProgrammingTerm(
    id: TermKeys.json,
    title: LocS(en: 'JSON (JavaScript Object Notation)', ar: 'JSON'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A lightweight data-interchange format that is easy for humans to read and write, and easy for machines to parse and generate.',
        ),
      ],
      ar: [
        StrContent(
          'تنسيق تبادل بيانات خفيف الوزن سهل القراءة والكتابة للبشر، وسهل التحليل والتوليد للآلات.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'JSON data types:',
          value: [
            'String - text in double quotes',
            'Number - integer or decimal',
            'Boolean - true or false',
            'Null - null value',
            'Object - key-value pairs in {}',
            'Array - ordered list in []',
          ],
        ),
        StrContent('Example JSON:'),
        CodeContent(
          '{\n'
          '  "name": "Alice",\n'
          '  "age": 30,\n'
          '  "isActive": true,\n'
          '  "tags": ["developer", "flutter"],\n'
          '  "address": {\n'
          '    "city": "New York",\n'
          '    "country": "USA"\n'
          '  }\n'
          '}',
          codeLanguage: .json,
        ),
        StrContent('Working with JSON in Dart:'),
        CodeContent(
          "import 'dart:convert';\n"
          '\n'
          '// Parse JSON string\n'
          'String jsonString = \'{"name": "Alice", "age": 30}\';\n'
          'Map<String, dynamic> user = jsonDecode(jsonString);\n'
          "print(user['name']);  // Alice\n"
          '\n'
          '// Convert to JSON string\n'
          "Map<String, dynamic> data = {'name': 'Bob', 'age': 25};\n"
          'String json = jsonEncode(data);\n'
          'print(json);  // {"name":"Bob","age":25}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'أنواع بيانات JSON:',
          value: [
            'نص - نص بين علامات اقتباس مزدوجة',
            'رقم - عدد صحيح أو عشري',
            'منطقي - true أو false',
            'فارغ - قيمة null',
            'كائن - أزواج مفتاح-قيمة في {}',
            'مصفوفة - قائمة مرتبة في []',
          ],
        ),
        StrContent('مثال JSON:'),
        CodeContent(
          '{\n'
          '  "name": "أليس",\n'
          '  "age": 30,\n'
          '  "isActive": true,\n'
          '  "tags": ["مطور", "flutter"],\n'
          '  "address": {\n'
          '    "city": "نيويورك",\n'
          '    "country": "الولايات المتحدة"\n'
          '  }\n'
          '}',
          codeLanguage: .json,
        ),
        StrContent('العمل مع JSON في Dart:'),
        CodeContent(
          "import 'dart:convert';\n"
          '\n'
          '// تحليل نص JSON\n'
          'String jsonString = \'{"name": "أليس", "age": 30}\';\n'
          'Map<String, dynamic> user = jsonDecode(jsonString);\n'
          "print(user['name']);  // أليس\n"
          '\n'
          '// تحويل لنص JSON\n'
          "Map<String, dynamic> data = {'name': 'بوب', 'age': 25};\n"
          'String json = jsonEncode(data);\n'
          'print(json);  // {"name":"بوب","age":25}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .protocol,
    category: .fundamentals,
    relatedTerms: [TermKeys.serialization, TermKeys.restApi],
    tags: ['json', 'data format', 'serialization', 'api'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.serialization: ProgrammingTerm(
    id: TermKeys.serialization,
    title: LocS(en: 'Serialization', ar: 'التسلسل'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of converting an object or data structure into a format that can be stored or transmitted, and reconstructed later.',
        ),
      ],
      ar: [
        StrContent(
          'عملية تحويل كائن أو هيكل بيانات إلى تنسيق يمكن تخزينه أو نقله، وإعادة بنائه لاحقًا.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Common formats:',
          value: [
            'JSON - human-readable, widely used',
            'XML - verbose but flexible',
            'Protocol Buffers - binary, efficient',
            'MessagePack - binary JSON alternative',
          ],
        ),
        StrContent('Serialization in Dart:'),
        CodeContent(
          'class User {\n'
          '  final String name;\n'
          '  final int age;\n'
          '  \n'
          '  User(this.name, this.age);\n'
          '  \n'
          '  // Serialize to JSON\n'
          '  Map<String, dynamic> toJson() => {\n'
          "    'name': name,\n"
          "    'age': age,\n"
          '  };\n'
          '  \n'
          '  // Deserialize from JSON\n'
          '  factory User.fromJson(Map<String, dynamic> json) {\n'
          "    return User(json['name'], json['age']);\n"
          '  }\n'
          '}\n'
          '\n'
          '// Usage:\n'
          "var user = User('Alice', 30);\n"
          'String json = jsonEncode(user.toJson());\n'
          'User decoded = User.fromJson(jsonDecode(json));',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'التنسيقات الشائعة:',
          value: [
            'JSON - قابل للقراءة، مستخدم على نطاق واسع',
            'XML - مطول لكن مرن',
            'Protocol Buffers - ثنائي، فعال',
            'MessagePack - بديل JSON ثنائي',
          ],
        ),
        StrContent('التسلسل في Dart:'),
        CodeContent(
          'class User {\n'
          '  final String name;\n'
          '  final int age;\n'
          '  \n'
          '  User(this.name, this.age);\n'
          '  \n'
          '  // تسلسل إلى JSON\n'
          '  Map<String, dynamic> toJson() => {\n'
          "    'name': name,\n"
          "    'age': age,\n"
          '  };\n'
          '  \n'
          '  // إلغاء التسلسل من JSON\n'
          '  factory User.fromJson(Map<String, dynamic> json) {\n'
          "    return User(json['name'], json['age']);\n"
          '  }\n'
          '}\n'
          '\n'
          '// الاستخدام:\n'
          "var user = User('أليس', 30);\n"
          'String json = jsonEncode(user.toJson());\n'
          'User decoded = User.fromJson(jsonDecode(json));',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    relatedTerms: [TermKeys.json, 'deserialization'],
    aliases: ['Marshalling'],
    tags: ['serialization', 'json', 'data', 'conversion'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.httpHttps: ProgrammingTerm(
    id: TermKeys.httpHttps,
    title: LocS(en: 'HTTP/HTTPS', ar: 'HTTP/HTTPS'),
    quickOverview: LocV(
      en: [
        StrContent(
          'HTTP (HyperText Transfer Protocol) is the foundation of data communication on the web. HTTPS is the secure version using encryption.',
        ),
      ],
      ar: [
        StrContent(
          'HTTP (بروتوكول نقل النص التشعبي) هو أساس اتصال البيانات على الويب. HTTPS هو النسخة الآمنة باستخدام التشفير.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'HTTP Methods:',
          value: [
            'GET - retrieve data',
            'POST - send data to create resource',
            'PUT - update existing resource',
            'PATCH - partial update',
            'DELETE - remove resource',
          ],
        ),
        ULContent(
          title: 'Status codes:',
          value: [
            '200 OK - success',
            '201 Created - resource created',
            '400 Bad Request - client error',
            '401 Unauthorized - authentication required',
            '404 Not Found - resource doesn\'t exist',
            '500 Internal Server Error - server error',
          ],
        ),
        StrContent('Making HTTP requests in Dart:'),
        CodeContent(
          "import 'package:http/http.dart' as http;\n"
          "import 'dart:convert';\n"
          '\n'
          '// GET request\n'
          'Future<void> fetchUser() async {\n'
          "  final response = await http.get(\n"
          "    Uri.parse('https://api.example.com/users/1'),\n"
          '  );\n'
          '  \n'
          '  if (response.statusCode == 200) {\n'
          '    final user = jsonDecode(response.body);\n'
          '    print(user);\n'
          '  }\n'
          '}\n'
          '\n'
          '// POST request\n'
          'Future<void> createUser(Map<String, dynamic> data) async {\n'
          "  final response = await http.post(\n"
          "    Uri.parse('https://api.example.com/users'),\n"
          "    headers: {'Content-Type': 'application/json'},\n"
          '    body: jsonEncode(data),\n'
          '  );\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent('HTTPS adds SSL/TLS encryption for secure communication.'),
      ],
      ar: [
        ULContent(
          title: 'أساليب HTTP:',
          value: [
            'GET - استرجاع البيانات',
            'POST - إرسال بيانات لإنشاء مورد',
            'PUT - تحديث مورد موجود',
            'PATCH - تحديث جزئي',
            'DELETE - إزالة مورد',
          ],
        ),
        ULContent(
          title: 'رموز الحالة:',
          value: [
            '200 OK - نجاح',
            '201 Created - تم إنشاء المورد',
            '400 Bad Request - خطأ من العميل',
            '401 Unauthorized - المصادقة مطلوبة',
            '404 Not Found - المورد غير موجود',
            '500 Internal Server Error - خطأ في الخادم',
          ],
        ),
        StrContent('إجراء طلبات HTTP في Dart:'),
        CodeContent(
          "import 'package:http/http.dart' as http;\n"
          "import 'dart:convert';\n"
          '\n'
          '// طلب GET\n'
          'Future<void> fetchUser() async {\n'
          "  final response = await http.get(\n"
          "    Uri.parse('https://api.example.com/users/1'),\n"
          '  );\n'
          '  \n'
          '  if (response.statusCode == 200) {\n'
          '    final user = jsonDecode(response.body);\n'
          '    print(user);\n'
          '  }\n'
          '}\n'
          '\n'
          '// طلب POST\n'
          'Future<void> createUser(Map<String, dynamic> data) async {\n'
          "  final response = await http.post(\n"
          "    Uri.parse('https://api.example.com/users'),\n"
          "    headers: {'Content-Type': 'application/json'},\n"
          '    body: jsonEncode(data),\n'
          '  );\n'
          '}',
          codeLanguage: .dart,
        ),
        StrContent('HTTPS يضيف تشفير SSL/TLS للاتصال الآمن.'),
      ],
    ),
    type: .protocol,
    category: .networking,
    relatedTerms: [TermKeys.restApi, TermKeys.api],
    tags: ['http', 'https', 'protocol', 'web', 'network'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.restApi: ProgrammingTerm(
    id: TermKeys.restApi,
    title: LocS(en: 'REST API', ar: 'واجهة REST'),
    quickOverview: LocV(
      en: [
        StrContent(
          'Representational State Transfer - an architectural style for designing networked applications using HTTP requests to access and manipulate data.',
        ),
      ],
      ar: [
        StrContent(
          'نقل الحالة التمثيلية - نمط معماري لتصميم تطبيقات الشبكة باستخدام طلبات HTTP للوصول إلى البيانات ومعالجتها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'REST principles:',
          value: [
            'Stateless - each request is independent',
            'Client-Server - separation of concerns',
            'Cacheable - responses can be cached',
            'Uniform Interface - consistent endpoints',
            'Resource-based - data represented as resources',
          ],
        ),
        ULContent(
          title: 'Example endpoints:',
          value: [
            'GET /api/users - get all users',
            'GET /api/users/123 - get specific user',
            'POST /api/users - create new user',
            'PUT /api/users/123 - update user',
            'DELETE /api/users/123 - delete user',
          ],
        ),
        StrContent('REST APIs typically use JSON for data exchange.'),
      ],
      ar: [
        ULContent(
          title: 'مبادئ REST:',
          value: [
            'عديم الحالة - كل طلب مستقل',
            'عميل-خادم - فصل الاهتمامات',
            'قابل للتخزين المؤقت - يمكن تخزين الاستجابات مؤقتًا',
            'واجهة موحدة - نقاط نهاية متسقة',
            'قائم على الموارد - البيانات ممثلة كموارد',
          ],
        ),
        ULContent(
          title: 'أمثلة نقاط النهاية:',
          value: [
            'GET /api/users - الحصول على جميع المستخدمين',
            'GET /api/users/123 - الحصول على مستخدم محدد',
            'POST /api/users - إنشاء مستخدم جديد',
            'PUT /api/users/123 - تحديث مستخدم',
            'DELETE /api/users/123 - حذف مستخدم',
          ],
        ),
        StrContent('عادة ما تستخدم واجهات REST API JSON لتبادل البيانات.'),
      ],
    ),
    type: .architecture,
    category: .networking,
    relatedTerms: [TermKeys.httpHttps, TermKeys.api, TermKeys.json],
    aliases: ['RESTful API'],
    tags: ['rest', 'api', 'web service', 'http'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.websocket: ProgrammingTerm(
    id: TermKeys.websocket,
    title: LocS(en: 'WebSocket', ar: 'WebSocket'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A protocol providing full-duplex communication channels over a single TCP connection, enabling real-time bidirectional data transfer.',
        ),
      ],
      ar: [
        StrContent(
          'بروتوكول يوفر قنوات اتصال كاملة الازدواجية عبر اتصال TCP واحد، مما يتيح نقل البيانات الثنائي في الوقت الفعلي.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Use cases:',
          value: [
            'Chat applications - instant messaging',
            'Live notifications - real-time updates',
            'Collaborative editing - multiple users',
            'Gaming - multiplayer interactions',
            'Stock tickers - live price updates',
          ],
        ),
        ULContent(
          title: 'WebSocket vs HTTP:',
          value: [
            'HTTP - request-response, one-way',
            'WebSocket - persistent connection, bidirectional',
            'WebSocket - lower latency for real-time',
          ],
        ),
        StrContent('Using WebSocket in Dart:'),
        CodeContent(
          "import 'dart:io';\n"
          '\n'
          'Future<void> connectWebSocket() async {\n'
          "  final socket = await WebSocket.connect('ws://example.com/socket');\n"
          '  \n'
          '  // Send message\n'
          "  socket.add('Hello Server');\n"
          '  \n'
          '  // Listen for messages\n'
          '  socket.listen((message) {\n'
          '    print(\'Received: \$message\');\n'
          '  });\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'حالات الاستخدام:',
          value: [
            'تطبيقات الدردشة - المراسلة الفورية',
            'الإشعارات المباشرة - التحديثات في الوقت الفعلي',
            'التحرير التعاوني - مستخدمون متعددون',
            'الألعاب - تفاعلات متعددة اللاعبين',
            'أسعار الأسهم - تحديثات الأسعار المباشرة',
          ],
        ),
        ULContent(
          title: 'WebSocket مقابل HTTP:',
          value: [
            'HTTP - طلب-استجابة، اتجاه واحد',
            'WebSocket - اتصال مستمر، ثنائي الاتجاه',
            'WebSocket - زمن انتقال أقل للوقت الفعلي',
          ],
        ),
        StrContent('استخدام WebSocket في Dart:'),
        CodeContent(
          "import 'dart:io';\n"
          '\n'
          'Future<void> connectWebSocket() async {\n'
          "  final socket = await WebSocket.connect('ws://example.com/socket');\n"
          '  \n'
          '  // إرسال رسالة\n'
          "  socket.add('مرحبا الخادم');\n"
          '  \n'
          '  // الاستماع للرسائل\n'
          '  socket.listen((message) {\n'
          '    print(\'تم الاستلام: \$message\');\n'
          '  });\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .protocol,
    category: .networking,
    languages: [.dart, .javascript, .java],
    relatedTerms: [TermKeys.httpHttps, TermKeys.dartStream],
    tags: ['websocket', 'real-time', 'bidirectional', 'protocol'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.authentication: ProgrammingTerm(
    id: TermKeys.authentication,
    title: LocS(en: 'Authentication', ar: 'المصادقة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of verifying the identity of a user, device, or system. Confirms "who you are".',
        ),
      ],
      ar: [
        StrContent(
          'عملية التحقق من هوية مستخدم أو جهاز أو نظام. تؤكد "من أنت".',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Common methods:',
          value: [
            'Password-based - username and password',
            'Token-based - JWT, OAuth tokens',
            'Biometric - fingerprint, face recognition',
            'Multi-factor (MFA) - multiple verification methods',
            'Social login - Google, Facebook, Apple',
          ],
        ),
        ULContent(
          title: 'Authentication vs Authorization:',
          value: [
            'Authentication - who you are (login)',
            'Authorization - what you can do (permissions)',
          ],
        ),
        StrContent('Example: Firebase Authentication in Flutter'),
        CodeContent(
          "import 'package:firebase_auth/firebase_auth.dart';\n"
          '\n'
          'Future<void> signIn(String email, String password) async {\n'
          '  try {\n'
          '    await FirebaseAuth.instance.signInWithEmailAndPassword(\n'
          '      email: email,\n'
          '      password: password,\n'
          '    );\n'
          "    print('Signed in successfully');\n"
          '  } catch (e) {\n'
          "    print('Error: \$e');\n"
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الطرق الشائعة:',
          value: [
            'قائمة على كلمة المرور - اسم المستخدم وكلمة المرور',
            'قائمة على الرمز - JWT، رموز OAuth',
            'بيومترية - بصمة الإصبع، التعرف على الوجه',
            'متعددة العوامل (MFA) - طرق تحقق متعددة',
            'تسجيل الدخول الاجتماعي - Google، Facebook، Apple',
          ],
        ),
        ULContent(
          title: 'المصادقة مقابل التفويض:',
          value: [
            'المصادقة - من أنت (تسجيل الدخول)',
            'التفويض - ما يمكنك فعله (الأذونات)',
          ],
        ),
        StrContent('مثال: مصادقة Firebase في Flutter'),
        CodeContent(
          "import 'package:firebase_auth/firebase_auth.dart';\n"
          '\n'
          'Future<void> signIn(String email, String password) async {\n'
          '  try {\n'
          '    await FirebaseAuth.instance.signInWithEmailAndPassword(\n'
          '      email: email,\n'
          '      password: password,\n'
          '    );\n'
          "    print('تم تسجيل الدخول بنجاح');\n"
          '  } catch (e) {\n'
          "    print('خطأ: \$e');\n"
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .security,
    relatedTerms: [TermKeys.authorization, TermKeys.jwt],
    tags: ['authentication', 'security', 'identity', 'login'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.authorization: ProgrammingTerm(
    id: TermKeys.authorization,
    title: LocS(en: 'Authorization', ar: 'التفويض'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of determining what actions an authenticated user is allowed to perform. Confirms "what you can do".',
        ),
      ],
      ar: [
        StrContent(
          'عملية تحديد الإجراءات التي يُسمح للمستخدم المصادق عليه بتنفيذها. تؤكد "ما يمكنك فعله".',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Common models:',
          value: [
            'Role-Based Access Control (RBAC) - permissions by role',
            'Attribute-Based Access Control (ABAC) - based on attributes',
            'Access Control Lists (ACL) - explicit permissions',
          ],
        ),
        StrContent('Example:'),
        CodeContent(
          'class User {\n'
          '  final String id;\n'
          '  final List<String> roles;\n'
          '  \n'
          '  User(this.id, this.roles);\n'
          '  \n'
          '  bool canEdit() => roles.contains(\'editor\');\n'
          '  bool canDelete() => roles.contains(\'admin\');\n'
          '  bool canView() => true;  // Everyone can view\n'
          '}\n'
          '\n'
          '// Usage:\n'
          "var user = User('123', ['editor']);\n"
          'if (user.canEdit()) {\n'
          '  // Allow editing\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'النماذج الشائعة:',
          value: [
            'التحكم في الوصول القائم على الأدوار (RBAC) - أذونات حسب الدور',
            'التحكم في الوصول القائم على السمات (ABAC) - بناءً على السمات',
            'قوائم التحكم في الوصول (ACL) - أذونات صريحة',
          ],
        ),
        StrContent('مثال:'),
        CodeContent(
          'class User {\n'
          '  final String id;\n'
          '  final List<String> roles;\n'
          '  \n'
          '  User(this.id, this.roles);\n'
          '  \n'
          '  bool canEdit() => roles.contains(\'editor\');\n'
          '  bool canDelete() => roles.contains(\'admin\');\n'
          '  bool canView() => true;  // الجميع يمكنهم العرض\n'
          '}\n'
          '\n'
          '// الاستخدام:\n'
          "var user = User('123', ['editor']);\n"
          'if (user.canEdit()) {\n'
          '  // السماح بالتحرير\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .security,
    relatedTerms: [TermKeys.authentication],
    aliases: ['Access Control', 'Permissions'],
    tags: ['authorization', 'security', 'permissions', 'access control'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.jwt: ProgrammingTerm(
    id: TermKeys.jwt,
    title: LocS(en: 'JWT (JSON Web Token)', ar: 'رمز JWT'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A compact, URL-safe token format for securely transmitting information between parties as a JSON object. Commonly used for authentication.',
        ),
      ],
      ar: [
        StrContent(
          'تنسيق رمز مضغوط وآمن لعنوان URL لنقل المعلومات بشكل آمن بين الأطراف ككائن JSON. يُستخدم عادة للمصادقة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'JWT structure (3 parts separated by dots):',
          value: [
            'Header - algorithm and token type',
            'Payload - claims (user data, expiration)',
            'Signature - verifies token integrity',
          ],
        ),
        StrContent('Example JWT:'),
        CodeContent(
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.\n'
          'eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.\n'
          'SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c',
          codeLanguage: .text,
        ),
        ULContent(
          title: 'How it works:',
          value: [
            '1. User logs in with credentials',
            '2. Server creates JWT with user info',
            '3. Client stores JWT (usually in local storage)',
            '4. Client sends JWT with each request',
            '5. Server verifies JWT signature',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'هيكل JWT (3 أجزاء مفصولة بنقاط):',
          value: [
            'الرأس - الخوارزمية ونوع الرمز',
            'الحمولة - المطالبات (بيانات المستخدم، الانتهاء)',
            'التوقيع - يتحقق من سلامة الرمز',
          ],
        ),
        StrContent('مثال JWT:'),
        CodeContent(
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.\n'
          'eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.\n'
          'SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c',
          codeLanguage: .text,
        ),
        ULContent(
          title: 'كيف يعمل:',
          value: [
            '1. المستخدم يسجل الدخول ببيانات الاعتماد',
            '2. الخادم ينشئ JWT بمعلومات المستخدم',
            '3. العميل يخزن JWT (عادة في التخزين المحلي)',
            '4. العميل يرسل JWT مع كل طلب',
            '5. الخادم يتحقق من توقيع JWT',
          ],
        ),
      ],
    ),
    type: .protocol,
    category: .security,
    relatedTerms: [TermKeys.authentication, TermKeys.httpHttps],
    aliases: ['JSON Web Token'],
    tags: ['jwt', 'authentication', 'token', 'security'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.stateManagement: ProgrammingTerm(
    id: TermKeys.stateManagement,
    title: LocS(en: 'State Management', ar: 'إدارة الحالة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The practice of managing and coordinating application state across components. Essential for keeping UI in sync with data.',
        ),
      ],
      ar: [
        StrContent(
          'ممارسة إدارة وتنسيق حالة التطبيق عبر المكونات. أساسي للحفاظ على تزامن واجهة المستخدم مع البيانات.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Why state management matters:',
          value: [
            'Share data between widgets',
            'Avoid prop drilling (passing data through many layers)',
            'Separate business logic from UI',
            'Make state changes predictable',
            'Enable time-travel debugging',
          ],
        ),
        ULContent(
          title: 'Popular Flutter solutions:',
          value: [
            'setState - built-in, simple',
            'Provider - recommended by Flutter team',
            'Riverpod - improved Provider',
            'BLoC - business logic component pattern',
            'GetX - all-in-one solution',
            'MobX - reactive state management',
            'Redux - predictable state container',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'لماذا إدارة الحالة مهمة:',
          value: [
            'مشاركة البيانات بين الويدجت',
            'تجنب حفر الخصائص (تمرير البيانات عبر طبقات كثيرة)',
            'فصل منطق الأعمال عن واجهة المستخدم',
            'جعل تغييرات الحالة قابلة للتنبؤ',
            'تمكين تصحيح السفر عبر الزمن',
          ],
        ),
        ULContent(
          title: 'حلول Flutter الشائعة:',
          value: [
            'setState - مدمج، بسيط',
            'Provider - موصى به من فريق Flutter',
            'Riverpod - Provider محسّن',
            'BLoC - نمط مكون منطق الأعمال',
            'GetX - حل شامل',
            'MobX - إدارة حالة تفاعلية',
            'Redux - حاوية حالة قابلة للتنبؤ',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .stateManagement,
    languages: [.flutter, .dart, .react, .angular],
    relatedTerms: [TermKeys.state, TermKeys.bloc, TermKeys.providerPattern],
    tags: ['state management', 'flutter', 'architecture', 'data'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.bloc: ProgrammingTerm(
    id: TermKeys.bloc,
    title: LocS(en: 'BLoC (Business Logic Component)', ar: 'نمط BLoC'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A state management pattern in Flutter that separates business logic from UI using streams. Events go in, states come out.',
        ),
      ],
      ar: [
        StrContent(
          'نمط إدارة حالة في Flutter يفصل منطق الأعمال عن واجهة المستخدم باستخدام التدفقات. الأحداث تدخل، الحالات تخرج.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Core concepts:',
          value: [
            'Events - user actions (button clicks, etc.)',
            'States - UI states (loading, success, error)',
            'BLoC - processes events, emits states',
            'Streams - communication channel',
          ],
        ),
        StrContent('Simple counter example:'),
        CodeContent(
          "import 'package:flutter_bloc/flutter_bloc.dart';\n"
          '\n'
          '// Events\n'
          'abstract class CounterEvent {}\n'
          'class Increment extends CounterEvent {}\n'
          'class Decrement extends CounterEvent {}\n'
          '\n'
          '// BLoC\n'
          'class CounterBloc extends Bloc<CounterEvent, int> {\n'
          '  CounterBloc() : super(0) {\n'
          '    on<Increment>((event, emit) => emit(state + 1));\n'
          '    on<Decrement>((event, emit) => emit(state - 1));\n'
          '  }\n'
          '}\n'
          '\n'
          '// Usage in widget:\n'
          'BlocBuilder<CounterBloc, int>(\n'
          '  builder: (context, count) => Text(\'\$count\'),\n'
          ')',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'المفاهيم الأساسية:',
          value: [
            'الأحداث - إجراءات المستخدم (نقرات الأزرار، إلخ)',
            'الحالات - حالات واجهة المستخدم (تحميل، نجاح، خطأ)',
            'BLoC - يعالج الأحداث، يصدر الحالات',
            'التدفقات - قناة الاتصال',
          ],
        ),
        StrContent('مثال عداد بسيط:'),
        CodeContent(
          "import 'package:flutter_bloc/flutter_bloc.dart';\n"
          '\n'
          '// الأحداث\n'
          'abstract class CounterEvent {}\n'
          'class Increment extends CounterEvent {}\n'
          'class Decrement extends CounterEvent {}\n'
          '\n'
          '// BLoC\n'
          'class CounterBloc extends Bloc<CounterEvent, int> {\n'
          '  CounterBloc() : super(0) {\n'
          '    on<Increment>((event, emit) => emit(state + 1));\n'
          '    on<Decrement>((event, emit) => emit(state - 1));\n'
          '  }\n'
          '}\n'
          '\n'
          '// الاستخدام في الويدجت:\n'
          'BlocBuilder<CounterBloc, int>(\n'
          '  builder: (context, count) => Text(\'\$count\'),\n'
          ')',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .pattern,
    category: .stateManagement,
    languages: [.flutter, .dart],
    relatedTerms: [TermKeys.stateManagement, TermKeys.dartStream, 'cubit'],
    aliases: ['Business Logic Component'],
    tags: ['bloc', 'state management', 'flutter', 'pattern'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.providerPattern: ProgrammingTerm(
    id: TermKeys.providerPattern,
    title: LocS(en: 'Provider', ar: 'Provider'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A recommended state management solution for Flutter that uses InheritedWidget to propagate state down the widget tree efficiently.',
        ),
      ],
      ar: [
        StrContent(
          'حل إدارة حالة موصى به لـ Flutter يستخدم InheritedWidget لنشر الحالة عبر شجرة الويدجت بكفاءة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('Basic Provider example:'),
        CodeContent(
          "import 'package:flutter/material.dart';\n"
          "import 'package:provider/provider.dart';\n"
          '\n'
          '// Model class\n'
          'class Counter extends ChangeNotifier {\n'
          '  int _count = 0;\n'
          '  int get count => _count;\n'
          '  \n'
          '  void increment() {\n'
          '    _count++;\n'
          '    notifyListeners();  // Notify widgets to rebuild\n'
          '  }\n'
          '}\n'
          '\n'
          '// Provide at top level:\n'
          'ChangeNotifierProvider(\n'
          '  create: (_) => Counter(),\n'
          '  child: MyApp(),\n'
          ')\n'
          '\n'
          '// Consume in widgets:\n'
          'Consumer<Counter>(\n'
          '  builder: (context, counter, child) {\n'
          '    return Text(\'\${counter.count}\');\n'
          '  },\n'
          ')\n'
          '\n'
          '// Or access directly:\n'
          'context.read<Counter>().increment();',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent('مثال Provider الأساسي:'),
        CodeContent(
          "import 'package:flutter/material.dart';\n"
          "import 'package:provider/provider.dart';\n"
          '\n'
          '// فئة النموذج\n'
          'class Counter extends ChangeNotifier {\n'
          '  int _count = 0;\n'
          '  int get count => _count;\n'
          '  \n'
          '  void increment() {\n'
          '    _count++;\n'
          '    notifyListeners();  // إخطار الويدجت لإعادة البناء\n'
          '  }\n'
          '}\n'
          '\n'
          '// التوفير في المستوى الأعلى:\n'
          'ChangeNotifierProvider(\n'
          '  create: (_) => Counter(),\n'
          '  child: MyApp(),\n'
          ')\n'
          '\n'
          '// الاستهلاك في الويدجت:\n'
          'Consumer<Counter>(\n'
          '  builder: (context, counter, child) {\n'
          '    return Text(\'\${counter.count}\');\n'
          '  },\n'
          ')\n'
          '\n'
          '// أو الوصول مباشرة:\n'
          'context.read<Counter>().increment();',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .framework,
    category: .stateManagement,
    languages: [.flutter, .dart],
    relatedTerms: [TermKeys.stateManagement, 'riverpod'],
    tags: ['provider', 'state management', 'flutter', 'inherited widget'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.reactiveProgramming: ProgrammingTerm(
    id: TermKeys.reactiveProgramming,
    title: LocS(en: 'Reactive Programming', ar: 'البرمجة التفاعلية'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A programming paradigm focused on data streams and the propagation of change. When data changes, dependent values automatically update.',
        ),
      ],
      ar: [
        StrContent(
          'نموذج برمجة يركز على تدفقات البيانات ونشر التغيير. عند تغيير البيانات، تتحدث القيم التابعة تلقائيًا.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key concepts:',
          value: [
            'Observable/Stream - source of data',
            'Observer/Listener - reacts to changes',
            'Operators - transform data (map, filter, etc.)',
            'Automatic updates - no manual refresh needed',
          ],
        ),
        StrContent('Simple example with Dart Streams:'),
        CodeContent(
          "import 'dart:async';\n"
          '\n'
          'void main() {\n'
          '  final controller = StreamController<int>();\n'
          '  \n'
          '  // React to stream changes\n'
          '  controller.stream\n'
          '    .map((value) => value * 2)  // Transform\n'
          '    .where((value) => value > 10)  // Filter\n'
          '    .listen((value) {  // React\n'
          '      print(\'Received: \$value\');\n'
          '    });\n'
          '  \n'
          '  // Emit values\n'
          '  controller.add(3);   // 6 - filtered out\n'
          '  controller.add(7);   // 14 - printed\n'
          '  controller.add(10);  // 20 - printed\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'المفاهيم الرئيسية:',
          value: [
            'القابل للمراقبة/التدفق - مصدر البيانات',
            'المراقب/المستمع - يتفاعل مع التغييرات',
            'المشغلات - تحول البيانات (map، filter، إلخ)',
            'التحديثات التلقائية - لا حاجة لتحديث يدوي',
          ],
        ),
        StrContent('مثال بسيط مع Dart Streams:'),
        CodeContent(
          "import 'dart:async';\n"
          '\n'
          'void main() {\n'
          '  final controller = StreamController<int>();\n'
          '  \n'
          '  // التفاعل مع تغييرات التدفق\n'
          '  controller.stream\n'
          '    .map((value) => value * 2)  // تحويل\n'
          '    .where((value) => value > 10)  // تصفية\n'
          '    .listen((value) {  // تفاعل\n'
          '      print(\'تم الاستلام: \$value\');\n'
          '    });\n'
          '  \n'
          '  // إصدار القيم\n'
          '  controller.add(3);   // 6 - تمت تصفيته\n'
          '  controller.add(7);   // 14 - تمت الطباعة\n'
          '  controller.add(10);  // 20 - تمت الطباعة\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .paradigm,
    category: .reactiveProgramming,
    languages: [.dart, .javascript, .java, .swift],
    relatedTerms: [TermKeys.dartStream, TermKeys.observerPattern],
    aliases: ['Reactive Extensions', 'Rx'],
    tags: ['reactive', 'streams', 'observable', 'data flow'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.buildMethod: ProgrammingTerm(
    id: TermKeys.buildMethod,
    title: LocS(en: 'build() Method', ar: 'أسلوب build()'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The core method in Flutter widgets that describes how to display the widget in terms of other, lower-level widgets.',
        ),
      ],
      ar: [
        StrContent(
          'الأسلوب الأساسي في ويدجت Flutter الذي يصف كيفية عرض الويدجت من حيث الويدجت الأخرى منخفضة المستوى.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key points:',
          value: [
            'Called when widget needs to render',
            'Should be pure - no side effects',
            'Can be called multiple times',
            'Returns a Widget tree',
            'Performance matters - avoid heavy computation',
          ],
        ),
        StrContent('Example:'),
        CodeContent(
          'class MyWidget extends StatelessWidget {\n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Container(\n'
          '      child: Text(\'Hello, Flutter!\'),\n'
          '    );\n'
          '  }\n'
          '}\n'
          '\n'
          '// In StatefulWidget:\n'
          'class Counter extends StatefulWidget {\n'
          '  @override\n'
          '  State<Counter> createState() => _CounterState();\n'
          '}\n'
          '\n'
          'class _CounterState extends State<Counter> {\n'
          '  int count = 0;\n'
          '  \n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Text(\'\$count\');  // Rebuilds when setState called\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'نقاط رئيسية:',
          value: [
            'يُستدعى عندما يحتاج الويدجت للعرض',
            'يجب أن يكون نقيًا - بدون آثار جانبية',
            'يمكن استدعاؤه عدة مرات',
            'يرجع شجرة Widget',
            'الأداء مهم - تجنب الحسابات الثقيلة',
          ],
        ),
        StrContent('مثال:'),
        CodeContent(
          'class MyWidget extends StatelessWidget {\n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Container(\n'
          '      child: Text(\'مرحبا، Flutter!\'),\n'
          '    );\n'
          '  }\n'
          '}\n'
          '\n'
          '// في StatefulWidget:\n'
          'class Counter extends StatefulWidget {\n'
          '  @override\n'
          '  State<Counter> createState() => _CounterState();\n'
          '}\n'
          '\n'
          'class _CounterState extends State<Counter> {\n'
          '  int count = 0;\n'
          '  \n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Text(\'\$count\');  // يعاد البناء عند استدعاء setState\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterWidget, TermKeys.buildContext],
    tags: ['build', 'flutter', 'widget', 'rendering'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.buildContext: ProgrammingTerm(
    id: TermKeys.buildContext,
    title: LocS(en: 'BuildContext', ar: 'BuildContext'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A handle to the location of a widget in the widget tree. Provides access to inherited widgets, themes, and navigation.',
        ),
      ],
      ar: [
        StrContent(
          'مقبض لموقع ويدجت في شجرة الويدجت. يوفر وصولاً إلى الويدجت الموروثة، السمات، والتنقل.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Common uses:',
          value: [
            'Access theme data: Theme.of(context)',
            'Navigate: Navigator.of(context).push()',
            'Show dialogs/snackbars',
            'Access inherited widgets',
            'Get screen size: MediaQuery.of(context)',
          ],
        ),
        StrContent('Example:'),
        CodeContent(
          'Widget build(BuildContext context) {\n'
          '  // Access theme\n'
          '  final theme = Theme.of(context);\n'
          '  \n'
          '  // Get screen size\n'
          '  final size = MediaQuery.of(context).size;\n'
          '  \n'
          '  return ElevatedButton(\n'
          '    onPressed: () {\n'
          '      // Navigate\n'
          '      Navigator.of(context).push(\n'
          '        MaterialPageRoute(builder: (_) => NextPage()),\n'
          '      );\n'
          '      \n'
          '      // Show snackbar\n'
          '      ScaffoldMessenger.of(context).showSnackBar(\n'
          "        SnackBar(content: Text('Hello!')),\n"
          '      );\n'
          '    },\n'
          "    child: Text('Click'),\n"
          '  );\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'الاستخدامات الشائعة:',
          value: [
            'الوصول لبيانات السمة: Theme.of(context)',
            'التنقل: Navigator.of(context).push()',
            'إظهار الحوارات/أشرطة الوجبات الخفيفة',
            'الوصول للويدجت الموروثة',
            'الحصول على حجم الشاشة: MediaQuery.of(context)',
          ],
        ),
        StrContent('مثال:'),
        CodeContent(
          'Widget build(BuildContext context) {\n'
          '  // الوصول للسمة\n'
          '  final theme = Theme.of(context);\n'
          '  \n'
          '  // الحصول على حجم الشاشة\n'
          '  final size = MediaQuery.of(context).size;\n'
          '  \n'
          '  return ElevatedButton(\n'
          '    onPressed: () {\n'
          '      // التنقل\n'
          '      Navigator.of(context).push(\n'
          '        MaterialPageRoute(builder: (_) => NextPage()),\n'
          '      );\n'
          '      \n'
          '      // إظهار شريط وجبة خفيفة\n'
          '      ScaffoldMessenger.of(context).showSnackBar(\n'
          "        SnackBar(content: Text('مرحبا!')),\n"
          '      );\n'
          '    },\n'
          "    child: Text('انقر'),\n"
          '  );\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterWidget, TermKeys.buildMethod],
    tags: ['context', 'flutter', 'widget tree', 'navigation'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.eventLoop: ProgrammingTerm(
    id: TermKeys.eventLoop,
    title: LocS(en: 'Event Loop', ar: 'حلقة الأحداث'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A programming construct that waits for and dispatches events or messages in a program. Central to asynchronous programming.',
        ),
      ],
      ar: [
        StrContent(
          'بنية برمجة تنتظر وترسل الأحداث أو الرسائل في برنامج. محوري للبرمجة غير المتزامنة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'How Dart event loop works:',
          value: [
            '1. Executes main() function',
            '2. Processes microtask queue (Futures, etc.)',
            '3. Processes event queue (I/O, timers, user events)',
            '4. Repeats until queues are empty',
          ],
        ),
        StrContent(
          'The event loop enables Dart to handle async operations without blocking the main thread, keeping UIs responsive.',
        ),
        CodeContent(
          'void main() {\n'
          "  print('1');\n"
          '  \n'
          '  Future(() => print(\'2\'));  // Event queue\n'
          '  \n'
          '  Future.microtask(() => print(\'3\'));  // Microtask queue\n'
          '  \n'
          "  print('4');\n"
          '}\n'
          '\n'
          '// Output: 1, 4, 3, 2\n'
          '// Synchronous code first, then microtasks, then events',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'كيف تعمل حلقة أحداث Dart:',
          value: [
            '1. تنفيذ دالة main()',
            '2. معالجة طابور المهام الصغيرة (Futures، إلخ)',
            '3. معالجة طابور الأحداث (الإدخال/الإخراج، المؤقتات، أحداث المستخدم)',
            '4. التكرار حتى تفرغ الطوابير',
          ],
        ),
        StrContent(
          'تمكّن حلقة الأحداث Dart من التعامل مع العمليات غير المتزامنة دون حظر الخيط الرئيسي، مما يحافظ على استجابة واجهات المستخدم.',
        ),
        CodeContent(
          'void main() {\n'
          "  print('1');\n"
          '  \n'
          '  Future(() => print(\'2\'));  // طابور الأحداث\n'
          '  \n'
          '  Future.microtask(() => print(\'3\'));  // طابور المهام الصغيرة\n'
          '  \n'
          "  print('4');\n"
          '}\n'
          '\n'
          '// الناتج: 1، 4، 3، 2\n'
          '// الكود المتزامن أولاً، ثم المهام الصغيرة، ثم الأحداث',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    languages: [.dart, .javascript, .python],
    relatedTerms: [TermKeys.concurrencyAsync, TermKeys.dartFuture],
    tags: ['event loop', 'async', 'concurrency', 'non-blocking'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.architectureClean: ProgrammingTerm(
    id: TermKeys.architectureClean,
    title: LocS(en: 'Clean Architecture', ar: 'العمارة النظيفة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A software design philosophy that separates elements into ring levels. The main rule is that dependencies can only point inwards, towards high-level policies.',
        ),
      ],
      ar: [
        StrContent(
          'فلسفة تصميم برمجيات تفصل العناصر إلى مستويات حلقية. القاعدة الرئيسية هي أن التبعيات يمكن أن تشير فقط إلى الداخل، نحو السياسات عالية المستوى.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Layers (Outer to Inner):',
          value: [
            'Infrastructure (Frameworks, DB, UI)',
            'Interface Adapters (Presenters, Gateways)',
            'Use Cases (Application Business Rules)',
            'Entities (Enterprise Business Rules)',
          ],
        ),
        StrContent(
          'Benefits: Independent of UI, Database, and Frameworks. Highly testable.',
        ),
      ],
      ar: [
        ULContent(
          title: 'الطبقات (من الخارج للداخل):',
          value: [
            'البنية التحتية (أطر العمل، قواعد البيانات، واجهة المستخدم)',
            'محولات الواجهة (المقدمون، البوابات)',
            'حالات الاستخدام (قواعد أعمال التطبيق)',
            'الكيانات (قواعد أعمال المؤسسة)',
          ],
        ),
        StrContent(
          'الفوائد: مستقلة عن واجهة المستخدم، وقاعدة البيانات، وأطر العمل. قابلة للاختبار بشكل كبير.',
        ),
      ],
    ),
    type: .architecture,
    category: .architecture,
    languages: [.dart, .java, .csharp, .swift],
    relatedTerms: [
      TermKeys.architectureLayered,
      TermKeys.patternRepository,
      'solid',
    ],
    tags: ['clean architecture', 'uncle bob', 'layers', 'independence'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.architectureLayered: ProgrammingTerm(
    id: TermKeys.architectureLayered,
    title: LocS(en: 'Layered Architecture', ar: 'العمارة الطبقية'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A traditional architectural pattern that organizes code into horizontal layers, where each layer performs a specific role and interacts only with the layer directly below it.',
        ),
      ],
      ar: [
        StrContent(
          'نمط معماري تقليدي ينظم الكود في طبقات أفقية، حيث تؤدي كل طبقة دورًا محددًا وتتفاعل فقط مع الطبقة التي تحتها مباشرة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Common Layers:',
          value: [
            'Presentation Layer (UI)',
            'Business Logic / Domain Layer',
            'Data Access Layer (Repository/Database)',
          ],
        ),
        StrContent(
          'Simple to understand and implement, but can lead to "tight coupling" if not managed well.',
        ),
      ],
      ar: [
        ULContent(
          title: 'الطبقات الشائعة:',
          value: [
            'طبقة العرض (واجهة المستخدم)',
            'منطق الأعمال / طبقة المجال',
            'طبقة الوصول للبيانات (المستودع/قاعدة البيانات)',
          ],
        ),
        StrContent(
          'بسيطة للفهم والتنفيذ، لكن قد تؤدي إلى "ارتباط محكم" إذا لم تتم إدارتها بشكل جيد.',
        ),
      ],
    ),
    type: .architecture,
    category: .architecture,
    relatedTerms: [TermKeys.architectureClean, TermKeys.mvc],
    tags: ['layers', 'n-tier', 'structure', 'organization'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.patternRepository: ProgrammingTerm(
    id: TermKeys.patternRepository,
    title: LocS(en: 'Repository Pattern', ar: 'نمط المستودع'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A design pattern that mediates between the domain and data mapping layers using a collection-like interface for accessing domain objects.',
        ),
      ],
      ar: [
        StrContent(
          'نمط تصميم يتوسط بين المجال وطبقات تعيين البيانات باستخدام واجهة تشبه المجموعة للوصول إلى كائنات المجال.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'It abstracts the data source (API, SQL, Cache) so the app logic doesn\'t care where data comes from.',
        ),
        CodeContent(
          'abstract class UserRepository {\n'
          '  Future<User> getUser(String id);\n'
          '  Future<void> saveUser(User user);\n'
          '}\n'
          '\n'
          'class UserRepositoryImpl implements UserRepository {\n'
          '  // Implementation details hidden from the app\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent(
          'يقوم بتجريد مصدر البيانات (API، SQL، التخزين المؤقت) بحيث لا يهتم منطق التطبيق بمصدر البيانات.',
        ),
        CodeContent(
          'abstract class UserRepository {\n'
          '  Future<User> getUser(String id);\n'
          '  Future<void> saveUser(User user);\n'
          '}\n'
          '\n'
          'class UserRepositoryImpl implements UserRepository {\n'
          '  // تفاصيل التنفيذ مخفية عن التطبيق\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .pattern,
    category: .architecture,
    languages: [.dart, .java, .csharp],
    relatedTerms: [TermKeys.architectureClean, TermKeys.dependencyInjection],
    tags: ['repository', 'data abstraction', 'pattern', 'database'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.patternServiceLocator: ProgrammingTerm(
    id: TermKeys.patternServiceLocator,
    title: LocS(en: 'Service Locator', ar: 'محدد الخدمة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A design pattern used to decouple the interface with an implementation by creating a central registry (the locator) where services are registered and retrieved.',
        ),
      ],
      ar: [
        StrContent(
          'نمط تصميم يستخدم لفصل الواجهة عن التنفيذ عن طريق إنشاء سجل مركزي (المحدد) حيث يتم تسجيل الخدمات واسترجاعها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Often considered an alternative to Dependency Injection. In Dart, `GetIt` is a popular service locator.',
        ),
        CodeContent(
          'final locator = GetIt.instance;\n'
          '\n'
          '// Register\n'
          'locator.registerSingleton<AuthService>(AuthServiceImpl());\n'
          '\n'
          '// Retrieve\n'
          'final authService = locator<AuthService>();',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent(
          'غالبًا ما يعتبر بديلاً لحقن التبعية. في Dart، يعد `GetIt` محدد خدمة شائع.',
        ),
        CodeContent(
          'final locator = GetIt.instance;\n'
          '\n'
          '// تسجيل\n'
          'locator.registerSingleton<AuthService>(AuthServiceImpl());\n'
          '\n'
          '// استرجاع\n'
          'final authService = locator<AuthService>();',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .pattern,
    category: .architecture,
    languages: [.dart, .csharp],
    relatedTerms: [TermKeys.dependencyInjection, TermKeys.toolGetIt],
    tags: ['service locator', 'registry', 'singleton', 'dependencies'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.stateManagementCubit: ProgrammingTerm(
    id: TermKeys.stateManagementCubit,
    title: LocS(en: 'Cubit', ar: 'Cubit'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A subset of the BLoC pattern that simplifies state management by using functions to emit states instead of event streams.',
        ),
      ],
      ar: [
        StrContent(
          'مجموعة فرعية من نمط BLoC تبسط إدارة الحالة باستخدام الدوال لإصدار الحالات بدلاً من تدفقات الأحداث.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Cubits are easier to write than full BLoCs because you call methods directly.',
        ),
        CodeContent(
          'class CounterCubit extends Cubit<int> {\n'
          '  CounterCubit() : super(0);\n'
          '\n'
          '  void increment() => emit(state + 1);\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent(
          'تعد Cubits أسهل في الكتابة من BLoC الكامل لأنك تستدعي الأساليب مباشرة.',
        ),
        CodeContent(
          'class CounterCubit extends Cubit<int> {\n'
          '  CounterCubit() : super(0);\n'
          '\n'
          '  void increment() => emit(state + 1);\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .library,
    category: .stateManagement,
    languages: [.dart, .flutter],
    relatedTerms: [TermKeys.bloc, TermKeys.stateManagement],
    tags: ['cubit', 'bloc', 'state', 'flutter'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.toolRiverpod: ProgrammingTerm(
    id: TermKeys.toolRiverpod,
    title: LocS(en: 'Riverpod', ar: 'Riverpod'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A reactive caching and data-binding framework for Dart and Flutter. It is often seen as a "rewrite of Provider" that is compile-safe and testable.',
        ),
      ],
      ar: [
        StrContent(
          'إطار عمل للتخزين المؤقت التفاعلي وربط البيانات لـ Dart و Flutter. غالبًا ما يُنظر إليه على أنه "إعادة كتابة لـ Provider" آمنة في وقت الترجمة وقابلة للاختبار.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key Advantages:',
          value: [
            'Compile-time safety (no ProviderNotFoundException)',
            'Independent of the Widget tree (no BuildContext needed)',
            'Easier to combine providers',
          ],
        ),
        CodeContent(
          'final counterProvider = StateProvider((ref) => 0);\n'
          '\n'
          '// In a Widget\n'
          'ref.watch(counterProvider);',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        ULContent(
          title: 'المزايا الرئيسية:',
          value: [
            'أمان وقت الترجمة (لا يوجد ProviderNotFoundException)',
            'مستقل عن شجرة الويدجت (لا يحتاج BuildContext)',
            'أسهل لدمج المزودين',
          ],
        ),
        CodeContent(
          'final counterProvider = StateProvider((ref) => 0);\n'
          '\n'
          '// في ويدجت\n'
          'ref.watch(counterProvider);',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .framework,
    category: .stateManagement,
    languages: [.dart, .flutter],
    relatedTerms: [TermKeys.providerPattern, TermKeys.stateManagement],
    tags: ['riverpod', 'provider', 'state', 'reactive'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.toolGetIt: ProgrammingTerm(
    id: TermKeys.toolGetIt,
    title: LocS(en: 'GetIt', ar: 'GetIt'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A simple, direct Service Locator for Dart and Flutter. It allows you to access your business logic objects from anywhere in the UI without passing context.',
        ),
      ],
      ar: [
        StrContent(
          'محدد خدمة بسيط ومباشر لـ Dart و Flutter. يسمح لك بالوصول إلى كائنات منطق الأعمال الخاصة بك من أي مكان في واجهة المستخدم دون تمرير السياق.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'It decouples your implementation from the interface and is commonly used with Dependency Injection.',
        ),
        StrContent(
          'Note: While convenient, overuse can make testing harder if not managed cleanly.',
        ),
      ],
      ar: [
        StrContent('يفصل تنفيذك عن الواجهة ويستخدم عادة مع حقن التبعية.'),
        StrContent(
          'ملاحظة: على الرغم من ملاءمته، فإن الإفراط في استخدامه قد يجعل الاختبار أصعب إذا لم تتم إدارته بنظافة.',
        ),
      ],
    ),
    type: .tool,
    category: .architecture,
    languages: [.dart, .flutter],
    relatedTerms: [
      TermKeys.patternServiceLocator,
      TermKeys.dependencyInjection,
    ],
    tags: ['get_it', 'locator', 'di', 'dependencies'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.patternRedux: ProgrammingTerm(
    id: TermKeys.patternRedux,
    title: LocS(en: 'Redux', ar: 'Redux'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A predictable state container for applications. It relies on a single source of truth (Store), read-only state, and pure functions (Reducers) to modify state.',
        ),
      ],
      ar: [
        StrContent(
          'حاوية حالة قابلة للتنبؤ للتطبيقات. تعتمد على مصدر حقيقة واحد (Store)، وحالة للقراءة فقط، ودوال نقية (Reducers) لتعديل الحالة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Core Cycle:',
          value: [
            'Action: Describes what happened',
            'Reducer: Takes old state + action -> new state',
            'Store: Holds the state',
          ],
        ),
        StrContent('Very popular in React, also available in Flutter.'),
      ],
      ar: [
        ULContent(
          title: 'الدورة الأساسية:',
          value: [
            'الإجراء (Action): يصف ما حدث',
            'المخفض (Reducer): يأخذ الحالة القديمة + الإجراء -> حالة جديدة',
            'المخزن (Store): يحتفظ بالحالة',
          ],
        ),
        StrContent('شائع جدًا في React، ومتاح أيضًا في Flutter.'),
      ],
    ),
    type: .pattern,
    category: .stateManagement,
    languages: [.javascript, .dart],
    relatedTerms: [TermKeys.stateManagement, TermKeys.paradigmFunctional],
    tags: ['redux', 'reducer', 'store', 'unidirectional'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.conceptDesignPattern: ProgrammingTerm(
    id: TermKeys.conceptDesignPattern,
    title: LocS(en: 'Design Pattern', ar: 'نمط التصميم'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A general, reusable solution to a commonly occurring problem within a given context in software design. It is a template, not code.',
        ),
      ],
      ar: [
        StrContent(
          'حل عام قابل لإعادة الاستخدام لمشكلة شائعة الحدوث في سياق معين في تصميم البرمجيات. إنه قالب وليس كودًا.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types of Patterns (Gang of Four):',
          value: [
            'Creational: Creating objects (Singleton, Factory)',
            'Structural: Composition of classes (Adapter, Decorator)',
            'Behavioral: Communication between objects (Observer, Strategy)',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'أنواع الأنماط (عصابة الأربعة):',
          value: [
            'إنشائية: إنشاء الكائنات (المفرد، المصنع)',
            'هيكلية: تركيب الفئات (المحول، المزخرف)',
            'سلوكية: التواصل بين الكائنات (المراقب، الاستراتيجية)',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .architecture,
    relatedTerms: [
      TermKeys.singleton,
      TermKeys.observerPattern,
      TermKeys.factoryConstructor,
    ],
    tags: ['gof', 'patterns', 'best practices', 'solution'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.principleSolid: ProgrammingTerm(
    id: TermKeys.principleSolid,
    title: LocS(en: 'SOLID Principles', ar: 'مبادئ SOLID'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An acronym for five design principles intended to make software designs more understandable, flexible, and maintainable.',
        ),
      ],
      ar: [
        StrContent(
          'اختصار لخمسة مبادئ تصميم تهدف إلى جعل تصميمات البرمجيات أكثر قابلية للفهم والمرونة والصيانة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'The Principles:',
          value: [
            'S - Single Responsibility: One reason to change',
            'O - Open/Closed: Open for extension, closed for modification',
            'L - Liskov Substitution: Subtypes must be substitutable',
            'I - Interface Segregation: Many specific interfaces are better',
            'D - Dependency Inversion: Depend on abstractions, not concretions',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'المبادئ:',
          value: [
            'S - المسؤولية الواحدة: سبب واحد للتغيير',
            'O - المفتوح/المغلق: مفتوح للتمديد، مغلق للتعديل',
            'L - استبدال ليسكوف: يجب أن تكون الأنواع الفرعية قابلة للاستبدال',
            'I - فصل الواجهة: واجهات محددة متعددة أفضل',
            'D - عكس التبعية: الاعتماد على التجريدات، وليس التطبيقات الملموسة',
          ],
        ),
      ],
    ),
    type: .principle,
    category: .architecture,
    languages: [.java, .csharp, .dart, .cpp],
    relatedTerms: [TermKeys.paradigmOop, TermKeys.architectureClean],
    tags: ['solid', 'principles', 'oop', 'best practices'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.principleDry: ProgrammingTerm(
    id: TermKeys.principleDry,
    title: LocS(en: 'DRY (Don\'t Repeat Yourself)', ar: 'لا تكرر نفسك'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A principle of software development aimed at reducing repetition of software patterns, replacing it with abstractions or using data normalization.',
        ),
      ],
      ar: [
        StrContent(
          'مبدأ في تطوير البرمجيات يهدف إلى تقليل تكرار أنماط البرمجيات، واستبدالها بالتجريدات أو استخدام تسوية البيانات.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Every piece of knowledge must have a single, unambiguous, authoritative representation within a system.',
        ),
      ],
      ar: [
        StrContent(
          'يجب أن يكون لكل جزء من المعرفة تمثيل واحد، غير غامض، وموثوق داخل النظام.',
        ),
      ],
    ),
    type: .principle,
    category: .fundamentals,
    relatedTerms: [TermKeys.fundamentalsFunction, 'refactoring'],
    tags: ['dry', 'clean code', 'redundancy'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.principleKiss: ProgrammingTerm(
    id: TermKeys.principleKiss,
    title: LocS(en: 'KISS (Keep It Simple, Stupid)', ar: 'اجعلها بسيطة وغبية'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A design principle stating that systems work best if they are kept simple rather than made complicated.',
        ),
      ],
      ar: [
        StrContent(
          'مبدأ تصميم ينص على أن الأنظمة تعمل بشكل أفضل إذا تم الحفاظ على بساطتها بدلاً من جعلها معقدة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Avoid unnecessary complexity. Simple code is easier to maintain, debug, and understand.',
        ),
      ],
      ar: [
        StrContent(
          'تجنب التعقيد غير الضروري. الكود البسيط أسهل في الصيانة وتصحيح الأخطاء والفهم.',
        ),
      ],
    ),
    type: .principle,
    category: .fundamentals,
    relatedTerms: [TermKeys.principleYagni],
    tags: ['kiss', 'simplicity', 'clean code'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.principleYagni: ProgrammingTerm(
    id: TermKeys.principleYagni,
    title: LocS(en: 'YAGNI (You Ain\'t Gonna Need It)', ar: 'لن تحتاج إليها'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A principle of Extreme Programming (XP) that states a programmer should not add functionality until deemed necessary.',
        ),
      ],
      ar: [
        StrContent(
          'مبدأ من البرمجة المتطرفة (XP) ينص على أنه يجب على المبرمج عدم إضافة وظائف حتى تعتبر ضرورية.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Don\'t write code for the future. Solve the current problem. Unused code is technical debt.',
        ),
      ],
      ar: [
        StrContent(
          'لا تكتب كودًا للمستقبل. حل المشكلة الحالية. الكود غير المستخدم هو دين تقني.',
        ),
      ],
    ),
    type: .principle,
    category: .fundamentals,
    relatedTerms: [TermKeys.principleKiss, TermKeys.technicalDebt],
    tags: ['yagni', 'xp', 'efficiency'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.gitRebase: ProgrammingTerm(
    id: TermKeys.gitRebase,
    title: LocS(en: 'Rebase', ar: 'Rebase (إعادة التأسيس)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A Git command used to integrate changes from one branch into another by moving the entire sequence of commits to a new base commit.',
        ),
      ],
      ar: [
        StrContent(
          'أمر Git يُستخدم لدمج التغييرات من فرع إلى آخر عن طريق نقل تسلسل الإيداعات بالكامل إلى إيداع أساس جديد.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Creates a linear history, unlike `merge` which creates a merge commit. Warning: Do not rebase public branches!',
        ),
        CodeContent(
          'git checkout feature\ngit rebase main',
          codeLanguage: .bash,
        ),
      ],
      ar: [
        StrContent(
          'ينشئ تاريخًا خطيًا، على عكس `merge` الذي ينشئ إيداع دمج. تحذير: لا تقم بعمل rebase للفروع العامة!',
        ),
        CodeContent(
          'git checkout feature\ngit rebase main',
          codeLanguage: .bash,
        ),
      ],
    ),
    type: .tool,
    category: .versionControl,
    languages: [],
    relatedTerms: [TermKeys.git, TermKeys.merge, TermKeys.branch],
    tags: ['git', 'rebase', 'history', 'linear'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.conceptRefactoring: ProgrammingTerm(
    id: TermKeys.conceptRefactoring,
    title: LocS(en: 'Refactoring', ar: 'إعادة الهيكلة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of restructuring existing computer code without changing its external behavior.',
        ),
      ],
      ar: [
        StrContent(
          'عملية إعادة هيكلة كود الكمبيوتر الموجود دون تغيير سلوكه الخارجي.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Goal: Improve nonfunctional attributes (readability, reduce complexity) to make code easier to maintain.',
        ),
        ULContent(
          title: 'Examples:',
          value: [
            'Renaming variables to be meaningful',
            'Extracting a large function into smaller ones',
            'Removing duplicate code',
          ],
        ),
      ],
      ar: [
        StrContent(
          'الهدف: تحسين السمات غير الوظيفية (القراءة، تقليل التعقيد) لجعل الكود أسهل في الصيانة.',
        ),
        ULContent(
          title: 'أمثلة:',
          value: [
            'إعادة تسمية المتغيرات لتكون ذات معنى',
            'استخراج دالة كبيرة إلى دوال أصغر',
            'إزالة الكود المكرر',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    relatedTerms: ['code-smell', TermKeys.technicalDebt, TermKeys.testing],
    tags: ['refactoring', 'clean code', 'maintenance'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.conceptCodeSmell: ProgrammingTerm(
    id: TermKeys.conceptCodeSmell,
    title: LocS(en: 'Code Smell', ar: 'رائحة الكود'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A surface indication that usually corresponds to a deeper problem in the system. It\'s not necessarily a bug, but a weakness in design.',
        ),
      ],
      ar: [
        StrContent(
          'مؤشر سطحي يتوافق عادةً مع مشكلة أعمق في النظام. ليس بالضرورة خطأً برمجيًا، بل ضعف في التصميم.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Common Smells:',
          value: [
            'Long Method: Function does too much',
            'Large Class: Class tries to do everything',
            'Duplicated Code: Same logic in multiple places',
            'Magic Numbers: Unexplained numeric literals',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'روائح شائعة:',
          value: [
            'الأسلوب الطويل: الدالة تفعل الكثير',
            'الفئة الكبيرة: الفئة تحاول فعل كل شيء',
            'الكود المكرر: نفس المنطق في أماكن متعددة',
            'الأرقام السحرية: قيم رقمية غير مشروحة',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    relatedTerms: [TermKeys.conceptRefactoring, TermKeys.principleDry],
    tags: ['code smell', 'anti-pattern', 'quality'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.technicalDebt: ProgrammingTerm(
    id: TermKeys.technicalDebt,
    title: LocS(en: 'Technical Debt', ar: 'الدين التقني'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The implied cost of additional rework caused by choosing an easy (limited) solution now instead of using a better approach that would take longer.',
        ),
      ],
      ar: [
        StrContent(
          'التكلفة الضمنية لإعادة العمل الإضافية الناتجة عن اختيار حل سهل (محدود) الآن بدلاً من استخدام نهج أفضل سيستغرق وقتًا أطول.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Like financial debt, if not paid back (refactored), it accumulates interest (development becomes slower and harder).',
        ),
      ],
      ar: [
        StrContent(
          'مثل الدين المالي، إذا لم يتم سداده (إعادة الهيكلة)، فإنه يراكم الفوائد (يصبح التطوير أبطأ وأصعب).',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    relatedTerms: [TermKeys.conceptRefactoring, TermKeys.conceptCodeSmell],
    tags: ['debt', 'management', 'quality', 'speed vs quality'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.toolLint: ProgrammingTerm(
    id: TermKeys.toolLint,
    title: LocS(en: 'Linter', ar: 'المدقق البرمجي (Linter)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A tool that analyzes source code to flag programming errors, bugs, stylistic errors, and suspicious constructs.',
        ),
      ],
      ar: [
        StrContent(
          'أداة تحلل الكود المصدري لتحديد أخطاء البرمجة، والأخطاء، والأخطاء الأسلوبية، والتركيبات المشبوهة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In Dart, `flutter_lints` is commonly used to enforce rules.',
        ),
        CodeContent(
          '// analysis_options.yaml\n'
          'linter:\n'
          '  rules:\n'
          '    prefer_const_constructors: true\n'
          '    avoid_print: true',
          codeLanguage: .yaml,
        ),
      ],
      ar: [
        StrContent('في Dart، يُستخدم `flutter_lints` بشكل شائع لفرض القواعد.'),
        CodeContent(
          '// analysis_options.yaml\n'
          'linter:\n'
          '  rules:\n'
          '    prefer_const_constructors: true\n'
          '    avoid_print: true',
          codeLanguage: .yaml,
        ),
      ],
    ),
    type: .tool,
    category: .devOps,
    languages: [.dart, .javascript, .python],
    relatedTerms: [TermKeys.toolFormatter, TermKeys.staticTyping],
    tags: ['lint', 'analysis', 'static analysis', 'style'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.memoryGarbageCollection: ProgrammingTerm(
    id: TermKeys.memoryGarbageCollection,
    title: LocS(en: 'Garbage Collection (GC)', ar: 'جمع القمامة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A form of automatic memory management. The garbage collector attempts to reclaim memory occupied by objects that are no longer in use by the program.',
        ),
      ],
      ar: [
        StrContent(
          'شكل من أشكال إدارة الذاكرة التلقائية. يحاول جامع القمامة استعادة الذاكرة التي تشغلها الكائنات التي لم يعد يستخدمها البرنامج.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Dart uses a generational garbage collector (Young Space / Old Space). You don\'t need to free memory manually like in C++.',
        ),
      ],
      ar: [
        StrContent(
          'يستخدم Dart جامع قمامة جيلي (المساحة الشابة / المساحة القديمة). لا تحتاج إلى تحرير الذاكرة يدويًا كما في C++.',
        ),
      ],
    ),
    type: .feature,
    category: .memoryManagement,
    languages: [.dart, .java, .python, .javascript],
    relatedTerms: [TermKeys.memoryLeak, TermKeys.memoryHeap],
    tags: ['memory', 'gc', 'performance', 'allocation'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.memoryLeak: ProgrammingTerm(
    id: TermKeys.memoryLeak,
    title: LocS(en: 'Memory Leak', ar: 'تسرب الذاكرة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'Occurs when a program allocates memory but fails to release it back to the operating system when no longer needed, leading to reduced performance or crashes.',
        ),
      ],
      ar: [
        StrContent(
          'يحدث عندما يخصص البرنامج ذاكرة ولكنه يفشل في إعادتها إلى نظام التشغيل عندما لا تكون هناك حاجة إليها، مما يؤدي إلى انخفاض الأداء أو الانهيار.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Common causes in Flutter: forgetting to dispose controllers (`TextEditingController`, `StreamController`) or adding listeners without removing them.',
        ),
      ],
      ar: [
        StrContent(
          'الأسباب الشائعة في Flutter: نسيان التخلص من المتحكمات (`TextEditingController`، `StreamController`) أو إضافة مستمعين دون إزالتهم.',
        ),
      ],
    ),
    type: .concept,
    category: .memoryManagement,
    relatedTerms: [TermKeys.memoryGarbageCollection, 'lifecycle'],
    tags: ['bug', 'memory', 'performance', 'crash'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.memoryHeap: ProgrammingTerm(
    id: TermKeys.memoryHeap,
    title: LocS(en: 'Heap Memory', ar: 'ذاكرة الكومة (Heap)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A region of computer memory used for dynamic memory allocation. Objects are stored here.',
        ),
      ],
      ar: [
        StrContent(
          'منطقة من ذاكرة الكمبيوتر تستخدم لتخصيص الذاكرة الديناميكية. يتم تخزين الكائنات هنا.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Large, somewhat unstructured, and slower to access than Stack. Objects live here until Garbage Collected.',
        ),
      ],
      ar: [
        StrContent(
          'كبيرة، غير منظمة إلى حد ما، وأبطأ في الوصول من المكدس. تعيش الكائنات هنا حتى يتم جمعها (Garbage Collected).',
        ),
      ],
    ),
    type: .concept,
    category: .memoryManagement,
    relatedTerms: [TermKeys.memoryStack, TermKeys.memoryGarbageCollection],
    tags: ['memory', 'allocation', 'dynamic', 'storage'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.memoryStack: ProgrammingTerm(
    id: TermKeys.memoryStack,
    title: LocS(en: 'Stack Memory', ar: 'ذاكرة المكدس (Stack)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A region of memory used for static memory allocation and function call execution contexts.',
        ),
      ],
      ar: [
        StrContent(
          'منطقة من الذاكرة تستخدم لتخصيص الذاكرة الثابتة وسياقات تنفيذ استدعاء الدوال.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Fast access (LIFO). Stores local primitive variables and references to objects in the Heap. Automatically cleared when function returns.',
        ),
      ],
      ar: [
        StrContent(
          'وصول سريع (LIFO). يخزن المتغيرات الأولية المحلية والمراجع للكائنات في الكومة. يتم مسحها تلقائيًا عند عودة الدالة.',
        ),
      ],
    ),
    type: .concept,
    category: .memoryManagement,
    relatedTerms: [TermKeys.memoryHeap, TermKeys.dataStructureStack],
    tags: ['memory', 'execution', 'fast', 'lifo'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.conceptPointer: ProgrammingTerm(
    id: TermKeys.conceptPointer,
    title: LocS(en: 'Pointer', ar: 'المؤشر'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A variable that stores the memory address of another variable.',
        ),
      ],
      ar: [StrContent('متغير يخزن عنوان الذاكرة لمتغير آخر.')],
    ),
    details: LocV(
      en: [
        StrContent(
          'Dart doesn\'t use pointers explicitly (like C++), it uses References. However, knowing pointers helps understand how objects are passed.',
        ),
      ],
      ar: [
        StrContent(
          'لا يستخدم Dart المؤشرات صراحة (مثل C++)، بل يستخدم المراجع. ومع ذلك، معرفة المؤشرات تساعد في فهم كيفية تمرير الكائنات.',
        ),
      ],
    ),
    type: .concept,
    category: .memoryManagement,
    languages: [.c, .cpp, .go],
    relatedTerms: [TermKeys.conceptReference, TermKeys.memoryHeap],
    tags: ['memory', 'address', 'low-level'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.conceptReference: ProgrammingTerm(
    id: TermKeys.conceptReference,
    title: LocS(en: 'Reference', ar: 'المرجع'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A value that enables a program to indirectly access a particular datum, such as a variable\'s value, in the computer\'s memory or on some other storage device.',
        ),
      ],
      ar: [
        StrContent(
          'قيمة تمكن البرنامج من الوصول بشكل غير مباشر إلى بيان معين، مثل قيمة متغير، في ذاكرة الكمبيوتر أو على جهاز تخزين آخر.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In Dart, objects are passed by reference. If you pass an object to a function and modify it inside, the original object changes.',
        ),
        CodeContent(
          'void modify(List<int> list) {\n'
          '  list.add(4);\n'
          '}\n'
          '\n'
          'var myList = [1, 2, 3];\n'
          'modify(myList);\n'
          'print(myList); // [1, 2, 3, 4]',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent(
          'في Dart، يتم تمرير الكائنات بالمرجع. إذا مررت كائنًا إلى دالة وقمت بتعديله بداخلها، يتغير الكائن الأصلي.',
        ),
        CodeContent(
          'void modify(List<int> list) {\n'
          '  list.add(4);\n'
          '}\n'
          '\n'
          'var myList = [1, 2, 3];\n'
          'modify(myList);\n'
          'print(myList); // [1, 2, 3, 4]',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .memoryManagement,
    languages: [.dart, .java],
    relatedTerms: [TermKeys.conceptPointer, TermKeys.fundamentalsVariable],
    tags: ['memory', 'pass-by-reference', 'object'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.dataDeserialization: ProgrammingTerm(
    id: TermKeys.dataDeserialization,
    title: LocS(en: 'Deserialization', ar: 'إلغاء التسلسل'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The reverse process of serialization; converting a stream of bytes or data format (like JSON) back into an object in memory.',
        ),
      ],
      ar: [
        StrContent(
          'العملية العكسية للتسلسل؛ تحويل تدفق من البايتات أو تنسيق البيانات (مثل JSON) مرة أخرى إلى كائن في الذاكرة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('Commonly used when receiving data from an API.'),
        CodeContent(
          '// JSON string -> Dart Map -> User Object\n'
          'User user = User.fromJson(jsonDecode(jsonString));',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent('يستخدم عادة عند استقبال البيانات من API.'),
        CodeContent(
          '// JSON string -> Dart Map -> User Object\n'
          'User user = User.fromJson(jsonDecode(jsonString));',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    relatedTerms: [TermKeys.serialization, TermKeys.json],
    tags: ['data', 'conversion', 'parsing'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.securityEncryption: ProgrammingTerm(
    id: TermKeys.securityEncryption,
    title: LocS(en: 'Encryption', ar: 'التشفير'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of encoding information so that only authorized parties can access it.',
        ),
      ],
      ar: [
        StrContent(
          'عملية ترميز المعلومات بحيث لا يمكن الوصول إليها إلا للأطراف المصرح لها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types:',
          value: [
            'Symmetric (AES): Same key for encryption/decryption',
            'Asymmetric (RSA): Public key encrypts, Private key decrypts',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'الأنواع:',
          value: [
            'متماثل (AES): نفس المفتاح للتشفير/فك التشفير',
            'غير متماثل (RSA): المفتاح العام يشفر، المفتاح الخاص يفك التشفير',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .security,
    relatedTerms: [TermKeys.securityHashing, 'https'],
    tags: ['security', 'cryptography', 'protection'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.securityHashing: ProgrammingTerm(
    id: TermKeys.securityHashing,
    title: LocS(en: 'Hashing', ar: 'التهشير (Hashing)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A one-way process of mapping data of arbitrary size to fixed-size values. It is irreversible.',
        ),
      ],
      ar: [
        StrContent(
          'عملية أحادية الاتجاه لتعيين بيانات ذات حجم عشوائي إلى قيم ذات حجم ثابت. وهي غير قابلة للعكس.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Used for passwords (storing hash instead of plain text) and data integrity (checksums). Examples: SHA-256, MD5.',
        ),
      ],
      ar: [
        StrContent(
          'يستخدم لكلمات المرور (تخزين الهاش بدلاً من النص العادي) وسلامة البيانات (الاختبار الجمعي). أمثلة: SHA-256، MD5.',
        ),
      ],
    ),
    type: .concept,
    category: .security,
    relatedTerms: [TermKeys.securityEncryption, TermKeys.authentication],
    tags: ['security', 'password', 'integrity'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.dbDatabase: ProgrammingTerm(
    id: TermKeys.dbDatabase,
    title: LocS(en: 'Database', ar: 'قاعدة البيانات'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An organized collection of structured information, or data, typically stored electronically in a computer system.',
        ),
      ],
      ar: [
        StrContent(
          'مجموعة منظمة من المعلومات المهيكلة، أو البيانات، مخزنة عادةً إلكترونيًا في نظام كمبيوتر.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Managed by a DBMS (Database Management System). Can be local (SQLite, Hive) or remote (PostgreSQL, Firebase).',
        ),
      ],
      ar: [
        StrContent(
          'تدار بواسطة DBMS (نظام إدارة قواعد البيانات). يمكن أن تكون محلية (SQLite، Hive) أو بعيدة (PostgreSQL، Firebase).',
        ),
      ],
    ),
    type: .concept,
    category: .databases,
    relatedTerms: [TermKeys.dbSql, TermKeys.dbNosql, TermKeys.dbOrm],
    tags: ['storage', 'backend', 'data'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.dbSql: ProgrammingTerm(
    id: TermKeys.dbSql,
    title: LocS(en: 'SQL', ar: 'SQL'),
    quickOverview: LocV(
      en: [
        StrContent(
          'Structured Query Language. A standard language for storing, manipulating, and retrieving data in databases.',
        ),
      ],
      ar: [
        StrContent(
          'لغة الاستعلام الهيكلية. لغة قياسية لتخزين ومعالجة واسترجاع البيانات في قواعد البيانات.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Used in Relational Databases (RDBMS) like MySQL, PostgreSQL, SQLite.',
        ),
        CodeContent('SELECT * FROM users WHERE age > 18;', codeLanguage: .sql),
      ],
      ar: [
        StrContent(
          'تستخدم في قواعد البيانات العلائقية (RDBMS) مثل MySQL، PostgreSQL، SQLite.',
        ),
        CodeContent('SELECT * FROM users WHERE age > 18;', codeLanguage: .sql),
      ],
    ),
    type: .language,
    category: .databases,
    languages: [.sql],
    relatedTerms: [TermKeys.dbDatabase, TermKeys.dbNosql],
    tags: ['query', 'relational', 'table'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.dbNosql: ProgrammingTerm(
    id: TermKeys.dbNosql,
    title: LocS(en: 'NoSQL', ar: 'NoSQL'),
    quickOverview: LocV(
      en: [
        StrContent(
          'Non-relational databases that store data in formats other than tabular relations, such as documents, key-value pairs, or graphs.',
        ),
      ],
      ar: [
        StrContent(
          'قواعد بيانات غير علائقية تخزن البيانات بتنسيقات غير العلاقات الجدولية، مثل المستندات، أو أزواج المفتاح-القيمة، أو الرسوم البيانية.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Examples: MongoDB (Document), Firebase Firestore (Document), Redis (Key-Value). Flexible schema.',
        ),
      ],
      ar: [
        StrContent(
          'أمثلة: MongoDB (مستند)، Firebase Firestore (مستند)، Redis (مفتاح-قيمة). مخطط مرن.',
        ),
      ],
    ),
    type: .concept,
    category: .databases,
    relatedTerms: [TermKeys.dbSql, TermKeys.json],
    tags: ['document', 'flexible', 'scalable'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.dbOrm: ProgrammingTerm(
    id: TermKeys.dbOrm,
    title: LocS(en: 'ORM (Object-Relational Mapping)', ar: 'ORM'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A technique that lets you query and manipulate data from a database using an object-oriented paradigm instead of writing SQL directly.',
        ),
      ],
      ar: [
        StrContent(
          'تقنية تسمح لك بالاستعلام عن البيانات ومعالجتها من قاعدة بيانات باستخدام نموذج موجه للكائنات بدلاً من كتابة SQL مباشرة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In Flutter: Drift or Isar are popular. It maps Database Tables to Dart Classes.',
        ),
      ],
      ar: [
        StrContent(
          'في Flutter: تعتبر Drift أو Isar شائعة. تقوم بتعيين جداول قاعدة البيانات إلى فئات Dart.',
        ),
      ],
    ),
    type: .tool,
    category: .databases,
    relatedTerms: [TermKeys.dbSql, TermKeys.dbDatabase],
    tags: ['abstraction', 'database', 'productivity'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.performanceCaching: ProgrammingTerm(
    id: TermKeys.performanceCaching,
    title: LocS(en: 'Caching', ar: 'التخزين المؤقت'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of storing copies of files or data in a temporary storage location (cache) so that they can be accessed more quickly.',
        ),
      ],
      ar: [
        StrContent(
          'عملية تخزين نسخ من الملفات أو البيانات في موقع تخزين مؤقت (ذاكرة التخزين المؤقت) بحيث يمكن الوصول إليها بسرعة أكبر.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Used to reduce network load and improve app speed. Can be in-memory (RAM) or persistent (Disk).',
        ),
      ],
      ar: [
        StrContent(
          'تستخدم لتقليل حمل الشبكة وتحسين سرعة التطبيق. يمكن أن تكون في الذاكرة (RAM) أو دائمة (القرص).',
        ),
      ],
    ),
    type: .concept,
    category: .performance,
    relatedTerms: [TermKeys.memoryHeap, TermKeys.dbDatabase],
    tags: ['performance', 'speed', 'storage'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.devopsDocker: ProgrammingTerm(
    id: TermKeys.devopsDocker,
    title: LocS(en: 'Docker', ar: 'Docker (دوكر)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A platform designed to help developers build, share, and run applications in containers. It packages software into standardized units.',
        ),
      ],
      ar: [
        StrContent(
          'منصة مصممة لمساعدة المطورين على بناء ومشاركة وتشغيل التطبيقات في حاويات. تقوم بتغليف البرمجيات في وحدات قياسية.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Solves the "it works on my machine" problem by bundling the app with all its dependencies (libraries, runtime, OS settings).',
        ),
      ],
      ar: [
        StrContent(
          'يحل مشكلة "إنه يعمل على جهازي" عن طريق تجميع التطبيق مع جميع تبعياته (المكتبات، وقت التشغيل، إعدادات نظام التشغيل).',
        ),
      ],
    ),
    type: .tool,
    category: .devOps,
    relatedTerms: [TermKeys.devopsContainerization, TermKeys.cloudComputing],
    tags: ['container', 'deployment', 'virtualization'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.devopsContainerization: ProgrammingTerm(
    id: TermKeys.devopsContainerization,
    title: LocS(en: 'Containerization', ar: 'التحوية (Containerization)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A form of operating system virtualization where applications run in isolated user spaces called containers, sharing the same OS kernel.',
        ),
      ],
      ar: [
        StrContent(
          'شكل من أشكال محاكاة نظام التشغيل الافتراضية حيث تعمل التطبيقات في مساحات مستخدم معزولة تسمى حاويات، وتتشارك نفس نواة نظام التشغيل.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Lighter than Virtual Machines (VMs) because they don\'t need a full OS for each instance.',
        ),
      ],
      ar: [
        StrContent(
          'أخف من الأجهزة الافتراضية (VMs) لأنها لا تحتاج إلى نظام تشغيل كامل لكل نسخة.',
        ),
      ],
    ),
    type: .concept,
    category: .devOps,
    relatedTerms: [TermKeys.devopsDocker],
    tags: ['isolation', 'virtualization', 'deploy'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.cloudComputing: ProgrammingTerm(
    id: TermKeys.cloudComputing,
    title: LocS(en: 'Cloud Computing', ar: 'الحوسبة السحابية'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The delivery of computing services—including servers, storage, databases, networking, software, and intelligence—over the Internet ("the cloud").',
        ),
      ],
      ar: [
        StrContent(
          'تقديم خدمات الحوسبة - بما في ذلك الخوادم والتخزين وقواعد البيانات والشبكات والبرمجيات والذكاء - عبر الإنترنت ("السحابة").',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Providers:',
          value: ['AWS (Amazon)', 'GCP (Google)', 'Azure (Microsoft)'],
        ),
        StrContent(
          'Models: IaaS (Infrastructure), PaaS (Platform), SaaS (Software).',
        ),
      ],
      ar: [
        ULContent(
          title: 'المزودون:',
          value: ['AWS (Amazon)', 'GCP (Google)', 'Azure (Microsoft)'],
        ),
        StrContent('النماذج: IaaS (بنية تحتية)، PaaS (منصة)، SaaS (برمجيات).'),
      ],
    ),
    type: .concept,
    category: .cloud,
    relatedTerms: [TermKeys.cloudServerless, TermKeys.devopsDocker],
    tags: ['cloud', 'aws', 'google cloud', 'internet'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.cloudServerless: ProgrammingTerm(
    id: TermKeys.cloudServerless,
    title: LocS(en: 'Serverless', ar: 'بدون خادم (Serverless)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A cloud computing execution model where the cloud provider runs the server, and dynamically manages the allocation of machine resources.',
        ),
      ],
      ar: [
        StrContent(
          'نموذج تنفيذ للحوسبة السحابية حيث يقوم مزود السحابة بتشغيل الخادم، وإدارة تخصيص موارد الآلة ديناميكيًا.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'You just write code (functions) and pay only when they run. Examples: AWS Lambda, Google Cloud Functions, Firebase Functions.',
        ),
      ],
      ar: [
        StrContent(
          'أنت تكتب الكود فقط (دوال) وتدفع فقط عند تشغيلها. أمثلة: AWS Lambda، Google Cloud Functions، Firebase Functions.',
        ),
      ],
    ),
    type: .architecture,
    category: .cloud,
    relatedTerms: [TermKeys.cloudComputing, TermKeys.architectureMicroservices],
    tags: ['functions', 'faas', 'scaling', 'cost-effective'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.architectureMicroservices: ProgrammingTerm(
    id: TermKeys.architectureMicroservices,
    title: LocS(en: 'Microservices', ar: 'الخدمات المصغرة (Microservices)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An architectural style that structures an application as a collection of loosely coupled services, which implement business capabilities.',
        ),
      ],
      ar: [
        StrContent(
          'نمط معماري ينظم التطبيق كمجموعة من الخدمات المرتبطة بشكل فضفاض، والتي تنفذ قدرات الأعمال.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Each service runs in its own process and communicates via lightweight mechanisms (HTTP/API). Opposite of Monolith.',
        ),
      ],
      ar: [
        StrContent(
          'تعمل كل خدمة في عمليتها الخاصة وتتواصل عبر آليات خفيفة الوزن (HTTP/API). عكس الـ Monolith.',
        ),
      ],
    ),
    type: .architecture,
    category: .architecture,
    relatedTerms: [TermKeys.architectureMonolith, TermKeys.restApi],
    tags: ['distributed', 'scalability', 'decoupling'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.architectureMonolith: ProgrammingTerm(
    id: TermKeys.architectureMonolith,
    title: LocS(en: 'Monolith', ar: 'أحادي الكتلة (Monolith)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A traditional unified model for the design of a software program. Everything is composed all in one piece.',
        ),
      ],
      ar: [
        StrContent(
          'نموذج موحد تقليدي لتصميم برنامج حاسوبي. كل شيء يتكون في قطعة واحدة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Easier to develop/test initially, but harder to scale and maintain as it grows large.',
        ),
      ],
      ar: [
        StrContent(
          'أسهل في التطوير/الاختبار في البداية، ولكن يصعب توسيعه وصيانته عندما يكبر.',
        ),
      ],
    ),
    type: .architecture,
    category: .architecture,
    relatedTerms: [TermKeys.architectureMicroservices],
    tags: ['legacy', 'simple', 'single-unit'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.devopsConcept: ProgrammingTerm(
    id: TermKeys.devopsConcept,
    title: LocS(en: 'DevOps', ar: 'DevOps (ديف أوبس)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A set of practices that combines software development (Dev) and IT operations (Ops) to shorten the systems development life cycle.',
        ),
      ],
      ar: [
        StrContent(
          'مجموعة من الممارسات التي تجمع بين تطوير البرمجيات (Dev) وعمليات تكنولوجيا المعلومات (Ops) لتقصير دورة حياة تطوير الأنظمة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Focuses on automation, continuous integration, continuous delivery, and monitoring.',
        ),
      ],
      ar: [
        StrContent(
          'يركز على الأتمتة، والتكامل المستمر، والتسليم المستمر، والمراقبة.',
        ),
      ],
    ),
    type: .methodology,
    category: .devOps,
    relatedTerms: [TermKeys.devopsCiCd, TermKeys.devopsDeployment],
    tags: ['culture', 'automation', 'collaboration'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.devopsCiCd: ProgrammingTerm(
    id: TermKeys.devopsCiCd,
    title: LocS(en: 'CI/CD', ar: 'التكامل المستمر/النشر المستمر'),
    quickOverview: LocV(
      en: [
        StrContent(
          'Continuous Integration (CI) and Continuous Delivery/Deployment (CD). A method to frequently deliver apps to customers by introducing automation into the stages of app development.',
        ),
      ],
      ar: [
        StrContent(
          'التكامل المستمر (CI) والتسليم/النشر المستمر (CD). طريقة لتسليم التطبيقات بشكل متكرر للعملاء عن طريق إدخال الأتمتة في مراحل تطوير التطبيق.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Pipeline steps:',
          value: [
            'Code Commit',
            'Automated Build',
            'Automated Tests (Unit/Integration)',
            'Deploy to Staging',
            'Deploy to Production',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'خطوات خط الأنابيب (Pipeline):',
          value: [
            'إيداع الكود',
            'البناء التلقائي',
            'الاختبارات التلقائية (الوحدة/التكامل)',
            'النشر إلى بيئة التجربة (Staging)',
            'النشر إلى بيئة الإنتاج (Production)',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .devOps,
    relatedTerms: [TermKeys.testing, TermKeys.devopsDeployment],
    tags: ['automation', 'pipeline', 'workflow'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.devopsDeployment: ProgrammingTerm(
    id: TermKeys.devopsDeployment,
    title: LocS(en: 'Deployment', ar: 'النشر (Deployment)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of making a software application available for use. This involves moving code from a development environment to a production environment.',
        ),
      ],
      ar: [
        StrContent(
          'عملية جعل تطبيق برمجي متاحًا للاستخدام. يتضمن ذلك نقل الكود من بيئة التطوير إلى بيئة الإنتاج.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In mobile apps (Flutter), this means uploading .apk or .ipa files to Google Play Store or Apple App Store.',
        ),
      ],
      ar: [
        StrContent(
          'في تطبيقات الهاتف المحمول (Flutter)، يعني هذا رفع ملفات .apk أو .ipa إلى متجر Google Play أو متجر تطبيقات Apple.',
        ),
      ],
    ),
    type: .concept,
    category: .devOps,
    relatedTerms: [TermKeys.environmentProduction, TermKeys.toolReleaseMode],
    tags: ['release', 'publishing', 'app store'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.environmentConcept: ProgrammingTerm(
    id: TermKeys.environmentConcept,
    title: LocS(en: 'Environment', ar: 'البيئة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A specific configuration where software runs. Separating environments ensures that testing and development do not affect real users.',
        ),
      ],
      ar: [
        StrContent(
          'تكوين محدد حيث تعمل البرمجيات. يضمن فصل البيئات أن الاختبار والتطوير لا يؤثران على المستخدمين الحقيقيين.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Common Types:',
          value: [
            'Development (Local machine)',
            'Staging (Testing server mimicking production)',
            'Production (Live for users)',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'الأنواع الشائعة:',
          value: [
            'التطوير (الجهاز المحلي)',
            'التجربة / Staging (خادم اختبار يحاكي الإنتاج)',
            'الإنتاج (مباشر للمستخدمين)',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .devOps,
    relatedTerms: [TermKeys.environmentProduction, TermKeys.environmentStaging],
    tags: ['config', 'setup', 'server'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.environmentProduction: ProgrammingTerm(
    id: TermKeys.environmentProduction,
    title: LocS(en: 'Production', ar: 'بيئة الإنتاج'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The live environment where the application is used by real end-users. Code here must be stable and optimized.',
        ),
      ],
      ar: [
        StrContent(
          'البيئة المباشرة حيث يتم استخدام التطبيق من قبل المستخدمين النهائيين الحقيقيين. يجب أن يكون الكود هنا مستقرًا ومحسنًا.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Often referred to as "Prod" or "Live". Data here is real customer data.',
        ),
      ],
      ar: [
        StrContent(
          'يشار إليها غالبًا باسم "Prod" أو "Live". البيانات هنا هي بيانات العملاء الحقيقية.',
        ),
      ],
    ),
    type: .concept,
    category: .devOps,
    relatedTerms: [TermKeys.environmentStaging, TermKeys.toolReleaseMode],
    tags: ['live', 'real-world', 'stable'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.environmentStaging: ProgrammingTerm(
    id: TermKeys.environmentStaging,
    title: LocS(en: 'Staging', ar: 'بيئة التجربة (Staging)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An environment that mirrors the production environment as closely as possible. It is used for final testing before deployment.',
        ),
      ],
      ar: [
        StrContent(
          'بيئة تعكس بيئة الإنتاج بأكبر قدر ممكن. تستخدم للاختبار النهائي قبل النشر.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Used to catch bugs that might occur due to environment differences (e.g., database latency, server configurations).',
        ),
      ],
      ar: [
        StrContent(
          'تستخدم لاكتشاف الأخطاء التي قد تحدث بسبب اختلافات البيئة (مثل زمن انتقال قاعدة البيانات، تكوينات الخادم).',
        ),
      ],
    ),
    type: .concept,
    category: .devOps,
    relatedTerms: [TermKeys.environmentProduction, TermKeys.testing],
    tags: ['testing', 'pre-prod', 'qa'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.toolDebugMode: ProgrammingTerm(
    id: TermKeys.toolDebugMode,
    title: LocS(en: 'Debug Mode', ar: 'وضع التصحيح'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A compile mode optimizing for development speed and debugging. It includes assertions, detailed error messages, and supports features like Hot Reload.',
        ),
      ],
      ar: [
        StrContent(
          'وضع ترجمة يحسن سرعة التطوير وتصحيح الأخطاء. يتضمن التأكيدات، رسائل الخطأ المفصلة، ويدعم ميزات مثل إعادة التحميل الساخن.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In Flutter: Apps run slower in debug mode (JIT compilation) but allow for debugging breakpoints and inspection.',
        ),
      ],
      ar: [
        StrContent(
          'في Flutter: تعمل التطبيقات بشكل أبطأ في وضع التصحيح (ترجمة JIT) ولكنها تسمح بنقاط توقف التصحيح والفحص.',
        ),
      ],
    ),
    type: .tool,
    category: .mobileDevelopment,
    languages: [.dart, .flutter],
    relatedTerms: [
      TermKeys.toolReleaseMode,
      TermKeys.flutterHotReload,
      TermKeys.assertion,
    ],
    tags: ['debug', 'development', 'jit'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.toolReleaseMode: ProgrammingTerm(
    id: TermKeys.toolReleaseMode,
    title: LocS(en: 'Release Mode', ar: 'وضع الإصدار'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A compile mode optimizing for execution speed and binary size. It removes debugging information and assertions.',
        ),
      ],
      ar: [
        StrContent(
          'وضع ترجمة يحسن سرعة التنفيذ وحجم الملف الثنائي. يزيل معلومات التصحيح والتأكيدات.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In Flutter: Apps are compiled Ahead-of-Time (AOT) to native machine code. Hot Reload is disabled.',
        ),
      ],
      ar: [
        StrContent(
          'في Flutter: يتم تجميع التطبيقات مسبقًا (AOT) إلى كود آلة أصلي. يتم تعطيل إعادة التحميل الساخن.',
        ),
      ],
    ),
    type: .tool,
    category: .mobileDevelopment,
    languages: [.dart, .flutter],
    relatedTerms: [TermKeys.toolDebugMode, TermKeys.compilationAot],
    tags: ['production', 'speed', 'optimization', 'aot'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.uiResponsive: ProgrammingTerm(
    id: TermKeys.uiResponsive,
    title: LocS(en: 'Responsive Design', ar: 'التصميم المستجيب'),
    quickOverview: LocV(
      en: [
        StrContent(
          'An approach to UI design that makes web or app content render well on a variety of devices and window or screen sizes.',
        ),
      ],
      ar: [
        StrContent(
          'نهج لتصميم واجهة المستخدم يجعل محتوى الويب أو التطبيق يُعرض بشكل جيد على مجموعة متنوعة من الأجهزة وأحجام النوافذ أو الشاشات.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In Flutter, this is achieved using widgets like `LayoutBuilder`, `MediaQuery`, `Flex`, and `Expanded` to adapt layouts.',
        ),
      ],
      ar: [
        StrContent(
          'في Flutter، يتحقق ذلك باستخدام ويدجت مثل `LayoutBuilder`، `MediaQuery`، `Flex`، و`Expanded` لتكييف التخطيطات.',
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter, .css],
    relatedTerms: [
      TermKeys.flutterWidgetMediaQuery,
      TermKeys.flutterWidgetLayout,
    ],
    tags: ['ui', 'adaptive', 'mobile', 'tablet', 'desktop'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.flutterCupertino: ProgrammingTerm(
    id: TermKeys.flutterCupertino,
    title: LocS(en: 'Cupertino', ar: 'Cupertino (كوبرتينو)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A set of Flutter widgets that implement the current iOS design language (Apple style), as opposed to Material Design (Android style).',
        ),
      ],
      ar: [
        StrContent(
          'مجموعة من ويدجت Flutter التي تنفذ لغة تصميم iOS الحالية (نمط Apple)، على عكس Material Design (نمط Android).',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Includes widgets like `CupertinoButton`, `CupertinoNavigationBar`, and `CupertinoSwitch` to give apps a native iOS feel.',
        ),
      ],
      ar: [
        StrContent(
          'تتضمن ويدجت مثل `CupertinoButton`، `CupertinoNavigationBar`، و`CupertinoSwitch` لمنح التطبيقات شعور iOS الأصلي.',
        ),
      ],
    ),
    type: .designSystem,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterMaterialDesign, TermKeys.flutterWidget],
    tags: ['ios', 'apple', 'design system', 'ui'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.uiAnimation: ProgrammingTerm(
    id: TermKeys.uiAnimation,
    title: LocS(en: 'Animation', ar: 'الرسوم المتحركة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of creating motion and shape change in the UI. In Flutter, this adds visual cues and improves user experience.',
        ),
      ],
      ar: [
        StrContent(
          'عملية إنشاء الحركة وتغيير الشكل في واجهة المستخدم. في Flutter، يضيف هذا إشارات بصرية ويحسن تجربة المستخدم.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types in Flutter:',
          value: [
            'Implicit Animations (AnimatedContainer, AnimatedOpacity)',
            'Explicit Animations (AnimationController, Tween)',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'الأنواع في Flutter:',
          value: [
            'الرسوم المتحركة الضمنية (AnimatedContainer، AnimatedOpacity)',
            'الرسوم المتحركة الصريحة (AnimationController، Tween)',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter, .css],
    relatedTerms: [TermKeys.flutterWidget],
    tags: ['motion', 'visual', 'ux'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.conceptLifecycle: ProgrammingTerm(
    id: TermKeys.conceptLifecycle,
    title: LocS(en: 'Lifecycle', ar: 'دورة الحياة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The series of states that an object (like a Widget or Controller) goes through from its creation to its destruction.',
        ),
      ],
      ar: [
        StrContent(
          'سلسلة الحالات التي يمر بها الكائن (مثل Widget أو المتحكم) من إنشائه إلى تدميره.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Understanding lifecycle is crucial for initializing data, subscribing to streams, and freeing resources (memory management).',
        ),
      ],
      ar: [
        StrContent(
          'فهم دورة الحياة أمر بالغ الأهمية لتهيئة البيانات، والاشتراك في التدفقات، وتحرير الموارد (إدارة الذاكرة).',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.flutter, .react, .android],
    relatedTerms: [TermKeys.flutterLifecycleMethod, TermKeys.memoryLeak],
    tags: ['state', 'creation', 'destruction'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.flutterLifecycleMethod: ProgrammingTerm(
    id: TermKeys.flutterLifecycleMethod,
    title: LocS(en: 'Lifecycle Methods', ar: 'أساليب دورة الحياة'),
    quickOverview: LocV(
      en: [
        StrContent(
          'Specific methods in a State object that are called at specific points in its lifecycle, allowing you to hook into these events.',
        ),
      ],
      ar: [
        StrContent(
          'أساليب محددة في كائن State يتم استدعاؤها في نقاط معينة من دورة حياته، مما يسمح لك بالربط مع هذه الأحداث.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key Flutter Methods:',
          value: [
            'initState(): Called once when inserted into tree.',
            'didChangeDependencies(): Called when dependencies change.',
            'build(): Called to render UI.',
            'dispose(): Called when removed permanently. Clean up here!',
          ],
        ),
      ],
      ar: [
        ULContent(
          title: 'أساليب Flutter الرئيسية:',
          value: [
            'initState(): يُستدعى مرة واحدة عند الإدراج في الشجرة.',
            'didChangeDependencies(): يُستدعى عند تغير التبعيات.',
            'build(): يُستدعى لعرض واجهة المستخدم.',
            'dispose(): يُستدعى عند الإزالة نهائيًا. نظف هنا!',
          ],
        ),
      ],
    ),
    type: .feature,
    category: .mobileDevelopment,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterStatefulWidget, TermKeys.conceptLifecycle],
    tags: ['init', 'dispose', 'hooks'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.flutterRendering: ProgrammingTerm(
    id: TermKeys.flutterRendering,
    title: LocS(en: 'Rendering', ar: 'العرض (Rendering)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of generating an image from the 2D/3D model (in Flutter\'s case, the Widget Tree).',
        ),
      ],
      ar: [
        StrContent(
          'عملية توليد صورة من النموذج ثنائي/ثلاثي الأبعاد (في حالة Flutter، شجرة الويدجت).',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Flutter Pipeline: Widget Tree -> Element Tree -> RenderObject Tree -> Layer Tree -> GPU.',
        ),
      ],
      ar: [
        StrContent(
          'خط أنابيب Flutter: شجرة الويدجت -> شجرة العناصر -> شجرة كائنات العرض -> شجرة الطبقات -> وحدة معالجة الرسومات.',
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterWidget, TermKeys.buildMethod],
    tags: ['painting', 'drawing', 'pipeline'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.flutterWidgetLayout: ProgrammingTerm(
    id: TermKeys.flutterWidgetLayout,
    title: LocS(en: 'Layout', ar: 'التخطيط'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of determining the size and position of widgets on the screen. In Flutter, "Constraints go down. Sizes go up. Parent sets position."',
        ),
      ],
      ar: [
        StrContent(
          'عملية تحديد حجم وموضع الويدجت على الشاشة. في Flutter، "القيود تنزل للأسفل. الأحجام تصعد للأعلى. الوالد يحدد الموضع."',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Widgets like `Row`, `Column`, and `Stack` are layout widgets designed to arrange their children.',
        ),
      ],
      ar: [
        StrContent(
          'ويدجت مثل `Row`، `Column`، و`Stack` هي ويدجت تخطيط مصممة لترتيب أطفالها.',
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterConstraint, TermKeys.flutterWidgetFlex],
    tags: ['positioning', 'size', 'ui'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.flutterConstraint: ProgrammingTerm(
    id: TermKeys.flutterConstraint,
    title: LocS(en: 'Constraint', ar: 'القيد (Constraint)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A rule describing the minimum and maximum width and height a widget can have. Passed from parent to child.',
        ),
      ],
      ar: [
        StrContent(
          'قاعدة تصف الحد الأدنى والأقصى للعرض والارتفاع الذي يمكن أن يمتلكه الويدجت. تمرر من الوالد إلى الطفل.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'BoxConstraints(minWidth, maxWidth, minHeight, maxHeight). If min==max, the size is "tight".',
        ),
      ],
      ar: [
        StrContent(
          'BoxConstraints(minWidth, maxWidth, minHeight, maxHeight). إذا كان الحد الأدنى == الحد الأقصى، فإن الحجم يكون "محكمًا" (tight).',
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterWidgetLayout],
    tags: ['box constraints', 'sizing', 'layout rule'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.flutterWidgetFlex: ProgrammingTerm(
    id: TermKeys.flutterWidgetFlex,
    title: LocS(en: 'Flex', ar: 'Flex'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A layout widget that displays its children in a one-dimensional array (Row or Column). It allows flexible sizing of children.',
        ),
      ],
      ar: [
        StrContent(
          'ويدجت تخطيط يعرض أطفاله في مصفوفة أحادية البعد (صف أو عمود). يسمح بتحجيم مرن للأطفال.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          '`Row` and `Column` extend `Flex`. They use MainAxisAlignment and CrossAxisAlignment to align children.',
        ),
      ],
      ar: [
        StrContent(
          '`Row` و `Column` يمددان `Flex`. يستخدمان MainAxisAlignment و CrossAxisAlignment لمحاذاة الأطفال.',
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter, .css],
    relatedTerms: [
      TermKeys.flutterWidgetExpanded,
      TermKeys.flutterWidgetLayout,
    ],
    tags: ['row', 'column', 'flexible', 'layout'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.flutterWidgetExpanded: ProgrammingTerm(
    id: TermKeys.flutterWidgetExpanded,
    title: LocS(en: 'Expanded', ar: 'Expanded'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A widget that expands a child of a `Row`, `Column`, or `Flex` so that the child fills the available space.',
        ),
      ],
      ar: [
        StrContent(
          'ويدجت يوسع طفل `Row`، أو `Column`، أو `Flex` بحيث يملأ الطفل المساحة المتاحة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Similar to `Flexible` but with `fit: FlexFit.tight` forced. Use `flex` factor to distribute space proportionally among multiple Expanded widgets.',
        ),
      ],
      ar: [
        StrContent(
          'مشابه لـ `Flexible` لكن مع فرض `fit: FlexFit.tight`. استخدم عامل `flex` لتوزيع المساحة بشكل متناسب بين ويدجت Expanded متعددة.',
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterWidgetFlex],
    tags: ['layout', 'space', 'fill'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.flutterWidgetMediaQuery: ProgrammingTerm(
    id: TermKeys.flutterWidgetMediaQuery,
    title: LocS(en: 'MediaQuery', ar: 'MediaQuery'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A widget that establishes a subtree in which media queries resolve to the given data (e.g., screen size, orientation, text scale factor).',
        ),
      ],
      ar: [
        StrContent(
          'ويدجت ينشئ شجرة فرعية يتم فيها حل استعلامات الوسائط إلى البيانات المعطاة (مثل حجم الشاشة، الاتجاه، عامل تكبير النص).',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Common usage: `MediaQuery.of(context).size` to get screen dimensions for responsive design.',
        ),
      ],
      ar: [
        StrContent(
          'الاستخدام الشائع: `MediaQuery.of(context).size` للحصول على أبعاد الشاشة للتصميم المستجيب.',
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter, .css],
    relatedTerms: [TermKeys.uiResponsive, TermKeys.buildContext],
    tags: ['screen size', 'device info', 'adaptation'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.flutterNavigator: ProgrammingTerm(
    id: TermKeys.flutterNavigator,
    title: LocS(en: 'Navigator', ar: 'المتنقل (Navigator)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A widget that manages a set of child widgets with a stack discipline. It allows you to move between different screens (Routes) in the app.',
        ),
      ],
      ar: [
        StrContent(
          'ويدجت يدير مجموعة من الويدجت الفرعية بنظام المكدس. يسمح لك بالانتقال بين الشاشات المختلفة (المسارات) في التطبيق.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Basic operations: `push` (add screen to top), `pop` (remove top screen). Uses `MaterialPageRoute` for transitions.',
        ),
      ],
      ar: [
        StrContent(
          'العمليات الأساسية: `push` (إضافة شاشة للأعلى)، `pop` (إزالة الشاشة العلوية). يستخدم `MaterialPageRoute` للانتقالات.',
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterRouting, TermKeys.dataStructureStack],
    tags: ['navigation', 'screens', 'pages', 'stack'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.flutterRouting: ProgrammingTerm(
    id: TermKeys.flutterRouting,
    title: LocS(en: 'Routing', ar: 'التوجيه (Routing)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The mechanism of mapping a specific screen (widget) to a specific path or name (e.g., "/home", "/details").',
        ),
      ],
      ar: [
        StrContent(
          'آلية تعيين شاشة معينة (ويدجت) لمسار أو اسم محدد (مثل "/home"، "/details").',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Flutter supports declarative routing (Navigator 2.0 / GoRouter) and imperative routing (Navigator.pushNamed).',
        ),
      ],
      ar: [
        StrContent(
          'يدعم Flutter التوجيه التصريحي (Navigator 2.0 / GoRouter) والتوجيه الإلزامي (Navigator.pushNamed).',
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter, .web],
    relatedTerms: [TermKeys.flutterNavigator, TermKeys.flutterDeepLinking],
    tags: ['url', 'path', 'navigation'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.flutterDeepLinking: ProgrammingTerm(
    id: TermKeys.flutterDeepLinking,
    title: LocS(en: 'Deep Linking', ar: 'الربط العميق (Deep Linking)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The ability to open a specific page or state inside a mobile app directly via a URL from outside the app (e.g., from a website or email).',
        ),
      ],
      ar: [
        StrContent(
          'القدرة على فتح صفحة أو حالة معينة داخل تطبيق جوال مباشرة عبر رابط URL من خارج التطبيق (مثلًا من موقع ويب أو بريد إلكتروني).',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Requires configuring AndroidManifest.xml and Info.plist to handle custom schemes or universal links.',
        ),
      ],
      ar: [
        StrContent(
          'يتطلب تكوين AndroidManifest.xml و Info.plist للتعامل مع المخططات المخصصة أو الروابط العالمية.',
        ),
      ],
    ),
    type: .feature,
    category: .mobileDevelopment,
    languages: [.flutter, .android, .swift],
    relatedTerms: [TermKeys.flutterRouting],
    tags: ['url', 'external-link', 'intent'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.uiTheming: ProgrammingTerm(
    id: TermKeys.uiTheming,
    title: LocS(en: 'Theming', ar: 'التنسيق (Theming)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of defining a consistent look and feel for an application by specifying colors, fonts, and shapes in a central place.',
        ),
      ],
      ar: [
        StrContent(
          'عملية تحديد مظهر وإحساس متسقين للتطبيق من خلال تحديد الألوان والخطوط والأشكال في مكان مركزي.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In Flutter: `ThemeData` passed to `MaterialApp` allows global styling. Access using `Theme.of(context)`.',
        ),
      ],
      ar: [
        StrContent(
          'في Flutter: `ThemeData` الممررة إلى `MaterialApp` تسمح بالتنسيق العالمي. يمكن الوصول إليها باستخدام `Theme.of(context)`.',
        ),
      ],
    ),
    type: .feature,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterMaterialDesign],
    tags: ['style', 'colors', 'fonts', 'dark mode'],
    era: .modern,
    popularityTier: .veryHigh,
  ),
  TermKeys.i18nL10N: ProgrammingTerm(
    id: TermKeys.i18nL10N,
    title: LocS(
      en: 'Internationalization (i18n) & Localization (l10n)',
      ar: 'التدويل (i18n) والتعريب (l10n)',
    ),
    quickOverview: LocV(
      en: [
        StrContent(
          'i18n: Designing software so it can be adapted to various languages/regions without engineering changes. l10n: Adapting it to a specific region (translating text, formatting dates).',
        ),
      ],
      ar: [
        StrContent(
          'i18n: تصميم البرمجيات بحيث يمكن تكييفها مع لغات/مناطق مختلفة دون تغييرات هندسية. l10n: تكييفها لمنطقة معينة (ترجمة النصوص، تنسيق التواريخ).',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Flutter uses `flutter_localizations` package and ARB files to manage translations.',
        ),
      ],
      ar: [
        StrContent(
          'يستخدم Flutter حزمة `flutter_localizations` وملفات ARB لإدارة الترجمات.',
        ),
      ],
    ),
    type: .feature,
    category: .uiUx,
    languages: [.flutter, .dart],
    relatedTerms: [TermKeys.uiResponsive],
    tags: ['translation', 'language', 'global'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.uiAccessibility: ProgrammingTerm(
    id: TermKeys.uiAccessibility,
    title: LocS(en: 'Accessibility (a11y)', ar: 'إمكانية الوصول (a11y)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The design of products, devices, services, or environments for people with disabilities. Examples: Screen readers, high contrast modes.',
        ),
      ],
      ar: [
        StrContent(
          'تصميم المنتجات أو الأجهزة أو الخدمات أو البيئات للأشخاص ذوي الإعاقة. أمثلة: قارئات الشاشة، أوضاع التباين العالي.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Flutter provides `Semantics` widget to annotate the UI for screen readers (TalkBack/VoiceOver).',
        ),
      ],
      ar: [
        StrContent(
          'يوفر Flutter ويدجت `Semantics` لإضافة شروحات لواجهة المستخدم لقارئات الشاشة (TalkBack/VoiceOver).',
        ),
      ],
    ),
    type: .feature,
    category: .uiUx,
    languages: [.flutter, .html],
    relatedTerms: [TermKeys.uiTheming],
    tags: ['inclusive', 'semantics', 'disability'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.performanceOptimization: ProgrammingTerm(
    id: TermKeys.performanceOptimization,
    title: LocS(en: 'Performance Optimization', ar: 'تحسين الأداء'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The process of modifying a system to make it work more efficiently or use fewer resources (CPU, Memory, Battery).',
        ),
      ],
      ar: [
        StrContent(
          'عملية تعديل النظام لجعله يعمل بكفاءة أكبر أو استخدام موارد أقل (وحدة المعالجة المركزية، الذاكرة، البطارية).',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In Flutter: Use `const` constructors, avoid rebuilding widgets unnecessarily, minimize expensive calculations in build().',
        ),
      ],
      ar: [
        StrContent(
          'في Flutter: استخدم منشئات `const`، تجنب إعادة بناء الويدجت بشكل غير ضروري، قلل من الحسابات المكلفة في build().',
        ),
      ],
    ),
    type: .concept,
    category: .performance,
    relatedTerms: [
      TermKeys.buildMethod,
      TermKeys.memoryLeak,
      TermKeys.fundamentalsBigO,
    ],
    tags: ['speed', 'efficiency', 'best practices'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.performanceLazyLoading: ProgrammingTerm(
    id: TermKeys.performanceLazyLoading,
    title: LocS(en: 'Lazy Loading', ar: 'التحميل الكسول (Lazy Loading)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A design pattern that defers the initialization of an object or the loading of a resource until the point at which it is needed.',
        ),
      ],
      ar: [
        StrContent(
          'نمط تصميم يؤجل تهيئة كائن أو تحميل مورد حتى النقطة التي تكون هناك حاجة إليه فيها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Example: `ListView.builder` in Flutter creates widgets only when they scroll into view, saving memory.',
        ),
      ],
      ar: [
        StrContent(
          'مثال: `ListView.builder` في Flutter ينشئ الويدجت فقط عندما تظهر في العرض أثناء التمرير، مما يوفر الذاكرة.',
        ),
      ],
    ),
    type: .pattern,
    category: .performance,
    languages: [.dart, .flutter, .javascript],
    relatedTerms: [TermKeys.performanceOptimization],
    tags: ['efficiency', 'memory', 'defer'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.compilationAot: ProgrammingTerm(
    id: TermKeys.compilationAot,
    title: LocS(en: 'AOT Compilation', ar: 'ترجمة AOT (مسبقة)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'Ahead-Of-Time compilation. Code is compiled into native machine code before execution (at build time).',
        ),
      ],
      ar: [
        StrContent(
          'الترجمة المسبقة (Ahead-Of-Time). يتم ترجمة الكود إلى كود آلة أصلي قبل التنفيذ (في وقت البناء).',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Used by Flutter in Release mode. Results in faster startup and execution but no Hot Reload.',
        ),
      ],
      ar: [
        StrContent(
          'يستخدمه Flutter في وضع الإصدار (Release mode). ينتج عنه بدء تشغيل وتنفيذ أسرع ولكن بدون إعادة تحميل ساخن.',
        ),
      ],
    ),
    type: .concept,
    category: .compilerInternals,
    languages: [.dart, .c, .cpp],
    relatedTerms: [TermKeys.compilationJit, TermKeys.toolReleaseMode],
    tags: ['compiler', 'native', 'performance'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.compilationJit: ProgrammingTerm(
    id: TermKeys.compilationJit,
    title: LocS(en: 'JIT Compilation', ar: 'ترجمة JIT (آنية)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'Just-In-Time compilation. Code is compiled during execution (at runtime).',
        ),
      ],
      ar: [
        StrContent(
          'الترجمة الآنية (Just-In-Time). يتم ترجمة الكود أثناء التنفيذ (في وقت التشغيل).',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Used by Flutter in Debug mode. Enables fast development cycles and Hot Reload, but app performance is slower.',
        ),
      ],
      ar: [
        StrContent(
          'يستخدمه Flutter في وضع التصحيح (Debug mode). يمكن دورات تطوير سريعة وإعادة تحميل ساخن، ولكن أداء التطبيق يكون أبطأ.',
        ),
      ],
    ),
    type: .concept,
    category: .compilerInternals,
    languages: [.dart, .java, .javascript],
    relatedTerms: [TermKeys.compilationAot, TermKeys.toolDebugMode],
    tags: ['compiler', 'runtime', 'development'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.conceptTreeShaking: ProgrammingTerm(
    id: TermKeys.conceptTreeShaking,
    title: LocS(en: 'Tree Shaking', ar: 'هز الشجرة (Tree Shaking)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A dead code elimination technique used by compilers (like Dart\'s) to remove unused code from the final executable, reducing app size.',
        ),
      ],
      ar: [
        StrContent(
          'تقنية لإزالة الكود الميت يستخدمها المترجمون (مثل Dart) لحذف الكود غير المستخدم من الملف القابل للتنفيذ النهائي، مما يقلل من حجم التطبيق.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'It "shakes" the dependency tree so that dead leaves (unused functions/classes) fall off. Essential for Flutter web and mobile builds.',
        ),
      ],
      ar: [
        StrContent(
          'تقوم "بهز" شجرة التبعية بحيث تسقط الأوراق الميتة (الدوال/الفئات غير المستخدمة). ضروري لبناء تطبيقات Flutter للويب والموبايل.',
        ),
      ],
    ),
    type: .concept,
    category: .compilerInternals,
    languages: [.dart, .javascript],
    relatedTerms: [TermKeys.compilationAot, TermKeys.toolReleaseMode],
    tags: ['optimization', 'build size', 'dead code'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.conceptObfuscation: ProgrammingTerm(
    id: TermKeys.conceptObfuscation,
    title: LocS(en: 'Obfuscation', ar: 'التعمية (Obfuscation)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The practice of making source code or machine code difficult for humans to understand to protect intellectual property and prevent reverse engineering.',
        ),
      ],
      ar: [
        StrContent(
          'ممارسة جعل الكود المصدري أو كود الآلة صعب الفهم للبشر لحماية الملكية الفكرية ومنع الهندسة العكسية.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In Flutter: Renames classes, methods, and variables to random characters in the release build. Reduces size and increases security.',
        ),
        CodeContent(
          'flutter build apk --obfuscate --split-debug-info=/<path>',
          codeLanguage: .bash,
        ),
      ],
      ar: [
        StrContent(
          'في Flutter: تعيد تسمية الفئات، والأساليب، والمتغيرات إلى أحرف عشوائية في إصدار الإطلاق. يقلل الحجم ويزيد الأمان.',
        ),
        CodeContent(
          'flutter build apk --obfuscate --split-debug-info=/<path>',
          codeLanguage: .bash,
        ),
      ],
    ),
    type: .concept,
    category: .security,
    relatedTerms: [TermKeys.securityEncryption, TermKeys.toolReleaseMode],
    tags: ['security', 'protection', 'reverse engineering'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.dartGenerics: ProgrammingTerm(
    id: TermKeys.dartGenerics,
    title: LocS(en: 'Generics', ar: 'الأنواع العامة (Generics)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A feature that allows you to write flexible, reusable code capable of working with any data type while maintaining type safety.',
        ),
      ],
      ar: [
        StrContent(
          'ميزة تسمح لك بكتابة كود مرن وقابل لإعادة الاستخدام قادر على العمل مع أي نوع بيانات مع الحفاظ على أمان النوع.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Defined using angle brackets `<T>`. Used extensively in Collections (List<String>).',
        ),
        CodeContent(
          'class Box<T> {\n'
          '  T value;\n'
          '  Box(this.value);\n'
          '}\n'
          '\n'
          'var box1 = Box<int>(10);\n'
          'var box2 = Box<String>("Hello");',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent(
          'تعرف باستخدام الأقواس الزاوية `<T>`. تستخدم بكثرة في المجموعات (List<String>).',
        ),
        CodeContent(
          'class Box<T> {\n'
          '  T value;\n'
          '  Box(this.value);\n'
          '}\n'
          '\n'
          'var box1 = Box<int>(10);\n'
          'var box2 = Box<String>("Hello");',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .feature,
    category: .fundamentals,
    languages: [.dart, .java, .csharp, .typescript],
    relatedTerms: [TermKeys.staticTyping, TermKeys.fundamentalsDataType],
    tags: ['types', 'reusability', 'safety'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.dartExtensions: ProgrammingTerm(
    id: TermKeys.dartExtensions,
    title: LocS(en: 'Extension Methods', ar: 'طرق التمديد (Extension Methods)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A Dart feature that allows you to add new functionality (methods) to existing libraries or classes without modifying them or subclassing.',
        ),
      ],
      ar: [
        StrContent(
          'ميزة في Dart تسمح لك بإضافة وظائف جديدة (أساليب) إلى المكتبات أو الفئات الموجودة دون تعديلها أو إنشاء فئات فرعية منها.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('Example: Adding a method to the built-in String class.'),
        CodeContent(
          'extension StringParsing on String {\n'
          '  int parseInt() {\n'
          '    return int.parse(this);\n'
          '  }\n'
          '}\n'
          '\n'
          '// Usage\n'
          'print("42".parseInt());',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent('مثال: إضافة أسلوب إلى فئة String المدمجة.'),
        CodeContent(
          'extension StringParsing on String {\n'
          '  int parseInt() {\n'
          '    return int.parse(this);\n'
          '  }\n'
          '}\n'
          '\n'
          '// الاستخدام\n'
          'print("42".parseInt());',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .feature,
    category: .fundamentals,
    languages: [.dart, .kotlin, .csharp, .swift],
    relatedTerms: [TermKeys.oopInheritance],
    tags: ['extensions', 'utility', 'sugar'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.dartRecords: ProgrammingTerm(
    id: TermKeys.dartRecords,
    title: LocS(en: 'Records', ar: 'السجلات (Records)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A feature introduced in Dart 3 that lets you bundle multiple values into a single object. Records are immutable and type-safe.',
        ),
      ],
      ar: [
        StrContent(
          'ميزة تم تقديمها في Dart 3 تسمح لك تجميع قيم متعددة في كائن واحد. السجلات غير قابلة للتغيير وآمنة النوع.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'More lightweight than creating a Class for simple data holding.',
        ),
        CodeContent(
          '// Define a record\n'
          'var record = (\'first\', a: 2, b: true, \'last\');\n'
          '\n'
          '// Access fields\n'
          'print(record.\$1); // first\n'
          'print(record.a);  // 2\n'
          '\n'
          '// Return multiple values from function\n'
          '(double, double) getLocation() {\n'
          '  return (12.34, 56.78);\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent('أخف وزناً من إنشاء فئة (Class) لحفظ البيانات البسيطة.'),
        CodeContent(
          '// تعريف سجل\n'
          'var record = (\'first\', a: 2, b: true, \'last\');\n'
          '\n'
          '// الوصول للحقول\n'
          'print(record.\$1); // first\n'
          'print(record.a);  // 2\n'
          '\n'
          '// إرجاع قيم متعددة من دالة\n'
          '(double, double) getLocation() {\n'
          '  return (12.34, 56.78);\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .feature,
    category: .fundamentals,
    languages: [.dart],
    relatedTerms: [TermKeys.fundamentalsDataType, TermKeys.immutable],
    tags: ['records', 'tuples', 'dart3'],
    era: .modern,
    popularityTier: .high,
    introducedYear: 2023,
  ),
  TermKeys.dartPatterns: ProgrammingTerm(
    id: TermKeys.dartPatterns,
    title: LocS(en: 'Patterns', ar: 'الأنماط (Patterns)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A syntactic category in Dart 3 that represents the "shape" of a set of values, used for matching and destructuring data.',
        ),
      ],
      ar: [
        StrContent(
          'فئة نحوية في Dart 3 تمثل "شكل" مجموعة من القيم، تستخدم لمطابقة وتفكيك البيانات.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Used in switch statements and variable assignments for cleaner code.',
        ),
        CodeContent(
          'var list = [1, 2, 3];\n'
          'var [a, b, c] = list; // Destructuring\n'
          '\n'
          'switch (list) {\n'
          '  case [1, 2, ...]: // Pattern matching\n'
          '    print(\'Starts with 1, 2\');\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent('تستخدم في جمل switch وتعيينات المتغيرات لكود أنظف.'),
        CodeContent(
          'var list = [1, 2, 3];\n'
          'var [a, b, c] = list; // تفكيك (Destructuring)\n'
          '\n'
          'switch (list) {\n'
          '  case [1, 2, ...]: // مطابقة الأنماط\n'
          '    print(\'يبدأ بـ 1، 2\');\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .feature,
    category: .fundamentals,
    languages: [.dart, .rust, .swift],
    relatedTerms: [TermKeys.dartRecords, TermKeys.fundamentalsConditional],
    tags: ['pattern matching', 'destructuring', 'dart3'],
    era: .modern,
    popularityTier: .high,
    introducedYear: 2023,
  ),
  TermKeys.flutterPlatformChannel: ProgrammingTerm(
    id: TermKeys.flutterPlatformChannel,
    title: LocS(en: 'Platform Channel', ar: 'قناة المنصة (Platform Channel)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A mechanism in Flutter that enables communication between Dart code and platform-specific native code (Kotlin/Java for Android, Swift/Obj-C for iOS).',
        ),
      ],
      ar: [
        StrContent(
          'آلية في Flutter تمكن التواصل بين كود Dart والكود الأصلي الخاص بالمنصة (Kotlin/Java لـ Android، Swift/Obj-C لـ iOS).',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Types:',
          value: [
            'MethodChannel: Invoke methods (Dart -> Native -> Dart)',
            'EventChannel: Stream events (Native -> Dart)',
            'BasicMessageChannel: Send structured data',
          ],
        ),
        StrContent('Example: Getting battery level from Android/iOS.'),
      ],
      ar: [
        ULContent(
          title: 'الأنواع:',
          value: [
            'MethodChannel: استدعاء الأساليب (Dart -> Native -> Dart)',
            'EventChannel: تدفق الأحداث (Native -> Dart)',
            'BasicMessageChannel: إرسال بيانات مهيكلة',
          ],
        ),
        StrContent('مثال: الحصول على مستوى البطارية من Android/iOS.'),
      ],
    ),
    type: .feature,
    category: .nativePlatform,
    languages: [.flutter, .kotlin, .swift],
    relatedTerms: [TermKeys.dartStream, TermKeys.api],
    tags: ['interop', 'native', 'android', 'ios'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.flutterGoldenTest: ProgrammingTerm(
    id: TermKeys.flutterGoldenTest,
    title: LocS(en: 'Golden Test', ar: 'الاختبار الذهبي (Golden Test)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A type of visual regression test in Flutter where a rendered widget is compared pixel-by-pixel against a master reference image (the "golden file").',
        ),
      ],
      ar: [
        StrContent(
          'نوع من اختبار الانحدار البصري في Flutter حيث تتم مقارنة الويدجت المعروض بكسل تلو الآخر مقابل صورة مرجعية رئيسية ("الملف الذهبي").',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Ensures that UI changes don\'t accidentally break the visual appearance of the app.',
        ),
        CodeContent(
          'testWidgets(\'Visual match\', (tester) async {\n'
          '  await tester.pumpWidget(MyApp());\n'
          '  await expectLater(\n'
          '    find.byType(MyApp),\n'
          '    matchesGoldenFile(\'goldens/my_app.png\')\n'
          '  );\n'
          '});',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent(
          'يضمن أن تغييرات واجهة المستخدم لا تكسر المظهر المرئي للتطبيق عن طريق الخطأ.',
        ),
        CodeContent(
          'testWidgets(\'تطابق بصري\', (tester) async {\n'
          '  await tester.pumpWidget(MyApp());\n'
          '  await expectLater(\n'
          '    find.byType(MyApp),\n'
          '    matchesGoldenFile(\'goldens/my_app.png\')\n'
          '  );\n'
          '});',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .testing,
    languages: [.flutter],
    relatedTerms: [TermKeys.widgetTest, TermKeys.testing],
    tags: ['visual testing', 'pixels', 'ui'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.methodologyTdd: ProgrammingTerm(
    id: TermKeys.methodologyTdd,
    title: LocS(
      en: 'TDD (Test Driven Development)',
      ar: 'التطوير القائم على الاختبار (TDD)',
    ),
    quickOverview: LocV(
      en: [
        StrContent(
          'A software development process where you write the test BEFORE writing the actual code. Cycle: Red (fail) -> Green (pass) -> Refactor.',
        ),
      ],
      ar: [
        StrContent(
          'عملية تطوير برمجيات حيث تكتب الاختبار قبل كتابة الكود الفعلي. الدورة: أحمر (فشل) -> أخضر (نجاح) -> إعادة هيكلة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Forces you to think about the interface and requirements first. Results in high test coverage and cleaner code.',
        ),
      ],
      ar: [
        StrContent(
          'يجبرك على التفكير في الواجهة والمتطلبات أولاً. ينتج عنه تغطية اختبار عالية وكود أنظف.',
        ),
      ],
    ),
    type: .methodology,
    category: .testing,
    relatedTerms: [TermKeys.unitTest, TermKeys.conceptRefactoring],
    tags: ['process', 'agile', 'quality'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.methodologyBdd: ProgrammingTerm(
    id: TermKeys.methodologyBdd,
    title: LocS(
      en: 'BDD (Behavior Driven Development)',
      ar: 'التطوير القائم على السلوك (BDD)',
    ),
    quickOverview: LocV(
      en: [
        StrContent(
          'An extension of TDD that uses a natural language (like Gherkin: Given-When-Then) to describe the expected behavior of the system.',
        ),
      ],
      ar: [
        StrContent(
          'امتداد لـ TDD يستخدم لغة طبيعية (مثل Gherkin: Given-When-Then) لوصف السلوك المتوقع للنظام.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Encourages collaboration between developers, QA, and business stakeholders.',
        ),
        CodeContent(
          'Feature: Login\n'
          '  Scenario: Successful Login\n'
          '    Given I am on the login screen\n'
          '    When I enter valid credentials\n'
          '    Then I should be redirected home',
          codeLanguage: .text,
        ),
      ],
      ar: [
        StrContent(
          'يشجع التعاون بين المطورين، وضمان الجودة، وأصحاب المصلحة التجاريين.',
        ),
        CodeContent(
          'Feature: Login\n'
          '  Scenario: Successful Login\n'
          '    Given I am on the login screen\n'
          '    When I enter valid credentials\n'
          '    Then I should be redirected home',
          codeLanguage: .text,
        ),
      ],
    ),
    type: .methodology,
    category: .testing,
    relatedTerms: [TermKeys.methodologyTdd, TermKeys.integrationTest],
    tags: ['gherkin', 'collaboration', 'specs'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.netGraphql: ProgrammingTerm(
    id: TermKeys.netGraphql,
    title: LocS(en: 'GraphQL', ar: 'GraphQL'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A query language for APIs and a runtime for fulfilling those queries. Unlike REST, it allows the client to request exactly the data they need.',
        ),
      ],
      ar: [
        StrContent(
          'لغة استعلام لواجهات برمجة التطبيقات ووقت تشغيل لتنفيذ تلك الاستعلامات. على عكس REST، يسمح للعميل بطلب البيانات التي يحتاجها بالضبط.',
        ),
      ],
    ),
    details: LocV(
      en: [
        ULContent(
          title: 'Key features:',
          value: [
            'Single Endpoint (usually /graphql)',
            'No Over-fetching (getting too much data)',
            'No Under-fetching (getting too little data)',
            'Strongly typed schema',
          ],
        ),
        CodeContent(
          'query {\n'
          '  user(id: "1") {\n'
          '    name\n'
          '    email\n'
          '  }\n'
          '}',
          codeLanguage: .text,
        ),
      ],
      ar: [
        ULContent(
          title: 'الميزات الرئيسية:',
          value: [
            'نقطة نهاية واحدة (عادة /graphql)',
            'لا جلب زائد (الحصول على بيانات كثيرة جدًا)',
            'لا جلب ناقص (الحصول على بيانات قليلة جدًا)',
            'مخطط قوي النوع (Strongly typed)',
          ],
        ),
        CodeContent(
          'query {\n'
          '  user(id: "1") {\n'
          '    name\n'
          '    email\n'
          '  }\n'
          '}',
          codeLanguage: .text,
        ),
      ],
    ),
    type: .protocol,
    category: .networking,
    relatedTerms: [TermKeys.restApi, TermKeys.json],
    tags: ['api', 'query', 'facebook', 'modern'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.netGrpc: ProgrammingTerm(
    id: TermKeys.netGrpc,
    title: LocS(en: 'gRPC', ar: 'gRPC'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A high-performance Remote Procedure Call (RPC) framework developed by Google. It uses Protocol Buffers (binary) instead of JSON.',
        ),
      ],
      ar: [
        StrContent(
          'إطار عمل عالي الأداء لاستدعاء الإجراءات عن بعد (RPC) طورته Google. يستخدم Protocol Buffers (ثنائي) بدلاً من JSON.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Faster and lighter than REST/JSON. Ideal for microservices and mobile-backend communication where bandwidth is limited.',
        ),
      ],
      ar: [
        StrContent(
          'أسرع وأخف من REST/JSON. مثالي للخدمات المصغرة واتصالات الموبايل بالخلفية حيث يكون النطاق الترددي محدودًا.',
        ),
      ],
    ),
    type: .protocol,
    category: .networking,
    relatedTerms: [TermKeys.restApi, TermKeys.serialization],
    tags: ['rpc', 'protobuf', 'performance', 'google'],
    era: .modern,
    popularityTier: .medium,
  ),
  TermKeys.securitySslPinning: ProgrammingTerm(
    id: TermKeys.securitySslPinning,
    title: LocS(en: 'SSL Pinning', ar: 'تثبيت SSL (SSL Pinning)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A security measure where the app verifies the server\'s certificate against a known copy (pin) to prevent Man-in-the-Middle (MITM) attacks.',
        ),
      ],
      ar: [
        StrContent(
          'تدبير أمني حيث يتحقق التطبيق من شهادة الخادم مقابل نسخة معروفة (الدبوس) لمنع هجمات الوسيط (MITM).',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Ensures the app is talking to *your* server, not an interceptor. If the certificate changes on the server, the app must be updated.',
        ),
      ],
      ar: [
        StrContent(
          'يضمن أن التطبيق يتحدث إلى *خادمك*، وليس معترضًا. إذا تغيرت الشهادة على الخادم، يجب تحديث التطبيق.',
        ),
      ],
    ),
    type: .concept,
    category: .security,
    relatedTerms: ['https', TermKeys.securityEncryption],
    tags: ['security', 'mitm', 'certificate'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.conceptCodeSplitting: ProgrammingTerm(
    id: TermKeys.conceptCodeSplitting,
    title: LocS(en: 'Code Splitting', ar: 'تقسيم الكود (Code Splitting)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'The practice of splitting code into smaller chunks which can then be loaded on demand or in parallel, rather than loading one massive bundle at start.',
        ),
      ],
      ar: [
        StrContent(
          'ممارسة تقسيم الكود إلى أجزاء أصغر يمكن تحميلها عند الطلب أو بشكل متوازٍ، بدلاً من تحميل حزمة ضخمة واحدة عند البدء.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In Flutter Web, this happens automatically with deferred imports (`import ... deferred as ...`), speeding up initial load times.',
        ),
      ],
      ar: [
        StrContent(
          'في Flutter Web، يحدث هذا تلقائيًا مع الواردات المؤجلة (`import ... deferred as ...`)، مما يسرع أوقات التحميل الأولية.',
        ),
      ],
    ),
    type: .concept,
    category: .performance,
    relatedTerms: [TermKeys.performanceLazyLoading],
    tags: ['web', 'performance', 'loading'],
    era: .modern,
    popularityTier: .high,
  ),
  TermKeys.toolFormatter: ProgrammingTerm(
    id: TermKeys.toolFormatter,
    title: LocS(en: 'Formatter', ar: 'المنسق (Formatter)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A tool that automatically modifies source code to follow a specific style guide (indentation, spacing, line breaks) without changing its logic.',
        ),
      ],
      ar: [
        StrContent(
          'أداة تقوم تلقائيًا بتعديل الكود المصدري لاتباع دليل نمط معين (المسافة البادئة، التباعد، فواصل الأسطر) دون تغيير منطقه.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In Dart: `dart format .` ensures all code looks consistent, ending debates about style in code reviews.',
        ),
      ],
      ar: [
        StrContent(
          'في Dart: `dart format .` يضمن أن يبدو كل الكود متسقًا، مما ينهي النقاشات حول النمط في مراجعات الكود.',
        ),
      ],
    ),
    type: .tool,
    category: .devOps,
    relatedTerms: [TermKeys.toolLint, TermKeys.conceptRefactoring],
    tags: ['style', 'clean code', 'automation'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.dbMigration: ProgrammingTerm(
    id: TermKeys.dbMigration,
    title: LocS(en: 'Migration', ar: 'التهجير (Migration)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A way to manage changes to a database schema over time. It allows you to evolve your database structure without losing data.',
        ),
      ],
      ar: [
        StrContent(
          'طريقة لإدارة التغييرات على مخطط قاعدة البيانات بمرور الوقت. يسمح لك بتطوير هيكل قاعدة البيانات الخاصة بك دون فقدان البيانات.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Like version control for databases. Example: Adding a "phone_number" column to an existing "users" table.',
        ),
      ],
      ar: [
        StrContent(
          'مثل التحكم في الإصدار لقواعد البيانات. مثال: إضافة عمود "رقم الهاتف" إلى جدول "المستخدمين" الموجود.',
        ),
      ],
    ),
    type: .concept,
    category: .databases,
    relatedTerms: [TermKeys.dbDatabase, TermKeys.dbSql],
    tags: ['schema', 'versioning', 'database'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.dbIndex: ProgrammingTerm(
    id: TermKeys.dbIndex,
    title: LocS(en: 'Index', ar: 'الفهرس (Index)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A data structure used to quickly locate and access the data in a database table. It speeds up reads but slows down writes.',
        ),
      ],
      ar: [
        StrContent(
          'هيكل بيانات يستخدم لتحديد موقع البيانات والوصول إليها بسرعة في جدول قاعدة البيانات. يسرع القراءة ولكنه يبطئ الكتابة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Think of it like the index at the back of a book. Without it, you have to scan every page (full table scan) to find what you want.',
        ),
      ],
      ar: [
        StrContent(
          'فكر فيه مثل الفهرس في الجزء الخلفي من الكتاب. بدونه، عليك مسح كل صفحة (مسح كامل للجدول) للعثور على ما تريد.',
        ),
      ],
    ),
    type: .dataStructure,
    category: .databases,
    relatedTerms: [TermKeys.dbDatabase, TermKeys.fundamentalsBigO],
    tags: ['performance', 'search', 'optimization'],
    era: .classic,
    popularityTier: .veryHigh,
  ),
  TermKeys.testingStub: ProgrammingTerm(
    id: TermKeys.testingStub,
    title: LocS(en: 'Stub', ar: 'Stub (كعب/بديل)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A simple fake object used in testing that provides canned answers to calls made during the test, usually not responding to anything outside what\'s programmed.',
        ),
      ],
      ar: [
        StrContent(
          'كائن مزيف بسيط يستخدم في الاختبار يوفر إجابات جاهزة للاستدعاءات التي تتم أثناء الاختبار، وعادة لا يستجيب لأي شيء خارج ما هو مبرمج.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'Difference from Mock: Stubs provide state verification (return specific data), Mocks provide behavior verification (check if method was called).',
        ),
      ],
      ar: [
        StrContent(
          'الفرق عن Mock: توفر Stubs التحقق من الحالة (إرجاع بيانات محددة)، وتوفر Mocks التحقق من السلوك (التحقق مما إذا تم استدعاء الأسلوب).',
        ),
      ],
    ),
    type: .concept,
    category: .testing,
    relatedTerms: [TermKeys.mock, TermKeys.unitTest],
    tags: ['testing', 'fake', 'isolation'],
    era: .classic,
    popularityTier: .medium,
  ),
  TermKeys.conceptModule: ProgrammingTerm(
    id: TermKeys.conceptModule,
    title: LocS(en: 'Module', ar: 'الوحدة (Module)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A distinct part of a computer program that can be compiled and run separately or used within a larger system. Encapsulates related code.',
        ),
      ],
      ar: [
        StrContent(
          'جزء متميز من برنامج كمبيوتر يمكن ترجمته وتشغيله بشكل منفصل أو استخدامه داخل نظام أكبر. يغلف الكود ذي الصلة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent(
          'In Dart, every file is technically a library/module. Promotes separation of concerns.',
        ),
      ],
      ar: [
        StrContent(
          'في Dart، كل ملف هو من الناحية الفنية مكتبة/وحدة. يعزز فصل الاهتمامات.',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    relatedTerms: [TermKeys.package, TermKeys.library],
    tags: ['encapsulation', 'structure', 'architecture'],
    era: .classic,
    popularityTier: .high,
  ),
  TermKeys.conceptNamespace: ProgrammingTerm(
    id: TermKeys.conceptNamespace,
    title: LocS(en: 'Namespace', ar: 'مساحة الاسم (Namespace)'),
    quickOverview: LocV(
      en: [
        StrContent(
          'A container that allows you to group identifiers (names of classes, variables) to prevent name collisions when using multiple libraries.',
        ),
      ],
      ar: [
        StrContent(
          'حاوية تسمح لك بتجميع المعرفات (أسماء الفئات، المتغيرات) لمنع تصادم الأسماء عند استخدام مكتبات متعددة.',
        ),
      ],
    ),
    details: LocV(
      en: [
        StrContent('Dart uses `as` keyword for namespacing imports.'),
        CodeContent(
          "import 'package:http/http.dart' as http;\n"
          "// Now we use http.get() instead of just get()",
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StrContent(
          'يستخدم Dart الكلمة المفتاحية `as` لاستيراد مساحات الأسماء.',
        ),
        CodeContent(
          "import 'package:http/http.dart' as http;\n"
          "// الآن نستخدم http.get() بدلاً من مجرد get()",
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    relatedTerms: [TermKeys.importExport, TermKeys.library],
    tags: ['naming', 'collisions', 'organization'],
    era: .classic,
    popularityTier: .high,
  ),
};
