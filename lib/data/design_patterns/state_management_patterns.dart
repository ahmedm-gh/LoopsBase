import 'package:loopsbase/core/models/design_patterns.dart';
import 'package:loopsbase/core/models/content.dart';
import 'package:loopsbase/core/models/localized_text.dart';
import 'keys.dart';

final Map<String, DesignPattern> stateManagementPatternsData = {
  PK.bloc: const DesignPattern(
    id: PK.bloc,
    title: LocS(
      en: "BLoC (Business Logic Component)",
      ar: "BLoC (مكون منطق العمل)",
    ),
    description: LocS(
      en: "Separates business logic from UI using streams and events",
      ar: "يفصل منطق العمل عن واجهة المستخدم باستخدام التدفقات والأحداث",
    ),
    group: .stateManagement,
    category: .modern,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "BLoC is a state management pattern in Flutter that uses Streams to handle state and events. It separates presentation from business logic, making code testable and reusable.",
        ),
        StrContent(
          "BLoCs receive events from the UI, process them according to business logic, and emit new states that the UI reacts to. This creates a clear unidirectional data flow.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Events: User actions or occurrences (ButtonPressed, DataRequested)",
            "States: Represent UI states (Initial, Loading, Success, Error)",
            "BLoC: Transforms events into states using business logic",
            "StreamController/Sink: Input for events",
            "Stream: Output for states",
            "BlocProvider: Provides BLoC to widget tree",
          ],
        ),
        StrContent(
          "The flutter_bloc package provides helpful widgets like BlocBuilder, BlocListener, and BlocConsumer to react to state changes.",
        ),
      ],
      ar: [
        StrContent(
          "BLoC هو نمط إدارة حالة في Flutter يستخدم التدفقات (Streams) للتعامل مع الحالة والأحداث. يفصل العرض عن منطق العمل، مما يجعل الكود قابلاً للاختبار وإعادة الاستخدام.",
        ),
        StrContent(
          "BLoCs تتلقى الأحداث من واجهة المستخدم، تعالجها وفقاً لمنطق العمل، وتصدر حالات جديدة تتفاعل معها واجهة المستخدم. هذا ينشئ تدفق بيانات أحادي الاتجاه واضح.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "الأحداث: إجراءات المستخدم أو الحدوث (ButtonPressed، DataRequested)",
            "الحالات: تمثل حالات واجهة المستخدم (Initial، Loading، Success، Error)",
            "BLoC: يحول الأحداث إلى حالات باستخدام منطق العمل",
            "StreamController/Sink: إدخال للأحداث",
            "Stream: إخراج للحالات",
            "BlocProvider: يوفر BLoC لشجرة الودجت",
          ],
        ),
        StrContent(
          "حزمة flutter_bloc توفر ودجات مفيدة مثل BlocBuilder وBlocListener وBlocConsumer للتفاعل مع تغييرات الحالة.",
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Clear separation of concerns",
        "Highly testable with unit tests",
        "Reusable business logic",
        "Platform-independent (can use in web, mobile)",
        "Excellent for complex state management",
        "Great debugging with bloc observer",
        "Strong community and tooling",
      ],
      ar: [
        "فصل واضح للاهتمامات",
        "قابل للاختبار بشكل كبير مع اختبارات الوحدة",
        "منطق عمل قابل لإعادة الاستخدام",
        "مستقل عن المنصة (يمكن استخدامه في الويب والهاتف)",
        "ممتاز لإدارة الحالة المعقدة",
        "تصحيح رائع مع مراقب bloc",
        "مجتمع وأدوات قوية",
      ],
    ),
    cons: LocSL(
      en: [
        "Boilerplate code for events and states",
        "Learning curve for beginners",
        "Can be overkill for simple screens",
        "Requires understanding of streams",
        "More files and classes to manage",
      ],
      ar: [
        "كود قالبي للأحداث والحالات",
        "منحنى تعلم للمبتدئين",
        "قد يكون مبالغاً فيه للشاشات البسيطة",
        "يتطلب فهم التدفقات",
        "المزيد من الملفات والفئات للإدارة",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use BLoC when:"),
        ULContent(
          value: [
            "Building complex applications with lots of state",
            "Need strong separation between UI and logic",
            "Want to reuse business logic across platforms",
            "Team is comfortable with reactive programming",
            "Testing is a high priority",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم BLoC عندما:"),
        ULContent(
          value: [
            "بناء تطبيقات معقدة مع الكثير من الحالة",
            "تحتاج لفصل قوي بين واجهة المستخدم والمنطق",
            "تريد إعادة استخدام منطق العمل عبر المنصات",
            "الفريق مرتاح مع البرمجة التفاعلية",
            "الاختبار أولوية عالية",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Creating too many small BLoCs",
        "Putting UI logic in BLoC",
        "Not disposing streams properly",
        "Using BLoC for simple local state",
        "Overcomplicating event/state hierarchies",
      ],
      ar: [
        "إنشاء BLoCs صغيرة كثيرة جداً",
        "وضع منطق واجهة المستخدم في BLoC",
        "عدم التخلص من التدفقات بشكل صحيح",
        "استخدم BLoC للحالة المحلية البسيطة",
        "التعقيد المفرط لتسلسلات الأحداث/الحالة",
      ],
    ),
    relatedPatterns: [PK.cubit, PK.redux, PK.observer],
  ),
  PK.cubit: const DesignPattern(
    id: PK.cubit,
    title: LocS(en: "Cubit", ar: "Cubit"),
    description: LocS(
      en: "Simplified BLoC that exposes functions instead of events",
      ar: "BLoC مبسط يكشف الدوال بدلاً من الأحداث",
    ),
    group: .stateManagement,
    category: .modern,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "Cubit is a simplified version of BLoC that emits states in response to function calls rather than events. It reduces boilerplate while maintaining the benefits of BLoC architecture.",
        ),
        StrContent(
          "Instead of defining events and handling them in mapEventToState, Cubits expose public methods that directly emit new states. This makes the code simpler and more straightforward.",
        ),
        ULContent(
          title: "Characteristics:",
          value: [
            "No events - just functions",
            "Extends Cubit<State> base class",
            "Call emit() to change state",
            "Less boilerplate than BLoC",
            "Same testing and observability benefits",
            "Works with same flutter_bloc widgets",
          ],
        ),
      ],
      ar: [
        StrContent(
          "Cubit هو نسخة مبسطة من BLoC تصدر حالات استجابة لاستدعاءات الدوال بدلاً من الأحداث. يقلل الكود القالبي مع الحفاظ على فوائد معمارية BLoC.",
        ),
        StrContent(
          "بدلاً من تعريف الأحداث والتعامل معها في mapEventToState، Cubits تكشف طرقاً عامة تصدر حالات جديدة مباشرة. هذا يجعل الكود أبسط وأكثر مباشرة.",
        ),
        ULContent(
          title: "الخصائص:",
          value: [
            "لا أحداث - فقط دوال",
            "يمتد من فئة Cubit<State> الأساسية",
            "استدعاء ()emit لتغيير الحالة",
            "كود قالبي أقل من BLoC",
            "نفس فوائد الاختبار والقابلية للملاحظة",
            "يعمل مع نفس ودجات flutter_bloc",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Less boilerplate than BLoC",
        "Easier to understand for beginners",
        "Still testable and observable",
        "Simpler API",
        "Same benefits as BLoC with less code",
      ],
      ar: [
        "كود قالبي أقل من BLoC",
        "أسهل في الفهم للمبتدئين",
        "لا يزال قابلاً للاختبار والملاحظة",
        "واجهة برمجة أبسط",
        "نفس فوائد BLoC مع كود أقل",
      ],
    ),
    cons: LocSL(
      en: [
        "Less explicit than BLoC events",
        "Can be harder to trace complex state changes",
        "No event replay capability",
        "Might encourage putting too much logic in methods",
      ],
      ar: [
        "أقل صراحة من أحداث BLoC",
        "قد يكون أصعب في تتبع تغييرات الحالة المعقدة",
        "لا قدرة على إعادة تشغيل الأحداث",
        "قد يشجع على وضع الكثير من المنطق في الطرق",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Cubit when:"),
        ULContent(
          value: [
            "You want simpler state management than BLoC",
            "Events feel like unnecessary abstraction",
            "Simple state transformations",
            "Learning state management patterns",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم Cubit عندما:"),
        ULContent(
          value: [
            "تريد إدارة حالة أبسط من BLoC",
            "الأحداث تبدو كتجريد غير ضروري",
            "تحويلات حالة بسيطة",
            "تعلم أنماط إدارة الحالة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Adding too much logic to Cubit methods",
        "Not using async properly with emit",
        "Forgetting to close Cubit",
        "Using when BLoC's event traceability is needed",
      ],
      ar: [
        "إضافة الكثير من المنطق لطرق Cubit",
        "عدم استخدام async بشكل صحيح مع emit",
        "نسيان إغلاق Cubit",
        "الاستخدام عندما تكون قابلية تتبع أحداث BLoC مطلوبة",
      ],
    ),
    relatedPatterns: [PK.bloc, PK.provider, PK.stateNotifier],
  ),
  PK.provider: const DesignPattern(
    id: PK.provider,
    title: LocS(en: "Provider", ar: "Provider"),
    description: LocS(
      en: "Dependency injection and state management using InheritedWidget",
      ar: "حقن الاعتمادية وإدارة الحالة باستخدام InheritedWidget",
    ),
    group: .stateManagement,
    category: .modern,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "Provider is Flutter's recommended way to manage state and dependencies. It wraps InheritedWidget to make it easier to use and provides a simple way to rebuild widgets when data changes.",
        ),
        StrContent(
          "Provider supports various use cases from simple dependency injection to complex state management, often combined with ChangeNotifier for reactive state updates.",
        ),
        ULContent(
          title: "Common Provider Types:",
          value: [
            "Provider<T>: Exposes a value",
            "ChangeNotifierProvider: For ChangeNotifier classes",
            "FutureProvider: For async data",
            "StreamProvider: For streams",
            "StateProvider: For simple state",
            "ProxyProvider: Combines multiple providers",
          ],
        ),
      ],
      ar: [
        StrContent(
          "Provider هو الطريقة الموصى بها في Flutter لإدارة الحالة والتبعيات. يلف InheritedWidget لجعله أسهل في الاستخدام ويوفر طريقة بسيطة لإعادة بناء الودجات عند تغيير البيانات.",
        ),
        StrContent(
          "Provider يدعم حالات استخدام متنوعة من حقن الاعتمادية البسيط إلى إدارة الحالة المعقدة، غالباً ما يُدمج مع ChangeNotifier لتحديثات الحالة التفاعلية.",
        ),
        ULContent(
          title: "أنواع Provider الشائعة:",
          value: [
            "Provider<T>: يكشف قيمة",
            "ChangeNotifierProvider: لفئات ChangeNotifier",
            "FutureProvider: للبيانات غير المتزامنة",
            "StreamProvider: للتدفقات",
            "StateProvider: للحالة البسيطة",
            "ProxyProvider: يجمع موفري متعددة",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Simple and easy to learn",
        "Officially recommended by Flutter team",
        "Minimal boilerplate",
        "Good performance with selective rebuilds",
        "Flexible - works with various patterns",
        "Great for dependency injection",
      ],
      ar: [
        "بسيط وسهل التعلم",
        "موصى به رسمياً من فريق Flutter",
        "كود قالبي بحد أدنى",
        "أداء جيد مع إعادة بناء انتقائية",
        "مرن - يعمل مع أنماط متنوعة",
        "رائع لحقن الاعتمادية",
      ],
    ),
    cons: LocSL(
      en: [
        "Can lead to unstructured code without discipline",
        "ChangeNotifier is not immutable",
        "No built-in async state handling",
        "Can be misused easily",
        "Less structure than BLoC",
      ],
      ar: [
        "قد يؤدي لكود غير منظم بدون انضباط",
        "ChangeNotifier ليس ثابتاً",
        "لا معالجة حالة غير متزامنة مدمجة",
        "يمكن إساءة استخدامه بسهولة",
        "بنية أقل من BLoC",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Provider when:"),
        ULContent(
          value: [
            "Need simple state management",
            "Dependency injection is main goal",
            "Starting with Flutter",
            "Small to medium applications",
            "Combined with other patterns",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم Provider عندما:"),
        ULContent(
          value: [
            "تحتاج لإدارة حالة بسيطة",
            "حقن الاعتمادية هو الهدف الرئيسي",
            "البدء مع Flutter",
            "تطبيقات صغيرة إلى متوسطة",
            "دمجه مع أنماط أخرى",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Overusing ChangeNotifier",
        "Not using Consumer/Selector correctly",
        "Putting UI logic in providers",
        "Creating god objects",
        "Not disposing providers properly",
      ],
      ar: [
        "الإفراط في استخدام ChangeNotifier",
        "عدم استخدام Consumer/Selector بشكل صحيح",
        "وضع منطق واجهة المستخدم في الموفرين",
        "إنشاء كائنات إلهية",
        "عدم التخلص من الموفرين بشكل صحيح",
      ],
    ),
    relatedPatterns: [PK.dependencyInjection, PK.observer, PK.cubit],
  ),
  PK.stateNotifier: const DesignPattern(
    id: PK.stateNotifier,
    title: LocS(en: "StateNotifier", ar: "StateNotifier"),
    description: LocS(
      en: "Immutable state management with StateNotifier and Riverpod",
      ar: "إدارة حالة ثابتة مع StateNotifier وRiverpod",
    ),
    group: .stateManagement,
    category: .modern,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "StateNotifier is an immutable state management solution often used with Riverpod. It enforces immutability and provides a clean way to handle state transitions.",
        ),
        StrContent(
          "Unlike ChangeNotifier, StateNotifier promotes immutable state updates where each state change creates a new state object. This makes state changes predictable and easier to debug.",
        ),
        ULContent(
          title: "Key Features:",
          value: [
            "Immutable state by convention",
            "Type-safe state changes",
            "Works great with Riverpod",
            "Can be used with freezed for sealed classes",
            "Simpler than BLoC, more structured than Provider",
            "Good for medium complexity state",
          ],
        ),
      ],
      ar: [
        StrContent(
          "StateNotifier هو حل إدارة حالة ثابتة يُستخدم غالباً مع Riverpod. يفرض الثبات ويوفر طريقة نظيفة للتعامل مع انتقالات الحالة.",
        ),
        StrContent(
          "على عكس ChangeNotifier، StateNotifier يعزز تحديثات الحالة الثابتة حيث كل تغيير حالة ينشئ كائن حالة جديد. هذا يجعل تغييرات الحالة قابلة للتنبؤ وأسهل في التصحيح.",
        ),
        ULContent(
          title: "الميزات الأساسية:",
          value: [
            "حالة ثابتة بالاتفاقية",
            "تغييرات حالة آمنة من حيث النوع",
            "يعمل بشكل رائع مع Riverpod",
            "يمكن استخدامه مع freezed للفئات المختومة",
            "أبسط من BLoC، أكثر تنظيماً من Provider",
            "جيد لحالة ذات تعقيد متوسط",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Immutable state is easier to reason about",
        "Less boilerplate than BLoC",
        "Type-safe",
        "Great with code generation tools",
        "Predictable state changes",
        "Works well with Riverpod ecosystem",
      ],
      ar: [
        "الحالة الثابتة أسهل في التفكير بها",
        "كود قالبي أقل من BLoC",
        "آمن من حيث النوع",
        "رائع مع أدوات توليد الكود",
        "تغييرات حالة قابلة للتنبؤ",
        "يعمل جيداً مع نظام Riverpod البيئي",
      ],
    ),
    cons: LocSL(
      en: [
        "Requires understanding of immutability",
        "More object creation overhead",
        "Mainly tied to Riverpod",
        "Learning curve for state copies",
      ],
      ar: [
        "يتطلب فهم الثبات",
        "عبء إنشاء كائنات أكثر",
        "مرتبط بشكل أساسي بـ Riverpod",
        "منحنى تعلم لنسخ الحالة",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use StateNotifier when:"),
        ULContent(
          value: [
            "Using Riverpod for state management",
            "Want immutable state",
            "Need more structure than Provider",
            "Using freezed or similar code generation",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم StateNotifier عندما:"),
        ULContent(
          value: [
            "استخدام Riverpod لإدارة الحالة",
            "تريد حالة ثابتة",
            "تحتاج لبنية أكثر من Provider",
            "استخدام freezed أو توليد كود مشابه",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Mutating state directly",
        "Not using copyWith properly",
        "Over-complicating state classes",
        "Not leveraging code generation",
      ],
      ar: [
        "تغيير الحالة مباشرة",
        "عدم استخدام copyWith بشكل صحيح",
        "التعقيد المفرط لفئات الحالة",
        "عدم الاستفادة من توليد الكود",
      ],
    ),
    relatedPatterns: [PK.cubit, PK.provider, PK.redux],
  ),
  PK.redux: const DesignPattern(
    id: PK.redux,
    title: LocS(en: "Redux", ar: "Redux"),
    description: LocS(
      en: "Predictable state container with unidirectional data flow",
      ar: "حاوية حالة قابلة للتنبؤ مع تدفق بيانات أحادي الاتجاه",
    ),
    group: .stateManagement,
    category: .modern,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "Redux is a predictable state container pattern with strict unidirectional data flow. All state is stored in a single immutable store, modified only through pure reducer functions.",
        ),
        StrContent(
          "Actions describe what happened, Reducers specify how state changes, and the Store holds the entire application state. This creates a highly predictable and debuggable system.",
        ),
        ULContent(
          title: "Core Principles:",
          value: [
            "Single source of truth (one store)",
            "State is read-only",
            "Changes made with pure functions (reducers)",
            "Actions describe events",
            "Middleware for side effects",
            "Time-travel debugging possible",
          ],
        ),
      ],
      ar: [
        StrContent(
          "Redux هو نمط حاوية حالة قابلة للتنبؤ مع تدفق بيانات أحادي الاتجاه صارم. جميع الحالة مُخزنة في مخزن ثابت واحد، تُعدل فقط من خلال دوال مُخفّضة نقية.",
        ),
        StrContent(
          "الإجراءات تصف ما حدث، المُخفّضات تحدد كيف تتغير الحالة، والمخزن يحتفظ بحالة التطبيق بالكامل. هذا ينشئ نظاماً قابلاً للتنبؤ والتصحيح بشكل كبير.",
        ),
        ULContent(
          title: "المبادئ الأساسية:",
          value: [
            "مصدر واحد للحقيقة (مخزن واحد)",
            "الحالة للقراءة فقط",
            "التغييرات تُجرى بدوال نقية (مُخفّضات)",
            "الإجراءات تصف الأحداث",
            "البرمجيات الوسيطة للآثار الجانبية",
            "تصحيح السفر عبر الزمن ممكن",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Extremely predictable",
        "Excellent debugging (time-travel)",
        "Easy to test reducers",
        "Clear data flow",
        "Great for large applications",
        "Powerful middleware ecosystem",
      ],
      ar: [
        "قابل للتنبؤ للغاية",
        "تصحيح ممتاز (السفر عبر الزمن)",
        "سهولة اختبار المُخفّضات",
        "تدفق بيانات واضح",
        "رائع للتطبيقات الكبيرة",
        "نظام برمجيات وسيطة قوي",
      ],
    ),
    cons: LocSL(
      en: [
        "Significant boilerplate",
        "Steep learning curve",
        "Can be overkill for small apps",
        "Verbose action/reducer definitions",
        "Performance concerns with large state",
      ],
      ar: [
        "كود قالبي كبير",
        "منحنى تعلم حاد",
        "قد يكون مبالغاً فيه للتطبيقات الصغيرة",
        "تعريفات إجراء/مُخفّض مطولة",
        "مخاوف الأداء مع الحالة الكبيرة",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Redux when:"),
        ULContent(
          value: [
            "Building very large, complex applications",
            "Need time-travel debugging",
            "Team experienced with Redux",
            "Predictability is critical",
            "Complex state transitions",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم Redux عندما:"),
        ULContent(
          value: [
            "بناء تطبيقات كبيرة ومعقدة جداً",
            "تحتاج لتصحيح السفر عبر الزمن",
            "فريق ذو خبرة مع Redux",
            "القابلية للتنبؤ حرجة",
            "انتقالات حالة معقدة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Using for simple state",
        "Not normalizing state shape",
        "Mutating state in reducers",
        "Too many actions",
        "Not using selectors",
      ],
      ar: [
        "الاستخدام للحالة البسيطة",
        "عدم تطبيع شكل الحالة",
        "تغيير الحالة في المُخفّضات",
        "إجراءات كثيرة جداً",
        "عدم استخدام المحددات",
      ],
    ),
    relatedPatterns: [PK.bloc, PK.mvu, PK.unidirectionalDataFlow],
  ),
  PK.unidirectionalDataFlow: const DesignPattern(
    id: PK.unidirectionalDataFlow,
    title: LocS(
      en: "Unidirectional Data Flow",
      ar: "تدفق البيانات أحادي الاتجاه",
    ),
    description: LocS(
      en: "Architectural principle where data flows in one direction through the application",
      ar: "مبدأ معماري حيث تتدفق البيانات في اتجاه واحد عبر التطبيق",
    ),
    group: .stateManagement,
    category: .modern,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "Unidirectional Data Flow is a principle where data flows in a single direction: User actions → State changes → UI updates. This creates predictable and debuggable applications.",
        ),
        StrContent(
          "This principle is fundamental to many state management patterns including Redux, BLoC, and MVU. It prevents complex bidirectional data flows that make applications hard to reason about.",
        ),
        ULContent(
          title: "Flow Pattern:",
          value: [
            "1. User interacts with UI",
            "2. Action/Event is dispatched",
            "3. State is updated (immutably)",
            "4. UI re-renders based on new state",
            "5. Cycle repeats",
          ],
        ),
      ],
      ar: [
        StrContent(
          "تدفق البيانات أحادي الاتجاه هو مبدأ حيث تتدفق البيانات في اتجاه واحد: إجراءات المستخدم ← تغييرات الحالة ← تحديثات واجهة المستخدم. هذا ينشئ تطبيقات قابلة للتنبؤ والتصحيح.",
        ),
        StrContent(
          "هذا المبدأ أساسي للعديد من أنماط إدارة الحالة بما في ذلك Redux وBLoC وMVU. يمنع تدفقات البيانات ثنائية الاتجاه المعقدة التي تجعل التطبيقات صعبة الفهم.",
        ),
        ULContent(
          title: "نمط التدفق:",
          value: [
            "1. المستخدم يتفاعل مع واجهة المستخدم",
            "2. يُرسل إجراء/حدث",
            "3. تُحدث الحالة (بشكل ثابت)",
            "4. واجهة المستخدم تُعيد العرض بناءً على الحالة الجديدة",
            "5. تتكرر الدورة",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Highly predictable",
        "Easy to debug and trace",
        "Clear separation of concerns",
        "Testable state transitions",
        "Time-travel debugging possible",
      ],
      ar: [
        "قابل للتنبؤ بشكل كبير",
        "سهل التصحيح والتتبع",
        "فصل واضح للاهتمامات",
        "انتقالات حالة قابلة للاختبار",
        "تصحيح السفر عبر الزمن ممكن",
      ],
    ),
    cons: LocSL(
      en: [
        "Can add boilerplate",
        "May feel restrictive",
        "Learning curve",
        "Can be verbose",
      ],
      ar: [
        "قد يضيف كوداً قالبياً",
        "قد يبدو مقيداً",
        "منحنى تعلم",
        "قد يكون مطولاً",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Unidirectional Data Flow when:"),
        ULContent(
          value: [
            "Building complex applications",
            "Predictability is important",
            "Team needs clear patterns",
            "Debugging is challenging",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم تدفق البيانات أحادي الاتجاه عندما:"),
        ULContent(
          value: [
            "بناء تطبيقات معقدة",
            "القابلية للتنبؤ مهمة",
            "الفريق يحتاج لأنماط واضحة",
            "التصحيح صعب",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Breaking the flow with bidirectional bindings",
        "Mutating state directly",
        "Mixing patterns",
        "Over-complicating simple cases",
      ],
      ar: [
        "كسر التدفق بربط ثنائي الاتجاه",
        "تغيير الحالة مباشرة",
        "خلط الأنماط",
        "التعقيد المفرط للحالات البسيطة",
      ],
    ),
    relatedPatterns: [PK.redux, PK.bloc, PK.mvu],
  ),
};
