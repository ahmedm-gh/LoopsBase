// /// Repository for interview questions data.
// library;

// import 'package:tuts/core/models/code_block.dart';
// import 'package:tuts/core/models/interview_question.dart';

// import '../../core/enums/difficulty_level.dart';
// import '../../core/models/question_answer.dart';

// /// Repository that provides interview questions
// class InterviewQuestionsRepository {
//   static List<InterviewQuestion>? _cachedQuestions;

//   /// Get all questions
//   static List<InterviewQuestion> getQuestions() {
//     _cachedQuestions ??= _buildQuestions();
//     return _cachedQuestions!;
//   }

//   /// Search questions by query
//   static List<InterviewQuestion> search(String query, String languageCode) {
//     if (query.isEmpty) return getQuestions();
//     final lowerQuery = query.toLowerCase();
//     return getQuestions().where((q) {
//       final content = q.getLocalizedContent(languageCode);
//       return content.question.toLowerCase().contains(lowerQuery) ||
//           content.answer.toString().toLowerCase().contains(lowerQuery) ||
//           (q.tags ?? []).any((t) => t.toLowerCase().contains(lowerQuery));
//     }).toList();
//   }

//   /// Get questions by difficulty
//   static List<InterviewQuestion> getByDifficulty(DifficultyLevel level) {
//     return getQuestions().where((q) => q.difficulty == level).toList();
//   }

//   /// Build questions from data
//   static List<InterviewQuestion> _buildQuestions() {
//     return questionsData;
//   }
// }

