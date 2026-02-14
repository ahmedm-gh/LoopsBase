import 'package:loopsbase/core/models/design_patterns.dart';
import 'package:loopsbase/core/models/content.dart';
import 'package:loopsbase/core/models/localized_text.dart';
import 'keys.dart';

final Map<String, DesignPattern> architecturalPatternsData = {
  PK.mvc: const DesignPattern(
    id: PK.mvc,
    title: LocS(en: "MVC (Model-View-Controller)", ar: "MVC (نموذج-عرض-متحكم)"),
    description: LocS(
      en: "Separates application into Model, View, and Controller components",
      ar: "يفصل التطبيق إلى مكونات النموذج والعرض والمتحكم",
    ),
    group: .architectural,
    category: .practical,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "MVC is an architectural pattern that separates an application into three interconnected components: Model (data), View (presentation), and Controller (business logic).",
        ),
        ULContent(
          title: "Components:",
          value: [
            "Model: Manages data and business logic",
            "View: Presents data to user",
            "Controller: Handles user input and updates model",
          ],
        ),
      ],
      ar: [
        StrContent(
          "MVC هو نمط معماري يفصل التطبيق إلى ثلاثة مكونات مترابطة: النموذج (البيانات)، والعرض (العرض التقديمي)، والمتحكم (منطق العمل).",
        ),
        ULContent(
          title: "المكونات:",
          value: [
            "النموذج: يدير البيانات ومنطق العمل",
            "العرض: يعرض البيانات للمستخدم",
            "المتحكم: يتعامل مع مدخلات المستخدم ويحدث النموذج",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Separation of concerns",
        "Parallel development",
        "Testable components",
      ],
      ar: ["فصل الاهتمامات", "تطوير متوازٍ", "مكونات قابلة للاختبار"],
    ),
    cons: LocSL(
      en: ["Can be complex for simple apps", "View-Controller coupling"],
      ar: ["قد يكون معقداً للتطبيقات البسيطة", "اقتران العرض-المتحكم"],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use MVC when:"),
        ULContent(
          value: [
            "Building web applications",
            "Need clear separation of concerns",
            "Multiple views for same data",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم MVC عندما:"),
        ULContent(
          value: [
            "بناء تطبيقات ويب",
            "تحتاج لفصل واضح للاهتمامات",
            "عدة عروض لنفس البيانات",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: ["Putting logic in views", "Fat controllers", "Tight coupling"],
      ar: ["وضع المنطق في العروض", "متحكمات سمينة", "اقتران وثيق"],
    ),
    relatedPatterns: [PK.mvp, PK.mvvm, PK.observer],
  ),
  PK.mvp: const DesignPattern(
    id: PK.mvp,
    title: LocS(en: "MVP (Model-View-Presenter)", ar: "MVP (نموذج-عرض-مقدم)"),
    description: LocS(
      en: "Separates presentation logic into a Presenter that mediates between View and Model",
      ar: "يفصل منطق العرض إلى مقدم يتوسط بين العرض والنموذج",
    ),
    group: .architectural,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "MVP is derived from MVC where the Presenter handles all presentation logic. The View is passive and delegates all user interactions to the Presenter.",
        ),
        ULContent(
          title: "Key Differences from MVC:",
          value: [
            "View is completely passive",
            "Presenter handles all logic",
            "One-to-one View-Presenter relationship",
            "Better testability",
          ],
        ),
      ],
      ar: [
        StrContent(
          "MVP مشتق من MVC حيث يتعامل المقدم مع كل منطق العرض. العرض سلبي ويفوض جميع تفاعلات المستخدم للمقدم.",
        ),
        ULContent(
          title: "الاختلافات الأساسية عن MVC:",
          value: [
            "العرض سلبي تماماً",
            "المقدم يتعامل مع كل المنطق",
            "علاقة واحد لواحد بين العرض والمقدم",
            "قابلية اختبار أفضل",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: ["Highly testable", "Clear responsibilities", "View independence"],
      ar: ["قابل للاختبار بشكل كبير", "مسؤوليات واضحة", "استقلالية العرض"],
    ),
    cons: LocSL(
      en: ["More boilerplate", "One-to-one coupling", "Can become complex"],
      ar: ["كود قالبي أكثر", "اقتران واحد لواحد", "قد يصبح معقداً"],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use MVP when:"),
        ULContent(
          value: [
            "Need highly testable code",
            "Complex UI logic",
            "Desktop or mobile apps",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم MVP عندما:"),
        ULContent(
          value: [
            "تحتاج لكود قابل للاختبار بشكل كبير",
            "منطق واجهة مستخدم معقد",
            "تطبيقات سطح المكتب أو الهاتف المحمول",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "View knowing about Model",
        "Presenter doing too much",
        "Memory leaks",
      ],
      ar: ["العرض يعرف عن النموذج", "المقدم يفعل الكثير", "تسريبات ذاكرة"],
    ),
    relatedPatterns: [PK.mvc, PK.mvvm, PK.mediator],
  ),
  PK.mvvm: const DesignPattern(
    id: PK.mvvm,
    title: LocS(
      en: "MVVM (Model-View-ViewModel)",
      ar: "MVVM (نموذج-عرض-نموذج العرض)",
    ),
    description: LocS(
      en: "Separates UI from business logic using data binding between View and ViewModel",
      ar: "يفصل واجهة المستخدم عن منطق العمل باستخدام ربط البيانات بين العرض ونموذج العرض",
    ),
    group: .architectural,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "MVVM uses data binding to connect View with ViewModel, eliminating the need for manual updates. The ViewModel exposes data and commands that the View binds to.",
        ),
        ULContent(
          title: "Components:",
          value: [
            "Model: Business logic and data",
            "View: UI elements (declarative)",
            "ViewModel: Prepares data for View, handles commands",
            "Data Binding: Automatic synchronization",
          ],
        ),
      ],
      ar: [
        StrContent(
          "MVVM يستخدم ربط البيانات لربط العرض بنموذج العرض، مما يلغي الحاجة للتحديثات اليدوية. نموذج العرض يكشف البيانات والأوامر التي يربطها العرض.",
        ),
        ULContent(
          title: "المكونات:",
          value: [
            "النموذج: منطق العمل والبيانات",
            "العرض: عناصر واجهة المستخدم (تصريحية)",
            "نموذج العرض: يحضر البيانات للعرض، يتعامل مع الأوامر",
            "ربط البيانات: مزامنة تلقائية",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Declarative UI",
        "Testable ViewModels",
        "Less boilerplate",
        "Reactive",
      ],
      ar: [
        "واجهة مستخدم تصريحية",
        "نماذج عرض قابلة للاختبار",
        "كود قالبي أقل",
        "تفاعلي",
      ],
    ),
    cons: LocSL(
      en: ["Learning curve", "Can be overkill", "Debugging data binding"],
      ar: ["منحنى تعلم", "قد يكون مبالغاً فيه", "تصحيح ربط البيانات"],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use MVVM when:"),
        ULContent(
          value: [
            "Framework supports data binding",
            "Complex UI state",
            "Reactive applications",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم MVVM عندما:"),
        ULContent(
          value: [
            "الإطار يدعم ربط البيانات",
            "حالة واجهة مستخدم معقدة",
            "تطبيقات تفاعلية",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: ["Logic in View", "Fat ViewModels", "Breaking data binding"],
      ar: ["المنطق في العرض", "نماذج عرض سمينة", "كسر ربط البيانات"],
    ),
    relatedPatterns: [PK.mvc, PK.mvp, PK.observer],
  ),
  PK.mvu: const DesignPattern(
    id: PK.mvu,
    title: LocS(en: "MVU (Model-View-Update)", ar: "MVU (نموذج-عرض-تحديث)"),
    description: LocS(
      en: "Unidirectional data flow with immutable state updates",
      ar: "تدفق بيانات أحادي الاتجاه مع تحديثات حالة ثابتة",
    ),
    group: .architectural,
    category: .modern,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "MVU (also called Elm Architecture or TEA) uses unidirectional data flow where events trigger state updates, and state changes trigger view updates.",
        ),
        ULContent(
          title: "Flow:",
          value: [
            "User action → Message",
            "Message → Update function",
            "Update → New immutable State",
            "State → View renders",
          ],
        ),
      ],
      ar: [
        StrContent(
          "MVU (يسمى أيضاً معمارية Elm أو TEA) يستخدم تدفق بيانات أحادي الاتجاه حيث الأحداث تطلق تحديثات الحالة، وتغييرات الحالة تطلق تحديثات العرض.",
        ),
        ULContent(
          title: "التدفق:",
          value: [
            "إجراء المستخدم ← رسالة",
            "رسالة ← دالة التحديث",
            "تحديث ← حالة ثابتة جديدة",
            "حالة ← العرض يُعرض",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Predictable state",
        "Easy debugging",
        "Time-travel debugging",
        "Testable",
      ],
      ar: [
        "حالة قابلة للتنبؤ",
        "تصحيح سهل",
        "تصحيح السفر عبر الزمن",
        "قابل للاختبار",
      ],
    ),
    cons: LocSL(
      en: ["Boilerplate for simple cases", "Learning curve", "Verbosity"],
      ar: ["كود قالبي للحالات البسيطة", "منحنى تعلم", "طول"],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use MVU when:"),
        ULContent(
          value: [
            "Need predictable state",
            "Complex state management",
            "Debugging is critical",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم MVU عندما:"),
        ULContent(
          value: [
            "تحتاج لحالة قابلة للتنبؤ",
            "إدارة حالة معقدة",
            "التصحيح حرج",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: ["Mutable state", "Side effects in update", "Not using messages"],
      ar: [
        "حالة قابلة للتغيير",
        "آثار جانبية في التحديث",
        "عدم استخدام الرسائل",
      ],
    ),
    relatedPatterns: [PK.redux, PK.unidirectionalDataFlow, PK.command],
  ),
  PK.cleanArchitecture: const DesignPattern(
    id: PK.cleanArchitecture,
    title: LocS(
      en: "Clean Architecture",
      ar: "المعمارية النظيفة (Clean Architecture)",
    ),
    description: LocS(
      en: "Organizes code into layers with dependency rules pointing inward toward business logic",
      ar: "ينظم الكود في طبقات مع قواعد تبعية تشير للداخل نحو منطق العمل",
    ),
    group: .architectural,
    category: .modern,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "Clean Architecture separates code into layers where dependencies point inward. The core business logic is independent of frameworks, UI, and databases.",
        ),
        ULContent(
          title: "Layers (inside → outside):",
          value: [
            "Entities: Core business models",
            "Use Cases: Application-specific logic",
            "Interface Adapters: Controllers, Presenters",
            "Frameworks & Drivers: UI, Database, External",
          ],
        ),
      ],
      ar: [
        StrContent(
          "المعمارية النظيفة تفصل الكود في طبقات حيث التبعيات تشير للداخل. منطق العمل الأساسي مستقل عن الأطر وواجهة المستخدم وقواعد البيانات.",
        ),
        ULContent(
          title: "الطبقات (داخل ← خارج):",
          value: [
            "الكيانات: نماذج العمل الأساسية",
            "حالات الاستخدام: منطق خاص بالتطبيق",
            "محولات الواجهة: المتحكمات، المقدمون",
            "الأطر والمحركات: واجهة المستخدم، قاعدة البيانات، خارجي",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Testable",
        "Independent of frameworks",
        "Database agnostic",
        "Maintainable",
      ],
      ar: [
        "قابل للاختبار",
        "مستقل عن الأطر",
        "مستقل عن قاعدة البيانات",
        "قابل للصيانة",
      ],
    ),
    cons: LocSL(
      en: [
        "Initial complexity",
        "More files",
        "Learning curve",
        "May be overkill",
      ],
      ar: ["تعقيد أولي", "ملفات أكثر", "منحنى تعلم", "قد يكون مبالغاً فيه"],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Clean Architecture when:"),
        ULContent(
          value: [
            "Long-term maintainability important",
            "Large team projects",
            "Complex business logic",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المعمارية النظيفة عندما:"),
        ULContent(
          value: [
            "الصيانة طويلة الأمد مهمة",
            "مشاريع فريق كبير",
            "منطق عمل معقد",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Dependencies pointing wrong way",
        "Too many layers",
        "Overengineering",
      ],
      ar: ["التبعيات تشير بالاتجاه الخاطئ", "طبقات كثيرة جداً", "هندسة مفرطة"],
    ),
    relatedPatterns: [
      PK.hexagonal,
      PK.layeredArchitecture,
      PK.dependencyInjection,
    ],
  ),
  PK.hexagonal: const DesignPattern(
    id: PK.hexagonal,
    title: LocS(
      en: "Hexagonal Architecture (Ports and Adapters)",
      ar: "المعمارية السداسية (المنافذ والمحولات)",
    ),
    description: LocS(
      en: "Isolates core logic with ports for external interactions and adapters for implementations",
      ar: "يعزل المنطق الأساسي بمنافذ للتفاعلات الخارجية ومحولات للتنفيذات",
    ),
    group: .architectural,
    category: .modern,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "Hexagonal Architecture (Ports and Adapters) places business logic at the center, with ports defining interfaces and adapters implementing external interactions.",
        ),
        ULContent(
          title: "Concepts:",
          value: [
            "Core: Business logic (hexagon center)",
            "Ports: Interfaces for input/output",
            "Adapters: Implementations for specific technologies",
            "Symmetric: Same pattern for driving/driven sides",
          ],
        ),
      ],
      ar: [
        StrContent(
          "المعمارية السداسية (المنافذ والمحولات) تضع منطق العمل في المركز، مع منافذ تعرّف الواجهات ومحولات تنفذ التفاعلات الخارجية.",
        ),
        ULContent(
          title: "المفاهيم:",
          value: [
            "الأساس: منطق العمل (مركز السداسي)",
            "المنافذ: واجهات للإدخال/الإخراج",
            "المحولات: تنفيذات لتقنيات محددة",
            "متماثل: نفس النمط للجوانب القائدة/المقادة",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: ["Technology agnostic", "Testable", "Flexible", "Clear boundaries"],
      ar: ["مستقل عن التقنية", "قابل للاختبار", "مرن", "حدود واضحة"],
    ),
    cons: LocSL(
      en: ["Initial complexity", "More abstraction", "Boilerplate"],
      ar: ["تعقيد أولي", "تجريد أكثر", "كود قالبي"],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Hexagonal Architecture when:"),
        ULContent(
          value: [
            "Core logic must be isolated",
            "Multiple interfaces (UI, API, CLI)",
            "Technology changes expected",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المعمارية السداسية عندما:"),
        ULContent(
          value: [
            "يجب عزل المنطق الأساسي",
            "واجهات متعددة (واجهة مستخدم، API، CLI)",
            "تغييرات التقنية متوقعة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: ["Confusing with layered", "Too many ports", "Leaking details"],
      ar: ["الخلط مع الطبقات", "منافذ كثيرة جداً", "تسريب التفاصيل"],
    ),
    relatedPatterns: [PK.cleanArchitecture, PK.adapter, PK.dependencyInjection],
  ),
  PK.layeredArchitecture: const DesignPattern(
    id: PK.layeredArchitecture,
    title: LocS(
      en: "Layered Architecture",
      ar: "المعمارية الطبقية (Layered Architecture)",
    ),
    description: LocS(
      en: "Organizes code into horizontal layers with defined dependencies",
      ar: "ينظم الكود في طبقات أفقية مع تبعيات محددة",
    ),
    group: .architectural,
    category: .practical,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "Layered Architecture organizes code into horizontal layers, typically Presentation, Business Logic, and Data Access, where each layer depends only on layers below it.",
        ),
        ULContent(
          title: "Common Layers:",
          value: [
            "Presentation: UI, Controllers",
            "Business Logic: Domain, Services",
            "Data Access: Repositories, Database",
            "Infrastructure: Cross-cutting concerns",
          ],
        ),
      ],
      ar: [
        StrContent(
          "المعمارية الطبقية تنظم الكود في طبقات أفقية، عادة العرض ومنطق العمل والوصول للبيانات، حيث كل طبقة تعتمد فقط على الطبقات أدناها.",
        ),
        ULContent(
          title: "الطبقات الشائعة:",
          value: [
            "العرض: واجهة المستخدم، المتحكمات",
            "منطق العمل: المجال، الخدمات",
            "الوصول للبيانات: المستودعات، قاعدة البيانات",
            "البنية التحتية: اهتمامات شاملة",
          ],
        ),
      ],
    ),
    pros: LocSL(
      en: ["Simple to understand", "Clear separation", "Standard approach"],
      ar: ["سهل الفهم", "فصل واضح", "نهج قياسي"],
    ),
    cons: LocSL(
      en: ["Can become monolithic", "Layer violations", "Database-centric"],
      ar: ["قد يصبح متراصاً", "انتهاكات الطبقة", "محوري لقاعدة البيانات"],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Layered Architecture when:"),
        ULContent(
          value: [
            "Starting a project",
            "Team familiar with pattern",
            "Simple to moderate complexity",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المعمارية الطبقية عندما:"),
        ULContent(
          value: [
            "بدء مشروع",
            "الفريق على دراية بالنمط",
            "تعقيد بسيط إلى متوسط",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: ["Skipping layers", "Circular dependencies", "Fat layers"],
      ar: ["تخطي الطبقات", "تبعيات دائرية", "طبقات سمينة"],
    ),
    relatedPatterns: [PK.cleanArchitecture, PK.mvc, PK.facade],
  ),
  PK.modularMonolith: const DesignPattern(
    id: PK.modularMonolith,
    title: LocS(
      en: "Modular Monolith",
      ar: "المتراص المعياري (Modular Monolith)",
    ),
    description: LocS(
      en: "Organizes a monolithic application into independent, loosely-coupled modules with clear boundaries",
      ar: "ينظم تطبيقاً متراصاً في وحدات مستقلة ومفصولة بشكل فضفاض مع حدود واضحة",
    ),
    group: .architectural,
    category: .modern,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "A Modular Monolith is a single deployable unit organized into independent modules with well-defined boundaries. Each module encapsulates its own domain logic, data, and dependencies while communicating with other modules through defined interfaces.",
        ),
        StrContent(
          "This architecture provides the simplicity of a monolith with the modularity benefits of microservices, making it easier to evolve the system and potentially extract modules into separate services later.",
        ),
        ULContent(
          title: "Key Principles:",
          value: [
            "High cohesion within modules",
            "Low coupling between modules",
            "Clear module boundaries and contracts",
            "Module independence (separate databases per module optional)",
            "Communication through well-defined APIs",
            "Shared nothing or minimal shared infrastructure",
          ],
        ),
        StrContent(
          "Modules typically correspond to bounded contexts in Domain-Driven Design, making the transition to microservices smoother if needed.",
        ),
      ],
      ar: [
        StrContent(
          "المتراص المعياري هو وحدة قابلة للنشر واحدة منظمة في وحدات مستقلة بحدود محددة جيداً. كل وحدة تغلف منطق المجال والبيانات والتبعيات الخاصة بها مع التواصل مع الوحدات الأخرى من خلال واجهات محددة.",
        ),
        StrContent(
          "توفر هذه المعمارية بساطة المتراص مع فوائد المعيارية للخدمات المصغرة، مما يسهل تطوير النظام واستخراج الوحدات لاحقاً إلى خدمات منفصلة إذا لزم الأمر.",
        ),
        ULContent(
          title: "المبادئ الأساسية:",
          value: [
            "تماسك عالٍ داخل الوحدات",
            "اقتران منخفض بين الوحدات",
            "حدود وعقود وحدة واضحة",
            "استقلالية الوحدة (قواعد بيانات منفصلة لكل وحدة اختيارية)",
            "التواصل من خلال واجهات برمجة محددة جيداً",
            "لا مشاركة أو بنية تحتية مشتركة بحد أدنى",
          ],
        ),
        StrContent(
          "عادة ما تتوافق الوحدات مع السياقات المحدودة في التصميم الموجه بالمجال، مما يجعل الانتقال إلى الخدمات المصغرة أكثر سلاسة إذا لزم الأمر.",
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Simpler deployment than microservices",
        "Easier to refactor and maintain than traditional monolith",
        "Lower operational complexity",
        "Better performance (no network calls between modules)",
        "Easier testing and debugging",
        "Can evolve into microservices later",
        "Single codebase, easier to understand",
      ],
      ar: [
        "نشر أبسط من الخدمات المصغرة",
        "أسهل في إعادة الهيكلة والصيانة من المتراص التقليدي",
        "تعقيد تشغيلي أقل",
        "أداء أفضل (لا استدعاءات شبكة بين الوحدات)",
        "اختبار وتصحيح أسهل",
        "يمكن أن يتطور إلى خدمات مصغرة لاحقاً",
        "قاعدة كود واحدة، أسهل في الفهم",
      ],
    ),
    cons: LocSL(
      en: [
        "Requires discipline to maintain boundaries",
        "All modules deployed together",
        "Shared resources can become bottlenecks",
        "Scaling requires scaling entire application",
        "Technology stack shared across modules",
        "Potential for module boundaries to degrade over time",
      ],
      ar: [
        "يتطلب انضباطاً للحفاظ على الحدود",
        "جميع الوحدات تُنشر معاً",
        "الموارد المشتركة قد تصبح عنق زجاجة",
        "التوسع يتطلب توسيع التطبيق بالكامل",
        "مكدس التقنية مشترك عبر الوحدات",
        "احتمالية تدهور حدود الوحدة مع مرور الوقت",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Modular Monolith when:"),
        ULContent(
          value: [
            "Starting a new project with potential to grow",
            "Team is not ready for microservices complexity",
            "You want modularity without distributed system overhead",
            "Performance and simplicity are priorities",
            "You may need to extract services later",
            "You have limited DevOps resources",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المتراص المعياري عندما:"),
        ULContent(
          value: [
            "بدء مشروع جديد مع إمكانية النمو",
            "الفريق غير جاهز لتعقيد الخدمات المصغرة",
            "تريد المعيارية دون عبء النظام الموزع",
            "الأداء والبساطة من الأولويات",
            "قد تحتاج لاستخراج الخدمات لاحقاً",
            "لديك موارد DevOps محدودة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Allowing modules to directly access each other's databases",
        "Not enforcing module boundaries with architecture tests",
        "Creating too many or too few modules",
        "Sharing domain models across modules",
        "Not planning for eventual extraction to services",
        "Tight coupling through shared infrastructure code",
      ],
      ar: [
        "السماح للوحدات بالوصول المباشر لقواعد بيانات بعضها",
        "عدم فرض حدود الوحدة باختبارات المعمارية",
        "إنشاء وحدات كثيرة جداً أو قليلة جداً",
        "مشاركة نماذج المجال عبر الوحدات",
        "عدم التخطيط للاستخراج النهائي للخدمات",
        "الاقتران الوثيق من خلال كود البنية التحتية المشتركة",
      ],
    ),
    relatedPatterns: [
      PK.microservices,
      PK.layeredArchitecture,
      PK.cleanArchitecture,
    ],
  ),
  PK.microservices: const DesignPattern(
    id: PK.microservices,
    title: LocS(en: "Microservices", ar: "الخدمات المصغرة (Microservices)"),
    description: LocS(
      en: "Decomposes application into small, independent services that communicate over network",
      ar: "يحلل التطبيق إلى خدمات صغيرة ومستقلة تتواصل عبر الشبكة",
    ),
    group: .architectural,
    category: .modern,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "Microservices architecture decomposes an application into small, loosely-coupled services that are independently deployable and scalable. Each service owns its data and communicates with others via well-defined APIs (typically HTTP/REST or message queues).",
        ),
        StrContent(
          "This architecture enables teams to work independently, use different technology stacks, and deploy services separately. However, it introduces significant operational complexity and challenges around distributed systems.",
        ),
        ULContent(
          title: "Core Characteristics:",
          value: [
            "Single responsibility - each service does one thing well",
            "Independent deployment and scaling",
            "Decentralized data management (database per service)",
            "Failure isolation",
            "Technology diversity",
            "Organized around business capabilities",
            "Infrastructure automation required",
          ],
        ),
        StrContent(
          "Common communication patterns include synchronous (REST, gRPC) and asynchronous (message queues, events). Services discover each other through service discovery mechanisms.",
        ),
      ],
      ar: [
        StrContent(
          "معمارية الخدمات المصغرة تحلل التطبيق إلى خدمات صغيرة ومفصولة بشكل فضفاض قابلة للنشر والتوسع بشكل مستقل. كل خدمة تمتلك بياناتها وتتواصل مع الأخرى عبر واجهات برمجة محددة جيداً (عادة HTTP/REST أو قوائم الرسائل).",
        ),
        StrContent(
          "تمكّن هذه المعمارية الفرق من العمل بشكل مستقل، واستخدام مكدسات تقنية مختلفة، ونشر الخدمات بشكل منفصل. ومع ذلك، تُدخل تعقيداً تشغيلياً كبيراً وتحديات حول الأنظمة الموزعة.",
        ),
        ULContent(
          title: "الخصائص الأساسية:",
          value: [
            "المسؤولية الواحدة - كل خدمة تفعل شيئاً واحداً جيداً",
            "النشر والتوسع المستقل",
            "إدارة بيانات لامركزية (قاعدة بيانات لكل خدمة)",
            "عزل الفشل",
            "تنوع التقنية",
            "منظمة حول قدرات العمل",
            "أتمتة البنية التحتية مطلوبة",
          ],
        ),
        StrContent(
          "أنماط الاتصال الشائعة تشمل المتزامن (REST، gRPC) واللامتزامن (قوائم الرسائل، الأحداث). الخدمات تكتشف بعضها من خلال آليات اكتشاف الخدمة.",
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Independent scaling of services",
        "Technology flexibility per service",
        "Fault isolation - one service failure doesn't crash entire system",
        "Easier to understand individual services",
        "Independent deployment and release cycles",
        "Better team autonomy and ownership",
        "Can optimize each service independently",
      ],
      ar: [
        "توسيع مستقل للخدمات",
        "مرونة التقنية لكل خدمة",
        "عزل الفشل - فشل خدمة واحدة لا يعطل النظام بالكامل",
        "أسهل في فهم الخدمات الفردية",
        "نشر ودورات إصدار مستقلة",
        "استقلالية وملكية أفضل للفريق",
        "يمكن تحسين كل خدمة بشكل مستقل",
      ],
    ),
    cons: LocSL(
      en: [
        "High operational complexity",
        "Distributed system challenges (network latency, partial failures)",
        "Data consistency across services is hard",
        "Testing becomes more complex",
        "Monitoring and debugging distributed traces",
        "DevOps infrastructure requirements",
        "Network overhead between services",
        "Potential for cascading failures",
      ],
      ar: [
        "تعقيد تشغيلي عالٍ",
        "تحديات النظام الموزع (تأخر الشبكة، فشل جزئي)",
        "اتساق البيانات عبر الخدمات صعب",
        "الاختبار يصبح أكثر تعقيداً",
        "المراقبة وتصحيح الآثار الموزعة",
        "متطلبات البنية التحتية لـ DevOps",
        "عبء الشبكة بين الخدمات",
        "احتمالية الفشل المتتالي",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Microservices when:"),
        ULContent(
          value: [
            "You have a large, complex application",
            "Multiple teams working independently",
            "Different parts need different scaling",
            "You have strong DevOps culture and infrastructure",
            "Services have truly different technology needs",
            "You can handle distributed system complexity",
            "Organization is ready for the overhead",
          ],
        ),
        StrContent("Consider starting with Modular Monolith first."),
      ],
      ar: [
        StrContent("استخدم الخدمات المصغرة عندما:"),
        ULContent(
          value: [
            "لديك تطبيق كبير ومعقد",
            "فرق متعددة تعمل بشكل مستقل",
            "أجزاء مختلفة تحتاج لتوسع مختلف",
            "لديك ثقافة وبنية تحتية قوية لـ DevOps",
            "الخدمات لها احتياجات تقنية مختلفة حقاً",
            "يمكنك التعامل مع تعقيد النظام الموزع",
            "المنظمة جاهزة للعبء",
          ],
        ),
        StrContent("اعتبر البدء بالمتراص المعياري أولاً."),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Creating microservices too early (start with monolith)",
        "Services that are too fine-grained",
        "Sharing databases between services",
        "Distributed monolith (tight coupling between services)",
        "Ignoring data consistency challenges",
        "Not investing in proper monitoring and observability",
        "Underestimating operational complexity",
      ],
      ar: [
        "إنشاء الخدمات المصغرة مبكراً جداً (ابدأ بالمتراص)",
        "خدمات دقيقة جداً",
        "مشاركة قواعد البيانات بين الخدمات",
        "المتراص الموزع (اقتران وثيق بين الخدمات)",
        "تجاهل تحديات اتساق البيانات",
        "عدم الاستثمار في المراقبة والقابلية للملاحظة المناسبة",
        "التقليل من التعقيد التشغيلي",
      ],
    ),
    relatedPatterns: [PK.modularMonolith, PK.cqrs, PK.eventSourcing],
  ),
  PK.cqrs: const DesignPattern(
    id: PK.cqrs,
    title: LocS(
      en: "CQRS (Command Query Responsibility Segregation)",
      ar: "CQRS (فصل مسؤولية الأوامر والاستعلامات)",
    ),
    description: LocS(
      en: "Separates read and write operations into different models",
      ar: "يفصل عمليات القراءة والكتابة في نماذج مختلفة",
    ),
    group: .architectural,
    category: .modern,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "CQRS separates the read (Query) and write (Command) sides of an application into different models. Commands change state but don't return data. Queries return data but don't change state.",
        ),
        StrContent(
          "This pattern is particularly powerful when combined with Event Sourcing and works well in systems with complex business logic or different read/write performance requirements.",
        ),
        ULContent(
          title: "Key Concepts:",
          value: [
            "Commands: Represent actions that change state (CreateOrder, UpdateProfile)",
            "Queries: Request data without side effects (GetOrderById, SearchUsers)",
            "Separate models for reading and writing",
            "Write model optimized for consistency and validation",
            "Read model optimized for query performance",
            "Eventual consistency between read and write sides",
          ],
        ),
        StrContent(
          "The read and write models can use different databases, with changes propagated asynchronously through events or message queues.",
        ),
      ],
      ar: [
        StrContent(
          "CQRS يفصل جوانب القراءة (الاستعلام) والكتابة (الأمر) للتطبيق في نماذج مختلفة. الأوامر تغير الحالة لكن لا تُرجع بيانات. الاستعلامات تُرجع بيانات لكن لا تغير الحالة.",
        ),
        StrContent(
          "هذا النمط قوي بشكل خاص عند دمجه مع Event Sourcing ويعمل جيداً في الأنظمة ذات منطق العمل المعقد أو متطلبات أداء القراءة/الكتابة المختلفة.",
        ),
        ULContent(
          title: "المفاهيم الأساسية:",
          value: [
            "الأوامر: تمثل إجراءات تغير الحالة (CreateOrder، UpdateProfile)",
            "الاستعلامات: تطلب البيانات دون آثار جانبية (GetOrderById، SearchUsers)",
            "نماذج منفصلة للقراءة والكتابة",
            "نموذج الكتابة محسّن للاتساق والتحقق",
            "نموذج القراءة محسّن لأداء الاستعلام",
            "اتساق نهائي بين جوانب القراءة والكتابة",
          ],
        ),
        StrContent(
          "نماذج القراءة والكتابة يمكن أن تستخدم قواعد بيانات مختلفة، مع نشر التغييرات بشكل غير متزامن من خلال الأحداث أو قوائم الرسائل.",
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Independent scaling of read and write sides",
        "Optimized models for different purposes",
        "Simpler queries without complex joins",
        "Better performance for both reads and writes",
        "Clear separation of concerns",
        "Flexibility to use different data stores",
        "Easier to implement caching strategies",
      ],
      ar: [
        "توسيع مستقل لجوانب القراءة والكتابة",
        "نماذج محسّنة لأغراض مختلفة",
        "استعلامات أبسط دون صلات معقدة",
        "أداء أفضل للقراءة والكتابة",
        "فصل واضح للاهتمامات",
        "مرونة لاستخدام مخازن بيانات مختلفة",
        "أسهل في تنفيذ استراتيجيات التخزين المؤقت",
      ],
    ),
    cons: LocSL(
      en: [
        "Increased complexity",
        "Eventual consistency can be confusing",
        "Code duplication between models",
        "More infrastructure to maintain",
        "Learning curve for team",
        "Overkill for simple CRUD applications",
        "Synchronization complexity",
      ],
      ar: [
        "تعقيد متزايد",
        "الاتساق النهائي قد يكون مربكاً",
        "تكرار الكود بين النماذج",
        "بنية تحتية أكثر للصيانة",
        "منحنى تعلم للفريق",
        "مبالغ فيه لتطبيقات CRUD البسيطة",
        "تعقيد المزامنة",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use CQRS when:"),
        ULContent(
          value: [
            "Read and write workloads have very different characteristics",
            "Complex business logic on write side",
            "Need to scale reads and writes independently",
            "Multiple representations of same data needed",
            "Working with Event Sourcing",
            "High-performance requirements for queries",
          ],
        ),
        StrContent("Don't use for simple CRUD applications."),
      ],
      ar: [
        StrContent("استخدم CQRS عندما:"),
        ULContent(
          value: [
            "أحمال القراءة والكتابة لها خصائص مختلفة جداً",
            "منطق عمل معقد على جانب الكتابة",
            "تحتاج لتوسيع القراءة والكتابة بشكل مستقل",
            "تمثيلات متعددة لنفس البيانات مطلوبة",
            "العمل مع Event Sourcing",
            "متطلبات أداء عالية للاستعلامات",
          ],
        ),
        StrContent("لا تستخدم لتطبيقات CRUD البسيطة."),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Using CQRS everywhere without need",
        "Not handling eventual consistency properly",
        "Making commands return data",
        "Tight coupling between command and query sides",
        "Not considering simpler alternatives first",
        "Ignoring complexity it introduces",
      ],
      ar: [
        "استخدام CQRS في كل مكان دون حاجة",
        "عدم التعامل مع الاتساق النهائي بشكل صحيح",
        "جعل الأوامر تُرجع البيانات",
        "الاقتران الوثيق بين جوانب الأمر والاستعلام",
        "عدم النظر في البدائل الأبسط أولاً",
        "تجاهل التعقيد الذي يُدخله",
      ],
    ),
    relatedPatterns: [PK.eventSourcing, PK.command, PK.repository],
  ),
  PK.eventSourcing: const DesignPattern(
    id: PK.eventSourcing,
    title: LocS(en: "Event Sourcing", ar: "مصادر الأحداث (Event Sourcing)"),
    description: LocS(
      en: "Stores all changes to application state as a sequence of events",
      ar: "يخزن جميع التغييرات على حالة التطبيق كتسلسل من الأحداث",
    ),
    group: .architectural,
    category: .modern,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "Event Sourcing stores all changes to application state as a sequence of events rather than storing just the current state. The current state is derived by replaying all events from the beginning.",
        ),
        StrContent(
          "This pattern provides a complete audit trail, enables temporal queries (\"what was the state at time X?\"), and works naturally with CQRS and event-driven architectures.",
        ),
        ULContent(
          title: "Core Concepts:",
          value: [
            "Events: Immutable facts about what happened (OrderCreated, PaymentReceived)",
            "Event Store: Append-only log of all events",
            "Aggregates: Reconstruct current state by replaying events",
            "Projections: Read models built from event stream",
            "Snapshots: Periodic state saves to optimize replay",
            "Event versioning for schema evolution",
          ],
        ),
        StrContent(
          "Events are never deleted or modified, only new events are appended. This provides complete history and enables features like time travel debugging and audit trails.",
        ),
      ],
      ar: [
        StrContent(
          "مصادر الأحداث يخزن جميع التغييرات على حالة التطبيق كتسلسل من الأحداث بدلاً من تخزين الحالة الحالية فقط. الحالة الحالية تُستمد من خلال إعادة تشغيل جميع الأحداث من البداية.",
        ),
        StrContent(
          "يوفر هذا النمط مسار تدقيق كامل، ويمكّن الاستعلامات الزمنية (\"ما كانت الحالة في الوقت X؟\")، ويعمل بشكل طبيعي مع CQRS والمعماريات الموجهة بالأحداث.",
        ),
        ULContent(
          title: "المفاهيم الأساسية:",
          value: [
            "الأحداث: حقائق ثابتة عما حدث (OrderCreated، PaymentReceived)",
            "مخزن الأحداث: سجل إلحاقي فقط لجميع الأحداث",
            "التجمعات: إعادة بناء الحالة الحالية بإعادة تشغيل الأحداث",
            "الإسقاطات: نماذج قراءة مبنية من تدفق الأحداث",
            "اللقطات: حفظ حالة دوري لتحسين إعادة التشغيل",
            "إصدار الأحداث لتطور المخطط",
          ],
        ),
        StrContent(
          "الأحداث لا تُحذف أو تُعدل أبداً، فقط تُلحق أحداث جديدة. هذا يوفر تاريخاً كاملاً ويمكّن ميزات مثل تصحيح السفر عبر الزمن ومسارات التدقيق.",
        ),
      ],
    ),
    pros: LocSL(
      en: [
        "Complete audit trail and history",
        "Temporal queries (state at any point in time)",
        "Natural fit with event-driven systems",
        "Can rebuild state from events",
        "Business events are first-class citizens",
        "Enables analytics and machine learning on event stream",
        "Debugging by replaying events",
      ],
      ar: [
        "مسار تدقيق وتاريخ كامل",
        "استعلامات زمنية (الحالة في أي نقطة زمنية)",
        "ملاءمة طبيعية مع الأنظمة الموجهة بالأحداث",
        "يمكن إعادة بناء الحالة من الأحداث",
        "أحداث العمل مواطنون من الدرجة الأولى",
        "يمكّن التحليلات والتعلم الآلي على تدفق الأحداث",
        "التصحيح بإعادة تشغيل الأحداث",
      ],
    ),
    cons: LocSL(
      en: [
        "High complexity",
        "Event store infrastructure required",
        "Eventual consistency",
        "Event schema evolution challenges",
        "Performance overhead of replaying events",
        "Difficult to query current state directly",
        "Storage requirements grow over time",
        "Learning curve for team",
      ],
      ar: [
        "تعقيد عالٍ",
        "بنية تحتية لمخزن الأحداث مطلوبة",
        "اتساق نهائي",
        "تحديات تطور مخطط الأحداث",
        "عبء أداء إعادة تشغيل الأحداث",
        "صعوبة الاستعلام عن الحالة الحالية مباشرة",
        "متطلبات التخزين تنمو مع الوقت",
        "منحنى تعلم للفريق",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Event Sourcing when:"),
        ULContent(
          value: [
            "Audit trail is critical requirement",
            "Need to analyze historical data",
            "Complex domain with many state transitions",
            "Working with CQRS architecture",
            "Time-based queries are important",
            "Need to replay events for debugging or analysis",
          ],
        ),
        StrContent("Not recommended for simple CRUD applications."),
      ],
      ar: [
        StrContent("استخدم مصادر الأحداث عندما:"),
        ULContent(
          value: [
            "مسار التدقيق متطلب حرج",
            "تحتاج لتحليل البيانات التاريخية",
            "مجال معقد مع انتقالات حالة كثيرة",
            "العمل مع معمارية CQRS",
            "الاستعلامات القائمة على الوقت مهمة",
            "تحتاج لإعادة تشغيل الأحداث للتصحيح أو التحليل",
          ],
        ),
        StrContent("غير موصى به لتطبيقات CRUD البسيطة."),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Using for all data in system",
        "Not handling event versioning properly",
        "Storing too much data in events",
        "Not using snapshots for performance",
        "Mutable events (they must be immutable)",
        "Not considering storage costs",
        "Ignoring complexity for simple use cases",
      ],
      ar: [
        "الاستخدام لجميع البيانات في النظام",
        "عدم التعامل مع إصدار الأحداث بشكل صحيح",
        "تخزين الكثير من البيانات في الأحداث",
        "عدم استخدام اللقطات للأداء",
        "أحداث قابلة للتغيير (يجب أن تكون ثابتة)",
        "عدم النظر في تكاليف التخزين",
        "تجاهل التعقيد لحالات الاستخدام البسيطة",
      ],
    ),
    relatedPatterns: [PK.cqrs, PK.memento, PK.command],
  ),
};
