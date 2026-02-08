/// Repository for interview questions data.
library;

import 'package:tuts/core/models/interview_question.dart';

import 'enums/difficulty_level.dart';
import 'models/question_answer.dart';

/// Repository that provides interview questions
class InterviewQuestionsRepository {
  static List<InterviewQuestion>? _cachedQuestions;

  /// Get all questions
  static List<InterviewQuestion> getQuestions() {
    _cachedQuestions ??= _buildQuestions();
    return _cachedQuestions!;
  }

  /// Search questions by query
  static List<InterviewQuestion> search(String query, String languageCode) {
    if (query.isEmpty) return getQuestions();
    final lowerQuery = query.toLowerCase();
    return getQuestions().where((q) {
      final content = q.getLocalizedContent(languageCode);
      return content.question.toLowerCase().contains(lowerQuery) ||
          content.answer.toString().toLowerCase().contains(lowerQuery) ||
          q.tags.any((t) => t.toLowerCase().contains(lowerQuery));
    }).toList();
  }

  /// Get questions by difficulty
  static List<InterviewQuestion> getByDifficulty(DifficultyLevel level) {
    return getQuestions().where((q) => q.difficulty == level).toList();
  }

  /// Build questions from data
  static List<InterviewQuestion> _buildQuestions() {
    return questionsData;
  }
}