// const List<InterviewQuestion> questionsData = [
//   InterviewQuestion(
//     id: "FLT-001",
//     difficulty: .basic,
//     category: "basic",
//     type: "theoretical",
//     tags: ["widgets", "dartBasics"],
//     contentEn: QuestionContent(
//       question:
//           "What is Flutter and how does it differ from other mobile development frameworks?",
//       answer: [
//         QuestionAnswerString(
//           "Flutter is Google's open-source UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "Key differences:",
//           value: [
//             "Uses Dart programming language",
//             "Provides its own rendering engine (Skia/Impeller)",
//             "Widgets are not wrappers around native components",
//             "Hot reload for faster development",
//             "Single codebase for multiple platforms",
//             "Direct compilation to native ARM code for better performance.",
//           ],
//         ),
//       ],
//       notes: [
//         "Flutter's rendering approach gives consistent UI across platforms but requires downloading the rendering engine with the app.",
//       ],
//       bestUse:
//           "Cross-platform apps requiring consistent UI/UX, high-performance apps, apps with complex custom UI",
//     ),
//     contentAr: QuestionContent(
//       question:
//           "ما هو Flutter وكيف يختلف عن أطر تطوير التطبيقات المحمولة الأخرى؟",
//       answer: [
//         QuestionAnswerString(
//           "Flutter هو مجموعة أدوات واجهة المستخدم مفتوحة المصدر من Google لبناء تطبيقات مترجمة محليًا للهاتف المحمول والويب وسطح المكتب من قاعدة كود واحدة.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "الاختلافات الرئيسية:",
//           value: [
//             "يستخدم لغة البرمجة Dart",
//             "يوفر محرك العرض الخاص به (Skia/Impeller)",
//             "الويدجتات ليست أغلفة حول المكونات الأصلية",
//             "إعادة التحميل السريع لتطوير أسرع",
//             "قاعدة كود واحدة لمنصات متعددة",
//             "الإختبار المباشر إلى كود ARM الأصلي لأداء أفضل.",
//           ],
//         ),
//       ],
//       notes: [
//         "نهج العرض في Flutter يوفر واجهة مستخدم متسقة عبر المنصات ولكنه يتطلب تنزيل محرك العرض مع التطبيق.",
//       ],
//       bestUse:
//           "التطبيقات متعددة المنصات التي تتطلب واجهة مستخدم/تجربة مستخدم متسقة، التطبيقات عالية الأداء، التطبيقات ذات واجهة المستخدم المخصصة المعقدة",
//     ),
//     prosEn: [
//       "Fast development with hot reload",
//       "Single codebase for multiple platforms",
//       "Excellent performance",
//       "Rich widget library",
//       "Strong community support",
//     ],
//     consEn: [
//       "Larger app size due to engine inclusion",
//       "Relatively newer compared to native development",
//       "Limited third-party libraries compared to native",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-002",
//     difficulty: .basic,
//     category: "basic",
//     type: "theoretical",
//     tags: ["widgets", "statelessWidget", "statefulWidget"],
//     contentEn: QuestionContent(
//       question:
//           "What is the difference between StatelessWidget and StatefulWidget?",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "StatelessWidget: Immutable widget that doesn't maintain any state. It's built once and doesn't rebuild unless its parent rebuilds. Use for static content.",
//             "StatefulWidget: Mutable widget that maintains state. It can rebuild itself when setState() is called or when dependencies change. Has a State object that persists between rebuilds. Use when widget needs to change based on user interaction or data changes.",
//           ],
//         ),
//       ],
//       notes: [
//         "Choose StatelessWidget by default for better performance; only use StatefulWidget when state is needed.",
//       ],
//       bestUse:
//           "StatelessWidget for displaying static data; StatefulWidget for interactive UI, forms, animations",
//     ),
//     contentAr: QuestionContent(
//       question: "ما الفرق بين StatelessWidget و StatefulWidget؟",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "StatelessWidget: Immutable widget that doesn't maintain any state. It's built once and doesn't rebuild unless its parent rebuilds. Use for static content.",
//             "StatefulWidget: Mutable widget that maintains state. It can rebuild itself when setState() is called or when dependencies change. Has a State object that persists between rebuilds. Use when widget needs to change based on user interaction or data changes.",
//           ],
//         ),
//       ],
//       notes: [
//         "اختر StatelessWidget افتراضيًا لأداء أفضل؛ استخدم StatefulWidget فقط عندما تكون الحالة مطلوبة.",
//       ],
//       bestUse:
//           "StatelessWidget لعرض البيانات الثابتة؛ StatefulWidget لواجهة المستخدم التفاعلية والنماذج والرسوم المتحركة",
//     ),
//     examples: [
//       StrCodeBlock(
//         "class MyText extends StatelessWidget { /* static */ }\nclass Counter extends StatefulWidget { /* has state */ }",
//       ),
//     ],
//     prosEn: [
//       "StatelessWidget: Better performance, simpler",
//       "StatefulWidget: Dynamic content, user interaction support",
//     ],
//     consEn: [
//       "StatelessWidget: Cannot handle dynamic changes",
//       "StatefulWidget: More complex, potential performance overhead if misused",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-003",
//     difficulty: .intermediate,
//     category: "basic",
//     type: "theoretical",
//     tags: ["buildContext", "widgets"],
//     contentEn: QuestionContent(
//       question: "What is BuildContext and why is it important?",
//       answer: [
//         QuestionAnswerString(
//           "BuildContext is a handle to the location of a widget in the widget tree. It represents the relationship between a widget and its ancestors. Each widget has its own BuildContext passed to the build() method.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "Important for:",
//           value: [
//             "Accessing inherited widgets (Theme.of(context))",
//             "Navigation",
//             "Showing dialogs/snackbars",
//             "MediaQuery for screen dimensions",
//             "Finding ancestor/descendant widgets",
//           ],
//         ),
//       ],
//       notes: [
//         "Context is only valid during the build phase; don't store it for later async use without proper handling.",
//       ],
//       bestUse:
//           "Accessing theme data, navigation, inherited widgets, responsive design",
//     ),
//     contentAr: QuestionContent(
//       question: "ما هو BuildContext ولماذا هو مهم؟",
//       answer: [
//         QuestionAnswerString(
//           "BuildContext هو مؤشر لموقع الويدجت في شجرة الويدجت. يمثل العلاقة بين الويدجت وأسلافه. كل ويدجت له BuildContext الخاص به يتم تمريره إلى طريقة ()build.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "مهم لـ:",
//           value: [
//             "الوصول إلى الويدجتات الموروثة (Theme.of(context))",
//             "التنقل",
//             "عرض الحوارات/الإشعارات",
//             "MediaQuery لأبعاد الشاشة",
//             "العثور على الويدجتات الأسلاف/الأحفاد",
//           ],
//         ),
//       ],
//       notes: [
//         "السياق صالح فقط أثناء مرحلة البناء؛ لا تخزنه للاستخدام غير المتزامن اللاحق بدون معالجة مناسبة.",
//       ],
//       bestUse:
//           "الوصول إلى بيانات السمة، التنقل، الويدجتات الموروثة، التصميم المستجيب",
//     ),
//     examples: [
//       StrCodeBlock(
//         "Theme.of(context).primaryColor\nNavigator.of(context).push(...)\nMediaQuery.of(context).size",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-004",
//     difficulty: .basic,
//     category: "oop",
//     type: "theoretical",
//     tags: [
//       "dartBasics",
//       "encapsulation",
//       "inheritance",
//       "polymorphism",
//       "abstraction",
//     ],
//     contentEn: QuestionContent(
//       question:
//           "Explain the four pillars of Object-Oriented Programming with Dart examples.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "Encapsulation: Bundling data and methods, hiding internal details using private members (underscore prefix).",
//             "Inheritance: Creating new classes from existing ones using 'extends'.",
//             "Polymorphism: Objects taking multiple forms through method overriding and interfaces.",
//             "Abstraction: Hiding complex implementation details using abstract classes and interfaces.",
//           ],
//         ),
//       ],
//       notes: [
//         "Dart supports single inheritance but multiple interface implementation. Use mixins for shared behavior.",
//       ],
//       bestUse:
//           "Encapsulation for data protection, inheritance for code reuse, polymorphism for flexibility, abstraction for clean APIs",
//     ),
//     contentAr: QuestionContent(
//       question: "اشرح الأعمدة الأربعة للبرمجة كائنية التوجه مع أمثلة Dart.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "التغليف: تجميع البيانات والطرق، إخفاء التفاصيل الداخلية باستخدام الأعضاء الخاصة (بادئة الشرطة السفلية).",
//             "الوراثة: إنشاء فئات جديدة من الفئات الموجودة باستخدام 'extends'.",
//             "تعدد الأشكال: الكائنات تتخذ أشكالًا متعددة من خلال تجاوز الطرق والواجهات.",
//             "التجريد: إخفاء تفاصيل التنفيذ المعقدة باستخدام الفئات والواجهات المجردة.",
//           ],
//         ),
//       ],
//       notes: [
//         "Dart يدعم الوراثة الفردية ولكن تنفيذ واجهات متعددة. استخدم mixins للسلوك المشترك.",
//       ],
//       bestUse:
//           "التغليف لحماية البيانات، الوراثة لإعادة استخدام الكود، تعدد الأشكال للمرونة، التجريد لواجهات برمجية نظيفة",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// Encapsulation\nclass Account { String _balance; }\n// Inheritance\nclass SavingsAccount extends Account {}\n// Polymorphism\n@override void deposit() {}\n// Abstraction\nabstract class Shape { void draw(); }",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-005",
//     difficulty: .intermediate,
//     category: "solid",
//     type: "theoretical",
//     tags: [
//       "singleResponsibility",
//       "openClosed",
//       "liskovSubstitution",
//       "interfaceSegregation",
//       "dependencyInversion",
//     ],
//     contentEn: QuestionContent(
//       question: "Explain all five SOLID principles with Flutter/Dart examples.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "S - Single Responsibility: A class should have one reason to change. Examples: [StrCodeBlock( Separate UserRepository from UserValidator.",
//             "O - Open/Closed: Open for extension, closed for modification. Use abstract classes/interfaces.",
//             "L - Liskov Substitution: Subclasses should be substitutable for thei),r base classes without breaking functionality.",
//             "I - Interface Segregation: Don't force classes to implement interface],s they don't use. Create specific interfaces.",
//             "D - Dependency Inversion: Depend on abstractions, not concretions. Use dependency injection.",
//           ],
//         ),
//       ],
//       notes: [
//         "SOLID principles improve code maintainability, testability, and scalability. Essential for large Flutter applications.",
//       ],
//       bestUse:
//           "Apply in service layers, repositories, and business logic. Essential for clean architecture.",
//     ),
//     contentAr: QuestionContent(
//       question: "اشرح جميع مبادئ SOLID الخمسة مع أمثلة Flutter/Dart.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "S - المسؤولية الواحدة: يجب أن يكون للفئة سبب واحد للتغيير. مثال: فصل UserRepository عن UserValidator.",
//             "O - المفتوح/المغلق: مفتوح للتوسع، مغلق للتعديل. استخدم الفئات/الواجهات المجردة.",
//             "L - استبدال ليسكوف: يجب أن تكون الفئات الفرعية قابلة للاستبدال بفئاتها الأساسية دون كسر الوظائف.",
//             "I - فصل الواجهة: لا تجبر الفئات على تنفيذ واجهات لا تستخدمها. أنشئ واجهات محددة.",
//             "D - عكس التبعية: اعتمد على التجريدات، وليس على التفاصيل الملموسة. استخدم حقن التبعية.",
//           ],
//         ),
//       ],
//       notes: [
//         "مبادئ SOLID تحسن قابلية الصيانة والاختبار وقابلية التوسع للكود. ضرورية للتطبيقات الكبيرة في Flutter.",
//       ],
//       bestUse:
//           "طبقها في طبقات الخدمة والمستودعات ومنطق الأعمال. ضرورية للبنية النظيفة.",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// SRP\nclass UserRepository { /* only data access */ }\nclass UserValidator { /* only validation */ }\n// DIP\nclass UserService {\n  final IUserRepository repository;\n  UserService(this.repository); // inject abstraction\n}",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-006",
//     difficulty: .intermediate,
//     category: "designPatterns",
//     type: "practical",
//     tags: ["singleton", "factory", "repository"],
//     contentEn: QuestionContent(
//       question:
//           "Implement Singleton, Factory, and Repository patterns in Flutter.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "Singleton: Ensures only one instance exists. Use for app-wide services.",
//             "Factory: Creates objects without exposing creation logic. Use factory constructors in Dart.",
//             "Repository: Abstracts data sources, provides clean API for data access.",
//           ],
//         ),
//       ],
//       notes: [
//         "Singleton can cause testing issues; consider using dependency injection instead. Repository pattern is crucial for testable code.",
//       ],
//       bestUse:
//           "Singleton for global services, Factory for object creation, Repository for data layer abstraction",
//     ),
//     contentAr: QuestionContent(
//       question: "نفذ أنماط Singleton و Factory و Repository في Flutter.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "Singleton: يضمن وجود نسخة واحدة فقط. استخدمه للخدمات على مستوى التطبيق.",
//             "Factory: ينشئ كائنات دون كشف منطق الإنشاء. استخدم منشئات factory في Dart.",
//             "Repository: يجرد مصادر البيانات، يوفر واجهة برمجية نظيفة للوصول إلى البيانات.",
//           ],
//         ),
//       ],
//       notes: [
//         "Singleton يمكن أن يسبب مشاكل في الاختبار؛ فكر في استخدام حقن التبعية بدلاً من ذلك. نمط Repository حاسم للكود القابل للاختبار.",
//       ],
//       bestUse:
//           "Singleton للخدمات العامة، Factory لإنشاء الكائنات، Repository لتجريد طبقة البيانات",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// Singleton\nclass ApiService {\n  static final ApiService _instance = ApiService._internal();\n  factory ApiService() => _instance;\n  ApiService._internal();\n}\n\n// Factory\nclass Animal {\n  factory Animal.fromType(String type) {\n    if (type == 'dog') return Dog();\n    return Cat();\n  }\n}\n\n// Repository\nabstract class IUserRepository {\n  Future<User> getUser(String id);\n}\nclass UserRepository implements IUserRepository {\n  final ApiService _api;\n  final LocalDatabase _db;\n  Future<User> getUser(String id) async {\n    try { return await _api.getUser(id); }\n    catch (_) { return await _db.getUser(id); }\n  }\n}",
//       ),
//     ],
//     prosEn: [
//       "Singleton: Global access point, memory efficient",
//       "Factory: Flexible object creation, encapsulation",
//       "Repository: Testable, separates concerns, switch data sources easily",
//     ],
//     consEn: [
//       "Singleton: Hard to test, global state issues",
//       "Factory: Can become complex",
//       "Repository: Additional abstraction layer",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-007",
//     difficulty: .basic,
//     category: "dataStructures",
//     type: "theoretical",
//     tags: ["dartBasics", "algorithms"],
//     contentEn: QuestionContent(
//       question:
//           "What are the main data structures available in Dart and when to use each?",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "List: Ordered collection, indexed access, allows duplicates. Use for ordered data.",
//             "Set: Unordered collection, unique elements only. Use when uniqueness matters.",
//             "Map: Key-value pairs, fast lookup by key. Use for associative data.",
//             "Queue: FIFO operations.",
//             "LinkedHashSet: Maintains insertion order.",
//             "HashMap/LinkedHashMap: Different iteration guarantees.",
//           ],
//         ),
//       ],
//       notes: [
//         "Choose based on requirements: order, uniqueness, lookup speed. List for most cases, Set for uniqueness, Map for key-based access.",
//       ],
//       bestUse:
//           "List for ordered collections, Set for unique items, Map for fast key lookups, Queue for task scheduling",
//     ),
//     contentAr: QuestionContent(
//       question:
//           "ما هي هياكل البيانات الرئيسية المتاحة في Dart ومتى تستخدم كل منها؟",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "List: مجموعة مرتبة، وصول مفهرس، تسمح بالتكرار. استخدمها للبيانات المرتبة.",
//             "Set: مجموعة غير مرتبة، عناصر فريدة فقط. استخدمها عندما يهم التفرد.",
//             "Map: أزواج مفتاح-قيمة، بحث سريع بالمفتاح. استخدمها للبيانات الترابطية.",
//             "Queue: عمليات FIFO.",
//             "LinkedHashSet: يحافظ على ترتيب الإدراج.",
//             "HashMap/LinkedHashMap: ضمانات تكرار مختلفة.",
//           ],
//         ),
//       ],
//       notes: [
//         "اختر بناءً على المتطلبات: الترتيب، التفرد، سرعة البحث. List لمعظم الحالات، Set للتفرد، Map للوصول القائم على المفتاح.",
//       ],
//       bestUse:
//           "List للمجموعات المرتبة، Set للعناصر الفريدة، Map للبحث السريع بالمفاتيح، Queue لجدولة المهام",
//     ),
//     examples: [
//       StrCodeBlock(
//         "List<String> items = ['a', 'b', 'c'];\nSet<int> uniqueIds = {1, 2, 3};\nMap<String, User> userMap = {'id1': user1};\nQueue<Task> taskQueue = Queue();",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-008",
//     difficulty: .intermediate,
//     category: "stateManagement",
//     type: "practical",
//     tags: ["provider", "bloc", "riverpod", "setState"],
//     contentEn: QuestionContent(
//       question:
//           "Compare setState, Provider, BLoC, and Riverpod for state management.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "setState: Built-in, simple, local state only, causes entire widget rebuild.",
//             "Provider: InheritedWidget wrapper, easy to use, dependency injection, less boilerplate than BLoC.",
//             "BLoC: Stream-based, separates business logic from UI, more boilerplate, great for complex apps.",
//             "Riverpod: Provider 2.0, compile-time safety, no BuildContext needed, better testing, modern approach.",
//           ],
//         ),
//       ],
//       notes: [
//         "Choose based on app complexity: setState for simple, Provider for medium, BLoC for complex enterprise, Riverpod for modern type-safe approach.",
//       ],
//       bestUse:
//           "setState for local state, Provider for simple global state, BLoC for complex business logic, Riverpod for new projects wanting type safety",
//     ),
//     contentAr: QuestionContent(
//       question: "قارن بين setState و Provider و BLoC و Riverpod لإدارة الحالة.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "setState: مدمج، بسيط، حالة محلية فقط، يسبب إعادة بناء الويدجت بالكامل.",
//             "Provider: غلاف InheritedWidget، سهل الاستخدام، حقن التبعية، أقل كودًا نمطيًا من BLoC.",
//             "BLoC: قائم على التدفقات، يفصل منطق الأعمال عن واجهة المستخدم، المزيد من الكود النمطي، رائع للتطبيقات المعقدة.",
//             "Riverpod: Provider 2.0، أمان وقت الترجمة، لا حاجة لـ BuildContext، اختبار أفضل، نهج حديث.",
//           ],
//         ),
//       ],
//       notes: [
//         "اختر بناءً على تعقيد التطبيق: setState للبسيط، Provider للمتوسط، BLoC للمعقد، Riverpod للنهج الحديث الآمن من حيث النوع.",
//       ],
//       bestUse:
//           "setState للحالة المحلية، Provider للحالة العامة البسيطة، BLoC لمنطق الأعمال المعقد، Riverpod للمشاريع الجديدة التي تريد أمان النوع",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// setState\nsetState(() { counter++; });\n\n// Provider\nProvider.of<Counter>(context).increment();\n\n// BLoC\ncounterBloc.add(IncrementEvent());\n\n// Riverpod\nref.read(counterProvider.notifier).increment();",
//       ),
//     ],
//     prosEn: [
//       "setState: Simple, no dependencies",
//       "Provider: Easy learning curve, good community",
//       "BLoC: Testable, scalable, clear separation",
//       "Riverpod: Type-safe, no context, excellent testing",
//     ],
//     consEn: [
//       "setState: Doesn't scale, hard to manage",
//       "Provider: Can get verbose, runtime errors",
//       "BLoC: Steep learning curve, more code",
//       "Riverpod: Newer, smaller ecosystem",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-009",
//     difficulty: .intermediate,
//     category: "basic",
//     type: "practical",
//     tags: ["asyncAwait", "futures", "streams"],
//     contentEn: QuestionContent(
//       question:
//           "Explain Future, async/await, and Streams in Dart with examples.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "Future: Represents a potential value or error available at some time in the future. Single asynchronous result.",
//             "async/await: Syntactic sugar for working with Futures, makes async code look synchronous.",
//             "Streams: Sequence of asynchronous events, can emit multiple values over time. Single vs multiple subscription streams.",
//           ],
//         ),
//       ],
//       notes: [
//         "Use Future for single async operations (API calls), Streams for continuous data (WebSocket, user events). Always handle errors with try-catch or catchError.",
//       ],
//       bestUse:
//           "Future for HTTP requests, database queries; Streams for real-time data, event handling, user input",
//     ),
//     contentAr: QuestionContent(
//       question: "اشرح Future و async/await و Streams في Dart مع أمثلة.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "Future: يمثل قيمة محتملة أو خطأ متاح في وقت ما في المستقبل. نتيجة غير متزامنة واحدة.",
//             "async/await: سكر نحوي للعمل مع Futures، يجعل الكود غير المتزامن يبدو متزامنًا.",
//             "Streams: تسلسل من الأحداث غير المتزامنة، يمكن أن يصدر قيمًا متعددة مع مرور الوقت. تدفقات اشتراك واحد مقابل اشتراك متعدد.",
//           ],
//         ),
//       ],
//       notes: [
//         "استخدم Future للعمليات غير المتزامنة الواحدة (استدعاءات API)، Streams للبيانات المستمرة (WebSocket، أحداث المستخدم). تعامل دائمًا مع الأخطاء باستخدام try-catch أو catchError.",
//       ],
//       bestUse:
//           "Future لطلبات HTTP واستعلامات قاعدة البيانات؛ Streams للبيانات في الوقت الفعلي ومعالجة الأحداث وإدخال المستخدم",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// Future\nFuture<String> fetchData() async {\n  await Future.delayed(Duration(seconds: 2));\n  return 'Data';\n}\n\n// async/await\nvoid loadData() async {\n  final data = await fetchData();\n  print(data);\n}\n\n// Stream\nStream<int> countStream() async* {\n  for (int i = 0; i < 5; i++) {\n    await Future.delayed(Duration(seconds: 1));\n    yield i;\n  }\n}\n\n// Listen to stream\ncountStream().listen((value) => print(value));",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-010",
//     difficulty: .advanced,
//     category: "performance",
//     type: "practical",
//     tags: ["optimization", "lazyLoading", "memoryManagement"],
//     contentEn: QuestionContent(
//       question:
//           "What are the best practices for optimizing Flutter app performance?",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "Use const constructors for immutable widgets.",
//             "Implement ListView.builder for long lists (lazy loading).",
//             "Avoid unnecessary rebuilds with keys, const, RepaintBoundary.",
//             "Use cached_network_image for images.",
//             "Minimize expensive operations in build().",
//             "Profile with Flutter DevTools.",
//             "Use compute() for heavy computations.",
//             "Implement pagination.",
//             "Optimize images (size, format).",
//             "Use Impeller rendering engine (Flutter 3.10+).",
//           ],
//         ),
//       ],
//       notes: [
//         "Profile before optimizing. Use Flutter DevTools to identify bottlenecks. Premature optimization can harm code readability.",
//       ],
//       bestUse:
//           "Apply these techniques in production apps with performance issues, especially with large lists or complex UI",
//     ),
//     contentAr: QuestionContent(
//       question: "ما هي أفضل الممارسات لتحسين أداء تطبيق Flutter؟",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "استخدم منشئات const للويدجتات غير القابلة للتغيير.",
//             "نفذ ListView.builder للقوائم الطويلة (التحميل الكسول).",
//             "تجنب عمليات إعادة البناء غير الضرورية باستخدام المفاتيح و const و RepaintBoundary.",
//             "استخدم cached_network_image للصور.",
//             "قلل العمليات المكلفة في ()build.",
//             "راقب الأداء باستخدام Flutter DevTools.",
//             "استخدم ()compute للحسابات الثقيلة.",
//             "نفذ الترقيم.",
//             "حسّن الصور (الحجم والتنسيق).",
//             "استخدم محرك العرض Impeller (Flutter 3.10+).",
//           ],
//         ),
//       ],
//       notes: [
//         "راقب الأداء قبل التحسين. استخدم Flutter DevTools لتحديد الاختناقات. التحسين المبكر يمكن أن يضر بقابلية قراءة الكود.",
//       ],
//       bestUse:
//           "طبق هذه التقنيات في تطبيقات الإنتاج مع مشاكل الأداء، خاصة مع القوائم الكبيرة أو واجهة المستخدم المعقدة",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// Const constructor\nconst Text('Static text');\n\n// ListView.builder\nListView.builder(\n  itemCount: items.length,\n  itemBuilder: (context, index) => ItemWidget(items[index]),\n);\n\n// Isolate for heavy work\nawait compute(heavyComputation, data);\n\n// RepaintBoundary\nRepaintBoundary(\n  child: ComplexWidget(),\n);",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-011",
//     difficulty: .intermediate,
//     category: "performance",
//     type: "practical",
//     tags: ["keys", "widgets", "optimization"],
//     contentEn: QuestionContent(
//       question: "What are Keys in Flutter and when should you use them?",
//       answer: [
//         QuestionAnswerString(
//           "Keys control how widgets are replaced in the widget tree. They preserve state when widgets move around.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "Types:",
//           value: [
//             "ValueKey (simple value)",
//             "ObjectKey (object identity)",
//             "UniqueKey (unique every build)",
//             "GlobalKey (access state from anywhere, expensive)",
//           ],
//         ),
//         QuestionAnswerOrderedList(
//           title: "Usage:",
//           value: [
//             "When preserving state in a list of StatefulWidgets that changes order.",
//             "To access a widget's state from a parent (GlobalKey).",
//             "To force a widget to rebuild (UniqueKey).",
//           ],
//         ),
//       ],
//       notes: [
//         "Don't use keys unless necessary, especially GlobalKey as it's expensive. Most StatelessWidgets don't need keys.",
//       ],
//       bestUse:
//           "Lists of stateful items (TodoList), Form validation, preserving scroll position",
//     ),
//     contentAr: QuestionContent(
//       question: "ما هي المفاتيح (Keys) في Flutter ومتى يجب استخدامها؟",
//       answer: [
//         QuestionAnswerString(
//           "تتحكم المفاتيح في كيفية استبدال الويدجتات في شجرة الويدجت. تحافظ على الحالة عندما تتحرك الويدجتات.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "الأنواع:",
//           value: [
//             "ValueKey (قيمة بسيطة)",
//             "ObjectKey (هوية الكائن)",
//             "UniqueKey (فريد في كل بناء)",
//             "GlobalKey (الوصول للحالة من أي مكان، مكلف)",
//           ],
//         ),
//         QuestionAnswerOrderedList(
//           title: "الاستخدام:",
//           value: [
//             "عند الحفاظ على الحالة في قائمة من StatefulWidgets التي يتغير ترتيبها.",
//             "للوصول إلى حالة الويدجت من الأصل (GlobalKey).",
//             "لإجبار الويدجت على إعادة البناء (UniqueKey).",
//           ],
//         ),
//       ],
//       notes: [
//         "لا تستخدم المفاتيح إلا إذا لزم الأمر، خاصة GlobalKey لأنه مكلف. معظم StatelessWidgets لا تحتاج إلى مفاتيح.",
//       ],
//       bestUse:
//           "قوائم العناصر ذات الحالة (قوائم المهام)، التحقق من صحة النموذج، الحفاظ على موضع التمرير",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// Preserving state in list\nkey: ValueKey(item.id),\n\n// Accessing state\nfinal key = GlobalKey<FormState>();\nkey.currentState?.validate();",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-012",
//     difficulty: .intermediate,
//     category: "basic",
//     type: "theoretical",
//     tags: ["lifecycle", "appLifecycle", "widgetsBinding"],
//     contentEn: QuestionContent(
//       question: "Explain the Flutter Application Lifecycle.",
//       answer: [
//         QuestionAnswerString(
//           "The lifecycle of the app as a whole (not just a widget). Monitor using WidgetsBindingObserver and didChangeAppLifecycleState.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "States:",
//           value: [
//             "detached: App is not hosted by any view (starting/closing).",
//             "inactive: App is in foreground but not receiving input (phone call, split screen).",
//             "paused: App is in background, not visible (user went to home).",
//             "resumed: App is visible and responding to input.",
//           ],
//         ),
//       ],
//       notes: [
//         "Crucial for handling resources like camera, location, or saving progress when the user leaves the app.",
//       ],
//       bestUse:
//           "Saving data when app pauses, stopping animations/timers in background",
//     ),
//     contentAr: QuestionContent(
//       question: "اشرح دورة حياة تطبيق Flutter.",
//       answer: [
//         QuestionAnswerString(
//           "دورة حياة التطبيق ككل (وليس فقط الويدجت). راقب باستخدام WidgetsBindingObserver و didChangeAppLifecycleState.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "الحالات:",
//           value: [
//             "detached: التطبيق غير مستضاف (بدء/إغلاق).",
//             "inactive: التطبيق في المقدمة ولكنه لا يتلقى إدخالاً (مكالمة هاتفية، شاشة مقسمة).",
//             "paused: التطبيق في الخلفية، غير مرئي (ذهب المستخدم للصفحة الرئيسية).",
//             "resumed: التطبيق مرئي ويستجيب للإدخال.",
//           ],
//         ),
//       ],
//       notes: [
//         "حاسم للتعامل مع الموارد مثل الكاميرا، الموقع، أو حفظ التقدم عند مغادرة المستخدم للتطبيق.",
//       ],
//       bestUse:
//           "حفظ البيانات عند توقف التطبيق، إيقاف الرسوم المتحركة/المؤقتات في الخلفية",
//     ),
//     examples: [
//       StrCodeBlock(
//         "class _MyAppState extends State<MyApp> with WidgetsBindingObserver {\n  @override\n  void didChangeAppLifecycleState(AppLifecycleState state) {\n    if (state == AppLifecycleState.paused) { /* save data */ }\n  }\n}",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-013",
//     difficulty: .advanced,
//     category: "testing",
//     type: "practical",
//     tags: ["unitTesting", "widgetTesting", "integrationTesting"],
//     contentEn: QuestionContent(
//       question:
//           "What are the three types of tests in Flutter and how do they differ?",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "Unit Tests: Test a single function, method, or class. Verified logic. Fast execution. No UI.",
//             "Widget Tests: Test a single widget. Verify UI layout and interaction. Uses WidgetTester. Medium speed.",
//             "Integration Tests: Test the entire app or large parts. Runs on real device/emulator. Verifies end-to-end user flows. Slowest.",
//           ],
//         ),
//       ],
//       notes: [
//         "Follow the testing pyramid: Many Unit tests, fewer Widget tests, very few Integration tests.",
//       ],
//       bestUse:
//           "Unit for logic/models, Widget for UI components, Integration for critical user flows (login, checkout)",
//     ),
//     contentAr: QuestionContent(
//       question: "ما هي أنواع الاختبارات الثلاثة في Flutter وكيف تختلف؟",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "اختبارات الوحدة: اختبار دالة أو طريقة أو فئة واحدة. منطق تم التحقق منه. تنفيذ سريع. لا واجهة مستخدم.",
//             "اختبارات الويدجت: اختبار ويدجت واحد. التحقق من تخطيط وتفاعل واجهة المستخدم. يستخدم WidgetTester. سرعة متوسطة.",
//             "اختبارات التكامل: اختبار التطبيق بالكامل أو أجزاء كبيرة. يعمل على جهاز حقيقي/محاكي. يتحقق من تدفقات المستخدم من البداية للنهاية. الأبطأ.",
//           ],
//         ),
//       ],
//       notes: [
//         "اتبع هرم الاختبار: العديد من اختبارات الوحدة، عدد أقل من اختبارات الويدجت، عدد قليل جدًا من اختبارات التكامل.",
//       ],
//       bestUse:
//           "الوحدة للمنطق/النماذج، الويدجت لمكونات واجهة المستخدم، التكامل لتدفقات المستخدم الحرجة (تسجيل الدخول، الدفع)",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// Unit\nexpect(calculator.add(2, 2), 4);\n\n// Widget\nawait tester.pumpWidget(MyApp());\nexpect(find.text('Hello'), findsOneWidget);\n\n// Integration\napp.main();\nawait tester.pumpAndSettle();",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-014",
//     difficulty: .advanced,
//     category: "performance",
//     type: "theoretical",
//     tags: ["rendering", "impeller", "skia"],
//     contentEn: QuestionContent(
//       question: "What is Impeller and how does it improve Flutter performance?",
//       answer: [
//         QuestionAnswerString(
//           "Impeller is the new rendering engine for Flutter, replacing Skia on iOS (default in 3.10+) and Android (preview). It solves 'shader compilation jank' by pre-compiling shaders at build time (AOT) instead of runtime. It is designed specifically for Flutter to leverage modern graphics APIs (Metal for iOS, Vulkan for Android) efficiently, providing silky-smooth animations and eliminating drop frames during first runs.",
//         ),
//       ],
//       notes: [
//         "Impeller is a major milestone for Flutter performance. It makes animations predictable and smooth.",
//       ],
//       bestUse:
//           "Default on iOS now, opt-in for Android for high-performance graphics needs",
//     ),
//     contentAr: QuestionContent(
//       question: "ما هو Impeller وكيف يحسن أداء Flutter؟",
//       answer: [
//         QuestionAnswerString(
//           "Impeller هو محرك العرض الجديد لـ Flutter، يحل محل Skia على iOS (افتراضي في 3.10+) و Android (معاينة). يحل مشكلة 'تقطع تجميع التظليل' عن طريق التجميع المسبق للتظليل في وقت البناء (AOT) بدلاً من وقت التشغيل. تم تصميمه خصيصًا لـ Flutter للاستفادة من واجهات برمجة تطبيقات الرسومات الحديثة (Metal لـ iOS، Vulkan لـ Android) بكفاءة، مما يوفر رسومًا متحركة سلسة للغاية ويقضي على سقوط الإطارات أثناء التشغيل الأول.",
//         ),
//       ],
//       notes: [
//         "Impeller هو معلم رئيسي لأداء Flutter. يجعل الرسوم المتحركة متوقعة وسلسة.",
//       ],
//       bestUse:
//           "افتراضي على iOS الآن، اختياري لـ Android لاحتياجات الرسومات عالية الأداء",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// No code change required usually.\n// Enable on Android (preview):\n<meta-data\n  android:name=\"io.flutter.embedding.android.EnableImpeller\"\n  android:value=\"true\" />",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-015",
//     difficulty: .intermediate,
//     category: "networking",
//     type: "practical",
//     tags: ["http", "dio", "restApi"],
//     contentEn: QuestionContent(
//       question:
//           "How to handle networking in Flutter? Difference between http and dio packages?",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "'http': Basic, official, simple API, good for simple requests.",
//             "'dio': Powerful, feature-rich 3rd party package. Features of Dio: Interceptors (global headers/logging), Global configuration, File downloading/uploading, Cancellation tokens (cancel request), Custom adapters, Transformer.",
//             "Choose 'http' for prototypes/simple apps, 'dio' for production/complex apps.",
//           ],
//         ),
//       ],
//       notes: [
//         "Always handle network errors (SocketException, 4xx/5xx responses) and show user feedback.",
//       ],
//       bestUse:
//           "Use Dio for enterprise apps needing auth token refresh, logging, file uploads",
//     ),
//     contentAr: QuestionContent(
//       question:
//           "كيفية التعامل مع الشبكات في Flutter؟ الفرق بين حزمتي http و dio؟",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "'http': أساسية، رسمية، واجهة برمجة تطبيقات بسيطة، جيدة للطلبات البسيطة.",
//             "'dio': قوية، حزمة طرف ثالث غنية بالميزات. ميزات Dio: المعترضات (الرؤوس العالمية/التسجيل)، التكوين العالمي، تنزيل/تحميل الملفات، رموز الإلغاء (إلغاء الطلب)، محولات مخصصة، محولات.",
//             "اختر 'http' للنماذج الأولية/التطبيقات البسيطة، و 'dio' للإنتاج/التطبيقات المعقدة.",
//           ],
//         ),
//       ],
//       notes: [
//         "تعامل دائمًا مع أخطاء الشبكة (SocketException، استجابات 4xx/5xx) واعرض ملاحظات المستخدم.",
//       ],
//       bestUse:
//           "استخدم Dio لتطبيقات المؤسسات التي تحتاج إلى تحديث رمز المصادقة، التسجيل، تحميل الملفات",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// http\nawait http.get(Uri.parse('url'));\n\n// dio\nfinal dio = Dio();\ndio.interceptors.add(LogInterceptor());\nawait dio.get('url', options: Options(headers: {'Auth': 'token'}));",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-016",
//     difficulty: .intermediate,
//     category: "database",
//     type: "practical",
//     tags: ["sqlite", "hive", "sharedPreferences", "persistence"],
//     contentEn: QuestionContent(
//       question:
//           "Comparison of local database options: SharedPreferences vs SQLite vs Hive.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "SharedPreferences: Key-Value store, xml/plist based. Good for flags, settings, simple tokens. NOT for large data. Sync/Async API.",
//             "SQLite (sqflite): Relational database (SQL). Good for structured data, complex queries, relations. Reliable, standard.",
//             "Hive: NoSQL, key-value, pure Dart, extremely fast, encrypted. Good for storing objects, offline cache. No native dependencies (easy setup).",
//           ],
//         ),
//       ],
//       notes: [
//         "Isar is a newer, faster alternative to Hive (by same author) with full query support. Consider it for new projects.",
//       ],
//       bestUse:
//           "SharedPreferences for settings, SQLite for complex relational data, Hive/Isar for fast object storage and caching",
//     ),
//     contentAr: QuestionContent(
//       question:
//           "مقارنة خيارات قواعد البيانات المحلية: SharedPreferences vs SQLite vs Hive.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "SharedPreferences: مخزن مفتاح-قيمة، يعتمد على xml/plist. جيد للإشارات، الإعدادات، الرموز البسيطة. ليس للبيانات الكبيرة. واجهة برمجة تطبيقات متزامنة/غير متزامنة.",
//             "SQLite (sqflite): قاعدة بيانات علائقية (SQL). جيدة للبيانات المنظمة، الاستعلامات المعقدة، العلاقات. موثوقة، قياسية.",
//             "Hive: NoSQL، مفتاح-قيمة، Dart نقي، سريع للغاية، مشفر. جيد لتخزين الكائنات، ذاكرة التخزين المؤقت دون اتصال. لا توجد تبعيات أصلية (إعداد سهل).",
//           ],
//         ),
//       ],
//       notes: [
//         "Isar هو بديل أحدث وأسرع لـ Hive (من نفس المؤلف) مع دعم كامل للاستعلام. فكر فيه للمشاريع الجديدة.",
//       ],
//       bestUse:
//           "SharedPreferences للإعدادات، SQLite للبيانات العلائقية المعقدة، Hive/Isar لتخزين الكائنات السريع والتخزين المؤقت",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// SharedPreferences\nprefs.setBool('isDark', true);\n\n// SQLite\ndb.query('users', where: 'id = ?', whereArgs: [1]);\n\n// Hive\nbox.put('key', userObject);",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-017",
//     difficulty: .advanced,
//     category: "architecture",
//     type: "theoretical",
//     tags: ["cleanArchitecture", "mvc", "mvvm", "featuresFirst"],
//     contentEn: QuestionContent(
//       question:
//           "Common Architectural Patterns in Flutter? (MVC, MVVM, Clean Architecture)",
//       answer: [
//         QuestionAnswerString(
//           "Architecture organizes code for maintainability.",
//         ),
//         QuestionAnswerOrderedList(
//           value: [
//             "MVC (Model-View-Controller): Classic, separate data, UI, logic. Often Controller manages UI state.",
//             "MVVM (Model-View-ViewModel): View binds to ViewModel. ViewModel holds state/logic, unaware of View. Very popular in Flutter (Provider/Riverpod act as VM).",
//             "Clean Architecture: Layers (Presentation, Domain, Data). Dependency Rule (inner layers don't know outer). Highly testable and scalable.",
//           ],
//         ),
//       ],
//       notes: [
//         "Don't over-engineer. Use MVVM/Feature-first for medium apps. Use Clean Architecture for large, long-term enterprise apps.",
//       ],
//       bestUse:
//           "Feature-first (Layered) architecture is the standard recommendation for most scalable Flutter apps",
//     ),
//     contentAr: QuestionContent(
//       question:
//           "اشرح البنية النظيفة (Clean Architecture) في Flutter مع الطبقات وهيكل المجلدات.",
//       answer: [
//         QuestionAnswerString(
//           "البنية النظيفة تفصل الاهتمامات إلى طبقات: العرض (واجهة المستخدم، الويدجتات، إدارة الحالة)، النطاق (منطق الأعمال، حالات الاستخدام، الكيانات)، البيانات (المستودعات، مصادر البيانات، النماذج).",
//         ),
//         QuestionAnswerOrderedList(
//           title: "المفاهيم الرئيسية:",
//           value: [
//             "قاعدة التبعية: الطبقات الخارجية تعتمد على الداخلية، وليس العكس.",
//             "هيكل المجلدات: lib/features/[feature]/presentation|domain|data.",
//             "الفوائد: قابل للاختبار، قابل للصيانة، قابل للتوسع، مستقل عن الأطر.",
//           ],
//         ),
//       ],
//       notes: [
//         "البنية النظيفة تزيد التعقيد الأولي لكنها تؤتي ثمارها في التطبيقات الكبيرة. استخدمها للتطبيقات المؤسسية، وليس المشاريع البسيطة.",
//       ],
//       bestUse:
//           "التطبيقات واسعة النطاق، المشاريع المؤسسية، الفرق التي تحتاج فصلًا واضحًا للاهتمامات",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// Clean Architecture Folders\n/lib\n  /features\n    /login\n      /data (repos, sources)\n      /domain (entities, usecases)\n      /presentation (blocs, pages)",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-018",
//     difficulty: .basic,
//     category: "dartBasics",
//     type: "practical",
//     tags: ["nullSafety", "soundness"],
//     contentEn: QuestionContent(
//       question: "What is Null Safety and how does it help?",
//       answer: [
//         QuestionAnswerString(
//           "Null Safety allows the Dart type system to distinguish between nullable and non-nullable types. By default, types are non-nullable (`String`), preventing null reference errors at runtime (Standard Null Pointer Exception). `String?` means it can be null.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "Benefits:",
//           value: [
//             "Compile-time error detection.",
//             "Smaller, faster binaries (compiler knows what isn't null).",
//             "Cleaner code (fewer null checks needed).",
//           ],
//         ),
//       ],
//       notes: [
//         "Migrate older apps to null safety. Use '!' only when you are 100% sure value is not null, otherwise plain crash.",
//       ],
//       bestUse:
//           "Use in all modern Dart/Flutter projects. It's mandatory since Flutter 2.",
//     ),
//     contentAr: QuestionContent(
//       question: "ما هو أمان العدم (Null Safety) وكيف يساعد؟",
//       answer: [
//         QuestionAnswerString(
//           "يسمح أمان العدم لنظام أنواع Dart بالتمييز بين الأنواع القابلة للعدم وغير القابلة للعدم. افتراضيًا، الأنواع غير قابلة للعدم (`String`)، مما يمنع أخطاء مرجع العدم في وقت التشغيل. `String?` تعني أنه يمكن أن يكون null.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "الفوائد:",
//           value: [
//             "اكتشاف الأخطاء في وقت الترجمة.",
//             "ثنائيات أصغر وأسرع (المترجم يعرف ما ليس null).",
//             "كود أنظف (فحوصات null أقل).",
//           ],
//         ),
//       ],
//       notes: [
//         "رحّل التطبيقات القديمة إلى أمان العدم. استخدم '!' فقط عندما تكون متأكدًا 100% أن القيمة ليست null، وإلا سيحدث تعطل.",
//       ],
//       bestUse:
//           "استخدمه في جميع مشاريع Dart/Flutter الحديثة. إلزامي منذ Flutter 2.",
//     ),
//     examples: [
//       StrCodeBlock(
//         "String name = 'John'; // Never null\nString? nickname; // Can be null\nlate String id; // Lazy init, non-null\n\n// Usage\nprint(nickname?.length ?? 0);",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-019",
//     difficulty: .advanced,
//     category: "performance",
//     type: "practical",
//     tags: ["isolates", "concurrency", "eventLoop", "multithreading"],
//     contentEn: QuestionContent(
//       question: "What are Isolates and how do they differ from threads?",
//       answer: [
//         QuestionAnswerString(
//           "Dart is single-threaded (Event Loop). To perform heavy parallel work without blocking the UI, we use Isolates.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "Key differences vs Threads:",
//           value: [
//             "Isolates DO NOT share memory (no shared state concurrency).",
//             "They are independent workers with their own memory and event loop.",
//             "Communication happens via message passing (ports).",
//             "This prevents race conditions and locks.",
//           ],
//         ),
//         QuestionAnswerString(
//           "'compute()' is a helper used to spawn an isolate for a single task easily.",
//         ),
//       ],
//       notes: [
//         "Use Isolates for JSON parsing of large files, image processing, or heavy calculations. Don't use for simple IO (that's what futures are for).",
//       ],
//       bestUse: "Heavy computational tasks that block the UI thread > 16ms",
//     ),
//     contentAr: QuestionContent(
//       question: "ما هي العزلات (Isolates) وكيف تختلف عن الخيوط (Threads)؟",
//       answer: [
//         QuestionAnswerString(
//           "Dart أحادي الخيط (حلقة الحدث). لأداء عمل متوازٍ ثقيل دون حجب واجهة المستخدم، نستخدم العزلات.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "الاختلافات الرئيسية عن الخيوط:",
//           value: [
//             "العزلات لا تشترك في الذاكرة (لا توجد حالة مشتركة للتزامن).",
//             "هم عمال مستقلون بذاكرتهم الخاصة وحلقة الحدث.",
//             "يحدث الاتصال عبر تمرير الرسائل (المنافذ).",
//             "هذا يمنع ظروف السباق والأقفال.",
//           ],
//         ),
//         QuestionAnswerString(
//           "'()'compute هو مساعد يستخدم لإنشاء عزلة لمهمة واحدة بسهولة.",
//         ),
//       ],
//       notes: [
//         "استخدم العزلات لتحليل JSON للملفات الكبيرة، معالجة الصور، أو الحسابات الثقيلة. لا تستخدمها للإدخال/الإخراج البسيط (هذا ما تفعله Futures).",
//       ],
//       bestUse: "المهام الحسابية الثقيلة التي تحجب خيط واجهة المستخدم > 16ms",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// Spawn basic isolate\nReceivePort receivePort = ReceivePort();\nawait Isolate.spawn(worker, receivePort.sendPort);\n\n// Simple way\nfinal result = await compute(heavyFunction, data);",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-020",
//     difficulty: .advanced,
//     category: "nativePlatform",
//     type: "practical",
//     tags: ["methodChannel", "platformChannels", "nativeCode"],
//     contentEn: QuestionContent(
//       question:
//           "How to communicate with specific native platform code (Android/iOS)?",
//       answer: [
//         QuestionAnswerString(
//           "Use Platform Channels. MethodChannel deals with invoking methods.",
//         ),
//         QuestionAnswerOrderedList(
//           value: [
//             "Flutter: creates MethodChannel('name'), calls invokeMethod('method').",
//             "Native (Android/Kotlin): listens on same channel name, overrides onMethodCall, checks method name, executes native code, returns result.",
//             "Native (iOS/Swift): establishes FlutterMethodChannel, setMethodCallHandler. Valid data types are automatically serialized.",
//           ],
//         ),
//       ],
//       notes: [
//         "For common tasks (camera, gps), use existing plugins (pub.dev) instead of writing custom platform channels.",
//       ],
//       bestUse:
//           "Accessing native APIs not available in plugins, integrating native SDKs",
//     ),
//     contentAr: QuestionContent(
//       question: "كيف تتواصل مع كود النظام الأساسي الأصلي المحدد (Android/iOS)؟",
//       answer: [
//         QuestionAnswerString(
//           "استخدم قنوات المنصة. MethodChannel تتعامل مع استدعاء الطرق.",
//         ),
//         QuestionAnswerOrderedList(
//           value: [
//             "Flutter: ينشئ MethodChannel('name')، يستدعي invokeMethod('method').",
//             "Native (Android/Kotlin): يستمع على نفس اسم القناة، يتجاوز onMethodCall، يتحقق من اسم الطريقة، ينفذ الكود الأصلي، يعيد النتيجة.",
//             "Native (iOS/Swift): يؤسس FlutterMethodChannel، يحدد setMethodCallHandler. يتم تسلسل أنواع البيانات الصالحة تلقائيًا.",
//           ],
//         ),
//       ],
//       notes: [
//         "للمهام الشائعة (الكاميرا، نظام تحديد المواقع العالمي)، استخدم الملحقات الموجودة (pub.dev) بدلاً من كتابة قنوات منصة مخصصة.",
//       ],
//       bestUse:
//           "الوصول إلى واجهات برمجة التطبيقات الأصلية غير المتوفرة في الملحقات، دمج حزم SDK الأصلية",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// Flutter\nconst platform = MethodChannel('com.example/sensors');\nfinal result = await platform.invokeMethod('getBatteryLevel');\n\n// Native side requires corresponding listener setup.",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-021",
//     difficulty: .intermediate,
//     category: "animations",
//     type: "practical",
//     tags: ["implicitAnimations", "explicitAnimations", "animationController"],
//     contentEn: QuestionContent(
//       question: "Difference between Implicit and Explicit Animations?",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "Implicit Animations: Simple, built-in widgets that animate changes automatically when a property changes. Easy to use, no AnimationController needed. Examples: AnimatedContainer, AnimatedOpacity, AnimatedAlign.",
//             "Explicit Animations: Complex, requires manual control using AnimationController. Use when you need to repeat, reverse, or coordinate animations. Examples: RotationTransition, FadeTransition, SlideTransition.",
//           ],
//         ),
//       ],
//       notes: [
//         "Start with Implicit Animations. If more control is needed (pause, reverse, loop), switch to Explicit.",
//       ],
//       bestUse:
//           "Implicit for simple UI transitions (hover, hide/show). Explicit for complex effects, staggered animations.",
//     ),
//     contentAr: QuestionContent(
//       question: "ما الفرق بين الرسوم المتحركة الضمنية والصريحة؟",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "الرسوم المتحركة الضمنية: ويدجتات بسيطة ومدمجة تقوم بتحريك التغييرات تلقائيًا عند تغيير الخاصية. سهلة الاستخدام، لا تحتاج إلى AnimationController. أمثلة: AnimatedContainer، AnimatedOpacity، AnimatedAlign.",
//             "الرسوم المتحركة الصريحة: معقدة، تتطلب تحكمًا يدويًا باستخدام AnimationController. استخدمها عندما تحتاج إلى تكرار الرسوم المتحركة أو عكسها أو تنسيقها. أمثلة: RotationTransition، FadeTransition، SlideTransition.",
//           ],
//         ),
//       ],
//       notes: [
//         "ابدأ بالرسوم المتحركة الضمنية. إذا كنت بحاجة إلى مزيد من التحكم (إيقاف مؤقت، عكس، تكرار)، انتقل إلى الصريحة.",
//       ],
//       bestUse:
//           "الضمنية لانتقالات واجهة المستخدم البسيطة (تحويم، إخفاء/إظهار). الصريحة للتأثيرات المعقدة، الرسوم المتحركة المتدرجة.",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// Implicit\nAnimatedOpacity(opacity: _visible ? 1.0 : 0.0, duration: Duration(seconds: 1));\n\n// Explicit\ncontroller = AnimationController(vsync: this, duration: Duration(seconds: 1));\nFadeTransition(opacity: controller, child: Text('Hi'));",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-022",
//     difficulty: .advanced,
//     category: "animations",
//     type: "practical",
//     tags: ["customPaint", "canvas", "drawing"],
//     contentEn: QuestionContent(
//       question: "How to use CustomPaint in Flutter?",
//       answer: [
//         QuestionAnswerString(
//           "CustomPaint is a widget that provides a canvas for low-level drawing. It takes a 'painter' argument (subclass of CustomPainter). In the paint() method, you use the Canvas object to draw shapes, paths, text, images, etc. You must also implement shouldRepaint() to optimize performance. Useful for complex custom shapes, charts, or visual effects not possible with standard widgets.",
//         ),
//       ],
//       notes: [
//         "CustomPaint is powerful but can be expensive. Avoid complex calculations in paint(). Use it only when necessary.",
//       ],
//       bestUse:
//           "Custom charts, graphing, complex background patterns, interactive drawing apps",
//     ),
//     contentAr: QuestionContent(
//       question: "كيفية استخدام CustomPaint في Flutter؟",
//       answer: [
//         QuestionAnswerString(
//           "CustomPaint هو ويدجت يوفر لوحة للرسم منخفض المستوى. يأخذ وسيط 'painter' (فئة فرعية من CustomPainter). في طريقة ()paint، تستخدم كائن Canvas لرسم الأشكال والمسارات والنصوص والصور وما إلى ذلك. يجب عليك أيضًا تنفيذ ()shouldRepaint لتحسين الأداء. مفيد للأشكال المخصصة المعقدة أو المخططات أو التأثيرات المرئية غير الممكنة باستخدام الويدجتات القياسية.",
//         ),
//       ],
//       notes: [
//         "CustomPaint قوي ولكنه قد يكون مكلفًا. تجنب الحسابات المعقدة في paint(). استخدمه فقط عند الضرورة.",
//       ],
//       bestUse:
//           "المخططات المخصصة، الرسوم البيانية، أنماط الخلفية المعقدة، تطبيقات الرسم التفاعلية",
//     ),
//     examples: [
//       StrCodeBlock(
//         "class MyPainter extends CustomPainter {\n  @override\n  void paint(Canvas canvas, Size size) {\n    final paint = Paint()..color = Colors.blue;\n    canvas.drawCircle(Offset(size.width/2, size.height/2), 20, paint);\n  }\n  @override\n  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;\n}",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-023",
//     difficulty: .intermediate,
//     category: "basic",
//     type: "practical",
//     tags: ["streamBuilder", "futureBuilder", "asyncWidgets"],
//     contentEn: QuestionContent(
//       question: "What are StreamBuilder and FutureBuilder?",
//       answer: [
//         QuestionAnswerString(
//           "Widgets that build themselves based on the latest snapshot of interaction with a Stream or Future.",
//         ),
//         QuestionAnswerOrderedList(
//           value: [
//             "FutureBuilder: Triggers a build when a Future completes (one-time). Good for API calls.",
//             "StreamBuilder: Triggers a rebuild every time a Stream emits a new value (continuous). Good for real-time data.",
//             "Both expose connectionState (waiting, active, done) and data/error properties.",
//           ],
//         ),
//       ],
//       notes: [
//         "Always check for errors and loading states. Avoid creating the Future/Stream inside the build method of the Builder directly, or it will restart on every rebuild.",
//       ],
//       bestUse:
//           "Displaying async data directly in the UI without managing state variables manually",
//     ),
//     contentAr: QuestionContent(
//       question: "ما هما StreamBuilder و FutureBuilder؟",
//       answer: [
//         QuestionAnswerString(
//           "ويدجتات تبني نفسها بناءً على أحدث لقطة للتفاعل مع Stream أو Future.",
//         ),
//         QuestionAnswerOrderedList(
//           value: [
//             "FutureBuilder: يطلق عملية بناء عند اكتمال Future (مرة واحدة). جيد لاستدعاءات API.",
//             "StreamBuilder: يطلق عملية إعادة بناء في كل مرة يصدر فيها Stream قيمة جديدة (مستمر). جيد للبيانات في الوقت الفعلي.",
//             "كلاهما يعرض خصائص connectionState (انتظار، نشط، تم) والبيانات/الخطأ.",
//           ],
//         ),
//       ],
//       notes: [
//         "تحقق دائمًا من الأخطاء وحالات التحميل. تجنب إنشاء Future/Stream داخل طريقة build الخاصة بـ Builder مباشرة، وإلا فسيتم إعادة تشغيلها عند كل إعادة بناء.",
//       ],
//       bestUse:
//           "عرض البيانات غير المتزامنة مباشرة في واجهة المستخدم دون إدارة متغيرات الحالة يدويًا",
//     ),
//     examples: [
//       StrCodeBlock(
//         "FutureBuilder<String>(\n  future: fetchData(),\n  builder: (context, snapshot) {\n    if (snapshot.hasData) return Text('\${snapshot.data}');\n    return CircularProgressIndicator();\n  },\n)",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-024",
//     difficulty: .advanced,
//     category: "modernFeatures",
//     type: "theoretical",
//     tags: ["accessibility", "semantics", "screenReader"],
//     contentEn: QuestionContent(
//       question: "How do you make a Flutter app accessible?",
//       answer: [
//         QuestionAnswerString(
//           "Flutter provides Semantic widgets to annotate the widget tree for screen readers (TalkBack/VoiceOver).",
//         ),
//         QuestionAnswerOrderedList(
//           value: [
//             "Semantics Widget: Wrap widgets to provide label, hint, value.",
//             "ExcludeSemantics: Hide widgets from screen readers (e.g., decorative images).",
//             "MergeSemantics: Group widgets together (e.g., a card with text) to be read as one unit.",
//             "Use standard widgets (Radio, Switch) as they have built-in semantics.",
//           ],
//         ),
//       ],
//       notes: [
//         "Test with real devices and accessibility tools enabled. Fonts should be scalable.",
//       ],
//       bestUse:
//           "Mandatory for government apps and good practice for all public-facing apps",
//     ),
//     contentAr: QuestionContent(
//       question: "كيف تجعل تطبيق Flutter قابلاً للوصول (Accessible)؟",
//       answer: [
//         QuestionAnswerString(
//           "يوفر Flutter ويدجتات Semantics للتعليق على شجرة الويدجت لقارئات الشاشة (TalkBack/VoiceOver).",
//         ),
//         QuestionAnswerOrderedList(
//           value: [
//             "Semantics Widget: لف الويدجتات لتوفير تسمية، تلميح، قيمة.",
//             "ExcludeSemantics: إخفاء الويدجتات عن قارئات الشاشة (مثل الصور الزخرفية).",
//             "MergeSemantics: تجميع الويدجتات معًا (مثل بطاقة بها نص) لتقرأ كوحدة واحدة.",
//             "استخدم الويدجتات القياسية (Radio، Switch) لأن لها دلالات مدمجة.",
//           ],
//         ),
//       ],
//       notes: [
//         "اختبر باستخدام أجهزة حقيقية وأدوات إمكانية الوصول مفعلة. يجب أن تكون الخطوط قابلة للتطوير.",
//       ],
//       bestUse:
//           "إلزامي للتطبيقات الحكومية وممارسة جيدة لجميع التطبيقات الموجهة للجمهور",
//     ),
//     examples: [
//       StrCodeBlock(
//         "Semantics(\n  label: 'Profile Picture',\n  hint: 'Double tap to edit',\n  child: Image.asset('profile.png'),\n)",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-025",
//     difficulty: .advanced,
//     category: "security",
//     type: "critical",
//     tags: ["obfuscation", "flutterSecureStorage", "sslPinning"],
//     contentEn: QuestionContent(
//       question: "What are key security best practices in Flutter?",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "Obfuscation: Use '--obfuscate' flag when building releases to hide Dart code strings.",
//             "Secure Storage: Use 'flutter_secure_storage' to store sensitive data (tokens) instead of SharedPreferences.",
//             "SSL Pinning: Prevent Man-in-the-Middle attacks by verifying server certificates.",
//             "Background Snapshots: Hide app content in recent apps list.",
//             "Local Auth: Use biometrics for authentication.",
//             "Avoid committing keys to version control.",
//           ],
//         ),
//       ],
//       notes: [
//         "Reverse engineering Flutter apps is possible, so never store API keys or secrets in plain text in the code.",
//       ],
//       bestUse: "Banking apps, apps handling personal data or payments",
//     ),
//     contentAr: QuestionContent(
//       question: "ما هي الممارسات الأمنية الرئيسية في Flutter؟",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "التعتيم (Obfuscation): استخدم علامة '--obfuscate' عند بناء الإصدارات لإخفاء سلاسل كود Dart.",
//             "التخزين الآمن: استخدم 'flutter_secure_storage' لتخزين البيانات الحساسة (الرموز) بدلاً من SharedPreferences.",
//             "تثبيت SSL: منع هجمات الوسيط عن طريق التحقق من شهادات الخادم.",
//             "لقطات الخلفية: إخفاء محتوى التطبيق في قائمة التطبيقات الحديثة.",
//             "المصادقة المحلية: استخدم القياسات الحيوية للمصادقة.",
//             "تجنب ارتكاب المفاتيح للتحكم في الإصدار.",
//           ],
//         ),
//       ],
//       notes: [
//         "الهندسة العكسية لتطبيقات Flutter ممكنة، لذا لا تقم أبدًا بتخزين مفاتيح API أو الأسرار بنص عادي في الكود.",
//       ],
//       bestUse:
//           "تطبيقات البنوك، التطبيقات التي تتعامل مع البيانات الشخصية أو المدفوعات",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// Build with obfuscation\nflutter build apk --obfuscate --split-debug-info=/<project-name>/<directory>\n\n// Secure Storage\nfinal storage = FlutterSecureStorage();\nawait storage.write(key: 'jwt', value: token);",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-026",
//     difficulty: .advanced,
//     category: "deployment",
//     type: "theoretical",
//     tags: ["ciCd", "codemagic", "githubActions", "fastlane"],
//     contentEn: QuestionContent(
//       question: "How do you implement CI/CD for a Flutter application?",
//       answer: [
//         QuestionAnswerString(
//           "CI/CD (Continuous Integration/Continuous Deployment) automates testing and building. Tools: Codemagic (Flutter specific), GitHub Actions, Bitrise. Fastlane is often used to script the deployment process.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "Steps:",
//           value: [
//             "Trigger on push to main branch.",
//             "Run 'flutter analyze' (linting).",
//             "Run 'flutter test' (unit/widget tests).",
//             "Build artifacts (IPA, APK, AppBundle).",
//             "Deploy to stores (App Store Connect, Play Console).",
//           ],
//         ),
//       ],
//       notes: [
//         "Automating this saves massive amounts of time and catches bugs early before they reach production.",
//       ],
//       bestUse:
//           "Professional teams, open-source projects, ensuring code quality standards",
//     ),
//     contentAr: QuestionContent(
//       question: "كيف تنفذ CI/CD لتطبيق Flutter؟",
//       answer: [
//         QuestionAnswerString(
//           "CI/CD (التكامل المستمر/النشر المستمر) يؤتمت الاختبار والبناء. الأدوات: Codemagic (مخصص لـ Flutter)، GitHub Actions، Bitrise. غالبًا ما يستخدم Fastlane لبرمجة عملية النشر.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "الخطوات:",
//           value: [
//             "1) التشغيل عند الدفع إلى الفرع الرئيسي.",
//             "2) تشغيل 'flutter analyze' (التحقق من الأخطاء).",
//             "3) تشغيل 'flutter test' (اختبارات الوحدة/الويدجت).",
//             "4) بناء القطع الأثرية (IPA، APK، AppBundle).",
//             "5) النشر في المتاجر (App Store Connect، Play Console).",
//           ],
//         ),
//       ],
//       notes: [
//         "أتمتة هذا يوفر كميات هائلة من الوقت ويكتشف الأخطاء مبكرًا قبل وصولها للإنتاج.",
//       ],
//       bestUse: "الفرق المحترفة، المشاريع مفتوحة المصدر، ضمان معايير جودة الكود",
//     ),
//     examples: [
//       StrCodeBlock(
//         "# GitHub Actions Example (simplified)\nname: Flutter CI\non: [push]\njobs:\n  build:\n    runs-on: ubuntu-latest\n    steps:\n      - uses: actions/checkout@v2\n      - uses: subosito/flutter-action@v1\n      - run: flutter test",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-027",
//     difficulty: .basic,
//     category: "basic",
//     type: "practical",
//     tags: ["column", "row", "stack", "expanded"],
//     contentEn: QuestionContent(
//       question: "Explain Common Layout Widgets used in Flutter.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "Column: Arranges children vertically. MainAxisAlignment (vertical), CrossAxisAlignment (horizontal).",
//             "Row: Arranges children horizontally.",
//             "Stack: Layers widgets on top of each other. Use Positioned to place children.",
//             "Expanded/Flexible: Used inside Row/Column to take up remaining space. Expanded forces child to fill space, Flexible allows child to be smaller.",
//             "Container: Convenience widget for painting, positioning, and sizing.",
//           ],
//         ),
//       ],
//       notes: [
//         "Understanding constraint layout rules ('Constraints go down. Sizes go up. Parent sets position.') is key to mastering Flutter layout.",
//       ],
//       bestUse:
//           "Building almost any UI screen requires these basic building blocks.",
//     ),
//     contentAr: QuestionContent(
//       question: "اشرح ويدجتات التخطيط الشائعة المستخدمة في Flutter.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "العمود (Column): يرتب الأطفال عموديًا. MainAxisAlignment (عمودي)، CrossAxisAlignment (أفقي).",
//             "الصف (Row): يرتب الأطفال أفقيًا.",
//             "المكدس (Stack): يضع الويدجتات فوق بعضها البعض. استخدم Positioned لوضع الأطفال.",
//             "Expanded/Flexible: يستخدم داخل Row/Column لأخذ المساحة المتبقية. Expanded يجبر الطفل على ملء المساحة، Flexible يسمح للطفل بأن يكون أصغر.",
//             "الحاوية (Container): ويدجت مريح للرسم وتحديد المواقع وتغيير الحجم.",
//           ],
//         ),
//       ],
//       notes: [
//         "فهم قواعد تخطيط القيود ('القيود تنزل لأسفل. الأحجام تصعد لأعلى. الأصل يحدد الموقع.') هو مفتاح إتقان تخطيط Flutter.",
//       ],
//       bestUse: "بناء أي شاشة واجهة مستخدم تقريبًا يتطلب هذه اللبنات الأساسية.",
//     ),
//     examples: [
//       StrCodeBlock(
//         "Row(\n  mainAxisAlignment: MainAxisAlignment.spaceBetween,\n  children: [\n    Icon(Icons.star),\n    Expanded(child: Text('Title')),\n  ],\n)",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-028",
//     difficulty: .advanced,
//     category: "architecture",
//     type: "practical",
//     tags: ["navigator2", "router", "goRouter", "navigation"],
//     contentEn: QuestionContent(
//       question: "What is Navigator 2.0 (Router API)?",
//       answer: [
//         QuestionAnswerString(
//           "Navigator 1.0 (imperative) uses push/pop. Navigator 2.0 (declarative) treats navigation as a function of the app state. It usually involves a Router, RouterDelegate, and RouteInformationParser. Most devs use packages like 'go_router' which simplify Navigator 2.0.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "It enables:",
//           value: [
//             "Deep linking (URL syncing on web).",
//             "Handling OS back button correctly in complex flows.",
//             "Nested navigation.",
//           ],
//         ),
//       ],
//       notes: [
//         "Navigator 2.0 is complex to implement from scratch. Recommendation: Use 'go_router' or 'auto_route'.",
//       ],
//       bestUse:
//           "Web apps (for URL handling), complex deep linking requirements, nested navigation flows",
//     ),
//     contentAr: QuestionContent(
//       question: "ما هو Navigator 2.0 (Router API)؟",
//       answer: [
//         QuestionAnswerString(
//           "Navigator 1.0 (أمر) يستخدم push/pop. Navigator 2.0 (تصريحي) يعامل التنقل كدالة لحالة التطبيق. يتضمن عادةً Router و RouterDelegate و RouteInformationParser. يستخدم معظم المطورين حزمًا مثل 'go_router' التي تبسط Navigator 2.0.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "يتيح:",
//           value: [
//             "الروابط العميقة (مزامنة URL على الويب).",
//             "التعامل مع زر الرجوع في نظام التشغيل بشكل صحيح في التدفقات المعقدة.",
//             "التنقل المتداخل.",
//           ],
//         ),
//       ],
//       notes: [
//         "Navigator 2.0 معقد التنفيذ من الصفر. التوصية: استخدم 'go_router' أو 'auto_route'.",
//       ],
//       bestUse:
//           "تطبيقات الويب (للتعامل مع عناوين URL)، متطلبات الروابط العميقة المعقدة، تدفقات التنقل المتداخلة",
//     ),
//     examples: [
//       StrCodeBlock(
//         "// Using go_router (Simple Nav 2.0 wrapper)\nfinal router = GoRouter(\n  routes: [\n    GoRoute(path: '/', builder: (context, state) => HomePage()),\n    GoRoute(path: '/details', builder: (context, state) => DetailsPage()),\n  ],\n);",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-029",
//     difficulty: .advanced,
//     category: "performance",
//     type: "theoretical",
//     tags: ["renderObject", "elements", "widgets"],
//     contentEn: QuestionContent(
//       question: "Explain the Widgets, Elements, and RenderObjects trees.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "Widget Tree: Immutable description of UI configuration. Cheap to create/destroy.",
//             "Element Tree: Mutable instances that manage the lifecycle of widgets. Links Widget to RenderObject. Holds state.",
//             "RenderObject Tree: Responsible for layout (sizing) and painting. Expensive to create/change.",
//           ],
//         ),
//         QuestionAnswerString(
//           "When a Widget rebuilds, the Element checks if the new Widget is the same type/key. If so, it updates the existing RenderObject properties instead of recreating it.",
//         ),
//       ],
//       notes: [
//         "Understanding this helps optimize performance. Use 'const' widgets to prevent rebuilding Elements unnecessarily.",
//       ],
//       bestUse:
//           "Advanced performance optimization, creating custom low-level layout widgets",
//     ),
//     contentAr: QuestionContent(
//       question: "اشرح أشجار الويدجتات والعناصر وكائنات العرض.",
//       answer: [
//         QuestionAnswerOrderedList(
//           value: [
//             "شجرة الويدجت: وصف غير قابل للتغيير لتكوين واجهة المستخدم. رخيص الإنشاء/التدمير.",
//             "شجرة العناصر: مثيلات قابلة للتغيير تدير دورة حياة الويدجتات. تربط الويدجت بـ RenderObject. تحتفظ بالحالة.",
//             "شجرة كائنات العرض: مسؤولة عن التخطيط (تغيير الحجم) والرسم. مكلفة الإنشاء/التغيير.",
//           ],
//         ),
//         QuestionAnswerString(
//           "عندما يعاد بناء الويدجت، يتحقق العنصر مما إذا كان الويدجت الجديد من نفس النوع/المفتاح. إذا كان الأمر كذلك، فإنه يحدث خصائص RenderObject الموجودة بدلاً من إعادة إنشائها.",
//         ),
//       ],
//       notes: [
//         "فهم هذا يساعد في تحسين الأداء. استخدم ويدجتات 'const' لمنع إعادة بناء العناصر دون داع.",
//       ],
//       bestUse: "تحسين الأداء المتقدم، إنشاء ويدجتات تخطيط منخفضة المستوى مخصصة",
//     ),
//     examples: [
//       StrCodeBlock(
//         "Widget: Container(color: red)\nElement: ComponentElement(Container)\nRenderObject: RenderDecoratedBox(color: red)",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-030",
//     difficulty: .advanced,
//     category: "performance",
//     type: "practical",
//     tags: ["memoryLeak", "dispose", "devtools"],
//     contentEn: QuestionContent(
//       question: "How to detect and fix Memory Leaks in Flutter?",
//       answer: [
//         QuestionAnswerString(
//           "Memory leaks happen when objects are still referenced after they are no longer needed, preventing Garbage Collection.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "Common causes:",
//           value: [
//             "Not disposing Controllers (AnimationController, TextEditingController).",
//             "Not cancelling Streams/Timers.",
//             "Storing BuildContext in async gaps improperly.",
//           ],
//         ),
//         QuestionAnswerString(
//           "Detection: Use Flutter DevTools Memory view. Look for increasing heap size over time or instances sticking around after leaving a screen. Fix: Use dispose() method properly.",
//         ),
//       ],
//       notes: [
//         "Always implement dispose logic for any stateful resource. Use 'LeakTracker' package for automated detection.",
//       ],
//       bestUse:
//           "Maintenance of long-running apps, ensuring app stability on low-end devices",
//     ),
//     contentAr: QuestionContent(
//       question: "كيف تكتشف وتعالج تسرب الذاكرة في Flutter؟",
//       answer: [
//         QuestionAnswerString(
//           "يحدث تسرب الذاكرة عندما تظل الكائنات مشارًا إليها بعد عدم الحاجة إليها، مما يمنع جمع النفايات.",
//         ),
//         QuestionAnswerOrderedList(
//           title: "الأسباب الشائعة:",
//           value: [
//             "عدم التخلص من المتحكمات (AnimationController، TextEditingController).",
//             "عدم إلغاء التدفقات/المؤقتات.",
//             "تخزين BuildContext في فجوات غير متزامنة بشكل غير صحيح.",
//           ],
//         ),
//         QuestionAnswerString(
//           "الاكتشاف: استخدم عرض الذاكرة في Flutter DevTools. ابحث عن زيادة حجم الكومة بمرور الوقت أو بقاء المثيلات بعد مغادرة الشاشة. الإصلاح: استخدم طريقة ()dispose بشكل صحيح.",
//         ),
//       ],
//       notes: [
//         "نفذ دائمًا منطق التخلص لأي مورد ذي حالة. استخدم حزمة 'LeakTracker' للاكتشاف الآلي.",
//       ],
//       bestUse:
//           "صيانة التطبيقات طويلة التشغيل، ضمان استقرار التطبيق على الأجهزة المنخفضة المواصفات",
//     ),
//     examples: [
//       StrCodeBlock(
//         "@override\nvoid dispose() {\n  controller.dispose();\n  streamSubscription.cancel();\n  super.dispose();\n}",
//       ),
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-031",
//     difficulty: .basic,
//     category: "basic",
//     type: "theoretical",
//     tags: ["basic", "flutter", "crossplatform"],
//     contentEn: QuestionContent(
//       question: 'What is Flutter?',
//       answer: [
//         QuestionAnswerString(
//           'Flutter is an open-source UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase. It uses the Dart programming language and provides a rich set of customizable widgets and tools for fast development.',
//         ),
//       ],
//       bestUse:
//           'Ideal for building cross-platform mobile apps with beautiful custom UI and fast development cycles.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هو فلاتر؟',
//       answer: [
//         QuestionAnswerString(
//           'فلاتر هو إطار عمل مفتوح المصدر لبناء تطبيقات مُترجمة بشكل أصلي لأنظمة تشغيل الهواتف المحمولة والويب وسطح المكتب من قاعدة كود واحدة. يستخدم لغة دارت ويوفر مجموعة غنية من الودجتس والأدوات القابلة للتخصيص لتطوير سريع.',
//         ),
//       ],
//       bestUse:
//           'مناسب لبناء تطبيقات جوال عبر المنصات مع واجهة مستخدم جذابة ودورات تطوير سريعة.',
//     ),
//     prosEn: [
//       "High performance due to native compilation",
//       "hot reload for fast development",
//       "single codebase for multiple platforms.",
//     ],
//     prosAr: [
//       "أداء عالي بفضل الترجمة الأصلية، وإعادة تحميل ساخنة لتطوير سريع، وقاعدة كود واحدة للعديد من المنصات.",
//     ],
//     consEn: [
//       "Larger app size and fewer third-party libraries compared to some alternatives",
//       "learning Dart may be challenging for new developers.",
//     ],
//     consAr: [
//       "حجم تطبيق أكبر ومكتبات تابعة أقل مقارنة ببعض البدائل، وقد تكون دارت أصعب في التعلم للمطورين الجدد.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-032",
//     difficulty: .basic,
//     category: "basic",
//     type: "theoretical",
//     tags: ["basic", "dart", "language"],
//     contentEn: QuestionContent(
//       question: 'What is Dart, and why is it used in Flutter?',
//       answer: [
//         QuestionAnswerString(
//           'Dart is a modern object-oriented programming language optimized for building UI, used to develop Flutter applications. It compiles to native code for high performance and has features like sound null-safety and a rich standard library.',
//         ),
//       ],
//       bestUse:
//           'Best used for Flutter app development and client-side applications where performance and developer productivity matter.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هي لغة دارت ولماذا تُستخدم في فلاتر؟',
//       answer: [
//         QuestionAnswerString(
//           'دارت هي لغة برمجة حديثة موجهة للكائنات ومُحسَّنة لبناء واجهات المستخدم، تُستخدم لتطوير تطبيقات فلاتر. يتم تجميعها إلى كود أصلي لتحقيق أداء عالي وتحتوي على ميزات مثل السلامة من القيمة الخالية (Null Safety) ومكتبة قياسية غنية.',
//         ),
//       ],
//       bestUse:
//           'أفضل استخدام لها في تطوير تطبيقات فلاتر والتطبيقات على جانب العميل حيث يهم الأداء وإنتاجية المطور.',
//     ),
//     prosEn: [
//       "Easy to learn for developers familiar with C-style syntax",
//       "supports both Ahead-of-Time (AOT) and Just-in-Time (JIT) compilation for fast development and high performance.",
//     ],
//     prosAr: [
//       "سهلة التعلم للمطورين المعتادين على صيغ لغات مثل C، وتدعم التجميع المسبق (AOT) والتنفيذي في وقت التشغيل (JIT) لتطوير سريع وأداء عالي.",
//     ],
//     consEn: [
//       "Smaller ecosystem compared to languages like JavaScript",
//       "and primarily used with Flutter on the client side",
//       "limiting reuse in server-side contexts.",
//     ],
//     consAr: [
//       "نظام بيئي أصغر مقارنة بلغات مثل JavaScript، ويُستخدم بشكل أساسي مع فلاتر على جانب العميل، مما يحد من إعادة الاستخدام في السياقات الخدمية.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-033",
//     difficulty: .basic,
//     category: "basic",
//     type: "theoretical",
//     tags: ["basic", "flutter", "widgets"],
//     contentEn: QuestionContent(
//       question: 'What are Widgets in Flutter?',
//       answer: [
//         QuestionAnswerString(
//           'Widgets are the basic building blocks of a Flutter app’s UI. Everything you see on screen in Flutter is a Widget, which can be either stateful or stateless. Widgets describe how to display elements on the screen in a declarative manner.',
//         ),
//       ],
//       bestUse:
//           'Use widgets for all UI components; take advantage of stateless widgets for static parts and stateful widgets for interactive parts.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هي الودجتس (Widgets) في فلاتر؟',
//       answer: [
//         QuestionAnswerString(
//           'الودجتس هي لبنات البناء الأساسية لواجهة تطبيق فلاتر. كل ما تراه على الشاشة في فلاتر هو ودجت، والذي يمكن أن يكون ذا حالة (Stateful) أو بدون حالة (Stateless). تصف الودجتس كيف يتم عرض العناصر على الشاشة بطريقة إعلانية.',
//         ),
//       ],
//       bestUse:
//           'استخدم الودجتس لجميع مكونات الواجهة؛ استفد من الودجتس بدون حالة للأجزاء الثابتة ومن الودجتس ذات الحالة للأجزاء التفاعلية.',
//     ),
//     prosEn: [
//       "Highly customizable and composable; you can build complex UIs by combining simpler widgets. Flutter’s hot reload works well with its widget tree.",
//     ],
//     prosAr: [
//       "قابلة للتخصيص بدرجة عالية وقابلة للتركيب؛ يمكنك بناء واجهات مستخدم معقدة بدمج ودجتس أبسط. تعيد ميزة التحميل السريع (Hot Reload) في فلاتر بناء الواجهة بشكل جيد اعتمادًا على شجرة الودجتس.",
//     ],
//     consEn: [
//       "Deep widget hierarchies can become complex. Requires understanding of widget lifecycle for effective state management.",
//     ],
//     consAr: [
//       "يمكن أن تصبح تسلسلات الودجتس المعقدة معقدة. يتطلب فهم دورة حياة الودجت من أجل إدارة الحالة بشكل فعّال.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-034",
//     difficulty: .basic,
//     category: "basic",
//     type: "theoretical",
//     tags: ["basic", "flutter", "widgets", "performance"],
//     contentEn: QuestionContent(
//       question:
//           'What is the difference between StatelessWidget and StatefulWidget?',
//       answer: [
//         QuestionAnswerString(
//           '''A StatelessWidget cannot change its state once built; it’s immutable. A StatefulWidget has mutable state (via a State object) that can change over time, triggering rebuilds.

