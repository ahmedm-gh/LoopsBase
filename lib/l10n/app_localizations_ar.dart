// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'إتقان البرمجة الكائنية (OOP Mastery)';

  @override
  String get home => 'الرئيسية';

  @override
  String get designPatterns => 'أنماط التصميم';

  @override
  String get refactoring => 'إعادة هيكلة الكود';

  @override
  String get darkMode => 'الوضع الداكن';

  @override
  String get lightMode => 'الوضع الفاتح';

  @override
  String get language => 'اللغة';

  @override
  String get creationalPatterns =>
      'الأنماط الإنشائية - أنماط إنشاء الكائنات (Creational Patterns)';

  @override
  String get creationalPatternsDesc =>
      'هذه الأنماط تساعدك في إنشاء الكائنات (Objects) بطرق مرنة ومنظمة، بحيث يكون الكود الخاص بك مستقلاً عن كيفية إنشاء هذه الكائنات.';

  @override
  String get factoryMethod => 'نمط المصنع (Factory Method)';

  @override
  String get factoryMethodDesc =>
      'يوفر لك طريقة مركزية لإنشاء الكائنات في الكلاس الأب، لكن يسمح للكلاسات الفرعية (Subclasses) أن تقرر نوع الكائن الذي سيتم إنشاؤه بالضبط.';

  @override
  String get abstractFactory => 'المصنع المجرد (Abstract Factory)';

  @override
  String get abstractFactoryDesc =>
      'يسمح لك بإنشاء مجموعة من الكائنات المرتبطة ببعضها (مثل أزرار ونوافذ بنفس الستايل) دون الحاجة لتحديد الكلاسات الفعلية (Concrete Classes) لهذه الكائنات.';

  @override
  String get builder => 'نمط البناء (Builder)';

  @override
  String get builderDesc =>
      'يساعدك في بناء كائنات معقدة خطوة بخطوة. مفيد جداً عندما يكون لديك كائن بإعدادات كثيرة ومختلفة، ويتيح لك إنشاء أشكال مختلفة من نفس الكائن باستخدام نفس طريقة البناء.';

  @override
  String get prototype => 'نمط النسخ (Prototype)';

  @override
  String get prototypeDesc =>
      'يتيح لك نسخ (Clone) الكائنات الموجودة بدلاً من إنشائها من الصفر، دون أن يعتمد الكود الخاص بك على تفاصيل هذه الكائنات الداخلية.';

  @override
  String get singleton => 'نمط الكائن الوحيد (Singleton)';

  @override
  String get singletonDesc =>
      'يضمن أن الكلاس سيكون له نسخة واحدة فقط (Instance واحد) في البرنامج كله، مع توفير نقطة وصول عامة لهذه النسخة من أي مكان في الكود.';

  @override
  String get structuralPatterns =>
      'الأنماط الهيكلية - أنماط تنظيم الكائنات (Structural Patterns)';

  @override
  String get structuralPatternsDesc =>
      'هذه الأنماط تشرح كيفية تجميع وربط الكائنات والكلاسات معاً لتكوين هياكل أكبر، مع الحفاظ على مرونة وكفاءة هذه الهياكل.';

  @override
  String get adapter => 'نمط المحول (Adapter)';

  @override
  String get adapterDesc =>
      'يسمح لكائنات ذات واجهات (Interfaces) غير متوافقة بالعمل معاً. يعمل مثل محول الكهرباء الذي يوصل قابس بمنفذ غير متطابق معه.';

  @override
  String get bridge => 'نمط الجسر (Bridge)';

  @override
  String get bridgeDesc =>
      'يفصل الواجهة (Abstraction) عن التنفيذ الفعلي (Implementation)، بحيث يمكن تطوير كل منهما بشكل مستقل. مفيد عندما يكون لديك كلاس كبير يحتوي على عدة نسخ مختلفة من نفس الوظيفة.';

  @override
  String get composite => 'نمط التركيب الهرمي (Composite)';

  @override
  String get compositeDesc =>
      'يتيح لك تنظيم الكائنات في هياكل شجرية (مثل المجلدات والملفات)، ثم التعامل مع هذه الهياكل كما لو كانت كائناً واحداً فقط.';

  @override
  String get decorator => 'نمط المُغلِّف (Decorator)';

  @override
  String get decoratorDesc =>
      'يتيح لك إضافة وظائف وسلوكيات جديدة للكائنات أثناء التشغيل (Runtime) عن طريق وضعها داخل كائنات مُغلِّفة خاصة تحتوي على هذه الوظائف الإضافية.';

  @override
  String get facade => 'نمط الواجهة المبسطة (Facade)';

  @override
  String get facadeDesc =>
      'يوفر واجهة بسيطة وسهلة للتعامل مع مكتبة أو نظام معقد يحتوي على الكثير من الكلاسات والوظائف المعقدة.';

  @override
  String get flyweight => 'نمط توفير الذاكرة (Flyweight)';

  @override
  String get flyweightDesc =>
      'يوفر استهلاك الذاكرة (RAM) من خلال مشاركة الأجزاء المتشابهة بين الكائنات بدلاً من تخزين جميع البيانات في كل كائن على حدة. مفيد عندما يكون لديك آلاف الكائنات المتشابهة.';

  @override
  String get proxy => 'نمط الوكيل (Proxy)';

  @override
  String get proxyDesc =>
      'يوفر كائن بديل أو وسيط للكائن الأصلي. يتحكم هذا الوكيل في الوصول للكائن الأصلي، مما يسمح لك بتنفيذ عمليات إضافية قبل أو بعد الوصول إليه (مثل التحقق من الصلاحيات أو التخزين المؤقت).';

  @override
  String get behavioralPatterns =>
      'الأنماط السلوكية - أنماط التواصل بين الكائنات (Behavioral Patterns)';

  @override
  String get behavioralPatternsDesc =>
      'تهتم هذه الأنماط بكيفية تواصل وتفاعل الكائنات مع بعضها البعض، وتوزيع المسؤوليات بينها.';

  @override
  String get chainOfResponsibility =>
      'نمط سلسلة المسؤولية (Chain of Responsibility)';

  @override
  String get chainOfResponsibilityDesc =>
      'يتيح لك تمرير الطلب على طول سلسلة من الكائنات المعالجة. كل كائن في السلسلة يقرر إما معالجة الطلب بنفسه أو تمريره للكائن التالي في السلسلة.';

  @override
  String get command => 'نمط الأمر (Command)';

  @override
  String get commandDesc =>
      'يحول الطلب أو العملية إلى كائن مستقل يحتوي على جميع المعلومات عن هذا الطلب. هذا يسمح لك بتمرير الطلبات كمعاملات (Parameters)، وتأخير تنفيذها، أو عمل Undo/Redo.';

  @override
  String get iterator => 'نمط المكرر (Iterator)';

  @override
  String get iteratorDesc =>
      'يتيح لك المرور على عناصر مجموعة ما (Collection) بدون الحاجة لمعرفة تفاصيل تركيبها الداخلي (سواء كانت List أو Stack أو Tree).';

  @override
  String get interpreter => 'نمط المفسر (Interpreter)';

  @override
  String get interpreterDesc =>
      'يُستخدم لتفسير لغة أو قواعد محددة (Grammar). يحدد تمثيلاً لقواعد اللغة مع مفسر يستخدم هذا التمثيل لتنفيذ الجمل في هذه اللغة.';

  @override
  String get mediator => 'نمط الوسيط (Mediator)';

  @override
  String get mediatorDesc =>
      'يقلل من التعقيد والترابط الفوضوي بين الكائنات. يمنع الكائنات من الاتصال المباشر ببعضها، ويجبرها على التواصل فقط من خلال كائن وسيط مركزي.';

  @override
  String get memento => 'نمط حفظ الحالة (Memento)';

  @override
  String get mementoDesc =>
      'يتيح لك حفظ واستعادة الحالة السابقة لكائن ما (Snapshot) دون الكشف عن تفاصيل تركيبه الداخلي. مفيد لعمل Undo/Redo.';

  @override
  String get observer => 'نمط المراقب (Observer)';

  @override
  String get observerDesc =>
      'يتيح لك إنشاء نظام اشتراكات (Subscription) لإخطار عدة كائنات تلقائياً عند حدوث تغيير في الكائن الذي يراقبونه. مثل زر الاشتراك في اليوتيوب.';

  @override
  String get state => 'نمط الحالة (State)';

  @override
  String get stateDesc =>
      'يسمح للكائن بتغيير سلوكه تماماً عندما تتغير حالته الداخلية (State). يبدو الأمر كأن الكائن قد تحول إلى كلاس مختلف تماماً.';

  @override
  String get strategy => 'نمط الاستراتيجية (Strategy)';

  @override
  String get strategyDesc =>
      'يتيح لك تعريف مجموعة من الخوارزميات (Algorithms) المختلفة، ووضع كل واحدة في كلاس منفصل، بحيث يمكن تبديلها واستخدامها بشكل تبادلي أثناء التشغيل.';

  @override
  String get templateMethod => 'نمط القالب (Template Method)';

  @override
  String get templateMethodDesc =>
      'يحدد الهيكل العام للخوارزمية في الكلاس الأب، لكن يترك للكلاسات الفرعية حرية تخصيص بعض خطوات محددة من الخوارزمية دون تغيير هيكلها العام.';

  @override
  String get visitor => 'نمط الزائر (Visitor)';

  @override
  String get visitorDesc =>
      'يتيح لك فصل الخوارزميات والعمليات عن الكائنات التي تعمل عليها. مفيد عندما تريد تنفيذ عمليات مختلفة على مجموعة من الكائنات دون تعديل هذه الكائنات نفسها.';

  @override
  String get refactoringCategories => 'أقسام إعادة هيكلة الكود (Refactoring)';

  @override
  String get composingMethods => 'تنظيم الدوال (Composing Methods)';

  @override
  String get composingMethodsDesc =>
      'جزء كبير من إعادة الهيكلة يركز على تنظيم الدوال (Methods/Functions) بشكل صحيح. في معظم الحالات، الدوال الطويلة جداً هي السبب الرئيسي للمشاكل في الكود.';

  @override
  String get movingFeatures => 'نقل الوظائف بين الكلاسات (Moving Features)';

  @override
  String get movingFeaturesDesc =>
      'هذه التقنيات توضح كيفية نقل الدوال والخصائص بأمان بين الكلاسات المختلفة، وإنشاء كلاسات جديدة، وإخفاء التفاصيل الداخلية (Encapsulation).';

  @override
  String get organizingData => 'تنظيم البيانات (Organizing Data)';

  @override
  String get organizingDataDesc =>
      'تساعدك هذه التقنيات في التعامل الأفضل مع البيانات، واستبدال المتغيرات البسيطة (Primitives مثل String, int) بكائنات وكلاسات أكثر قوة ومرونة.';

  @override
  String get simplifyingConditionals =>
      'تبسيط الشروط (Simplifying Conditionals)';

  @override
  String get simplifyingConditionalsDesc =>
      'الشروط (if/else/switch) تميل إلى أن تصبح معقدة ومتشابكة بمرور الوقت. هذه التقنيات تساعدك في جعلها أبسط وأسهل للفهم.';

  @override
  String get simplifyingMethodCalls =>
      'تبسيط استدعاء الدوال (Simplifying Method Calls)';

  @override
  String get simplifyingMethodCallsDesc =>
      'هذه التقنيات تجعل طريقة استدعاء واستخدام الدوال أبسط وأوضح وأسهل في الفهم.';

  @override
  String get generalization => 'التعميم والوراثة (Generalization)';

  @override
  String get generalizationDesc =>
      'يتعلق بشكل أساسي بنقل الوظائف والخصائص صعوداً أو نزولاً في التسلسل الهرمي للوراثة (Inheritance Hierarchy) بين الكلاسات.';

  @override
  String get notes => 'ملاحظات';

  @override
  String get details => 'التفاصيل';

  @override
  String get example => 'مثال بلغة Dart';

  @override
  String get goodExample => 'مثال جيد ✓';

  @override
  String get badExample => 'مثال سيء ✗';

  @override
  String get seeMore => 'عرض المزيد';

  @override
  String get reference => 'المرجع';

  @override
  String get references => 'المراجع';

  @override
  String get pros => 'المميزات';

  @override
  String get cons => 'العيوب';

  @override
  String get whenToUse => 'متى تستخدمه؟';

  @override
  String get bestUse => 'أفضل حالات الاستخدام';

  @override
  String get close => 'إغلاق';

  @override
  String get extractMethod => 'استخراج دالة منفصلة (Extract Method)';

  @override
  String get inlineMethod =>
      'دمج الدالة في المكان المستدعى منه (Inline Method)';

  @override
  String get extractVariable => 'استخراج متغير منفصل (Extract Variable)';

  @override
  String get moveMethod => 'نقل الدالة لكلاس آخر (Move Method)';

  @override
  String get moveField => 'نقل الخاصية لكلاس آخر (Move Field)';

  @override
  String get extractClass => 'استخراج كلاس جديد منفصل (Extract Class)';

  @override
  String get selfEncapsulateField =>
      'تغليف الخاصية بـ Getters/Setters (Self Encapsulate Field)';

  @override
  String get replaceDataValueWithObject =>
      'استبدال المتغير البسيط بكائن (Replace Data Value with Object)';

  @override
  String get refactoringTip =>
      'هذه التقنية تساعد في تبسيط بنية الكود وتحسين سهولة صيانته وتطويره.';

  @override
  String get copied => 'تم النسخ إلى الحافظة!';

  @override
  String get singletonNote =>
      'يجب أن يحتوي نمط Singleton على Constructor خاص (Private) ونقطة وصول ثابتة (Static) للنسخة الوحيدة.';

  @override
  String get factoryMethodNote =>
      'تجنب استخدام سلسلة if-else الطويلة لإنشاء الكائنات؛ بدلاً من ذلك، استخدم الكلاسات الفرعية (Subclasses) لتحديد النوع الفعلي للكائن.';

  @override
  String get builderNote =>
      'نمط Builder يحل مشكلة \'الـ Constructor الطويل\' الذي يحتوي على عدد كبير جداً من الـ Parameters، ويوفر كوداً سهل القراءة والفهم.';

  @override
  String get singletonPros =>
      'التحكم الكامل في الوصول للنسخة الوحيدة من الكائن\nتجنب استخدام المتغيرات العامة (Global Variables) وتقليل التعارضات\nيسمح بتحسين وتطوير الكلاس من خلال الوراثة (Subclassing)\nيمكن تعديله لاحقاً للسماح بعدة نسخ إذا تغيرت المتطلبات';

  @override
  String get singletonCons =>
      'ينتهك مبدأ المسؤولية الواحدة (Single Responsibility Principle) لأنه يتحكم في إنشائه بنفسه\nقد يخفي تصميماً سيئاً حيث تعرف الأجزاء المختلفة من البرنامج الكثير عن بعضها\nيحتاج معالجة خاصة في البيئات متعددة الخيوط (Multi-threading)\nصعب في الاختبار (Unit Testing) بسبب الحالة العامة (Global State)';

  @override
  String get singletonWhenToUse =>
      'استخدمه عندما يجب أن يكون لديك نسخة واحدة فقط من كلاس معين متاحة لجميع أجزاء البرنامج (مثل الاتصال بقاعدة البيانات أو نظام إدارة الملفات).';

  @override
  String get singletonBestUse =>
      'خدمات التسجيل والـ Logging، إدارة الاتصالات بقاعدة البيانات (Connection Pools)، إدارة الإعدادات (Settings Manager)، أو التحكم في الأجهزة.';

  @override
  String get factoryMethodPros =>
      'يتجنب الارتباط الشديد (Tight Coupling) بين الكود المُنشئ للكائنات والكائنات نفسها\nمبدأ المسؤولية الواحدة: كل كود إنشاء الكائنات في مكان واحد\nمبدأ المفتوح/المغلق: يمكنك إضافة أنواع جديدة من الكائنات دون تعديل الكود الموجود';

  @override
  String get factoryMethodCons =>
      'قد يصبح الكود أكثر تعقيداً لأنك تحتاج لإنشاء العديد من الكلاسات الفرعية الجديدة لتطبيق هذا النمط';

  @override
  String get factoryMethodWhenToUse =>
      'استخدمه عندما لا تعرف مسبقاً الأنواع الدقيقة للكائنات التي سيحتاجها الكود الخاص بك، أو عندما يتم تحديد النوع في وقت التشغيل (Runtime).';

  @override
  String get factoryMethodBestUse =>
      'أطر عمل واجهة المستخدم (UI Frameworks)، أو أي نظام يتم فيه تحديد نوع الكائن الدقيق أثناء تشغيل البرنامج.';

  @override
  String get abstractFactoryPros =>
      'يضمن توافق الكائنات المُنشأة مع بعضها (مثل أزرار ونوافذ بنفس الستايل)\nيتجنب الارتباط الشديد بين الكود والكائنات\nمبدأ المسؤولية الواحدة\nمبدأ المفتوح/المغلق';

  @override
  String get abstractFactoryCons =>
      'يزيد من تعقيد الكود بسبب إضافة العديد من الـ Interfaces والكلاسات الجديدة';

  @override
  String get abstractFactoryWhenToUse =>
      'استخدمه عندما يحتاج الكود للتعامل مع مجموعات مختلفة من الكائنات المرتبطة (Families)، ولكن دون الاعتماد على الكلاسات الفعلية لهذه الكائنات.';

  @override
  String get abstractFactoryBestUse =>
      'مكتبات واجهة المستخدم عبر المنصات المختلفة (Windows/Android/iOS)، أو دعم عدة ثيمات (Themes) مختلفة في التطبيق.';

  @override
  String get builderPros =>
      'بناء الكائنات خطوة بخطوة بطريقة واضحة\nإعادة استخدام نفس كود البناء لإنشاء أشكال مختلفة من الكائن\nمبدأ المسؤولية الواحدة (عزل كود البناء المعقد في مكان واحد)';

  @override
  String get builderCons =>
      'يزيد من التعقيد العام للكود بسبب إضافة كلاسات جديدة متعددة';

  @override
  String get builderWhenToUse =>
      'استخدمه للتخلص من الـ Constructor الذي يحتوي على عدد كبير من الـ Parameters، أو عندما تحتاج لإنشاء أشكال مختلفة من نفس الكائن.';

  @override
  String get builderBestUse =>
      'الإعدادات المعقدة (Configuration)، بناء المستندات (HTML/JSON/PDF Builders)، أو نماذج البيانات المعقدة (Complex Data Models).';

  @override
  String get prototypePros =>
      'نسخ الكائنات دون الارتباط بالكلاسات الفعلية (Concrete Classes)\nالتخلص من كود التهيئة المتكرر (Initialization Code)\nإنشاء كائنات معقدة بشكل أسرع وأسهل';

  @override
  String get prototypeCons =>
      'نسخ الكائنات المعقدة التي تحتوي على مراجع دائرية (Circular References) قد يكون صعباً';

  @override
  String get prototypeWhenToUse =>
      'استخدمه عندما تكون تكلفة إنشاء كائن جديد من الصفر أعلى من نسخ كائن موجود بالفعل.';

  @override
  String get prototypeBestUse =>
      'محركات الألعاب (إنشاء وحدات متشابهة)، برامج الجرافيك والتصميم، أو التخزين المؤقت للكائنات (Object Caching).';

  @override
  String get adapterPros =>
      'مبدأ المسؤولية الواحدة (فصل كود تحويل الواجهة عن باقي الكود)\nمبدأ المفتوح/المغلق (إضافة محولات جديدة دون تعديل كود العميل)';

  @override
  String get adapterCons => 'زيادة في تعقيد الكود بسبب إضافة طبقات جديدة';

  @override
  String get adapterWhenToUse =>
      'استخدمه عندما تريد استخدام كلاس موجود بالفعل، لكن واجهته (Interface) غير متوافقة مع باقي الكود الخاص بك.';

  @override
  String get adapterBestUse =>
      'دمج مكتبات الطرف الثالث (3rd Party Libraries)، ترحيل الكود القديم (Legacy Code Migration)، أو تحويل بيانات XML/JSON.';

  @override
  String get bridgePros =>
      'فصل الواجهة (Abstraction) عن التنفيذ الفعلي (Implementation)\nكتابة كود مستقل عن المنصة (Platform-Independent)\nمبدأ المفتوح/المغلق';

  @override
  String get bridgeCons =>
      'قد يزيد من تعقيد الكود في حالة الكلاسات البسيطة والمترابطة بشكل جيد';

  @override
  String get bridgeWhenToUse =>
      'استخدمه عندما تريد تقسيم كلاس كبير ومعقد يحتوي على عدة نسخ مختلفة من نفس الوظيفة إلى أجزاء منفصلة يمكن تطويرها بشكل مستقل.';

  @override
  String get bridgeBestUse =>
      'أطر عمل الواجهات الرسومية (GUI Frameworks)، تطوير برامج تعمل على منصات مختلفة (Cross-Platform Drivers)، أو مكتبات الجرافيك.';

  @override
  String get compositePros =>
      'التعامل مع الهياكل الشجرية المعقدة بسهولة\nمبدأ المفتوح/المغلق';

  @override
  String get compositeCons =>
      'من الصعب توفير واجهة موحدة للكلاسات التي تختلف وظائفها بشكل كبير';

  @override
  String get compositeWhenToUse =>
      'استخدمه عندما تحتاج لتمثيل هيكل هرمي يشبه الشجرة (Tree-like Structure) مثل نظام الملفات والمجلدات.';

  @override
  String get compositeBestUse =>
      'أنظمة الملفات (File Systems)، التسلسل الهرمي لمكونات واجهة المستخدم (UI Component Hierarchies)، أو هياكل XML/HTML.';

  @override
  String get decoratorPros =>
      'إضافة وظائف جديدة للكائن دون إنشاء كلاس فرعي جديد\nإضافة أو إزالة المسؤوليات من الكائن أثناء التشغيل (Runtime)\nدمج عدة وظائف بتغليف الكائن في عدة Decorators';

  @override
  String get decoratorCons =>
      'من الصعب إزالة Wrapper معين من مجموعة Wrappers متداخلة\nمن الصعب التحكم في سلوك الـ Decorator بحيث لا يعتمد على ترتيبه في مكدس الـ Decorators';

  @override
  String get decoratorWhenToUse =>
      'استخدمه عندما تحتاج لإضافة سلوكيات ووظائف إضافية للكائنات أثناء التشغيل دون تعديل الكود الذي يستخدم هذه الكائنات.';

  @override
  String get decoratorBestUse =>
      'معالجة الملفات (I/O Streams)، أنظمة الإشعارات (Notification Systems)، أو إضافة مكونات لواجهة المستخدم (Borders/Scrollbars).';

  @override
  String get facadePros =>
      'عزل الكود الخاص بك عن تعقيدات النظام الفرعي الداخلية';

  @override
  String get facadeCons =>
      'قد تصبح الواجهة (Facade) كائناً ضخماً مرتبطاً بجميع أجزاء البرنامج (God Object)';

  @override
  String get facadeWhenToUse =>
      'استخدمه عندما تحتاج لواجهة بسيطة ومباشرة للتعامل مع نظام فرعي معقد يحتوي على العديد من الكلاسات والدوال.';

  @override
  String get facadeBestUse =>
      'مكتبات SDK المعقدة للطرف الثالث، مكتبات معالجة الصوت والفيديو، أو التعامل مع عدة APIs في مكان واحد.';

  @override
  String get proxyPros =>
      'التحكم في كائن الخدمة دون علم المستخدمين (Clients)\nإدارة دورة حياة كائن الخدمة (Life Cycle Management)\nيعمل حتى لو لم يكن كائن الخدمة جاهزاً أو متاحاً بعد';

  @override
  String get proxyCons =>
      'قد يزيد من تعقيد الكود بسبب إضافة كلاسات جديدة\nقد يتأخر الرد من الخدمة بسبب الطبقة الإضافية';

  @override
  String get proxyWhenToUse =>
      'استخدمه للتحميل الكسول (Lazy Loading/Virtual Proxy)، التحكم في الصلاحيات (Access Control/Protection Proxy)، أو تسجيل الطلبات (Logging Proxy).';

  @override
  String get proxyBestUse =>
      'التخزين المؤقت (Caching)، التحكم في الوصول (Access Control)، التحميل البطيء (Lazy Loading)، أو الوصول لخدمات بعيدة (Remote Service Proxy).';

  @override
  String get observerPros =>
      'مبدأ المفتوح/المغلق\nإنشاء علاقات بين الكائنات أثناء التشغيل (Runtime) بشكل ديناميكي';

  @override
  String get observerCons =>
      'يتم إخطار المشتركين (Subscribers) بترتيب عشوائي وغير محدد';

  @override
  String get observerWhenToUse =>
      'استخدمه عندما تحتاج لإخطار عدة كائنات تلقائياً عند حدوث تغيير في كائن معين، خصوصاً عندما لا تعرف مسبقاً عدد أو نوع الكائنات التي ستحتاج للإخطار.';

  @override
  String get observerBestUse =>
      'أنظمة معالجة الأحداث (Event Handling)، تحديث واجهة المستخدم عند تغير البيانات (UI Updates with Streams/Notifiers)، أو تطبيقات تتبع الأسهم.';

  @override
  String get strategyPros =>
      'تبديل الخوارزميات أثناء التشغيل (Runtime) بسهولة\nعزل تفاصيل تنفيذ الخوارزمية عن الكود الذي يستخدمها\nمبدأ المفتوح/المغلق';

  @override
  String get strategyCons =>
      'إذا كان لديك خوارزميتان فقط ونادراً ما تتغيران، فلا داعي لتعقيد البرنامج بكلاسات جديدة';

  @override
  String get strategyWhenToUse =>
      'استخدمه عندما تريد استخدام أشكال مختلفة من خوارزمية معينة داخل كائن، والقدرة على التبديل بينها أثناء تشغيل البرنامج.';

  @override
  String get strategyBestUse =>
      'طرق الدفع المختلفة (Payment Methods)، خوارزميات الترتيب (Sorting Algorithms)، تخطيط المسار (Route Planning)، أو أنواع الضغط المختلفة (Compression).';

  @override
  String get commandPros =>
      'مبدأ المسؤولية الواحدة\nمبدأ المفتوح/المغلق\nتنفيذ Undo/Redo بسهولة\nتأجيل تنفيذ العمليات أو جدولتها (Deferred Execution)';

  @override
  String get commandCons =>
      'يزيد من تعقيد الكود بسبب إضافة طبقة كاملة جديدة بين المُرسل (Sender) والمُستقبِل (Receiver)';

  @override
  String get commandWhenToUse =>
      'استخدمه عندما تريد تحويل العمليات إلى كائنات يمكن تمريرها وتخزينها، أو جدولة تنفيذها لاحقاً.';

  @override
  String get commandBestUse =>
      'أزرار واجهة المستخدم (GUI Buttons)، أنظمة Undo/Redo، قوائم انتظار المهام (Task Queues)، أو تسجيل المعاملات (Transaction Logs).';

  @override
  String get statePros =>
      'مبدأ المسؤولية الواحدة\nمبدأ المفتوح/المغلق\nتبسيط الكود المعقد المعتمد على الحالة (التخلص من switch/if-else الضخمة)';

  @override
  String get stateCons =>
      'قد يكون مبالغاً فيه إذا كانت لديك حالات قليلة فقط أو نادراً ما تتغير';

  @override
  String get stateWhenToUse =>
      'استخدمه عندما يكون لديك كائن يتصرف بشكل مختلف تماماً اعتماداً على حالته الحالية، والحالات كثيرة، والكود الخاص بكل حالة يتغير بشكل متكرر.';

  @override
  String get stateBestUse =>
      'آلات البيع الذاتي (Vending Machines)، سلوكيات شخصيات الألعاب (Game Characters)، معالجة الطلبات (Order Processing)، أو مشغلات الوسائط (Media Players).';

  @override
  String get chainOfResponsibilityPros =>
      'التحكم في ترتيب معالجة الطلبات\nمبدأ المسؤولية الواحدة\nمبدأ المفتوح/المغلق';

  @override
  String get chainOfResponsibilityCons =>
      'بعض الطلبات قد لا تتم معالجتها إذا لم يتعامل معها أي معالج في السلسلة';

  @override
  String get chainOfResponsibilityWhenToUse =>
      'استخدمه عندما يُتوقع من برنامجك معالجة أنواع مختلفة من الطلبات بطرق متنوعة، ولكن الأنواع الدقيقة وترتيب الطلبات غير معروف مسبقاً.';

  @override
  String get chainOfResponsibilityBestUse =>
      'الـ Middleware في أطر عمل الويب، نظام انتشار الأحداث في واجهة المستخدم (Event Bubbling)، أو سلاسل التحقق المتتالية (Sequential Validation).';

  @override
  String get iteratorPros =>
      'مبدأ المسؤولية الواحدة\nمبدأ المفتوح/المغلق\nيمكنك إيقاف واستكمال التكرار عند الحاجة';

  @override
  String get iteratorCons =>
      'قد يكون مبالغاً فيه إذا كان التطبيق يعمل فقط مع مجموعات بسيطة (Simple Collections)';

  @override
  String get iteratorWhenToUse =>
      'استخدمه عندما تحتوي المجموعة على هيكل بيانات معقد داخلياً، ولكنك تريد إخفاء هذا التعقيد عن المستخدمين.';

  @override
  String get iteratorBestUse =>
      'أنواع المجموعات المخصصة (Custom Collections)، التنقل في المجلدات (Directory Traversal)، أو معالجة تدفق البيانات المعقدة.';

  @override
  String get interpreterPros =>
      'سهولة تغيير وتوسيع قواعد اللغة (Grammar)\nتنفيذ القواعد بشكل مباشر وسهل الفهم';

  @override
  String get interpreterCons =>
      'تصبح الصيانة صعبة مع زيادة تعقيد وعدد قواعد اللغة';

  @override
  String get interpreterWhenToUse =>
      'استخدمه عندما تكون لديك لغة بسيطة تريد تفسيرها، ويمكن تمثيل جملها كأشجار تركيب نحوي (Abstract Syntax Trees).';

  @override
  String get interpreterBestUse =>
      'تحليل استعلامات SQL، معالجة التعبيرات النمطية (Regular Expressions)، أو حاسبات التعبيرات الرياضية.';

  @override
  String get mediatorPros =>
      'مبدأ المسؤولية الواحدة\nمبدأ المفتوح/المغلق\nيقلل من الترابط المعقد بين الأجزاء المختلفة من البرنامج';

  @override
  String get mediatorCons =>
      'بمرور الوقت، قد يتحول الوسيط إلى كائن ضخم مرتبط بكل شيء (God Object)';

  @override
  String get mediatorWhenToUse =>
      'استخدمه عندما يصعب تعديل بعض الكلاسات لأنها مرتبطة بشكل وثيق جداً مع مجموعة من الكلاسات الأخرى.';

  @override
  String get mediatorBestUse =>
      'غرف الدردشة (Chat Rooms)، تنسيق نوافذ الحوار في واجهة المستخدم (UI Dialog Coordination)، أو أنظمة التحكم في الحركة الجوية.';

  @override
  String get mementoPros =>
      'حفظ حالة الكائن دون انتهاك التغليف (Encapsulation)\nتبسيط كود الكائن الأصلي (Originator)';

  @override
  String get mementoCons =>
      'قد يستهلك الكثير من الذاكرة (RAM) إذا تم إنشاء Snapshots بشكل متكرر جداً';

  @override
  String get mementoWhenToUse =>
      'استخدمه عندما تريد حفظ صور (Snapshots) لحالة الكائن لتتمكن من استعادة حالته السابقة عند الحاجة.';

  @override
  String get mementoBestUse =>
      'أنظمة Undo/Redo، نقاط الحفظ في الألعاب (Game Checkpoints)، أو استعادة الإعدادات السابقة (Configuration Rollbacks).';

  @override
  String get templateMethodPros =>
      'السماح للمستخدمين بتخصيص أجزاء محددة فقط من خوارزمية كبيرة\nسحب الكود المكرر إلى الكلاس الأب';

  @override
  String get templateMethodCons =>
      'بعض المستخدمين قد يشعرون بالتقييد بسبب الهيكل المحدد للخوارزمية';

  @override
  String get templateMethodWhenToUse =>
      'استخدمه عندما تريد السماح للمستخدمين بتوسيع خطوات محددة فقط من الخوارزمية، وليس الخوارزمية بأكملها أو هيكلها العام.';

  @override
  String get templateMethodBestUse =>
      'أطر عمل معالجة البيانات (Data Processing Frameworks)، سكربتات البناء (Build Scripts)، أو نقاط التخصيص في الخوارزميات القياسية.';

  @override
  String get visitorPros =>
      'مبدأ المفتوح/المغلق\nمبدأ المسؤولية الواحدة\nيمكن للـ Visitor جمع معلومات مفيدة أثناء العمل مع كائنات مختلفة';

  @override
  String get visitorCons =>
      'تحتاج لتحديث جميع الـ Visitors في كل مرة يتم إضافة أو حذف كلاس من التسلسل الهرمي';

  @override
  String get visitorWhenToUse =>
      'استخدمه عندما تحتاج لتنفيذ عملية على جميع عناصر هيكل كائن معقد (مثل شجرة كائنات).';

  @override
  String get visitorBestUse =>
      'تصدير المستندات بصيغ مختلفة، أدوات تحليل الكود (Code Analysis/AST Visitors)، أو العمليات على مجموعات غير متجانسة.';

  @override
  String get flyweightPros =>
      'توفير كبير في استهلاك الذاكرة (RAM) إذا كان لديك عدد ضخم من الكائنات المتشابهة\nتحسين الأداء العام في الأنظمة التي تعاني من ضيق الذاكرة';

  @override
  String get flyweightCons =>
      'قد تضحي بالذاكرة مقابل استهلاك أكبر للمعالج (CPU) عند إعادة حساب بعض البيانات\nيصبح الكود أكثر تعقيداً بشكل ملحوظ';

  @override
  String get flyweightWhenToUse =>
      'استخدمه فقط عندما يجب أن يدعم برنامجك عدداً هائلاً من الكائنات التي بالكاد تتسع لها الذاكرة المتوفرة.';

  @override
  String get flyweightBestUse =>
      'أنظمة الجسيمات في الألعاب (Particle Systems مثل الدخان والنار)، علامات الخرائط في مجموعات البيانات الضخمة، أو محررات النصوص التي تتعامل مع ملايين الأحرف.';
}