const List<InterviewQuestion> questionsData = [
  InterviewQuestion(
    id: "FLT-001",
    difficulty: .basic,
    category: "basic",
    type: "theoretical",
    tags: ["widgets", "dartBasics"],
    contentEn: QuestionContent(
      question:
          "What is Flutter and how does it differ from other mobile development frameworks?",
      answer: [
        QuestionAnswerString(
          "Flutter is Google's open-source UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.",
        ),
        QuestionAnswerOrderedList(
          title: "Key differences:",
          value: [
            "Uses Dart programming language",
            "Provides its own rendering engine (Skia/Impeller)",
            "Widgets are not wrappers around native components",
            "Hot reload for faster development",
            "Single codebase for multiple platforms",
            "Direct compilation to native ARM code for better performance.",
          ],
        ),
      ],
      notes: [
        "Flutter's rendering approach gives consistent UI across platforms but requires downloading the rendering engine with the app.",
      ],
      bestUse:
          "Cross-platform apps requiring consistent UI/UX, high-performance apps, apps with complex custom UI",
    ),
    contentAr: QuestionContent(
      question:
          "ما هو Flutter وكيف يختلف عن أطر تطوير التطبيقات المحمولة الأخرى؟",
      answer: [
        QuestionAnswerString(
          "Flutter هو مجموعة أدوات واجهة المستخدم مفتوحة المصدر من Google لبناء تطبيقات مترجمة محليًا للهاتف المحمول والويب وسطح المكتب من قاعدة كود واحدة.",
        ),
        QuestionAnswerOrderedList(
          title: "الاختلافات الرئيسية:",
          value: [
            "يستخدم لغة البرمجة Dart",
            "يوفر محرك العرض الخاص به (Skia/Impeller)",
            "الويدجتات ليست أغلفة حول المكونات الأصلية",
            "إعادة التحميل السريع لتطوير أسرع",
            "قاعدة كود واحدة لمنصات متعددة",
            "الإختبار المباشر إلى كود ARM الأصلي لأداء أفضل.",
          ],
        ),
      ],
      notes: [
        "نهج العرض في Flutter يوفر واجهة مستخدم متسقة عبر المنصات ولكنه يتطلب تنزيل محرك العرض مع التطبيق.",
      ],
      bestUse:
          "التطبيقات متعددة المنصات التي تتطلب واجهة مستخدم/تجربة مستخدم متسقة، التطبيقات عالية الأداء، التطبيقات ذات واجهة المستخدم المخصصة المعقدة",
    ),
    pros: [
      "Fast development with hot reload",
      "Single codebase for multiple platforms",
      "Excellent performance",
      "Rich widget library",
      "Strong community support",
    ],
    cons: [
      "Larger app size due to engine inclusion",
      "Relatively newer compared to native development",
      "Limited third-party libraries compared to native",
    ],
  ),
  InterviewQuestion(
    id: "FLT-002",
    difficulty: .basic,
    category: "basic",
    type: "theoretical",
    tags: ["widgets", "statelessWidget", "statefulWidget"],
    contentEn: QuestionContent(
      question:
          "What is the difference between StatelessWidget and StatefulWidget?",
      answer: [
        QuestionAnswerString(
          "StatelessWidget: Immutable widget that doesn't maintain any state. It's built once and doesn't rebuild unless its parent rebuilds. Use for static content. StatefulWidget: Mutable widget that maintains state. It can rebuild itself when setState() is called or when dependencies change. Has a State object that persists between rebuilds. Use when widget needs to change based on user interaction or data changes.",
        ),
      ],
      example:
          "class MyText extends StatelessWidget { /* static */ }\nclass Counter extends StatefulWidget { /* has state */ }",
      notes: [
        "Choose StatelessWidget by default for better performance; only use StatefulWidget when state is needed.",
      ],
      bestUse:
          "StatelessWidget for displaying static data; StatefulWidget for interactive UI, forms, animations",
    ),
    contentAr: QuestionContent(
      question: "ما الفرق بين StatelessWidget و StatefulWidget؟",
      answer: [
        QuestionAnswerString(
          "StatelessWidget: ويدجت غير قابل للتغيير لا يحتفظ بأي حالة. يتم بناؤه مرة واحدة ولا يعاد بناؤه إلا إذا أعاد الأصل بناءه. استخدمه للمحتوى الثابت. StatefulWidget: ويدجت قابل للتغيير يحتفظ بالحالة. يمكنه إعادة بناء نفسه عند استدعاء ()setState أو عند تغيير التبعيات. له كائن State يستمر بين عمليات إعادة البناء. استخدمه عندما يحتاج الويدجت إلى التغيير بناءً على تفاعل المستخدم أو تغييرات البيانات.",
        ),
      ],
      example:
          "class MyText extends StatelessWidget { /* ثابت */ }\nclass Counter extends StatefulWidget { /* له حالة */ }",
      notes: [
        "اختر StatelessWidget افتراضيًا لأداء أفضل؛ استخدم StatefulWidget فقط عندما تكون الحالة مطلوبة.",
      ],
      bestUse:
          "StatelessWidget لعرض البيانات الثابتة؛ StatefulWidget لواجهة المستخدم التفاعلية والنماذج والرسوم المتحركة",
    ),
    pros: [
      "StatelessWidget: Better performance, simpler",
      "StatefulWidget: Dynamic content, user interaction support",
    ],
    cons: [
      "StatelessWidget: Cannot handle dynamic changes",
      "StatefulWidget: More complex, potential performance overhead if misused",
    ],
  ),
  InterviewQuestion(
    id: "FLT-003",
    difficulty: .intermediate,
    category: "basic",
    type: "theoretical",
    tags: ["buildContext", "widgets"],
    contentEn: QuestionContent(
      question: "What is BuildContext and why is it important?",
      answer: [
        QuestionAnswerString(
          "BuildContext is a handle to the location of a widget in the widget tree. It represents the relationship between a widget and its ancestors. Important for: 1) Accessing inherited widgets (Theme.of(context)), 2) Navigation, 3) Showing dialogs/snackbars, 4) MediaQuery for screen dimensions, 5) Finding ancestor/descendant widgets. Each widget has its own BuildContext passed to the build() method.",
        ),
      ],
      example:
          "Theme.of(context).primaryColor\nNavigator.of(context).push(...)\nMediaQuery.of(context).size",
      notes: [
        "Context is only valid during the build phase; don't store it for later async use without proper handling.",
      ],
      bestUse:
          "Accessing theme data, navigation, inherited widgets, responsive design",
    ),
    contentAr: QuestionContent(
      question: "ما هو BuildContext ولماذا هو مهم؟",
      answer: [
        QuestionAnswerString(
          "BuildContext هو مؤشر لموقع الويدجت في شجرة الويدجت. يمثل العلاقة بين الويدجت وأسلافه. مهم لـ: 1) الوصول إلى الويدجتات الموروثة (Theme.of(context))، 2) التنقل، 3) عرض الحوارات/الإشعارات، 4) MediaQuery لأبعاد الشاشة، 5) العثور على الويدجتات الأسلاف/الأحفاد. كل ويدجت له BuildContext الخاص به يتم تمريره إلى طريقة ()build.",
        ),
      ],
      example:
          "Theme.of(context).primaryColor\nNavigator.of(context).push(...)\nMediaQuery.of(context).size",
      notes: [
        "السياق صالح فقط أثناء مرحلة البناء؛ لا تخزنه للاستخدام غير المتزامن اللاحق بدون معالجة مناسبة.",
      ],
      bestUse:
          "الوصول إلى بيانات السمة، التنقل، الويدجتات الموروثة، التصميم المستجيب",
    ),
  ),
  InterviewQuestion(
    id: "FLT-004",
    difficulty: .basic,
    category: "oop",
    type: "theoretical",
    tags: [
      "dartBasics",
      "encapsulation",
      "inheritance",
      "polymorphism",
      "abstraction",
    ],
    contentEn: QuestionContent(
      question:
          "Explain the four pillars of Object-Oriented Programming with Dart examples.",
      answer: [
        QuestionAnswerString(
          "1) Encapsulation: Bundling data and methods, hiding internal details using private members (underscore prefix). 2) Inheritance: Creating new classes from existing ones using 'extends'. 3) Polymorphism: Objects taking multiple forms through method overriding and interfaces. 4) Abstraction: Hiding complex implementation details using abstract classes and interfaces.",
        ),
      ],
      example:
          "// Encapsulation\nclass Account { String _balance; }\n// Inheritance\nclass SavingsAccount extends Account {}\n// Polymorphism\n@override void deposit() {}\n// Abstraction\nabstract class Shape { void draw(); }",
      notes: [
        "Dart supports single inheritance but multiple interface implementation. Use mixins for shared behavior.",
      ],
      bestUse:
          "Encapsulation for data protection, inheritance for code reuse, polymorphism for flexibility, abstraction for clean APIs",
    ),
    contentAr: QuestionContent(
      question: "اشرح الأعمدة الأربعة للبرمجة كائنية التوجه مع أمثلة Dart.",
      answer: [
        QuestionAnswerString(
          "1) التغليف: تجميع البيانات والطرق، إخفاء التفاصيل الداخلية باستخدام الأعضاء الخاصة (بادئة الشرطة السفلية). 2) الوراثة: إنشاء فئات جديدة من الفئات الموجودة باستخدام 'extends'. 3) تعدد الأشكال: الكائنات تتخذ أشكالًا متعددة من خلال تجاوز الطرق والواجهات. 4) التجريد: إخفاء تفاصيل التنفيذ المعقدة باستخدام الفئات والواجهات المجردة.",
        ),
      ],
      example:
          "// التغليف\nclass Account { String _balance; }\n// الوراثة\nclass SavingsAccount extends Account {}\n// تعدد الأشكال\n@override void deposit() {}\n// التجريد\nabstract class Shape { void draw(); }",
      notes: [
        "Dart يدعم الوراثة الفردية ولكن تنفيذ واجهات متعددة. استخدم mixins للسلوك المشترك.",
      ],
      bestUse:
          "التغليف لحماية البيانات، الوراثة لإعادة استخدام الكود، تعدد الأشكال للمرونة، التجريد لواجهات برمجية نظيفة",
    ),
  ),
  InterviewQuestion(
    id: "FLT-005",
    difficulty: .intermediate,
    category: "solid",
    type: "theoretical",
    tags: [
      "singleResponsibility",
      "openClosed",
      "liskovSubstitution",
      "interfaceSegregation",
      "dependencyInversion",
    ],
    contentEn: QuestionContent(
      question: "Explain all five SOLID principles with Flutter/Dart examples.",
      answer: [
        QuestionAnswerString(
          "S - Single Responsibility: A class should have one reason to change. Example: Separate UserRepository from UserValidator. O - Open/Closed: Open for extension, closed for modification. Use abstract classes/interfaces. L - Liskov Substitution: Subclasses should be substitutable for their base classes without breaking functionality. I - Interface Segregation: Don't force classes to implement interfaces they don't use. Create specific interfaces. D - Dependency Inversion: Depend on abstractions, not concretions. Use dependency injection.",
        ),
      ],
      example:
          "// SRP\nclass UserRepository { /* only data access */ }\nclass UserValidator { /* only validation */ }\n// DIP\nclass UserService {\n  final IUserRepository repository;\n  UserService(this.repository); // inject abstraction\n}",
      notes: [
        "SOLID principles improve code maintainability, testability, and scalability. Essential for large Flutter applications.",
      ],
      bestUse:
          "Apply in service layers, repositories, and business logic. Essential for clean architecture.",
    ),
    contentAr: QuestionContent(
      question: "اشرح جميع مبادئ SOLID الخمسة مع أمثلة Flutter/Dart.",
      answer: [
        QuestionAnswerString(
          "S - المسؤولية الواحدة: يجب أن يكون للفئة سبب واحد للتغيير. مثال: فصل UserRepository عن UserValidator. O - المفتوح/المغلق: مفتوح للتوسع، مغلق للتعديل. استخدم الفئات/الواجهات المجردة. L - استبدال ليسكوف: يجب أن تكون الفئات الفرعية قابلة للاستبدال بفئاتها الأساسية دون كسر الوظائف. I - فصل الواجهة: لا تجبر الفئات على تنفيذ واجهات لا تستخدمها. أنشئ واجهات محددة. D - عكس التبعية: اعتمد على التجريدات، وليس على التفاصيل الملموسة. استخدم حقن التبعية.",
        ),
      ],
      example:
          "// SRP\nclass UserRepository { /* الوصول للبيانات فقط */ }\nclass UserValidator { /* التحقق فقط */ }\n// DIP\nclass UserService {\n  final IUserRepository repository;\n  UserService(this.repository); // حقن التجريد\n}",
      notes: [
        "مبادئ SOLID تحسن قابلية الصيانة والاختبار وقابلية التوسع للكود. ضرورية للتطبيقات الكبيرة في Flutter.",
      ],
      bestUse:
          "طبقها في طبقات الخدمة والمستودعات ومنطق الأعمال. ضرورية للبنية النظيفة.",
    ),
  ),
  InterviewQuestion(
    id: "FLT-006",
    difficulty: .intermediate,
    category: "designPatterns",
    type: "practical",
    tags: ["singleton", "factory", "repository"],
    contentEn: QuestionContent(
      question:
          "Implement Singleton, Factory, and Repository patterns in Flutter.",
      answer: [
        QuestionAnswerString(
          "Singleton: Ensures only one instance exists. Use for app-wide services. Factory: Creates objects without exposing creation logic. Use factory constructors in Dart. Repository: Abstracts data sources, provides clean API for data access.",
        ),
      ],
      example:
          "// Singleton\nclass ApiService {\n  static final ApiService _instance = ApiService._internal();\n  factory ApiService() => _instance;\n  ApiService._internal();\n}\n\n// Factory\nclass Animal {\n  factory Animal.fromType(String type) {\n    if (type == 'dog') return Dog();\n    return Cat();\n  }\n}\n\n// Repository\nabstract class IUserRepository {\n  Future<User> getUser(String id);\n}\nclass UserRepository implements IUserRepository {\n  final ApiService _api;\n  final LocalDatabase _db;\n  Future<User> getUser(String id) async {\n    try { return await _api.getUser(id); }\n    catch (_) { return await _db.getUser(id); }\n  }\n}",
      notes: [
        "Singleton can cause testing issues; consider using dependency injection instead. Repository pattern is crucial for testable code.",
      ],
      bestUse:
          "Singleton for global services, Factory for object creation, Repository for data layer abstraction",
    ),
    contentAr: QuestionContent(
      question: "نفذ أنماط Singleton و Factory و Repository في Flutter.",
      answer: [
        QuestionAnswerString(
          "Singleton: يضمن وجود نسخة واحدة فقط. استخدمه للخدمات على مستوى التطبيق. Factory: ينشئ كائنات دون كشف منطق الإنشاء. استخدم منشئات factory في Dart. Repository: يجرد مصادر البيانات، يوفر واجهة برمجية نظيفة للوصول إلى البيانات.",
        ),
      ],
      example:
          "// Singleton\nclass ApiService {\n  static final ApiService _instance = ApiService._internal();\n  factory ApiService() => _instance;\n  ApiService._internal();\n}\n\n// Factory\nclass Animal {\n  factory Animal.fromType(String type) {\n    if (type == 'dog') return Dog();\n    return Cat();\n  }\n}\n\n// Repository\nabstract class IUserRepository {\n  Future<User> getUser(String id);\n}\nclass UserRepository implements IUserRepository {\n  final ApiService _api;\n  final LocalDatabase _db;\n  Future<User> getUser(String id) async {\n    try { return await _api.getUser(id); }\n    catch (_) { return await _db.getUser(id); }\n  }\n}",
      notes: [
        "Singleton يمكن أن يسبب مشاكل في الاختبار؛ فكر في استخدام حقن التبعية بدلاً من ذلك. نمط Repository حاسم للكود القابل للاختبار.",
      ],
      bestUse:
          "Singleton للخدمات العامة، Factory لإنشاء الكائنات، Repository لتجريد طبقة البيانات",
    ),
    pros: [
      "Singleton: Global access point, memory efficient",
      "Factory: Flexible object creation, encapsulation",
      "Repository: Testable, separates concerns, switch data sources easily",
    ],
    cons: [
      "Singleton: Hard to test, global state issues",
      "Factory: Can become complex",
      "Repository: Additional abstraction layer",
    ],
  ),
  InterviewQuestion(
    id: "FLT-007",
    difficulty: .basic,
    category: "dataStructures",
    type: "theoretical",
    tags: ["dartBasics", "algorithms"],
    contentEn: QuestionContent(
      question:
          "What are the main data structures available in Dart and when to use each?",
      answer: [
        QuestionAnswerString(
          "List: Ordered collection, indexed access, allows duplicates. Use for ordered data. Set: Unordered collection, unique elements only. Use when uniqueness matters. Map: Key-value pairs, fast lookup by key. Use for associative data. Queue: FIFO operations. LinkedHashSet: Maintains insertion order. HashMap/LinkedHashMap: Different iteration guarantees.",
        ),
      ],
      example:
          "List<String> items = ['a', 'b', 'c'];\nSet<int> uniqueIds = {1, 2, 3};\nMap<String, User> userMap = {'id1': user1};\nQueue<Task> taskQueue = Queue();",
      notes: [
        "Choose based on requirements: order, uniqueness, lookup speed. List for most cases, Set for uniqueness, Map for key-based access.",
      ],
      bestUse:
          "List for ordered collections, Set for unique items, Map for fast key lookups, Queue for task scheduling",
    ),
    contentAr: QuestionContent(
      question:
          "ما هي هياكل البيانات الرئيسية المتاحة في Dart ومتى تستخدم كل منها؟",
      answer: [
        QuestionAnswerString(
          "List: مجموعة مرتبة، وصول مفهرس، تسمح بالتكرار. استخدمها للبيانات المرتبة. Set: مجموعة غير مرتبة، عناصر فريدة فقط. استخدمها عندما يهم التفرد. Map: أزواج مفتاح-قيمة، بحث سريع بالمفتاح. استخدمها للبيانات الترابطية. Queue: عمليات FIFO. LinkedHashSet: يحافظ على ترتيب الإدراج. HashMap/LinkedHashMap: ضمانات تكرار مختلفة.",
        ),
      ],
      example:
          "List<String> items = ['a', 'b', 'c'];\nSet<int> uniqueIds = {1, 2, 3};\nMap<String, User> userMap = {'id1': user1};\nQueue<Task> taskQueue = Queue();",
      notes: [
        "اختر بناءً على المتطلبات: الترتيب، التفرد، سرعة البحث. List لمعظم الحالات، Set للتفرد، Map للوصول القائم على المفتاح.",
      ],
      bestUse:
          "List للمجموعات المرتبة، Set للعناصر الفريدة، Map للبحث السريع بالمفاتيح، Queue لجدولة المهام",
    ),
  ),
  InterviewQuestion(
    id: "FLT-008",
    difficulty: .intermediate,
    category: "stateManagement",
    type: "practical",
    tags: ["provider", "bloc", "riverpod", "setState"],
    contentEn: QuestionContent(
      question:
          "Compare setState, Provider, BLoC, and Riverpod for state management.",
      answer: [
        QuestionAnswerString(
          "setState: Built-in, simple, local state only, causes entire widget rebuild. Provider: InheritedWidget wrapper, easy to use, dependency injection, less boilerplate than BLoC. BLoC: Stream-based, separates business logic from UI, more boilerplate, great for complex apps. Riverpod: Provider 2.0, compile-time safety, no BuildContext needed, better testing, modern approach.",
        ),
      ],
      example:
          "// setState\nsetState(() { counter++; });\n\n// Provider\nProvider.of<Counter>(context).increment();\n\n// BLoC\ncounterBloc.add(IncrementEvent());\n\n// Riverpod\nref.read(counterProvider.notifier).increment();",
      notes: [
        "Choose based on app complexity: setState for simple, Provider for medium, BLoC for complex enterprise, Riverpod for modern type-safe approach.",
      ],
      bestUse:
          "setState for local state, Provider for simple global state, BLoC for complex business logic, Riverpod for new projects wanting type safety",
    ),
    contentAr: QuestionContent(
      question: "قارن بين setState و Provider و BLoC و Riverpod لإدارة الحالة.",
      answer: [
        QuestionAnswerString(
          "setState: مدمج، بسيط، حالة محلية فقط، يسبب إعادة بناء الويدجت بالكامل. Provider: غلاف InheritedWidget، سهل الاستخدام، حقن التبعية، أقل كودًا نمطيًا من BLoC. BLoC: قائم على التدفقات، يفصل منطق الأعمال عن واجهة المستخدم، المزيد من الكود النمطي، رائع للتطبيقات المعقدة. Riverpod: Provider 2.0، أمان وقت الترجمة، لا حاجة لـ BuildContext، اختبار أفضل، نهج حديث.",
        ),
      ],
      example:
          "// setState\nsetState(() { counter++; });\n\n// Provider\nProvider.of<Counter>(context).increment();\n\n// BLoC\ncounterBloc.add(IncrementEvent());\n\n// Riverpod\nref.read(counterProvider.notifier).increment();",
      notes: [
        "اختر بناءً على تعقيد التطبيق: setState للبسيط، Provider للمتوسط، BLoC للمعقد، Riverpod للنهج الحديث الآمن من حيث النوع.",
      ],
      bestUse:
          "setState للحالة المحلية، Provider للحالة العامة البسيطة، BLoC لمنطق الأعمال المعقد، Riverpod للمشاريع الجديدة التي تريد أمان النوع",
    ),
    pros: [
      "setState: Simple, no dependencies",
      "Provider: Easy learning curve, good community",
      "BLoC: Testable, scalable, clear separation",
      "Riverpod: Type-safe, no context, excellent testing",
    ],
    cons: [
      "setState: Doesn't scale, hard to manage",
      "Provider: Can get verbose, runtime errors",
      "BLoC: Steep learning curve, more code",
      "Riverpod: Newer, smaller ecosystem",
    ],
  ),
  InterviewQuestion(
    id: "FLT-009",
    difficulty: .intermediate,
    category: "basic",
    type: "practical",
    tags: ["asyncAwait", "futures", "streams"],
    contentEn: QuestionContent(
      question:
          "Explain Future, async/await, and Streams in Dart with examples.",
      answer: [
        QuestionAnswerString(
          "Future: Represents a potential value or error available at some time in the future. Single asynchronous result. async/await: Syntactic sugar for working with Futures, makes async code look synchronous. Streams: Sequence of asynchronous events, can emit multiple values over time. Single vs multiple subscription streams.",
        ),
      ],
      example:
          "// Future\nFuture<String> fetchData() async {\n  await Future.delayed(Duration(seconds: 2));\n  return 'Data';\n}\n\n// async/await\nvoid loadData() async {\n  final data = await fetchData();\n  print(data);\n}\n\n// Stream\nStream<int> countStream() async* {\n  for (int i = 0; i < 5; i++) {\n    await Future.delayed(Duration(seconds: 1));\n    yield i;\n  }\n}\n\n// Listen to stream\ncountStream().listen((value) => print(value));",
      notes: [
        "Use Future for single async operations (API calls), Streams for continuous data (WebSocket, user events). Always handle errors with try-catch or catchError.",
      ],
      bestUse:
          "Future for HTTP requests, database queries; Streams for real-time data, event handling, user input",
    ),
    contentAr: QuestionContent(
      question: "اشرح Future و async/await و Streams في Dart مع أمثلة.",
      answer: [
        QuestionAnswerString(
          "Future: يمثل قيمة محتملة أو خطأ متاح في وقت ما في المستقبل. نتيجة غير متزامنة واحدة. async/await: سكر نحوي للعمل مع Futures، يجعل الكود غير المتزامن يبدو متزامنًا. Streams: تسلسل من الأحداث غير المتزامنة، يمكن أن يصدر قيمًا متعددة مع مرور الوقت. تدفقات اشتراك واحد مقابل اشتراك متعدد.",
        ),
      ],
      example:
          "// Future\nFuture<String> fetchData() async {\n  await Future.delayed(Duration(seconds: 2));\n  return 'Data';\n}\n\n// async/await\nvoid loadData() async {\n  final data = await fetchData();\n  print(data);\n}\n\n// Stream\nStream<int> countStream() async* {\n  for (int i = 0; i < 5; i++) {\n    await Future.delayed(Duration(seconds: 1));\n    yield i;\n  }\n}\n\n// الاستماع للتدفق\ncountStream().listen((value) => print(value));",
      notes: [
        "استخدم Future للعمليات غير المتزامنة الواحدة (استدعاءات API)، Streams للبيانات المستمرة (WebSocket، أحداث المستخدم). تعامل دائمًا مع الأخطاء باستخدام try-catch أو catchError.",
      ],
      bestUse:
          "Future لطلبات HTTP واستعلامات قاعدة البيانات؛ Streams للبيانات في الوقت الفعلي ومعالجة الأحداث وإدخال المستخدم",
    ),
  ),
  InterviewQuestion(
    id: "FLT-010",
    difficulty: .advanced,
    category: "performance",
    type: "practical",
    tags: ["optimization", "lazyLoading", "memoryManagement"],
    contentEn: QuestionContent(
      question:
          "What are the best practices for optimizing Flutter app performance?",
      answer: [
        QuestionAnswerString(
          "1) Use const constructors for immutable widgets. 2) Implement ListView.builder for long lists (lazy loading). 3) Avoid unnecessary rebuilds with keys, const, RepaintBoundary. 4) Use cached_network_image for images. 5) Minimize expensive operations in build(). 6) Profile with Flutter DevTools. 7) Use compute() for heavy computations. 8) Implement pagination. 9) Optimize images (size, format). 10) Use Impeller rendering engine (Flutter 3.10+).",
        ),
      ],
      example:
          "// Const constructor\nconst Text('Static text');\n\n// ListView.builder\nListView.builder(\n  itemCount: items.length,\n  itemBuilder: (context, index) => ItemWidget(items[index]),\n);\n\n// Isolate for heavy work\nawait compute(heavyComputation, data);\n\n// RepaintBoundary\nRepaintBoundary(\n  child: ComplexWidget(),\n);",
      notes: [
        "Profile before optimizing. Use Flutter DevTools to identify bottlenecks. Premature optimization can harm code readability.",
      ],
      bestUse:
          "Apply these techniques in production apps with performance issues, especially with large lists or complex UI",
    ),
    contentAr: QuestionContent(
      question: "ما هي أفضل الممارسات لتحسين أداء تطبيق Flutter؟",
      answer: [
        QuestionAnswerString(
          "1) استخدم منشئات const للويدجتات غير القابلة للتغيير. 2) نفذ ListView.builder للقوائم الطويلة (التحميل الكسول). 3) تجنب عمليات إعادة البناء غير الضرورية باستخدام المفاتيح و const و RepaintBoundary. 4) استخدم cached_network_image للصور. 5) قلل العمليات المكلفة في ()build. 6) راقب الأداء باستخدام Flutter DevTools. 7) استخدم ()compute للحسابات الثقيلة. 8) نفذ الترقيم. 9) حسّن الصور (الحجم والتنسيق). 10) استخدم محرك العرض Impeller (Flutter 3.10+).",
        ),
      ],
      example:
          "// منشئ Const\nconst Text('نص ثابت');\n\n// ListView.builder\nListView.builder(\n  itemCount: items.length,\n  itemBuilder: (context, index) => ItemWidget(items[index]),\n);\n\n// Isolate للعمل الثقيل\nawait compute(heavyComputation, data);\n\n// RepaintBoundary\nRepaintBoundary(\n  child: ComplexWidget(),\n);",
      notes: [
        "راقب الأداء قبل التحسين. استخدم Flutter DevTools لتحديد الاختناقات. التحسين المبكر يمكن أن يضر بقابلية قراءة الكود.",
      ],
      bestUse:
          "طبق هذه التقنيات في تطبيقات الإنتاج مع مشاكل الأداء، خاصة مع القوائم الكبيرة أو واجهة المستخدم المعقدة",
    ),
  ),
  InterviewQuestion(
    id: "FLT-011",
    difficulty: .intermediate,
    category: "performance",
    type: "practical",
    tags: ["keys", "widgets", "optimization"],
    contentEn: QuestionContent(
      question: "What are Keys in Flutter and when should you use them?",
      answer: [
        QuestionAnswerString(
          "Keys control how widgets are replaced in the widget tree. They preserve state when widgets move around. Types: ValueKey (simple value), ObjectKey (object identity), UniqueKey (unique every build), GlobalKey (access state from anywhere, expensive). Usage: 1) When preserving state in a list of StatefulWidgets that changes order. 2) To access a widget's state from a parent (GlobalKey). 3) To force a widget to rebuild (UniqueKey).",
        ),
      ],
      example:
          "// Preserving state in list\nkey: ValueKey(item.id),\n\n// Accessing state\nfinal key = GlobalKey<FormState>();\nkey.currentState?.validate();",
      notes: [
        "Don't use keys unless necessary, especially GlobalKey as it's expensive. Most StatelessWidgets don't need keys.",
      ],
      bestUse:
          "Lists of stateful items (TodoList), Form validation, preserving scroll position",
    ),
    contentAr: QuestionContent(
      question: "ما هي المفاتيح (Keys) في Flutter ومتى يجب استخدامها؟",
      answer: [
        QuestionAnswerString(
          "تتحكم المفاتيح في كيفية استبدال الويدجتات في شجرة الويدجت. تحافظ على الحالة عندما تتحرك الويدجتات. الأنواع: ValueKey (قيمة بسيطة)، ObjectKey (هوية الكائن)، UniqueKey (فريد في كل بناء)، GlobalKey (الوصول للحالة من أي مكان، مكلف). الاستخدام: 1) عند الحفاظ على الحالة في قائمة من StatefulWidgets التي يتغير ترتيبها. 2) للوصول إلى حالة الويدجت من الأصل (GlobalKey). 3) لإجبار الويدجت على إعادة البناء (UniqueKey).",
        ),
      ],
      example:
          "// الحفاظ على الحالة في القائمة\nkey: ValueKey(item.id),\n\n// الوصول للحالة\nfinal key = GlobalKey<FormState>();\nkey.currentState?.validate();",
      notes: [
        "لا تستخدم المفاتيح إلا إذا لزم الأمر، خاصة GlobalKey لأنه مكلف. معظم StatelessWidgets لا تحتاج إلى مفاتيح.",
      ],
      bestUse:
          "قوائم العناصر ذات الحالة (قوائم المهام)، التحقق من صحة النموذج، الحفاظ على موضع التمرير",
    ),
  ),
  InterviewQuestion(
    id: "FLT-012",
    difficulty: .intermediate,
    category: "basic",
    type: "theoretical",
    tags: ["lifecycle", "appLifecycle", "widgetsBinding"],
    contentEn: QuestionContent(
      question: "Explain the Flutter Application Lifecycle.",
      answer: [
        QuestionAnswerString(
          "The lifecycle of the app as a whole (not just a widget). States: 1) detached: App is not hosted by any view (starting/closing). 2) inactive: App is in foreground but not receiving input (phone call, split screen). 3) paused: App is in background, not visible (user went to home). 4) resumed: App is visible and responding to input. Monitor using WidgetsBindingObserver and didChangeAppLifecycleState.",
        ),
      ],
      example:
          "class _MyAppState extends State<MyApp> with WidgetsBindingObserver {\n  @override\n  void didChangeAppLifecycleState(AppLifecycleState state) {\n    if (state == AppLifecycleState.paused) { /* save data */ }\n  }\n}",
      notes: [
        "Crucial for handling resources like camera, location, or saving progress when the user leaves the app.",
      ],
      bestUse:
          "Saving data when app pauses, stopping animations/timers in background",
    ),
    contentAr: QuestionContent(
      question: "اشرح دورة حياة تطبيق Flutter.",
      answer: [
        QuestionAnswerString(
          "دورة حياة التطبيق ككل (وليس فقط الويدجت). الحالات: 1) detached: التطبيق غير مستضاف (بدء/إغلاق). 2) inactive: التطبيق في المقدمة ولكنه لا يتلقى إدخالاً (مكالمة هاتفية، شاشة مقسمة). 3) paused: التطبيق في الخلفية، غير مرئي (ذهب المستخدم للصفحة الرئيسية). 4) resumed: التطبيق مرئي ويستجيب للإدخال. راقب باستخدام WidgetsBindingObserver و didChangeAppLifecycleState.",
        ),
      ],
      example:
          "class _MyAppState extends State<MyApp> with WidgetsBindingObserver {\n  @override\n  void didChangeAppLifecycleState(AppLifecycleState state) {\n    if (state == AppLifecycleState.paused) { /* حفظ البيانات */ }\n  }\n}",
      notes: [
        "حاسم للتعامل مع الموارد مثل الكاميرا، الموقع، أو حفظ التقدم عند مغادرة المستخدم للتطبيق.",
      ],
      bestUse:
          "حفظ البيانات عند توقف التطبيق، إيقاف الرسوم المتحركة/المؤقتات في الخلفية",
    ),
  ),
  InterviewQuestion(
    id: "FLT-013",
    difficulty: .advanced,
    category: "testing",
    type: "practical",
    tags: ["unitTesting", "widgetTesting", "integrationTesting"],
    contentEn: QuestionContent(
      question:
          "What are the three types of tests in Flutter and how do they differ?",
      answer: [
        QuestionAnswerString(
          "1) Unit Tests: Test a single function, method, or class. Verified logic. Fast execution. No UI. 2) Widget Tests: Test a single widget. Verify UI layout and interaction. Uses WidgetTester. Medium speed. 3) Integration Tests: Test the entire app or large parts. Runs on real device/emulator. Verifies end-to-end user flows. Slowest.",
        ),
      ],
      example:
          "// Unit\nexpect(calculator.add(2, 2), 4);\n\n// Widget\nawait tester.pumpWidget(MyApp());\nexpect(find.text('Hello'), findsOneWidget);\n\n// Integration\napp.main();\nawait tester.pumpAndSettle();",
      notes: [
        "Follow the testing pyramid: Many Unit tests, fewer Widget tests, very few Integration tests.",
      ],
      bestUse:
          "Unit for logic/models, Widget for UI components, Integration for critical user flows (login, checkout)",
    ),
    contentAr: QuestionContent(
      question: "ما هي أنواع الاختبارات الثلاثة في Flutter وكيف تختلف؟",
      answer: [
        QuestionAnswerString(
          "1) اختبارات الوحدة: اختبار دالة أو طريقة أو فئة واحدة. منطق تم التحقق منه. تنفيذ سريع. لا واجهة مستخدم. 2) اختبارات الويدجت: اختبار ويدجت واحد. التحقق من تخطيط وتفاعل واجهة المستخدم. يستخدم WidgetTester. سرعة متوسطة. 3) اختبارات التكامل: اختبار التطبيق بالكامل أو أجزاء كبيرة. يعمل على جهاز حقيقي/محاكي. يتحقق من تدفقات المستخدم من البداية للنهاية. الأبطأ.",
        ),
      ],
      example:
          "// الوحدة\nexpect(calculator.add(2, 2), 4);\n\n// الويدجت\nawait tester.pumpWidget(MyApp());\nexpect(find.text('Hello'), findsOneWidget);\n\n// التكامل\napp.main();\nawait tester.pumpAndSettle();",
      notes: [
        "اتبع هرم الاختبار: العديد من اختبارات الوحدة، عدد أقل من اختبارات الويدجت، عدد قليل جدًا من اختبارات التكامل.",
      ],
      bestUse:
          "الوحدة للمنطق/النماذج، الويدجت لمكونات واجهة المستخدم، التكامل لتدفقات المستخدم الحرجة (تسجيل الدخول، الدفع)",
    ),
  ),
  InterviewQuestion(
    id: "FLT-014",
    difficulty: .advanced,
    category: "performance",
    type: "theoretical",
    tags: ["rendering", "impeller", "skia"],
    contentEn: QuestionContent(
      question: "What is Impeller and how does it improve Flutter performance?",
      answer: [
        QuestionAnswerString(
          "Impeller is the new rendering engine for Flutter, replacing Skia on iOS (default in 3.10+) and Android (preview). It solves 'shader compilation jank' by pre-compiling shaders at build time (AOT) instead of runtime. It is designed specifically for Flutter to leverage modern graphics APIs (Metal for iOS, Vulkan for Android) efficiently, providing silky-smooth animations and eliminating drop frames during first runs.",
        ),
      ],
      example:
          "// No code change required usually.\n// Enable on Android (preview):\n<meta-data\n  android:name=\"io.flutter.embedding.android.EnableImpeller\"\n  android:value=\"true\" />",
      notes: [
        "Impeller is a major milestone for Flutter performance. It makes animations predictable and smooth.",
      ],
      bestUse:
          "Default on iOS now, opt-in for Android for high-performance graphics needs",
    ),
    contentAr: QuestionContent(
      question: "ما هو Impeller وكيف يحسن أداء Flutter؟",
      answer: [
        QuestionAnswerString(
          "Impeller هو محرك العرض الجديد لـ Flutter، يحل محل Skia على iOS (افتراضي في 3.10+) و Android (معاينة). يحل مشكلة 'تقطع تجميع التظليل' عن طريق التجميع المسبق للتظليل في وقت البناء (AOT) بدلاً من وقت التشغيل. تم تصميمه خصيصًا لـ Flutter للاستفادة من واجهات برمجة تطبيقات الرسومات الحديثة (Metal لـ iOS، Vulkan لـ Android) بكفاءة، مما يوفر رسومًا متحركة سلسة للغاية ويقضي على سقوط الإطارات أثناء التشغيل الأول.",
        ),
      ],
      example:
          "// لا يتطلب تغيير الكود عادةً.\n// التفعيل على Android (معاينة):\n<meta-data\n  android:name=\"io.flutter.embedding.android.EnableImpeller\"\n  android:value=\"true\" />",
      notes: [
        "Impeller هو معلم رئيسي لأداء Flutter. يجعل الرسوم المتحركة متوقعة وسلسة.",
      ],
      bestUse:
          "افتراضي على iOS الآن، اختياري لـ Android لاحتياجات الرسومات عالية الأداء",
    ),
  ),
  InterviewQuestion(
    id: "FLT-015",
    difficulty: .intermediate,
    category: "networking",
    type: "practical",
    tags: ["http", "dio", "restApi"],
    contentEn: QuestionContent(
      question:
          "How to handle networking in Flutter? Difference between http and dio packages?",
      answer: [
        QuestionAnswerString(
          "Networking is done asynchronously using packages. 'http': Basic, official, simple API, good for simple requests. 'dio': Powerful, feature-rich 3rd party package. Features of Dio: Interceptors (global headers/logging), Global configuration, File downloading/uploading, Cancellation tokens (cancel request), Custom adapters, Transformer. Choose 'http' for prototypes/simple apps, 'dio' for production/complex apps.",
        ),
      ],
      example:
          "// http\nawait http.get(Uri.parse('url'));\n\n// dio\nfinal dio = Dio();\ndio.interceptors.add(LogInterceptor());\nawait dio.get('url', options: Options(headers: {'Auth': 'token'}));",
      notes: [
        "Always handle network errors (SocketException, 4xx/5xx responses) and show user feedback.",
      ],
      bestUse:
          "Use Dio for enterprise apps needing auth token refresh, logging, file uploads",
    ),
    contentAr: QuestionContent(
      question:
          "كيفية التعامل مع الشبكات في Flutter؟ الفرق بين حزمتي http و dio؟",
      answer: [
        QuestionAnswerString(
          "يتم التعامل مع الشبكات بشكل غير متزامن باستخدام الحزم. 'http': أساسية، رسمية، واجهة برمجة تطبيقات بسيطة، جيدة للطلبات البسيطة. 'dio': قوية، حزمة طرف ثالث غنية بالميزات. ميزات Dio: المعترضات (الرؤوس العالمية/التسجيل)، التكوين العالمي، تنزيل/تحميل الملفات، رموز الإلغاء (إلغاء الطلب)، محولات مخصصة، محولات. اختر 'http' للنماذج الأولية/التطبيقات البسيطة، و 'dio' للإنتاج/التطبيقات المعقدة.",
        ),
      ],
      example:
          "// http\nawait http.get(Uri.parse('url'));\n\n// dio\nfinal dio = Dio();\ndio.interceptors.add(LogInterceptor());\nawait dio.get('url', options: Options(headers: {'Auth': 'token'}));",
      notes: [
        "تعامل دائمًا مع أخطاء الشبكة (SocketException، استجابات 4xx/5xx) واعرض ملاحظات المستخدم.",
      ],
      bestUse:
          "استخدم Dio لتطبيقات المؤسسات التي تحتاج إلى تحديث رمز المصادقة، التسجيل، تحميل الملفات",
    ),
  ),
  InterviewQuestion(
    id: "FLT-016",
    difficulty: .intermediate,
    category: "database",
    type: "practical",
    tags: ["sqlite", "hive", "sharedPreferences", "persistence"],
    contentEn: QuestionContent(
      question:
          "Comparison of local database options: SharedPreferences vs SQLite vs Hive.",
      answer: [
        QuestionAnswerString(
          "SharedPreferences: Key-Value store, xml/plist based. Good for flags, settings, simple tokens. NOT for large data. Sync/Async API. SQLite (sqflite): Relational database (SQL). Good for structured data, complex queries, relations. Reliable, standard. Hive: NoSQL, key-value, pure Dart, extremely fast, encrypted. Good for storing objects, offline cache. No native dependencies (easy setup).",
        ),
      ],
      example:
          "// SharedPreferences\nprefs.setBool('isDark', true);\n\n// SQLite\ndb.query('users', where: 'id = ?', whereArgs: [1]);\n\n// Hive\nbox.put('key', userObject);",
      notes: [
        "Isar is a newer, faster alternative to Hive (by same author) with full query support. Consider it for new projects.",
      ],
      bestUse:
          "SharedPreferences for settings, SQLite for complex relational data, Hive/Isar for fast object storage and caching",
    ),
    contentAr: QuestionContent(
      question:
          "مقارنة خيارات قواعد البيانات المحلية: SharedPreferences vs SQLite vs Hive.",
      answer: [
        QuestionAnswerString(
          "SharedPreferences: مخزن مفتاح-قيمة، يعتمد على xml/plist. جيد للإشارات، الإعدادات، الرموز البسيطة. ليس للبيانات الكبيرة. واجهة برمجة تطبيقات متزامنة/غير متزامنة. SQLite (sqflite): قاعدة بيانات علائقية (SQL). جيدة للبيانات المنظمة، الاستعلامات المعقدة، العلاقات. موثوقة، قياسية. Hive: NoSQL، مفتاح-قيمة، Dart نقي، سريع للغاية، مشفر. جيد لتخزين الكائنات، ذاكرة التخزين المؤقت دون اتصال. لا توجد تبعيات أصلية (إعداد سهل).",
        ),
      ],
      example:
          "// SharedPreferences\nprefs.setBool('isDark', true);\n\n// SQLite\ndb.query('users', where: 'id = ?', whereArgs: [1]);\n\n// Hive\nbox.put('key', userObject);",
      notes: [
        "Isar هو بديل أحدث وأسرع لـ Hive (من نفس المؤلف) مع دعم كامل للاستعلام. فكر فيه للمشاريع الجديدة.",
      ],
      bestUse:
          "SharedPreferences للإعدادات، SQLite للبيانات العلائقية المعقدة، Hive/Isar لتخزين الكائنات السريع والتخزين المؤقت",
    ),
  ),
  InterviewQuestion(
    id: "FLT-017",
    difficulty: .advanced,
    category: "architecture",
    type: "theoretical",
    tags: ["cleanArchitecture", "mvc", "mvvm", "featuresFirst"],
    contentEn: QuestionContent(
      question:
          "Common Architectural Patterns in Flutter? (MVC, MVVM, Clean Architecture)",
      answer: [
        QuestionAnswerString(
          "Architecture organizes code for maintainability. MVC (Model-View-Controller): Classic, separate data, UI, logic. Often Controller manages UI state. MVVM (Model-View-ViewModel): View binds to ViewModel. ViewModel holds state/logic, unaware of View. Very popular in Flutter (Provider/Riverpod act as VM). Clean Architecture: Layers (Presentation, Domain, Data). Dependency Rule (inner layers don't know outer). Highly testable and scalable.",
        ),
      ],
      example:
          "// Clean Architecture Folders\n/lib\n  /features\n    /login\n      /data (repos, sources)\n      /domain (entities, usecases)\n      /presentation (blocs, pages)",
      notes: [
        "Don't over-engineer. Use MVVM/Feature-first for medium apps. Use Clean Architecture for large, long-term enterprise apps.",
      ],
      bestUse:
          "Feature-first (Layered) architecture is the standard recommendation for most scalable Flutter apps",
    ),
    contentAr: QuestionContent(
      question:
          "اشرح البنية النظيفة (Clean Architecture) في Flutter مع الطبقات وهيكل المجلدات.",
      answer: [
        QuestionAnswerString(
          "البنية النظيفة تفصل الاهتمامات إلى طبقات: 1) العرض (واجهة المستخدم، الويدجتات، إدارة الحالة)، 2) النطاق (منطق الأعمال، حالات الاستخدام، الكيانات)، 3) البيانات (المستودعات، مصادر البيانات، النماذج). قاعدة التبعية: الطبقات الخارجية تعتمد على الداخلية، وليس العكس. هيكل المجلدات: lib/features/[feature]/presentation|domain|data. الفوائد: قابل للاختبار، قابل للصيانة، قابل للتوسع، مستقل عن الأطر.",
        ),
      ],
      example:
          "// Clean Architecture Folders\nlib/\n├── core/\n│   ├── error/\n│   ├── usecases/\n│   └── utils/\n└── features/\n    └── authentication/\n        ├── data/\n        │   ├── datasources/\n        │   │   └── auth_remote_datasource.dart\n        │   ├── models/\n        │   └── repositories/\n        │       └── auth_repository_impl.dart\n        ├── domain/\n        │   ├── entities/\n        │   │   └── user.dart\n        │   ├── repositories/\n        │   │   └── auth_repository.dart\n        │   └── usecases/\n        │       └── login_user.dart\n        └── presentation/\n            ├── bloc/\n            ├── pages/\n            └── widgets/",
      notes: [
        "البنية النظيفة تزيد التعقيد الأولي لكنها تؤتي ثمارها في التطبيقات الكبيرة. استخدمها للتطبيقات المؤسسية، وليس المشاريع البسيطة.",
      ],
      bestUse:
          "التطبيقات واسعة النطاق، المشاريع المؤسسية، الفرق التي تحتاج فصلًا واضحًا للاهتمامات",
    ),
  ),
  InterviewQuestion(
    id: "FLT-018",
    difficulty: .basic,
    category: "dartBasics",
    type: "practical",
    tags: ["nullSafety", "soundness"],
    contentEn: QuestionContent(
      question: "What is Null Safety and how does it help?",
      answer: [
        QuestionAnswerString(
          "Null Safety allows the Dart type system to distinguish between nullable and non-nullable types. By default, types are non-nullable (`String`), preventing null reference errors at runtime (Standard Null Pointer Exception). `String?` means it can be null. Benefits: 1) Compile-time error detection. 2) Smaller, faster binaries (compiler knows what isn't null). 3) Cleaner code (fewer null checks needed).",
        ),
      ],
      example:
          "String name = 'John'; // Never null\nString? nickname; // Can be null\nlate String id; // Lazy init, non-null\n\n// Usage\nprint(nickname?.length ?? 0);",
      notes: [
        "Migrate older apps to null safety. Use '!' only when you are 100% sure value is not null, otherwise plain crash.",
      ],
      bestUse:
          "Use in all modern Dart/Flutter projects. It's mandatory since Flutter 2.",
    ),
    contentAr: QuestionContent(
      question: "ما هو أمان العدم (Null Safety) وكيف يساعد؟",
      answer: [
        QuestionAnswerString(
          "يسمح أمان العدم لنظام أنواع Dart بالتمييز بين الأنواع القابلة للعدم وغير القابلة للعدم. افتراضيًا، الأنواع غير قابلة للعدم (`String`)، مما يمنع أخطاء مرجع العدم في وقت التشغيل. `String?` تعني أنه يمكن أن يكون null. الفوائد: 1) اكتشاف الأخطاء في وقت الترجمة. 2) ثنائيات أصغر وأسرع (المترجم يعرف ما ليس null). 3) كود أنظف (فحوصات null أقل).",
        ),
      ],
      example:
          "String name = 'John'; // ليس null أبدًا\nString? nickname; // يمكن أن يكون null\nlate String id; // تهيئة كسولة، ليس null\n\n// الاستخدام\nprint(nickname?.length ?? 0);",
      notes: [
        "رحّل التطبيقات القديمة إلى أمان العدم. استخدم '!' فقط عندما تكون متأكدًا 100% أن القيمة ليست null، وإلا سيحدث تعطل.",
      ],
      bestUse:
          "استخدمه في جميع مشاريع Dart/Flutter الحديثة. إلزامي منذ Flutter 2.",
    ),
  ),
  InterviewQuestion(
    id: "FLT-019",
    difficulty: .advanced,
    category: "performance",
    type: "practical",
    tags: ["isolates", "concurrency", "eventLoop", "multithreading"],
    contentEn: QuestionContent(
      question: "What are Isolates and how do they differ from threads?",
      answer: [
        QuestionAnswerString(
          "Dart is single-threaded (Event Loop). To perform heavy parallel work without blocking the UI, we use Isolates. Unlike threads, Isolates DO NOT share memory. They are independent workers with their own memory and event loop. Communication happens via message passing (ports). This prevents race conditions and locks. 'compute()' is a helper used to spawn an isolate for a single task easily.",
        ),
      ],
      example:
          "// Spawn basic isolate\nReceivePort receivePort = ReceivePort();\nawait Isolate.spawn(worker, receivePort.sendPort);\n\n// Simple way\nfinal result = await compute(heavyFunction, data);",
      notes: [
        "Use Isolates for JSON parsing of large files, image processing, or heavy calculations. Don't use for simple IO (that's what futures are for).",
      ],
      bestUse: "Heavy computational tasks that block the UI thread > 16ms",
    ),
    contentAr: QuestionContent(
      question: "ما هي العزلات (Isolates) وكيف تختلف عن الخيوط (Threads)؟",
      answer: [
        QuestionAnswerString(
          "Dart أحادي الخيط (حلقة الحدث). لأداء عمل متوازٍ ثقيل دون حجب واجهة المستخدم، نستخدم العزلات. على عكس الخيوط، العزلات لا تشترك في الذاكرة. هم عمال مستقلون بذاكرتهم الخاصة وحلقة الحدث. يحدث الاتصال عبر تمرير الرسائل (المنافذ). هذا يمنع ظروف السباق والأقفال. '()'compute هو مساعد يستخدم لإنشاء عزلة لمهمة واحدة بسهولة.",
        ),
      ],
      example:
          "// إنشاء عزلة أساسية\nReceivePort receivePort = ReceivePort();\nawait Isolate.spawn(worker, receivePort.sendPort);\n\n// الطريقة البسيطة\nfinal result = await compute(heavyFunction, data);",
      notes: [
        "استخدم العزلات لتحليل JSON للملفات الكبيرة، معالجة الصور، أو الحسابات الثقيلة. لا تستخدمها للإدخال/الإخراج البسيط (هذا ما تفعله Futures).",
      ],
      bestUse: "المهام الحسابية الثقيلة التي تحجب خيط واجهة المستخدم > 16ms",
    ),
  ),
  InterviewQuestion(
    id: "FLT-020",
    difficulty: .advanced,
    category: "nativePlatform",
    type: "practical",
    tags: ["methodChannel", "platformChannels", "nativeCode"],
    contentEn: QuestionContent(
      question:
          "How to communicate with specific native platform code (Android/iOS)?",
      answer: [
        QuestionAnswerString(
          "Use Platform Channels. MethodChannel deals with invoking methods. 1) Flutter: creates MethodChannel('name'), calls invokeMethod('method'). 2) Native (Android/Kotlin): listens on same channel name, overrides onMethodCall, checks method name, executes native code, returns result. 3) Native (iOS/Swift): establishes FlutterMethodChannel, setMethodCallHandler. Valid data types are automatically serialized.",
        ),
      ],
      example:
          "// Flutter\nconst platform = MethodChannel('com.example/sensors');\nfinal result = await platform.invokeMethod('getBatteryLevel');\n\n// Native side requires corresponding listener setup.",
      notes: [
        "For common tasks (camera, gps), use existing plugins (pub.dev) instead of writing custom platform channels.",
      ],
      bestUse:
          "Accessing native APIs not available in plugins, integrating native SDKs",
    ),
    contentAr: QuestionContent(
      question: "كيف تتواصل مع كود النظام الأساسي الأصلي المحدد (Android/iOS)؟",
      answer: [
        QuestionAnswerString(
          "استخدم قنوات المنصة. MethodChannel تتعامل مع استدعاء الطرق. 1) Flutter: ينشئ MethodChannel('name')، يستدعي invokeMethod('method'). 2) Native (Android/Kotlin): يستمع على نفس اسم القناة، يتجاوز onMethodCall، يتحقق من اسم الطريقة، ينفذ الكود الأصلي، يعيد النتيجة. 3) Native (iOS/Swift): يؤسس FlutterMethodChannel، يحدد setMethodCallHandler. يتم تسلسل أنواع البيانات الصالحة تلقائيًا.",
        ),
      ],
      example:
          "// Flutter\nconst platform = MethodChannel('com.example/sensors');\nfinal result = await platform.invokeMethod('getBatteryLevel');\n\n// يتطلب الجانب الأصلي إعداد مستمع مماثل.",
      notes: [
        "للمهام الشائعة (الكاميرا، نظام تحديد المواقع العالمي)، استخدم الملحقات الموجودة (pub.dev) بدلاً من كتابة قنوات منصة مخصصة.",
      ],
      bestUse:
          "الوصول إلى واجهات برمجة التطبيقات الأصلية غير المتوفرة في الملحقات، دمج حزم SDK الأصلية",
    ),
  ),
  InterviewQuestion(
    id: "FLT-021",
    difficulty: .intermediate,
    category: "animations",
    type: "practical",
    tags: ["implicitAnimations", "explicitAnimations", "animationController"],
    contentEn: QuestionContent(
      question: "Difference between Implicit and Explicit Animations?",
      answer: [
        QuestionAnswerString(
          "Implicit Animations: Simple, built-in widgets that animate changes automatically when a property changes. Easy to use, no AnimationController needed. Examples: AnimatedContainer, AnimatedOpacity, AnimatedAlign. Explicit Animations: Complex, requires manual control using AnimationController. Use when you need to repeat, reverse, or coordinate animations. Examples: RotationTransition, FadeTransition, SlideTransition.",
        ),
      ],
      example:
          "// Implicit\nAnimatedOpacity(opacity: _visible ? 1.0 : 0.0, duration: Duration(seconds: 1));\n\n// Explicit\ncontroller = AnimationController(vsync: this, duration: Duration(seconds: 1));\nFadeTransition(opacity: controller, child: Text('Hi'));",
      notes: [
        "Start with Implicit Animations. If more control is needed (pause, reverse, loop), switch to Explicit.",
      ],
      bestUse:
          "Implicit for simple UI transitions (hover, hide/show). Explicit for complex effects, staggered animations.",
    ),
    contentAr: QuestionContent(
      question: "ما الفرق بين الرسوم المتحركة الضمنية والصريحة؟",
      answer: [
        QuestionAnswerString(
          "الرسوم المتحركة الضمنية: ويدجتات بسيطة ومدمجة تقوم بتحريك التغييرات تلقائيًا عند تغيير الخاصية. سهلة الاستخدام، لا تحتاج إلى AnimationController. أمثلة: AnimatedContainer، AnimatedOpacity، AnimatedAlign. الرسوم المتحركة الصريحة: معقدة، تتطلب تحكمًا يدويًا باستخدام AnimationController. استخدمها عندما تحتاج إلى تكرار الرسوم المتحركة أو عكسها أو تنسيقها. أمثلة: RotationTransition، FadeTransition، SlideTransition.",
        ),
      ],
      example:
          "// ضمني\nAnimatedOpacity(opacity: _visible ? 1.0 : 0.0, duration: Duration(seconds: 1));\n\n// صريح\ncontroller = AnimationController(vsync: this, duration: Duration(seconds: 1));\nFadeTransition(opacity: controller, child: Text('مرحبًا'));",
      notes: [
        "ابدأ بالرسوم المتحركة الضمنية. إذا كنت بحاجة إلى مزيد من التحكم (إيقاف مؤقت، عكس، تكرار)، انتقل إلى الصريحة.",
      ],
      bestUse:
          "الضمنية لانتقالات واجهة المستخدم البسيطة (تحويم، إخفاء/إظهار). الصريحة للتأثيرات المعقدة، الرسوم المتحركة المتدرجة.",
    ),
  ),
  InterviewQuestion(
    id: "FLT-022",
    difficulty: .advanced,
    category: "animations",
    type: "practical",
    tags: ["customPaint", "canvas", "drawing"],
    contentEn: QuestionContent(
      question: "How to use CustomPaint in Flutter?",
      answer: [
        QuestionAnswerString(
          "CustomPaint is a widget that provides a canvas for low-level drawing. It takes a 'painter' argument (subclass of CustomPainter). In the paint() method, you use the Canvas object to draw shapes, paths, text, images, etc. You must also implement shouldRepaint() to optimize performance. Useful for complex custom shapes, charts, or visual effects not possible with standard widgets.",
        ),
      ],
      example:
          "class MyPainter extends CustomPainter {\n  @override\n  void paint(Canvas canvas, Size size) {\n    final paint = Paint()..color = Colors.blue;\n    canvas.drawCircle(Offset(size.width/2, size.height/2), 20, paint);\n  }\n  @override\n  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;\n}",
      notes: [
        "CustomPaint is powerful but can be expensive. Avoid complex calculations in paint(). Use it only when necessary.",
      ],
      bestUse:
          "Custom charts, graphing, complex background patterns, interactive drawing apps",
    ),
    contentAr: QuestionContent(
      question: "كيفية استخدام CustomPaint في Flutter؟",
      answer: [
        QuestionAnswerString(
          "CustomPaint هو ويدجت يوفر لوحة للرسم منخفض المستوى. يأخذ وسيط 'painter' (فئة فرعية من CustomPainter). في طريقة ()paint، تستخدم كائن Canvas لرسم الأشكال والمسارات والنصوص والصور وما إلى ذلك. يجب عليك أيضًا تنفيذ ()shouldRepaint لتحسين الأداء. مفيد للأشكال المخصصة المعقدة أو المخططات أو التأثيرات المرئية غير الممكنة باستخدام الويدجتات القياسية.",
        ),
      ],
      example:
          "class MyPainter extends CustomPainter {\n  @override\n  void paint(Canvas canvas, Size size) {\n    final paint = Paint()..color = Colors.blue;\n    canvas.drawCircle(Offset(size.width/2, size.height/2), 20, paint);\n  }\n  @override\n  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;\n}",
      notes: [
        "CustomPaint قوي ولكنه قد يكون مكلفًا. تجنب الحسابات المعقدة في paint(). استخدمه فقط عند الضرورة.",
      ],
      bestUse:
          "المخططات المخصصة، الرسوم البيانية، أنماط الخلفية المعقدة، تطبيقات الرسم التفاعلية",
    ),
  ),
  InterviewQuestion(
    id: "FLT-023",
    difficulty: .intermediate,
    category: "basic",
    type: "practical",
    tags: ["streamBuilder", "futureBuilder", "asyncWidgets"],
    contentEn: QuestionContent(
      question: "What are StreamBuilder and FutureBuilder?",
      answer: [
        QuestionAnswerString(
          "Widgets that build themselves based on the latest snapshot of interaction with a Stream or Future. FutureBuilder: Triggers a build when a Future completes (one-time). Good for API calls. StreamBuilder: Triggers a rebuild every time a Stream emits a new value (continuous). Good for real-time data. Both expose connectionState (waiting, active, done) and data/error properties.",
        ),
      ],
      example:
          "FutureBuilder<String>(\n  future: fetchData(),\n  builder: (context, snapshot) {\n    if (snapshot.hasData) return Text('\${snapshot.data}');\n    return CircularProgressIndicator();\n  },\n)",
      notes: [
        "Always check for errors and loading states. Avoid creating the Future/Stream inside the build method of the Builder directly, or it will restart on every rebuild.",
      ],
      bestUse:
          "Displaying async data directly in the UI without managing state variables manually",
    ),
    contentAr: QuestionContent(
      question: "ما هما StreamBuilder و FutureBuilder؟",
      answer: [
        QuestionAnswerString(
          "ويدجتات تبني نفسها بناءً على أحدث لقطة للتفاعل مع Stream أو Future. FutureBuilder: يطلق عملية بناء عند اكتمال Future (مرة واحدة). جيد لاستدعاءات API. StreamBuilder: يطلق عملية إعادة بناء في كل مرة يصدر فيها Stream قيمة جديدة (مستمر). جيد للبيانات في الوقت الفعلي. كلاهما يعرض خصائص connectionState (انتظار، نشط، تم) والبيانات/الخطأ.",
        ),
      ],
      example:
          "FutureBuilder<String>(\n  future: fetchData(),\n  builder: (context, snapshot) {\n    if (snapshot.hasData) return Text('\${snapshot.data}');\n    return CircularProgressIndicator();\n  },\n)",
      notes: [
        "تحقق دائمًا من الأخطاء وحالات التحميل. تجنب إنشاء Future/Stream داخل طريقة build الخاصة بـ Builder مباشرة، وإلا فسيتم إعادة تشغيلها عند كل إعادة بناء.",
      ],
      bestUse:
          "عرض البيانات غير المتزامنة مباشرة في واجهة المستخدم دون إدارة متغيرات الحالة يدويًا",
    ),
  ),
  InterviewQuestion(
    id: "FLT-024",
    difficulty: .advanced,
    category: "modernFeatures",
    type: "theoretical",
    tags: ["accessibility", "semantics", "screenReader"],
    contentEn: QuestionContent(
      question: "How do you make a Flutter app accessible?",
      answer: [
        QuestionAnswerString(
          "Flutter provides Semantic widgets to annotate the widget tree for screen readers (TalkBack/VoiceOver). 1) Semantics Widget: Wrap widgets to provide label, hint, value. 2) ExcludeSemantics: Hide widgets from screen readers (e.g., decorative images). 3) MergeSemantics: Group widgets together (e.g., a card with text) to be read as one unit. 4) Use standard widgets (Radio, Switch) as they have built-in semantics.",
        ),
      ],
      example:
          "Semantics(\n  label: 'Profile Picture',\n  hint: 'Double tap to edit',\n  child: Image.asset('profile.png'),\n)",
      notes: [
        "Test with real devices and accessibility tools enabled. Fonts should be scalable.",
      ],
      bestUse:
          "Mandatory for government apps and good practice for all public-facing apps",
    ),
    contentAr: QuestionContent(
      question: "كيف تجعل تطبيق Flutter قابلاً للوصول (Accessible)؟",
      answer: [
        QuestionAnswerString(
          "يوفر Flutter ويدجتات Semantics للتعليق على شجرة الويدجت لقارئات الشاشة (TalkBack/VoiceOver). 1) Semantics Widget: لف الويدجتات لتوفير تسمية، تلميح، قيمة. 2) ExcludeSemantics: إخفاء الويدجتات عن قارئات الشاشة (مثل الصور الزخرفية). 3) MergeSemantics: تجميع الويدجتات معًا (مثل بطاقة بها نص) لتقرأ كوحدة واحدة. 4) استخدم الويدجتات القياسية (Radio، Switch) لأن لها دلالات مدمجة.",
        ),
      ],
      example:
          "Semantics(\n  label: 'صورة الملف الشخصي',\n  hint: 'انقر مرتين للتعديل',\n  child: Image.asset('profile.png'),\n)",
      notes: [
        "اختبر باستخدام أجهزة حقيقية وأدوات إمكانية الوصول مفعلة. يجب أن تكون الخطوط قابلة للتطوير.",
      ],
      bestUse:
          "إلزامي للتطبيقات الحكومية وممارسة جيدة لجميع التطبيقات الموجهة للجمهور",
    ),
  ),
  InterviewQuestion(
    id: "FLT-025",
    difficulty: .advanced,
    category: "security",
    type: "critical",
    tags: ["obfuscation", "flutterSecureStorage", "sslPinning"],
    contentEn: QuestionContent(
      question: "What are key security best practices in Flutter?",
      answer: [
        QuestionAnswerString(
          "1) Obfuscation: Use '--obfuscate' flag when building releases to hide Dart code strings. 2) Secure Storage: Use 'flutter_secure_storage' to store sensitive data (tokens) instead of SharedPreferences. 3) SSL Pinning: Prevent Man-in-the-Middle attacks by verifying server certificates. 4) Background Snapshots: Hide app content in recent apps list. 5) Local Auth: Use biometrics for authentication. 6) Avoid committing keys to version control.",
        ),
      ],
      example:
          "// Build with obfuscation\nflutter build apk --obfuscate --split-debug-info=/<project-name>/<directory>\n\n// Secure Storage\nfinal storage = FlutterSecureStorage();\nawait storage.write(key: 'jwt', value: token);",
      notes: [
        "Reverse engineering Flutter apps is possible, so never store API keys or secrets in plain text in the code.",
      ],
      bestUse: "Banking apps, apps handling personal data or payments",
    ),
    contentAr: QuestionContent(
      question: "ما هي الممارسات الأمنية الرئيسية في Flutter؟",
      answer: [
        QuestionAnswerString(
          "1) التعتيم (Obfuscation): استخدم علامة '--obfuscate' عند بناء الإصدارات لإخفاء سلاسل كود Dart. 2) التخزين الآمن: استخدم 'flutter_secure_storage' لتخزين البيانات الحساسة (الرموز) بدلاً من SharedPreferences. 3) تثبيت SSL: منع هجمات الوسيط عن طريق التحقق من شهادات الخادم. 4) لقطات الخلفية: إخفاء محتوى التطبيق في قائمة التطبيقات الحديثة. 5) المصادقة المحلية: استخدم القياسات الحيوية للمصادقة. 6) تجنب ارتكاب المفاتيح للتحكم في الإصدار.",
        ),
      ],
      example:
          "// البناء مع التعتيم\nflutter build apk --obfuscate --split-debug-info=/<project-name>/<directory>\n\n// التخزين الآمن\nfinal storage = FlutterSecureStorage();\nawait storage.write(key: 'jwt', value: token);",
      notes: [
        "الهندسة العكسية لتطبيقات Flutter ممكنة، لذا لا تقم أبدًا بتخزين مفاتيح API أو الأسرار بنص عادي في الكود.",
      ],
      bestUse:
          "تطبيقات البنوك، التطبيقات التي تتعامل مع البيانات الشخصية أو المدفوعات",
    ),
  ),
  InterviewQuestion(
    id: "FLT-026",
    difficulty: .advanced,
    category: "deployment",
    type: "theoretical",
    tags: ["ciCd", "codemagic", "githubActions", "fastlane"],
    contentEn: QuestionContent(
      question: "How do you implement CI/CD for a Flutter application?",
      answer: [
        QuestionAnswerString(
          "CI/CD (Continuous Integration/Continuous Deployment) automates testing and building. Tools: Codemagic (Flutter specific), GitHub Actions, Bitrise. Steps: 1) Trigger on push to main branch. 2) Run 'flutter analyze' (linting). 3) Run 'flutter test' (unit/widget tests). 4) Build artifacts (IPA, APK, AppBundle). 5) Deploy to stores (App Store Connect, Play Console). Fastlane is often used to script the deployment process.",
        ),
      ],
      example:
          "# GitHub Actions Example (simplified)\nname: Flutter CI\non: [push]\njobs:\n  build:\n    runs-on: ubuntu-latest\n    steps:\n      - uses: actions/checkout@v2\n      - uses: subosito/flutter-action@v1\n      - run: flutter test",
      notes: [
        "Automating this saves massive amounts of time and catches bugs early before they reach production.",
      ],
      bestUse:
          "Professional teams, open-source projects, ensuring code quality standards",
    ),
    contentAr: QuestionContent(
      question: "كيف تنفذ CI/CD لتطبيق Flutter؟",
      answer: [
        QuestionAnswerString(
          "CI/CD (التكامل المستمر/النشر المستمر) يؤتمت الاختبار والبناء. الأدوات: Codemagic (مخصص لـ Flutter)، GitHub Actions، Bitrise. الخطوات: 1) التشغيل عند الدفع إلى الفرع الرئيسي. 2) تشغيل 'flutter analyze' (التحقق من الأخطاء). 3) تشغيل 'flutter test' (اختبارات الوحدة/الويدجت). 4) بناء القطع الأثرية (IPA، APK، AppBundle). 5) النشر في المتاجر (App Store Connect، Play Console). غالبًا ما يستخدم Fastlane لبرمجة عملية النشر.",
        ),
      ],
      example:
          "# مثال GitHub Actions (مبسط)\nname: Flutter CI\non: [push]\njobs:\n  build:\n    runs-on: ubuntu-latest\n    steps:\n      - uses: actions/checkout@v2\n      - uses: subosito/flutter-action@v1\n      - run: flutter test",
      notes: [
        "أتمتة هذا يوفر كميات هائلة من الوقت ويكتشف الأخطاء مبكرًا قبل وصولها للإنتاج.",
      ],
      bestUse: "الفرق المحترفة، المشاريع مفتوحة المصدر، ضمان معايير جودة الكود",
    ),
  ),
  InterviewQuestion(
    id: "FLT-027",
    difficulty: .basic,
    category: "basic",
    type: "practical",
    tags: ["column", "row", "stack", "expanded"],
    contentEn: QuestionContent(
      question: "Explain Common Layout Widgets used in Flutter.",
      answer: [
        QuestionAnswerString(
          "1) Column: Arranges children vertically. MainAxisAlignment (vertical), CrossAxisAlignment (horizontal). 2) Row: Arranges children horizontally. 3) Stack: Layers widgets on top of each other. Use Positioned to place children. 4) Expanded/Flexible: Used inside Row/Column to take up remaining space. Expanded forces child to fill space, Flexible allows child to be smaller. 5) Container: Convenience widget for painting, positioning, and sizing.",
        ),
      ],
      example:
          "Row(\n  mainAxisAlignment: MainAxisAlignment.spaceBetween,\n  children: [\n    Icon(Icons.star),\n    Expanded(child: Text('Title')),\n  ],\n)",
      notes: [
        "Understanding constraint layout rules ('Constraints go down. Sizes go up. Parent sets position.') is key to mastering Flutter layout.",
      ],
      bestUse:
          "Building almost any UI screen requires these basic building blocks.",
    ),
    contentAr: QuestionContent(
      question: "اشرح ويدجتات التخطيط الشائعة المستخدمة في Flutter.",
      answer: [
        QuestionAnswerString(
          "1) العمود (Column): يرتب الأطفال عموديًا. MainAxisAlignment (عمودي)، CrossAxisAlignment (أفقي). 2) الصف (Row): يرتب الأطفال أفقيًا. 3) المكدس (Stack): يضع الويدجتات فوق بعضها البعض. استخدم Positioned لوضع الأطفال. 4) Expanded/Flexible: يستخدم داخل Row/Column لأخذ المساحة المتبقية. Expanded يجبر الطفل على ملء المساحة، Flexible يسمح للطفل بأن يكون أصغر. 5) الحاوية (Container): ويدجت مريح للرسم وتحديد المواقع وتغيير الحجم.",
        ),
      ],
      example:
          "Row(\n  mainAxisAlignment: MainAxisAlignment.spaceBetween,\n  children: [\n    Icon(Icons.star),\n    Expanded(child: Text('العنوان')),\n  ],\n)",
      notes: [
        "فهم قواعد تخطيط القيود ('القيود تنزل لأسفل. الأحجام تصعد لأعلى. الأصل يحدد الموقع.') هو مفتاح إتقان تخطيط Flutter.",
      ],
      bestUse: "بناء أي شاشة واجهة مستخدم تقريبًا يتطلب هذه اللبنات الأساسية.",
    ),
  ),
  InterviewQuestion(
    id: "FLT-028",
    difficulty: .advanced,
    category: "architecture",
    type: "practical",
    tags: ["navigator2", "router", "goRouter", "navigation"],
    contentEn: QuestionContent(
      question: "What is Navigator 2.0 (Router API)?",
      answer: [
        QuestionAnswerString(
          "Navigator 1.0 (imperative) uses push/pop. Navigator 2.0 (declarative) treats navigation as a function of the app state. It usually involves a Router, RouterDelegate, and RouteInformationParser. It enables: 1) Deep linking (URL syncing on web). 2) Handling OS back button correctly in complex flows. 3) Nested navigation. Most devs use packages like 'go_router' which simplify Navigator 2.0.",
        ),
      ],
      example:
          "// Using go_router (Simple Nav 2.0 wrapper)\nfinal router = GoRouter(\n  routes: [\n    GoRoute(path: '/', builder: (context, state) => HomePage()),\n    GoRoute(path: '/details', builder: (context, state) => DetailsPage()),\n  ],\n);",
      notes: [
        "Navigator 2.0 is complex to implement from scratch. Recommendation: Use 'go_router' or 'auto_route'.",
      ],
      bestUse:
          "Web apps (for URL handling), complex deep linking requirements, nested navigation flows",
    ),
    contentAr: QuestionContent(
      question: "ما هو Navigator 2.0 (Router API)؟",
      answer: [
        QuestionAnswerString(
          "Navigator 1.0 (أمر) يستخدم push/pop. Navigator 2.0 (تصريحي) يعامل التنقل كدالة لحالة التطبيق. يتضمن عادةً Router و RouterDelegate و RouteInformationParser. يتيح: 1) الروابط العميقة (مزامنة URL على الويب). 2) التعامل مع زر الرجوع في نظام التشغيل بشكل صحيح في التدفقات المعقدة. 3) التنقل المتداخل. يستخدم معظم المطورين حزمًا مثل 'go_router' التي تبسط Navigator 2.0.",
        ),
      ],
      example:
          "// استخدام go_router (غلاف بسيط لـ Nav 2.0)\nfinal router = GoRouter(\n  routes: [\n    GoRoute(path: '/', builder: (context, state) => HomePage()),\n    GoRoute(path: '/details', builder: (context, state) => DetailsPage()),\n  ],\n);",
      notes: [
        "Navigator 2.0 معقد التنفيذ من الصفر. التوصية: استخدم 'go_router' أو 'auto_route'.",
      ],
      bestUse:
          "تطبيقات الويب (للتعامل مع عناوين URL)، متطلبات الروابط العميقة المعقدة، تدفقات التنقل المتداخلة",
    ),
  ),
  InterviewQuestion(
    id: "FLT-029",
    difficulty: .advanced,
    category: "performance",
    type: "theoretical",
    tags: ["renderObject", "elements", "widgets"],
    contentEn: QuestionContent(
      question: "Explain the Widgets, Elements, and RenderObjects trees.",
      answer: [
        QuestionAnswerString(
          "1) Widget Tree: Immutable description of UI configuration. Cheap to create/destroy. 2) Element Tree: Mutable instances that manage the lifecycle of widgets. Links Widget to RenderObject. Holds state. 3) RenderObject Tree: Responsible for layout (sizing) and painting. Expensive to create/change. When a Widget rebuilds, the Element checks if the new Widget is the same type/key. If so, it updates the existing RenderObject properties instead of recreating it.",
        ),
      ],
      example:
          "Widget: Container(color: red)\nElement: ComponentElement(Container)\nRenderObject: RenderDecoratedBox(color: red)",
      notes: [
        "Understanding this helps optimize performance. Use 'const' widgets to prevent rebuilding Elements unnecessarily.",
      ],
      bestUse:
          "Advanced performance optimization, creating custom low-level layout widgets",
    ),
    contentAr: QuestionContent(
      question: "اشرح أشجار الويدجتات والعناصر وكائنات العرض.",
      answer: [
        QuestionAnswerString(
          "1) شجرة الويدجت: وصف غير قابل للتغيير لتكوين واجهة المستخدم. رخيص الإنشاء/التدمير. 2) شجرة العناصر: مثيلات قابلة للتغيير تدير دورة حياة الويدجتات. تربط الويدجت بـ RenderObject. تحتفظ بالحالة. 3) شجرة كائنات العرض: مسؤولة عن التخطيط (تغيير الحجم) والرسم. مكلفة الإنشاء/التغيير. عندما يعاد بناء الويدجت، يتحقق العنصر مما إذا كان الويدجت الجديد من نفس النوع/المفتاح. إذا كان الأمر كذلك، فإنه يحدث خصائص RenderObject الموجودة بدلاً من إعادة إنشائها.",
        ),
      ],
      example:
          "الويدجت: Container(color: red)\nالعنصر: ComponentElement(Container)\nكائن العرض: RenderDecoratedBox(color: red)",
      notes: [
        "فهم هذا يساعد في تحسين الأداء. استخدم ويدجتات 'const' لمنع إعادة بناء العناصر دون داع.",
      ],
      bestUse: "تحسين الأداء المتقدم، إنشاء ويدجتات تخطيط منخفضة المستوى مخصصة",
    ),
  ),
  InterviewQuestion(
    id: "FLT-030",
    difficulty: .advanced,
    category: "performance",
    type: "practical",
    tags: ["memoryLeak", "dispose", "devtools"],
    contentEn: QuestionContent(
      question: "How to detect and fix Memory Leaks in Flutter?",
      answer: [
        QuestionAnswerString(
          "Memory leaks happen when objects are still referenced after they are no longer needed, preventing Garbage Collection. Common causes: 1) Not disposing Controllers (AnimationController, TextEditingController). 2) Not cancelling Streams/Timers. 3) Storing BuildContext in async gaps improperly. Detection: Use Flutter DevTools Memory view. Look for increasing heap size over time or instances sticking around after leaving a screen. Fix: Use dispose() method properly.",
        ),
      ],
      example:
          "@override\nvoid dispose() {\n  controller.dispose();\n  streamSubscription.cancel();\n  super.dispose();\n}",
      notes: [
        "Always implement dispose logic for any stateful resource. Use 'LeakTracker' package for automated detection.",
      ],
      bestUse:
          "Maintenance of long-running apps, ensuring app stability on low-end devices",
    ),
    contentAr: QuestionContent(
      question: "كيف تكتشف وتعالج تسرب الذاكرة في Flutter؟",
      answer: [
        QuestionAnswerString(
          "يحدث تسرب الذاكرة عندما تظل الكائنات مشارًا إليها بعد عدم الحاجة إليها، مما يمنع جمع النفايات. الأسباب الشائعة: 1) عدم التخلص من المتحكمات (AnimationController، TextEditingController). 2) عدم إلغاء التدفقات/المؤقتات. 3) تخزين BuildContext في فجوات غير متزامنة بشكل غير صحيح. الاكتشاف: استخدم عرض الذاكرة في Flutter DevTools. ابحث عن زيادة حجم الكومة بمرور الوقت أو بقاء المثيلات بعد مغادرة الشاشة. الإصلاح: استخدم طريقة ()dispose بشكل صحيح.",
        ),
      ],
      example:
          "@override\nvoid dispose() {\n  controller.dispose();\n  streamSubscription.cancel();\n  super.dispose();\n}",
      notes: [
        "نفذ دائمًا منطق التخلص لأي مورد ذي حالة. استخدم حزمة 'LeakTracker' للاكتشاف الآلي.",
      ],
      bestUse:
          "صيانة التطبيقات طويلة التشغيل، ضمان استقرار التطبيق على الأجهزة المنخفضة المواصفات",
    ),
  ),
];