// StatelessWidget is simpler and more performant for static content. StatefulWidget allows dynamic and interactive UI.''',
//         ),
//       ],
//       bestUse:
//           'Use StatelessWidget for UI that doesn’t change (e.g., static text), and StatefulWidget when UI needs to update (e.g., forms, animations).',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما الفرق بين StatelessWidget و StatefulWidget؟',
//       answer: [
//         QuestionAnswerString(
//           '''StatelessWidget لا يمكن أن تتغير حالتها بعد بنائه؛ فهي غير قابلة للتغيير. أما StatefulWidget فلها حالة قابلة للتغيير (من خلال كائن State) يمكن أن تتغير مع الوقت، مما يؤدي إلى إعادة بناء الودجت.

// StatelessWidget أبسط وأكثر كفاءة للأجزاء الثابتة. StatefulWidget تتيح واجهة مستخدم ديناميكية وتفاعلية.''',
//         ),
//       ],
//       bestUse:
//           'استخدم StatelessWidget للواجهة التي لا تتغير (مثل النص الثابت)، وStatefulWidget عندما تحتاج الواجهة إلى التحديث (مثل النماذج أو الرسوم المتحركة).',
//     ),
//     examples: [
//       StrCodeBlock(r'''class MyWidget extends StatefulWidget {
//   @override
//   _MyWidgetState createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text('Counter: $counter'),
//         ElevatedButton(
//           onPressed: () { setState(() { counter++; }); },
//           child: Text('Increment'),
//         ),
//       ],
//     );
//   }
// }'''),
//     ],
//     prosEn: [
//       "StatelessWidget is simpler and more performant for static content. StatefulWidget allows dynamic and interactive UI.",
//     ],
//     prosAr: [
//       "StatelessWidget أبسط وأكثر كفاءة للأجزاء الثابتة. StatefulWidget تتيح واجهة مستخدم ديناميكية وتفاعلية.",
//     ],
//     consEn: [
//       "StatelessWidget can’t update UI based on changes. StatefulWidget introduces overhead of state management and rebuilds.",
//     ],
//     consAr: [
//       "StatelessWidget لا يمكنها تحديث الواجهة بناءً على التغييرات. StatefulWidget تضيف عبئًا لإدارة الحالة وإعادة بناء الودجت.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-035",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "flutter", "widgets"],
//     contentEn: QuestionContent(
//       question: 'What is a Key in Flutter and why is it used?',
//       answer: [
//         QuestionAnswerString(
//           'A Key is an identifier for Widgets, Elements, and SemanticsNodes. Keys preserve state and control widget identity when the widget tree changes (e.g., reordering). Using keys helps Flutter match widgets between builds.',
//         ),
//       ],
//       bestUse:
//           'Use keys when you have multiple widgets of the same type and need to preserve their state when they move or change position.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هو المفتاح (Key) في فلاتر ولماذا يُستخدم؟',
//       answer: [
//         QuestionAnswerString(
//           'المفتاح هو معرف للودجتس والعناصر (Elements) وعقد الدلالات. المفاتيح تحافظ على الحالة وتتحكم في هوية الودجت عندما تتغير شجرة الودجتس (مثل إعادة ترتيب العناصر). يساعد استخدام المفاتيح فلاتر على مطابقة الودجتس بين عمليات إعادة البناء.',
//         ),
//       ],
//       bestUse:
//           'استخدم المفاتيح عندما يكون لديك عدة ودجتس من نفس النوع وتحتاج إلى الحفاظ على حالتها عندما تتحرك أو تتغير موضعها.',
//     ),
//     prosEn: [
//       "Using keys (especially UniqueKey or ValueKey) helps avoid unexpected behavior when reordering or dynamically changing lists of widgets.",
//     ],
//     prosAr: [
//       "يساعد استخدام المفاتيح (وخاصة UniqueKey أو ValueKey) على تجنب السلوك غير المتوقع عند إعادة ترتيب القوائم أو تغييرها ديناميكيًا.",
//     ],
//     consEn: [
//       "Often not needed unless you manage dynamic widget lists; overusing keys can complicate the code.",
//     ],
//     consAr: [
//       "غالبًا غير ضروري إلا إذا كنت تدير قوائم ودجتس ديناميكية؛ الإفراط في استخدام المفاتيح قد يعقد الكود.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-036",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "flutter", "development"],
//     contentEn: QuestionContent(
//       question:
//           'Explain the difference between Hot Reload and Hot Restart in Flutter.',
//       answer: [
//         QuestionAnswerString(
//           '''Hot Reload injects updated source code into a running Dart VM, preserving the app state and making UI changes visible almost instantly. Hot Restart completely restarts the app, rebuilding the widget tree and reinitializing state, which is slower than hot reload.

// Hot Reload greatly speeds up UI development by preserving state. Hot Restart ensures full reset, useful when major changes require clean state.''',
//         ),
//       ],
//       bestUse:
//           'Use Hot Reload for quick iterations during UI development; use Hot Restart when you need to apply changes that require restarting the app (e.g., changes to main()).',
//     ),
//     contentAr: QuestionContent(
//       question: 'اشرح الفرق بين Hot Reload و Hot Restart في فلاتر.',
//       answer: [
//         QuestionAnswerString(
//           '''يقوم Hot Reload بحقن الكود المصدر المحدث في آلة دارت الافتراضية قيد التشغيل، محافظًا على حالة التطبيق وجاعلاً تغييرات الواجهة مرئية تقريبًا على الفور. أما Hot Restart فيعيد تشغيل التطبيق بالكامل، مما يعيد بناء شجرة الودجت ويعيد تهيئة الحالة، وهو أبطأ من Hot Reload.

// Hot Reload يسرع تطوير الواجهة بشكل كبير من خلال الحفاظ على الحالة. Hot Restart يضمن إعادة التعيين الكامل، وهو مفيد عندما تتطلب التغييرات الكبيرة حالة نظيفة.''',
//         ),
//       ],
//       bestUse:
//           'استخدم Hot Reload للتكرارات السريعة أثناء تطوير الواجهة؛ استخدم Hot Restart عندما تحتاج إلى تطبيق تغييرات تتطلب إعادة تشغيل التطبيق (مثل التغييرات على main()).',
//     ),
//     prosEn: [
//       "Hot Reload greatly speeds up UI development by preserving state. Hot Restart ensures full reset",
//       "useful when major changes require clean state.",
//     ],
//     prosAr: [
//       "Hot Reload يسرع تطوير الواجهة بشكل كبير من خلال الحفاظ على الحالة. Hot Restart يضمن إعادة التعيين الكامل، وهو مفيد عندما تتطلب التغييرات الكبيرة حالة نظيفة.",
//     ],
//     consEn: [
//       "Hot Reload may not reflect changes outside widget code or initial setup. Hot Restart is slower and loses the current state.",
//     ],
//     consAr: [
//       "Hot Reload قد لا يعكس التغييرات خارج كود الودجت أو الإعدادات الأولية. Hot Restart أبطأ ويفقد الحالة الحالية.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-037",
//     difficulty: .basic,
//     category: "basic",
//     type: "theoretical",
//     tags: ["basic", "flutter", "ui"],
//     contentEn: QuestionContent(
//       question: 'What is the purpose of the MaterialApp and Scaffold widgets?',
//       answer: [
//         QuestionAnswerString(
//           '''MaterialApp is a convenience widget that wraps a number of widgets commonly required for Material Design applications, such as themes and navigation. Scaffold provides a framework for implementing the basic visual layout structure of Material Design (app bars, drawers, bottom sheets, etc.).

// Using these widgets saves setup time: MaterialApp handles app-level configurations (theme, locale, navigator), and Scaffold provides standard UI elements out of the box.''',
//         ),
//       ],
//       bestUse:
//           'Use MaterialApp and Scaffold when developing a Flutter app following Material Design guidelines (common for Android or cross-platform).',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هو غرض ودجت MaterialApp و Scaffold في فلاتر؟',
//       answer: [
//         QuestionAnswerString(
//           '''MaterialApp هو ودجت ملائم يلف مجموعة من الودجتس المطلوبة عادةً لتطبيقات تصميم المواد، مثل السمات (themes) والتنقل. يوفر Scaffold إطارًا لبناء الهيكل البصري الأساسي لتصميم المواد، مثل شريط التطبيق (AppBar)، الدُرج (drawer)، والنوافذ المنبثقة أسفل الشاشة.

// استخدام هذه الودجتس يوفر وقت الإعداد: فـ MaterialApp يدير إعدادات على مستوى التطبيق (السمة، لغة الواجهة، المُسوِّر)، و Scaffold يوفر عناصر واجهة قياسية جاهزة للاستخدام.''',
//         ),
//       ],
//       bestUse:
//           'استخدم MaterialApp و Scaffold عند تطوير تطبيق فلاتر يتبع إرشادات تصميم المواد (شائعة لنظام Android أو عبر المنصات).',
//     ),
//     prosEn: [
//       "Using these widgets saves setup time: MaterialApp handles app-level configurations (theme",
//       "locale",
//       "navigator)",
//       "and Scaffold provides standard UI elements out of the box.",
//     ],
//     prosAr: [
//       "استخدام هذه الودجتس يوفر وقت الإعداد: فـ MaterialApp يدير إعدادات على مستوى التطبيق (السمة، لغة الواجهة، المُسوِّر)، و Scaffold يوفر عناصر واجهة قياسية جاهزة للاستخدام.",
//     ],
//     consEn: [
//       "They impose Material Design; for a custom look or non-Material design",
//       "one might use WidgetsApp or a custom layout.",
//     ],
//     consAr: [
//       "تفرض هذه الودجتس تصميم المواد؛ للحصول على مظهر مخصص أو تصميم غير المواد، قد تستخدم WidgetsApp أو تنسيقًا مخصصًا.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-038",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "flutter", "widgets"],
//     contentEn: QuestionContent(
//       question:
//           'What is a Flutter Widget’s lifecycle (StatefulWidget lifecycle)?',
//       answer: [
//         QuestionAnswerString(
//           'A StatefulWidget has a State object whose lifecycle includes initState(), didChangeDependencies(), build(), setState(), deactivate(), dispose(), and reassemble (during hot reload). initState is called once when the widget is inserted into the widget tree; build() is called often to redraw; dispose() is called when the widget is removed.',
//         ),
//       ],
//       bestUse:
//           'Use initState for one-time initialization, build to construct the UI, and dispose to clean up resources like animations or streams.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هي دورة حياة ودجت في فلاتر (دورة حياة StatefulWidget)؟',
//       answer: [
//         QuestionAnswerString(
//           'يحتوي StatefulWidget على كائن State تشمل دورة حياته دوال initState()، didChangeDependencies()، build()، setState()، deactivate()، dispose()، و reassemble (أثناء التحميل السريع). تُستدعى initState مرة واحدة عند إضافة الودجت إلى شجرة الودجتس؛ يُستدعى build عدة مرات لإعادة الرسم؛ ويُستدعى dispose عند إزالة الودجت.',
//         ),
//       ],
//       bestUse:
//           'استخدم initState للتهيئة لمرة واحدة، وbuild لبناء الواجهة، وdispose لتنظيف الموارد مثل الرسوم المتحركة أو التدفقات.',
//     ),
//     prosEn: [
//       "Understanding lifecycle is crucial for resource management (e.g.",
//       "initializing and disposing controllers) and for controlling rebuilds.",
//     ],
//     prosAr: [
//       "فهم دورة الحياة ضروري لإدارة الموارد (مثل تهيئة المتحكمات Controller والتخلص منها) وللتحكم في عمليات إعادة البناء.",
//     ],
//     consEn: [
//       "Managing complex lifecycles can be error-prone; forgetting to dispose can cause memory leaks.",
//     ],
//     consAr: [
//       "إدارة الدورات المعقدة قد تكون عرضة للأخطاء؛ قد يؤدي النسيان التخلص من الموارد إلى تسريبات الذاكرة.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-039",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "dart", "oop"],
//     contentEn: QuestionContent(
//       question: 'What are mixins in Dart and how are they used?',
//       answer: [
//         QuestionAnswerString(
//           '''Mixins allow a class to use methods and properties from multiple classes without multiple inheritance. In Dart, you define a mixin with the 'mixin' keyword and then use it with the 'with' keyword in a class declaration. They are useful for code reuse.

// Provide a way to add common functionality to multiple classes without forcing an inheritance relationship. They keep classes more modular.''',
//         ),
//       ],
//       bestUse:
//           'Use mixins when you want to share functionality (like logging, validation, etc.) across different classes without creating a base class.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هي الـ mixins في دارت وكيف تُستخدم؟',
//       answer: [
//         QuestionAnswerString(
//           '''تسمح الـ mixins لفئة معينة باستخدام الدوال والخصائص من فئات متعددة دون استخدام تعدد الميراث. في دارت، تعرف الـ mixin باستخدام الكلمة المحجوزة 'mixin' ثم تستخدمه في إعلان الفئة باستخدام 'with'. وهي مفيدة لإعادة استخدام الكود.

// توفر طريقة لإضافة وظائف شائعة لعدة فئات دون فرض علاقة وراثة. تحافظ على فصل الفئات وزيادة modularity.''',
//         ),
//       ],
//       bestUse:
//           'استخدم الـ mixins عندما تريد مشاركة وظائف معينة (مثل التسجيل logging أو التحقق validation) عبر فئات مختلفة دون إنشاء فئة أساسية.',
//     ),
//     examples: [
//       StrCodeBlock(r'''mixin Logger {
//   void log(String message) {
//     print('LOG: $message');
//   }
// }

// class MyClass with Logger {
//   void doSomething() {
//     log('Doing something!');
//   }
// }'''),
//     ],
//     prosEn: [
//       "Provide a way to add common functionality to multiple classes without forcing an inheritance relationship. They keep classes more modular.",
//     ],
//     prosAr: [
//       "توفر طريقة لإضافة وظائف شائعة لعدة فئات دون فرض علاقة وراثة. تحافظ على فصل الفئات وزيادة modularity.",
//     ],
//     consEn: [
//       "Overusing mixins can lead to complex hierarchies and unexpected behavior if many mixins modify similar properties.",
//     ],
//     consAr: [
//       "الاستخدام المفرط للـ mixins يمكن أن يؤدي إلى هياكل معقدة وسلوك غير متوقع إذا عدّلت عدة mixins خصائص متشابهة.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-040",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "dart"],
//     contentEn: QuestionContent(
//       question: 'What are extension methods in Dart?',
//       answer: [
//         QuestionAnswerString(
//           '''Extension methods allow you to add new methods (or getters/setters) to existing libraries or classes without modifying them. Defined using the 'extension' keyword, they are a syntactic convenience to extend functionality.

// Enable cleaner code by extending functionality of built-in types or classes (e.g., adding utility methods to String).''',
//         ),
//       ],
//       bestUse:
//           'Use extension methods to add helper functions to types (e.g., formatting, validation) in your project without creating utility classes.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هي طرق الامتداد (extension methods) في دارت؟',
//       answer: [
//         QuestionAnswerString(
//           '''طرق الامتداد تسمح لك بإضافة طرق (أو getters/setters) جديدة إلى مكتبات أو فئات موجودة دون تعديلها. تعرف باستخدام الكلمة المحجوزة 'extension'، وهي وسيلة لراحة الاستخدام لتمديد الوظائف.

// تسمح بكتابة أكواد أنظف عن طريق توسيع وظائف الأنواع أو الفئات المدمجة (مثل إضافة طرق مساعدة لنوع String).''',
//         ),
//       ],
//       bestUse:
//           'استخدم طرق الامتداد لإضافة دوال مساعدة للأنواع (مثل التنسيق أو التحقق) في مشروعك دون إنشاء فئات مساعدة.',
//     ),
//     examples: [
//       StrCodeBlock(r'''extension NumberParsing on String {
//   int toIntOrZero() {
//     return int.tryParse(this) ?? 0;
//   }
// }

// void example() {
//   String s = '123';
//   int x = s.toIntOrZero(); // 123
// }'''),
//     ],
//     prosEn: [
//       "Enable cleaner code by extending functionality of built-in types or classes (e.g.",
//       "adding utility methods to String).",
//     ],
//     prosAr: [
//       "تسمح بكتابة أكواد أنظف عن طريق توسيع وظائف الأنواع أو الفئات المدمجة (مثل إضافة طرق مساعدة لنوع String).",
//     ],
//     consEn: [
//       "They can make code harder to discover",
//       "as methods are not visible on the original class definition.",
//     ],
//     consAr: [
//       "يمكن أن تجعل الكود أصعب في الاكتشاف، لأن الطرق الجديدة ليست مرئية ضمن تعريف الفئة الأصلي.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-041",
//     difficulty: .basic,
//     category: "basic",
//     type: "theoretical",
//     tags: ["basic", "dart", "datastructures"],
//     contentEn: QuestionContent(
//       question: 'What are Lists, Sets, and Maps in Dart and when to use each?',
//       answer: [
//         QuestionAnswerString(
//           '''List is an ordered collection (like arrays) allowing duplicates; use when order matters and you may have repeats. Set is an unordered collection of unique items; use when you need uniqueness (e.g., a set of tags). Map is a key-value store (like dictionary); use when you need to associate values with keys for fast lookup.

// Lists allow indexed access and ordering. Sets ensure no duplicates and provide fast membership checks. Maps provide fast key-based lookup.''',
//         ),
//       ],
//       bestUse:
//           'Use List for ordered data sequences, Set for unique collections, and Map for key-value associations.',
//     ),
//     contentAr: QuestionContent(
//       question:
//           'ما هي القوائم (Lists) والمجموعات (Sets) والقواميس (Maps) في دارت، ومتى يجب استخدام كل منها؟',
//       answer: [
//         QuestionAnswerString(
//           '''List هي مجموعة مرتبة (مثل المصفوفات) تسمح بالعناصر المكررة؛ استخدمها عندما يهم الترتيب وقد تكون هناك عناصر متكررة. Set هي مجموعة غير مرتبة من العناصر الفريدة؛ استخدمها عندما تحتاج إلى الفريدة (مثل مجموعة من الوسوم tags). Map هو هيكل بيانات من المفاتيح والقيم (مثل القاموس dictionary)؛ استخدمه عندما تحتاج إلى ربط قيم بمفاتيح للبحث السريع.

// تسمح الـ List بالوصول إلى العناصر عبر مؤشر وترتيب ثابت. تضمن الـ Set عدم وجود تكرارات وتوفر فحص أسرع للانتماء. يوفر الـ Map بحثًا سريعًا عن القيمة بناءً على المفتاح.''',
//         ),
//       ],
//       bestUse:
//           'استخدم List للتسلسلات المرتبة من البيانات، وSet للمجموعات الفريدة، وMap لربط المفاتيح بالقيم.',
//     ),
//     prosEn: [
//       "Lists allow indexed access and ordering. Sets ensure no duplicates and provide fast membership checks. Maps provide fast key-based lookup.",
//     ],
//     prosAr: [
//       "تسمح الـ List بالوصول إلى العناصر عبر مؤشر وترتيب ثابت. تضمن الـ Set عدم وجود تكرارات وتوفر فحص أسرع للانتماء. يوفر الـ Map بحثًا سريعًا عن القيمة بناءً على المفتاح.",
//     ],
//     consEn: [
//       "Lists may be inefficient if you need to enforce uniqueness. Sets do not maintain insertion order. Maps use more memory per entry than a simple list.",
//     ],
//     consAr: [
//       "قد تكون الـ List غير فعّالة إذا كنت بحاجة لضمان التفرد. لا تحافظ الـ Set على ترتيب الإدراج. يستخدم الـ Map ذاكرة أكبر لكل إدخال مقارنة بقائمة بسيطة.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-042",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "flutter", "architecture"],
//     contentEn: QuestionContent(
//       question:
//           'What are the SOLID principles and how do they apply in Flutter?',
//       answer: [
//         QuestionAnswerString(
//           '''SOLID refers to five principles of object-oriented design: Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, and Dependency Inversion. For example, in Flutter you should keep widgets/controllers with a single responsibility, use abstractions for dependencies (Dependency Inversion), and make classes open for extension but closed for modification.

// Following SOLID makes code more maintainable, testable, and extensible. For Flutter, it encourages clean separation of UI and logic, and small reusable widgets/controllers.

// Strict adherence can lead to more abstraction and boilerplate; it may complicate simple projects if overdone.''',
//         ),
//       ],
//       bestUse:
//           'Use SOLID to structure larger Flutter apps; start simple but refactor towards SOLID as complexity grows.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هي مبادئ SOLID وكيف يتم تطبيقها في فلاتر؟',
//       answer: [
//         QuestionAnswerString(
//           '''يشير SOLID إلى خمسة مبادئ لتصميم البرمجيات الموجهة للكائنات: مبدأ المسؤولية الوحيدة، مبدأ الانفتاح/الإغلاق، مبدأ استبدال ليسكوف، مبدأ تقسيم الواجهات، ومبدأ عكس التبعيات. على سبيل المثال، في فلاتر يجب أن تحتفظ الودجتس/متحكمات الحالة بمسؤولية واحدة فقط، واستخدام التجريدات للتبعيات (Dependency Inversion)، وجعل الفئات قابلة للتمديد لكن مغلقة للتعديل.

// اتباع SOLID يجعل الكود أكثر قابلية للصيانة والاختبار والتمديد. في فلاتر، يشجع ذلك على فصل واضح بين الواجهة والمنطق، وإنشاء ودجتس/متحكمات صغيرة قابلة لإعادة الاستخدام.

// الالتزام الصارم قد يؤدي إلى المزيد من التجريد وتكرار الكود الزائد، وقد يعقد المشاريع البسيطة إذا تم الإفراط فيه.''',
//         ),
//       ],
//       bestUse:
//           'استخدم SOLID لتنظيم تطبيقات فلاتر الأكبر؛ ابدأ بتصميم بسيط ثم أعد الهيكلة نحو SOLID مع زيادة التعقيد.',
//     ),
//     prosEn: [
//       "Following SOLID makes code more maintainable",
//       "testable",
//       "and extensible. For Flutter",
//       "it encourages clean separation of UI and logic",
//       "and small reusable widgets/controllers.",
//     ],
//     prosAr: [
//       "اتباع SOLID يجعل الكود أكثر قابلية للصيانة والاختبار والتمديد. في فلاتر، يشجع ذلك على فصل واضح بين الواجهة والمنطق، وإنشاء ودجتس/متحكمات صغيرة قابلة لإعادة الاستخدام.",
//     ],
//     consEn: [
//       "Strict adherence can lead to more abstraction and boilerplate; it may complicate simple projects if overdone.",
//     ],
//     consAr: [
//       "الالتزام الصارم قد يؤدي إلى المزيد من التجريد وتكرار الكود الزائد، وقد يعقد المشاريع البسيطة إذا تم الإفراط فيه.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-043",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "flutter", "designpattern", "statemanagement"],
//     contentEn: QuestionContent(
//       question: 'What is the BLoC pattern in Flutter?',
//       answer: [
//         QuestionAnswerString(
//           '''BLoC (Business Logic Component) is an architectural pattern that separates business logic from UI by using Streams. BLoC exposes streams of data, and UI widgets listen to them. This makes the code more testable and reusable.

// Promotes separation of concerns and testability, works well with reactive programming, and simplifies state management for complex apps.

// Adds boilerplate (stream controllers, sinks, etc.) and can be overkill for simple apps. Learning curve is higher than simple setState.''',
//         ),
//       ],
//       bestUse:
//           'Use BLoC for medium to large apps where separation of logic is beneficial. For smaller apps, simpler methods may suffice.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هو نمط BLoC في فلاتر؟',
//       answer: [
//         QuestionAnswerString(
//           '''BLoC (مكون منطق الأعمال) هو نمط معماري يفصل منطق العمل عن واجهة المستخدم باستخدام التدفقات (Streams). يقوم BLoC بعرض تدفقات بيانات تستمع لها ودجتس الواجهة. هذا يجعل الكود أكثر قابلية للاختبار وإعادة الاستخدام.

// يعزز فصل الاهتمامات وقابلية الاختبار، ويعمل جيدًا مع البرمجة التفاعلية، ويبسط إدارة الحالة للتطبيقات المعقدة.

// يضيف تكرار في الكود (مثل متحكمات التدفق والمستقبلات)، وقد يكون مفرطًا للتطبيقات البسيطة. منحنى التعلم أعلى مقارنةً بـ setState البسيط.''',
//         ),
//       ],
//       bestUse:
//           'استخدم BLoC للتطبيقات متوسطة إلى كبيرة الحجم حيث يفيد فصل المنطق. للتطبيقات الأصغر، قد تكفي الطرق الأبسط.',
//     ),
//     prosEn: [
//       "Promotes separation of concerns and testability",
//       "works well with reactive programming",
//       "and simplifies state management for complex apps.",
//     ],
//     prosAr: [
//       "يعزز فصل الاهتمامات وقابلية الاختبار، ويعمل جيدًا مع البرمجة التفاعلية، ويبسط إدارة الحالة للتطبيقات المعقدة.",
//     ],
//     consEn: [
//       "Adds boilerplate (stream controllers",
//       "sinks",
//       "etc.) and can be overkill for simple apps. Learning curve is higher than simple setState.",
//     ],
//     consAr: [
//       "يضيف تكرار في الكود (مثل متحكمات التدفق والمستقبلات)، وقد يكون مفرطًا للتطبيقات البسيطة. منحنى التعلم أعلى مقارنةً بـ setState البسيط.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-044",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "flutter", "designpattern", "statemanagement"],
//     contentEn: QuestionContent(
//       question: 'What is Provider in Flutter and how does it differ from BLoC?',
//       answer: [
//         QuestionAnswerString(
//           '''Provider is a wrapper around InheritedWidget that makes state management easier by providing and accessing state objects. Unlike BLoC, which is based on Streams, Provider often uses ChangeNotifier or simple objects. Provider simplifies passing data down the widget tree without using Streams.

// Lightweight and easy to use, less boilerplate than BLoC, well-integrated with Flutter. Good for many apps’ state needs.

// Does not enforce a strict pattern, which can lead to scattered state logic if not organized. Less formal separation than BLoC.''',
//         ),
//       ],
//       bestUse:
//           'Use Provider for simpler state management needs or smaller apps. It integrates well with Flutter and is easier to start with than BLoC.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هو Provider في فلاتر وكيف يختلف عن BLoC؟',
//       answer: [
//         QuestionAnswerString(
//           '''Provider هو طبقة تغليف حول InheritedWidget يجعل إدارة الحالة أسهل من خلال توفير والوصول إلى كائنات الحالة. على عكس BLoC المستند إلى التدفقات (Streams)، يستخدم Provider غالبًا ChangeNotifier أو كائنات بسيطة. يقوم Provider بتبسيط تمرير البيانات في شجرة الودجتس دون استخدام التدفقات.

// خفيف الوزن وسهل الاستخدام، مع كود أقل تكرارًا من BLoC، ومتكامل جيدًا مع فلاتر. جيد لتلبية احتياجات العديد من تطبيقات الحالة.

// لا يفرض نمطًا صارمًا، مما قد يؤدي إلى انتشار منطق الحالة إذا لم يتم تنظيمه. فصل أقل رسمية من BLoC.''',
//         ),
//       ],
//       bestUse:
//           'استخدم Provider لاحتياجات إدارة الحالة الأبسط أو التطبيقات الأصغر. يتكامل جيدًا مع فلاتر وأسهل للبدء مقارنةً بـ BLoC.',
//     ),
//     prosEn: [
//       "Lightweight and easy to use",
//       "less boilerplate than BLoC",
//       "well-integrated with Flutter. Good for many apps’ state needs.",
//     ],
//     prosAr: [
//       "خفيف الوزن وسهل الاستخدام، مع كود أقل تكرارًا من BLoC، ومتكامل جيدًا مع فلاتر. جيد لتلبية احتياجات العديد من تطبيقات الحالة.",
//     ],
//     consEn: [
//       "Does not enforce a strict pattern",
//       "which can lead to scattered state logic if not organized. Less formal separation than BLoC.",
//     ],
//     consAr: [
//       "لا يفرض نمطًا صارمًا، مما قد يؤدي إلى انتشار منطق الحالة إذا لم يتم تنظيمه. فصل أقل رسمية من BLoC.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-045",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "dart", "async"],
//     contentEn: QuestionContent(
//       question: 'What is the difference between Future and Stream in Dart?',
//       answer: [
//         QuestionAnswerString(
//           '''A Future represents a single asynchronous computation that either completes with a value or an error. A Stream represents a sequence of asynchronous events or data over time. FutureBuilder is used for one-time async results, StreamBuilder for ongoing data streams.

// Use Future for single HTTP requests or quick async tasks. Use Stream for events like WebSocket messages, sensor data, or periodic updates.

// Future cannot handle multiple values or continuous updates. Streams introduce more complexity (listeners, cancellations).''',
//         ),
//       ],
//       bestUse:
//           'Use Future when expecting a single result (e.g., API call). Use Stream when listening for multiple results or changes over time.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما الفرق بين Future و Stream في دارت؟',
//       answer: [
//         QuestionAnswerString(
//           '''Future تمثل عملية غير متزامنة واحدة تنتهي بقيمة أو بخطأ. Stream تمثل سلسلة من الأحداث أو البيانات غير المتزامنة على مدار الوقت. FutureBuilder يستخدم للنتائج غير المتزامنة لمرة واحدة، بينما StreamBuilder يستخدم لبيانات مستمرة.

// استخدم Future لطلبات HTTP الأحادية أو المهام السريعة غير المتزامنة. استخدم Stream للأحداث مثل رسائل WebSocket أو بيانات المستشعرات أو التحديثات الدورية.

// Future لا يمكنه التعامل مع قيم متعددة أو تحديثات مستمرة. Streams تضيف المزيد من التعقيد (المستمعون، الإلغاء).''',
//         ),
//       ],
//       bestUse:
//           'استخدم Future عندما تتوقع نتيجة واحدة (مثل استدعاء API). استخدم Stream عند الاستماع إلى نتائج متعددة أو تغيرات على مدار الوقت.',
//     ),
//     examples: [
//       StrCodeBlock(r'''// Future example
// Future<String> fetchUserOrder() async {
//   // simulate network delay
//   await Future.delayed(Duration(seconds: 2));
//   return 'Large Latte';
// }

// // Stream example
// Stream<int> countStream() async* {
//   for (int i = 1; i <= 3; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     yield i;
//   }
// }'''),
//     ],
//     prosEn: [
//       "Use Future for single HTTP requests or quick async tasks. Use Stream for events like WebSocket messages",
//       "sensor data",
//       "or periodic updates.",
//     ],
//     prosAr: [
//       "استخدم Future لطلبات HTTP الأحادية أو المهام السريعة غير المتزامنة. استخدم Stream للأحداث مثل رسائل WebSocket أو بيانات المستشعرات أو التحديثات الدورية.",
//     ],
//     consEn: [
//       "Future cannot handle multiple values or continuous updates. Streams introduce more complexity (listeners",
//       "cancellations).",
//     ],
//     consAr: [
//       "Future لا يمكنه التعامل مع قيم متعددة أو تحديثات مستمرة. Streams تضيف المزيد من التعقيد (المستمعون، الإلغاء).",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-046",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "flutter", "navigation"],
//     contentEn: QuestionContent(
//       question:
//           'How do you navigate between screens in Flutter? (push, pushReplacement)',
//       answer: [
//         QuestionAnswerString(
//           'Navigation in Flutter uses the Navigator widget. Navigator.push adds a route to the stack (user can press back to return). Navigator.pushReplacement replaces the current route with a new one, removing the previous from the stack.',
//         ),
//       ],
//       bestUse:
//           'Use push for normal forward navigation. Use pushReplacement for replacing screens permanently (e.g., after login or splash screen).',
//     ),
//     contentAr: QuestionContent(
//       question: 'كيف تتنقل بين الشاشات في فلاتر؟ (push، pushReplacement)',
//       answer: [
//         QuestionAnswerString(
//           'التنقل في فلاتر يستخدم ويدجت Navigator. يقوم Navigator.push بإضافة مسار إلى المكدس (يمكن للمستخدم الضغط على الرجوع للعودة). يقوم Navigator.pushReplacement باستبدال المسار الحالي بآخر جديد، مما يزيل المسار السابق من المكدس.',
//         ),
//       ],
//       bestUse:
//           'استخدم push للتنقل الطبيعي الأمامي. استخدم pushReplacement لاستبدال الشاشات بشكل دائم (مثل بعد تسجيل الدخول أو شاشة البداية).',
//     ),
//     prosEn: [
//       "push keeps the previous screen in memory (user can go back)",
//       "while pushReplacement removes it (suitable for login screens or flows where going back is not needed).",
//     ],
//     prosAr: [
//       "push يحتفظ بالشاشة السابقة في الذاكرة (يمكن للمستخدم العودة)، بينما pushReplacement يزيلها (مناسب لشاشات تسجيل الدخول أو التدفقات حيث لا يلزم الرجوع).",
//     ],
//     consEn: [
//       "push can accumulate many routes if not managed (memory). pushReplacement prevents back navigation but loses previous screen state.",
//     ],
//     consAr: [
//       "push يمكن أن يجمع العديد من المسارات إذا لم تتم إدارته بشكل صحيح (يستهلك الذاكرة). pushReplacement يمنع الرجوع للخلف ولكنه يفقد حالة الشاشة السابقة.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-047",
//     difficulty: .advanced,
//     category: "advanced",
//     type: "theoretical",
//     tags: ["advanced", "flutter", "navigation"],
//     contentEn: QuestionContent(
//       question:
//           'What is the difference between Navigator 1.0 and Navigator 2.0?',
//       answer: [
//         QuestionAnswerString(
//           'Navigator 1.0 is the classic imperative API (push/pop by widget), while Navigator 2.0 is a declarative, URL-based API with Router and RouteInformationParser. Navigator 2.0 offers more control over browser URL and deep linking.',
//         ),
//       ],
//       bestUse:
//           'Use Navigator 2.0 for web apps or apps requiring deep linking and custom routing behavior. For basic navigation, 1.0 is sufficient.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما الفرق بين Navigator 1.0 و Navigator 2.0؟',
//       answer: [
//         QuestionAnswerString(
//           'Navigator 1.0 هو الواجهة الإمبريالية الكلاسيكية (push/pop عبر الودجت)، بينما Navigator 2.0 هو واجهة إعلانية تعتمد على عناوين URL مع Router و RouteInformationParser. يوفر Navigator 2.0 مزيدًا من التحكم في عناوين المتصفح والروابط العميقة.',
//         ),
//       ],
//       bestUse:
//           'استخدم Navigator 2.0 لتطبيقات الويب أو التطبيقات التي تحتاج إلى روابط عميقة وسلوك توجيه مخصص. بالنسبة للتنقل الأساسي، يكفي 1.0.',
//     ),
//     prosEn: [
//       "Navigator 2.0 enables web and more complex navigation patterns (deep linking)",
//       "at cost of more boilerplate.",
//     ],
//     prosAr: [
//       "يمكن Navigator 2.0 من تحقيق التنقل على الويب وأنماط تنقل أكثر تعقيدًا (الروابط العميقة)، على حساب المزيد من تكرار الكود.",
//     ],
//     consEn: [
//       "Navigator 2.0 has a steeper learning curve and more code overhead. For simple apps",
//       "Navigator 1.0 is easier to use.",
//     ],
//     consAr: [
//       "Navigator 2.0 لديه منحنى تعلم أعلى وعبء كود أكبر. للتطبيقات البسيطة، يكون Navigator 1.0 أسهل في الاستخدام.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-048",
//     difficulty: .basic,
//     category: "basic",
//     type: "theoretical",
//     tags: ["basic", "flutter", "widgets"],
//     contentEn: QuestionContent(
//       question: 'What is Flutter’s build() method context parameter?',
//       answer: [
//         QuestionAnswerString(
//           'BuildContext is an object which represents the location of a widget in the widget tree. It is passed to the build method and can be used to access theme data, localization, and to find ancestor widgets in the tree.',
//         ),
//       ],
//       bestUse:
//           'Use context inside build() to obtain theme or other inherited data, or Navigator for navigation.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هو وسيط BuildContext في دالة build() في Flutter؟',
//       answer: [
//         QuestionAnswerString(
//           'BuildContext هو كائن يمثل موقع الودجت في شجرة الودجتس. يتم تمريره إلى دالة build ويمكن استخدامه للوصول إلى بيانات السمة، والعولمة، وللعثور على الودجتس الأجداد في الشجرة.',
//         ),
//       ],
//       bestUse:
//           'استخدم context داخل build() للحصول على السمات أو بيانات موروثة أخرى، أو Navigator للتنقل.',
//     ),
//     prosEn: [
//       "Allows widgets to access inherited widgets like Theme or MediaQuery. Essential for widget communication.",
//     ],
//     prosAr: [
//       "يسمح للودجتس بالوصول إلى ودجتس موروثة مثل Theme أو MediaQuery. أساسي لتواصل الودجتس.",
//     ],
//     consEn: [
//       "Misusing context (e.g.",
//       "using it before initState or in async) can lead to errors.",
//     ],
//     consAr: [
//       "استخدام context بشكل خاطئ (مثل استخدامه قبل initState أو في العمليات غير المتزامنة) قد يؤدي إلى أخطاء.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-049",
//     difficulty: .advanced,
//     category: "advanced",
//     type: "theoretical",
//     tags: ["advanced", "dart", "concurrency"],
//     contentEn: QuestionContent(
//       question: 'What is an Isolate in Dart and how is it used?',
//       answer: [
//         QuestionAnswerString(
//           '''An Isolate is a separate thread of execution that doesn’t share memory with the main isolate. It has its own memory heap. Communication is done via message passing (SendPort/ReceivePort). Use isolates for CPU-intensive tasks to avoid blocking the main UI thread.

// Enables true parallel computation in Dart without shared-memory concurrency bugs, improving performance for heavy tasks.

// Communication via message passing can be complex and slower. Starting an isolate has overhead; not suitable for small tasks.

// Use isolates for expensive computations (image processing, large computations) off the main thread. For most UI tasks, use async/await instead.''',
//         ),
//       ],
//       bestUse:
//           'Use isolates for expensive computations (image processing, large computations) off the main thread. For most UI tasks, use async/await instead.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هو Isolate في دارت وكيف يُستخدم؟',
//       answer: [
//         QuestionAnswerString(
//           '''الـ Isolate هو خيط تنفيذ منفصل لا يشارك الذاكرة مع الـ Isolate الرئيسي. لديه مساحة ذاكرة مستقلة. تتم الاتصالات عبر تبادل الرسائل (SendPort/ReceivePort). استخدم الـ Isolates للمهام الحسابية الشاقة لتجنب حظر خيط واجهة المستخدم الرئيسي.

// يُمكن من الحساب المتوازي الحقيقي في دارت دون أخطاء التعارض في الذاكرة المشتركة، مما يحسن الأداء للمهام الثقيلة.

// التواصل عبر تبادل الرسائل قد يكون معقدًا وأبطأ. بدء Isolate له عبء كبير؛ غير مناسب للمهام الصغيرة.

// استخدم الـ Isolates للحسابات المكلفة (معالجة الصور، الحسابات الكبيرة) خارج الخيط الرئيسي. لمعظم مهام الواجهة، استخدم async/await بدلاً من ذلك.''',
//         ),
//       ],
//       bestUse:
//           'استخدم الـ Isolates للحسابات المكلفة (معالجة الصور، الحسابات الكبيرة) خارج الخيط الرئيسي. لمعظم مهام الواجهة، استخدم async/await بدلاً من ذلك.',
//     ),
//     prosEn: [
//       "Enables true parallel computation in Dart without shared-memory concurrency bugs",
//       "improving performance for heavy tasks.",
//     ],
//     prosAr: [
//       "يُمكن من الحساب المتوازي الحقيقي في دارت دون أخطاء التعارض في الذاكرة المشتركة، مما يحسن الأداء للمهام الثقيلة.",
//     ],
//     consEn: [
//       "Communication via message passing can be complex and slower. Starting an isolate has overhead; not suitable for small tasks.",
//     ],
//     consAr: [
//       "التواصل عبر تبادل الرسائل قد يكون معقدًا وأبطأ. بدء Isolate له عبء كبير؛ غير مناسب للمهام الصغيرة.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-050",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "flutter", "widgets"],
//     contentEn: QuestionContent(
//       question: 'What are FutureBuilder and StreamBuilder used for in Flutter?',
//       answer: [
//         QuestionAnswerString(
//           '''FutureBuilder is a widget that builds itself based on the latest snapshot of interaction with a Future. StreamBuilder similarly rebuilds when new Stream events arrive. They simplify handling of asynchronous data in the UI without manual listeners.

// Makes it easy to update UI based on async results or stream data; handles connection states and snapshots automatically.

// Can lead to rebuilds on every event; need to manage performance if streams are frequent.

// Use FutureBuilder for one-time async calls (like HTTP requests) and StreamBuilder for continuous data (like realtime updates or web sockets).''',
//         ),
//       ],
//       bestUse:
//           'Use FutureBuilder for one-time async calls (like HTTP requests) and StreamBuilder for continuous data (like realtime updates or web sockets).',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما الغرض من FutureBuilder و StreamBuilder في فلاتر؟',
//       answer: [
//         QuestionAnswerString(
//           '''FutureBuilder هو ودجت يعيد بناء نفسه استنادًا إلى أحدث لقطة (snapshot) من تفاعل مع Future. StreamBuilder على نحو مماثل يعيد البناء عند وصول أحداث جديدة من Stream. هم يبسطون التعامل مع البيانات غير المتزامنة في الواجهة دون مستمعين يدويين.

// يسهل تحديث الواجهة بناءً على النتائج غير المتزامنة أو بيانات التدفق؛ يعالج حالات الاتصال واللقطات تلقائيًا.

// يمكن أن يؤدي إلى إعادة بناء الواجهة عند كل حدث؛ يجب إدارة الأداء إذا كانت التدفقات متكررة.

// استخدم FutureBuilder للنداءات غير المتزامنة لمرة واحدة (مثل طلبات HTTP) و StreamBuilder للبيانات المستمرة (مثل التحديثات الحية أو الـ WebSockets).''',
//         ),
//       ],
//       bestUse:
//           'استخدم FutureBuilder للنداءات غير المتزامنة لمرة واحدة (مثل طلبات HTTP) و StreamBuilder للبيانات المستمرة (مثل التحديثات الحية أو الـ WebSockets).',
//     ),
//     prosEn: [
//       "Makes it easy to update UI based on async results or stream data; handles connection states and snapshots automatically.",
//     ],
//     prosAr: [
//       "يسهل تحديث الواجهة بناءً على النتائج غير المتزامنة أو بيانات التدفق؛ يعالج حالات الاتصال واللقطات تلقائيًا.",
//     ],
//     consEn: [
//       "Can lead to rebuilds on every event; need to manage performance if streams are frequent.",
//     ],
//     consAr: [
//       "يمكن أن يؤدي إلى إعادة بناء الواجهة عند كل حدث؛ يجب إدارة الأداء إذا كانت التدفقات متكررة.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-051",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "dart", "oop"],
//     contentEn: QuestionContent(
//       question:
//           'What is a Constructor in Dart and what are factory constructors?',
//       answer: [
//         QuestionAnswerString(
//           '''A constructor in Dart is a special method to create objects of a class. A factory constructor is a special type of constructor that can return an existing instance or a subclass. It's declared with the 'factory' keyword. Useful for singleton or cache implementations.

// Factory constructors allow control over instance creation (e.g., implementing singletons or caches) and can return different subtypes.

// Factory constructors cannot access 'this' and don't automatically create a new instance; they add complexity compared to a normal constructor.''',
//         ),
//       ],
//       bestUse:
//           'Use factory constructors for patterns like singleton (ensuring only one instance) or when you need custom logic to decide which instance to return.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هو الباني (Constructor) في دارت وما هي البانيات factory؟',
//       answer: [
//         QuestionAnswerString(
//           '''الباني في دارت هو دالة خاصة لإنشاء كائنات من فئة. الباني factory هو نوع خاص من الباني يمكنه إعادة كائن موجود بالفعل أو كائن من فئة فرعية. يُعلن عنه باستخدام الكلمة المحجوزة 'factory'. مفيد لتنفيذ أنماط مثل المفرد (singleton) أو التخزين المؤقت.

// تسمح البانيات factory بالتحكم في إنشاء الكائنات (مثل تنفيذ نمط المفرد أو التخزين المؤقت) ويمكنها إعادة أنواع فرعية مختلفة.

// البانيات factory لا تستطيع الوصول إلى 'this' ولا تنشئ كائنًا جديدًا تلقائيًا؛ إنها تضيف تعقيدًا مقارنة بالباني العادي.''',
//         ),
//       ],
//       bestUse:
//           'استخدم البانيات factory لأنماط مثل singleton (لضمان وجود مثيل واحد فقط) أو عندما تحتاج إلى منطق مخصص لتحديد الكائن الذي سيتم إرجاعه.',
//     ),
//     examples: [
//       StrCodeBlock(r'''class Point {
//   final int x, y;
//   Point(this.x, this.y);
//   factory Point.origin() {
//     return Point(0, 0);
//   }
// }'''),
//     ],
//     prosEn: [
//       "Factory constructors allow control over instance creation (e.g.",
//       "implementing singletons or caches) and can return different subtypes.",
//     ],
//     prosAr: [
//       "تسمح البانيات factory بالتحكم في إنشاء الكائنات (مثل تنفيذ نمط المفرد أو التخزين المؤقت) ويمكنها إعادة أنواع فرعية مختلفة.",
//     ],
//     consEn: [
//       "Factory constructors cannot access \'this\' and don\'t automatically create a new instance; they add complexity compared to a normal constructor.",
//     ],
//     consAr: [
//       "البانيات factory لا تستطيع الوصول إلى \'this\' ولا تنشئ كائنًا جديدًا تلقائيًا؛ إنها تضيف تعقيدًا مقارنة بالباني العادي.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-052",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "designpattern", "dart"],
//     contentEn: QuestionContent(
//       question:
//           'What is a Singleton pattern and how can you implement it in Dart?',
//       answer: [
//         QuestionAnswerString(
//           '''Singleton ensures a class has only one instance and provides a global access point. In Dart, you can implement a singleton by using a private constructor and a static instance. Useful for caches or shared resources.

// Ensures a single shared instance across the app (useful for caches, shared resources).

// Global state can make testing harder and lead to hidden dependencies.''',
//         ),
//       ],
//       bestUse:
//           'Use singleton for classes that manage global state or resources (e.g., a settings manager or network client).',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هو نمط Singleton وكيف يمكنك تنفيذه في دارت؟',
//       answer: [
//         QuestionAnswerString(
//           '''Singleton يضمن أن فئة معينة لها مثيل واحد فقط ويوفر نقطة وصول عالمية له. في دارت، يمكنك تنفيذ Singleton عن طريق استخدام باني خاص ومثيل ثابت. مفيد للتخزين المؤقت أو الموارد المشتركة.

// يضمن مثيلًا واحدًا مشتركًا عبر التطبيق (مفيد للتخزين المؤقت، الموارد المشتركة).

// الحالة العالمية يمكن أن تجعل الاختبار أصعب وتؤدي إلى تبعيات مخفية.''',
//         ),
//       ],
//       bestUse:
//           'استخدم singleton للفئات التي تدير الحالة العالمية أو الموارد (مثل مدير الإعدادات أو عميل الشبكة).',
//     ),
//     examples: [
//       StrCodeBlock(r'''class Singleton {
//   static final Singleton _instance = Singleton._internal();
//   factory Singleton() => _instance;
//   Singleton._internal();
// }'''),
//     ],
//     prosEn: [
//       "Ensures a single shared instance across the app (useful for caches",
//       "shared resources).",
//     ],
//     prosAr: [
//       "يضمن مثيلًا واحدًا مشتركًا عبر التطبيق (مفيد للتخزين المؤقت، الموارد المشتركة).",
//     ],
//     consEn: [
//       "Global state can make testing harder and lead to hidden dependencies.",
//     ],
//     consAr: [
//       "الحالة العالمية يمكن أن تجعل الاختبار أصعب وتؤدي إلى تبعيات مخفية.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-053",
//     difficulty: .advanced,
//     category: "advanced",
//     type: "theoretical",
//     tags: ["advanced", "flutter", "performance"],
//     contentEn: QuestionContent(
//       question: 'How do you optimize Flutter application performance?',
//       answer: [
//         QuestionAnswerString(
//           '''Common Flutter performance optimizations include: using const constructors to avoid rebuilds, splitting widgets to reduce rebuild scope, using efficient data structures (List, Set, Map), minimizing widget layers (RepaintBoundary), and caching images or data. Avoid large asset sizes and excessive rebuilds.

// Applying these techniques can significantly improve frame rates and responsiveness.

// Over-optimizing early can complicate code; focus on bottlenecks identified by profiling.

// Use performance profiling (DevTools) to find bottlenecks. Apply optimizations like const constructors, efficient layout, and offloading work to isolates as needed.''',
//         ),
//       ],
//       bestUse:
//           'Use performance profiling (DevTools) to find bottlenecks. Apply optimizations like const constructors, efficient layout, and offloading work to isolates as needed.',
//     ),
//     contentAr: QuestionContent(
//       question: 'كيف تحسن أداء تطبيق فلاتر؟',
//       answer: [
//         QuestionAnswerString(
//           '''تشمل تحسينات الأداء الشائعة في فلاتر: استخدام البانيات الثابتة (const) لتجنب إعادة البناء، تقسيم الودجتس لتقليل نطاق إعادة البناء، استخدام هياكل بيانات فعّالة (List, Set, Map)، تقليل طبقات الودجتس (RepaintBoundary)، وتخزين الصور أو البيانات مؤقتًا. تجنب استخدام الأصول كبيرة الحجم وإعادة البناء الزائدة.

// تطبيق هذه التقنيات يمكن أن يحسن بشكل كبير معدلات الإطارات والاستجابة.

// التحسين المفرط في وقت مبكر يمكن أن يعقد الكود؛ ركز على الاختناقات التي حددتها أدوات التحليل.

// استخدم أدوات تحليل الأداء (DevTools) لتحديد الاختناقات. طبق تحسينات مثل البانيات const، والتخطيط الفعال، واستخدام الـ isolates عند الحاجة.''',
//         ),
//       ],
//       bestUse:
//           'استخدم أدوات تحليل الأداء (DevTools) لتحديد الاختناقات. طبق تحسينات مثل البانيات const، والتخطيط الفعال، واستخدام الـ isolates عند الحاجة.',
//     ),
//     prosEn: [
//       "Applying these techniques can significantly improve frame rates and responsiveness.",
//     ],
//     prosAr: [
//       "تطبيق هذه التقنيات يمكن أن يحسن بشكل كبير معدلات الإطارات والاستجابة.",
//     ],
//     consEn: [
//       "Over-optimizing early can complicate code; focus on bottlenecks identified by profiling.",
//     ],
//     consAr: [
//       "التحسين المفرط في وقت مبكر يمكن أن يعقد الكود؛ ركز على الاختناقات التي حددتها أدوات التحليل.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-054",
//     difficulty: .advanced,
//     category: "advanced",
//     type: "theoretical",
//     tags: ["advanced", "flutter", "rendering"],
//     contentEn: QuestionContent(
//       question:
//           'What is Flutter\'s rendering engine and how does it work (e.g., Skia, Impeller)?',
//       answer: [
//         QuestionAnswerString(
//           '''Flutter’s default rendering engine is Skia, a C++ based 2D graphics library, which renders the UI. The newer Impeller engine (introduced recently) improves performance and reduces graphical issues on some platforms. These engines compile Flutter\'s UI to native graphics commands on each platform.

// Skia provides high-quality, fast rendering; Impeller further optimizes GPU use and predictability.

// Engine details are mostly abstracted away; developers should be aware for debugging only. Impeller is still maturing on some platforms.

// Benefit from engine improvements via Flutter upgrades. For advanced needs (e.g., custom shaders), learn how to use the appropriate engine.''',
//         ),
//       ],
//       bestUse:
//           'Benefit from engine improvements via Flutter upgrades. For advanced needs (e.g., custom shaders), learn how to use the appropriate engine.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هو محرك العرض في فلاتر وكيف يعمل (مثل Skia و Impeller)؟',
//       answer: [
//         QuestionAnswerString(
//           '''محرك العرض الافتراضي في فلاتر هو Skia، وهي مكتبة رسوميات ثنائية الأبعاد بلغة C++، تُستخدم لرسم واجهة المستخدم. محرك Impeller الأحدث (المقدم مؤخرًا) يحسن الأداء ويقلل المشاكل الرسومية على بعض المنصات. تقوم هذه المحركات بتحويل واجهة Flutter إلى أوامر رسومية أصلية لكل منصة.

// Skia يوفر عرض عالي الجودة وسريع؛ Impeller يحسن استخدام GPU والقابلية للتنبؤ بالأداء.

// تفاصيل المحرك مغلقة في الغالب للمطورين؛ يجب أن يكونوا على علم بها لأغراض تصحيح الأخطاء فقط. Impeller لا يزال في طور النضج على بعض المنصات.

// استفد من تحسينات المحرك عبر تحديثات فلاتر. للاحتياجات المتقدمة (مثل shaders مخصصة)، تعرف على كيفية استخدام المحرك المناسب.''',
//         ),
//       ],
//       bestUse:
//           'استفد من تحسينات المحرك عبر تحديثات فلاتر. للاحتياجات المتقدمة (مثل shaders مخصصة)، تعرف على كيفية استخدام المحرك المناسب.',
//     ),
//     prosEn: [
//       "Skia provides high-quality",
//       "fast rendering; Impeller further optimizes GPU use and predictability.",
//     ],
//     prosAr: [
//       "Skia يوفر عرض عالي الجودة وسريع؛ Impeller يحسن استخدام GPU والقابلية للتنبؤ بالأداء.",
//     ],
//     consEn: [
//       "Engine details are mostly abstracted away; developers should be aware for debugging only. Impeller is still maturing on some platforms.",
//     ],
//     consAr: [
//       "تفاصيل المحرك مغلقة في الغالب للمطورين؛ يجب أن يكونوا على علم بها لأغراض تصحيح الأخطاء فقط. Impeller لا يزال في طور النضج على بعض المنصات.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-055",
//     difficulty: .advanced,
//     category: "advanced",
//     type: "theoretical",
//     tags: ["advanced", "flutter", "comparison", "reactnative"],
//     contentEn: QuestionContent(
//       question:
//           'Compare Flutter with React Native: what are the pros and cons?',
//       answer: [
//         QuestionAnswerString(
//           '''Flutter and React Native are both cross-platform frameworks. Flutter compiles to native ARM code and has its own rendering, offering high performance. React Native uses a JavaScript bridge to native components, which can be slower. Flutter’s UI is highly customizable, while React Native uses native widgets with less flexibility. Flutter’s community is growing; React Native has a larger ecosystem (JavaScript). Hot reload exists in both, but Flutter’s is typically faster.

// Flutter: high performance, full UI control, one codebase (Android/iOS). React Native: larger library ecosystem, JavaScript familiarity for web developers.

// Flutter: larger app size, Dart is less known, fewer third-party packages. React Native: performance overhead from JS bridge, UI consistency issues across platforms.

// Use Flutter when performance and custom UI are top priorities. Use React Native if leveraging existing JavaScript code or ecosystem matters more.''',
//         ),
//       ],
//       bestUse:
//           'Use Flutter when performance and custom UI are top priorities. Use React Native if leveraging existing JavaScript code or ecosystem matters more.',
//     ),
//     contentAr: QuestionContent(
//       question: 'قارن بين فلاتر و React Native: ما هي المزايا والعيوب؟',
//       answer: [
//         QuestionAnswerString(
//           '''فلاتر و React Native هما إطاران لتطبيقات عبر المنصات. يقوم فلاتر بالترجمة إلى كود أصلي ويمتلك محرك عرض خاص به، مما يوفر أداء عالي. يستخدم React Native جسر JavaScript إلى مكونات أصلية، مما قد يكون أبطأ. واجهة فلاتر قابلة للتخصيص بشكل كبير، بينما يستخدم React Native ودجتس أصلية مع حرية أقل. مجتمع فلاتر في نمو؛ بينما لدى React Native نظام بيئي أكبر (JavaScript). هناك ميزة Hot Reload في كلاهما، لكن فيلاتر أسرع عادة.

// Flutter: أداء عالي، تحكم كامل بالواجهة، قاعدة كود واحدة (Android/iOS). React Native: نظام بيئي أكبر من المكتبات، مألوف لمطوري الويب (JavaScript).

// Flutter: حجم تطبيق أكبر، دارت أقل شهرة، عدد حزم التابعين أقل. React Native: تكلفة أداء من جسر JS، مشاكل اتساق الواجهة بين المنصات.

// استخدم فلاتر عندما تكون الأداء وواجهة المستخدم المخصصة في أولوية قصوى. استخدم React Native إذا كان الاستفادة من كود JavaScript الموجود أو النظام البيئي لها أهمية أكبر.''',
//         ),
//       ],
//       bestUse:
//           'استخدم فلاتر عندما تكون الأداء وواجهة المستخدم المخصصة في أولوية قصوى. استخدم React Native إذا كان الاستفادة من كود JavaScript الموجود أو النظام البيئي لها أهمية أكبر.',
//     ),
//     prosEn: [
//       "Flutter: high performance",
//       "full UI control",
//       "one codebase (Android/iOS). React Native: larger library ecosystem",
//       "JavaScript familiarity for web developers.",
//     ],
//     prosAr: [
//       "فلاتر: أداء عالي، تحكم كامل بالواجهة، قاعدة كود واحدة (Android/iOS). React Native: نظام بيئي أكبر من المكتبات، مألوف لمطوري الويب (JavaScript).",
//     ],
//     consEn: [
//       "Flutter: larger app size",
//       "Dart is less known",
//       "fewer third-party packages. React Native: performance overhead from JS bridge",
//       "UI consistency issues across platforms.",
//     ],
//     consAr: [
//       "فلاتر: حجم تطبيق أكبر، دارت أقل شهرة، عدد حزم التابعين أقل. React Native: تكلفة أداء من جسر JS، مشاكل اتساق الواجهة بين المنصات.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-056",
//     difficulty: .intermediate,
//     category: "intermediate",
//     type: "theoretical",
//     tags: ["intermediate", "dart", "oop"],
//     contentEn: QuestionContent(
//       question: 'Explain inheritance and composition in Dart.',
//       answer: [
//         QuestionAnswerString(
//           'Inheritance is when a class extends another class, inheriting its properties and methods ("is-a" relationship). Composition is when a class includes instances of other classes as fields ("has-a" relationship). Composition is often preferred for flexibility, as it allows changing components at runtime.',
//         ),
//       ],
//       bestUse:
//           'Use inheritance when classes have clear hierarchy and share behavior. Use composition to assemble behavior from multiple classes for flexibility.',
//     ),
//     contentAr: QuestionContent(
//       question: 'اشرح الميراث (inheritance) والتجميع (composition) في دارت.',
//       answer: [
//         QuestionAnswerString(
//           'الميراث هو عندما تمتد فئة من فئة أخرى، فترث خصائصها وطرائقها (علاقة "هي-نوعٌ من"). التجميع هو عندما تحتوي فئة على مثيلات من فئات أخرى كحقول (علاقة "يحتوي-على"). غالبًا ما يُفضل التجميع للمرونة، لأنه يسمح بتغيير المكونات أثناء التشغيل.',
//         ),
//       ],
//       bestUse:
//           'استخدم الميراث عندما تكون هناك فئات ذات تسلسل هرمي واضح وتشارك سلوكًا. استخدم التجميع لتجميع السلوك من عدة فئات لتحقيق مرونة أكبر.',
//     ),
//     prosEn: [
//       "Inheritance makes code reuse easy for closely related classes. Composition provides more flexibility and looser coupling.",
//     ],
//     prosAr: [
//       "الميراث يجعل إعادة استخدام الكود سهلة للفئات ذات الصلة الوثيقة. التجميع يوفر مرونة أكبر وربطًا أضعف.",
//     ],
//     consEn: [
//       "Inheritance can lead to rigid hierarchies and tight coupling; composition can lead to more boilerplate but is more adaptable.",
//     ],
//     consAr: [
//       "الميراث قد يؤدي إلى هياكل جامدة وربط قوي؛ التجميع قد يؤدي إلى المزيد من تكرار الكود لكنه أكثر قابلية للتكيف.",
//     ],
//   ),
//   InterviewQuestion(
//     id: "FLT-057",
//     difficulty: .basic,
//     category: "basic",
//     type: "theoretical",
//     tags: ["basic", "dart", "oop"],
//     contentEn: QuestionContent(
//       question: 'What is polymorphism in object-oriented programming?',
//       answer: [
//         QuestionAnswerString(
//           'Polymorphism means "many forms". In Dart, it allows treating objects of different classes through a common interface (e.g., methods overridden in subclasses). A function can accept a base class type and operate on any subclass instance.',
//         ),
//       ],
//       bestUse:
//           'Use polymorphism when you want to use a common interface (abstract class or base class) for different concrete implementations.',
//     ),
//     contentAr: QuestionContent(
//       question: 'ما هو التعدد الشكلي (polymorphism) في البرمجة الشيئية؟',
//       answer: [
//         QuestionAnswerString(
//           'التعدد الشكلي يعني "أشكال متعددة". في دارت، يسمح بالتعامل مع كائنات من فئات مختلفة من خلال واجهة مشتركة (مثل الدوال التي يتم تجاوزها في الفئات الفرعية). يمكن لدالة أن تستقبل نوع الفئة الأساسية وتعمل على أي مثيل من فئات فرعية.',
//         ),
//       ],
//       bestUse:
//           'استخدم التعدد الشكلي عندما تريد استخدام واجهة مشتركة (فئة مجردة أو أساسية) لتنفيذات ملموسة مختلفة.',
//     ),
//     prosEn: [
//       "Makes code more flexible and reusable by programming to an interface or superclass rather than concrete classes.",
//     ],
//     prosAr: [
//       "يجعل الكود أكثر مرونة وقابلية لإعادة الاستخدام عن طريق البرمجة باستخدام واجهة أو فئة أساسية بدلاً من فئات محددة.",
//     ],
//     consEn: [
//       "May make code harder to understand if overused",
//       "as the actual object type is less obvious.",
//     ],
//     consAr: [
//       "قد يجعل الكود أكثر صعوبة في الفهم إذا استُخدم بشكل مفرط، حيث يصبح نوع الكائن الفعلي أقل وضوحًا.",
//     ],
//   ),
// ];
