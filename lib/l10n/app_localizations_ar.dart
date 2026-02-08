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
  String get interviewQuestions => 'أسئلة المقابلات';

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

  @override
  String get answer => 'الإجابة';

  @override
  String get basicLevel => 'مبتدئ';

  @override
  String get basicLevelDesc => 'مفاهيم أساسية يجب على كل مطور Flutter معرفتها.';

  @override
  String get intermediateLevel => 'متوسط';

  @override
  String get intermediateLevelDesc => 'فهم أعمق لميزات Flutter و Dart.';

  @override
  String get advancedLevel => 'متقدم';

  @override
  String get advancedLevelDesc => 'مواضيع متقدمة للمطورين الأكثر خبرة.';

  @override
  String get qWhatIsFlutter => 'ما هو Flutter؟';

  @override
  String get qWhatIsFlutterNotes =>
      'Flutter هو إطار عمل مفتوح المصدر لبناء تطبيقات يتم تجميعها بشكل أصلي (Native) للهواتف المحمولة والويب وسطح المكتب من قاعدة كود واحدة. يستخدم لغة البرمجة Dart ويوفر مجموعة غنية من العناصر (Widgets) القابلة للتخصيص وأدوات للتطوير السريع.';

  @override
  String get qWhatIsFlutterPros =>
      'أداء عالٍ بفضل التجميع الأصلي (Native Compilation)\nخاصية Hot Reload للتطوير السريع\nقاعدة كود واحدة لمنصات متعددة';

  @override
  String get qWhatIsFlutterCons =>
      'حجم التطبيق أكبر مقارنة ببعض البدائل\nمكتبات خارجية أقل نسبياً\nتعلم Dart قد يكون تحدياً للمطورين الجدد';

  @override
  String get qWhatIsFlutterBestUse =>
      'مثالي لبناء تطبيقات متعددة المنصات مع واجهة مستخدم مخصصة وجميلة ودورات تطوير سريعة.';

  @override
  String get qWhatIsDart => 'ما هي لغة Dart ولماذا تُستخدم في Flutter؟';

  @override
  String get qWhatIsDartNotes =>
      'Dart هي لغة برمجة حديثة وكائنية التوجه (Object-Oriented) مُحسَّنة لبناء واجهات المستخدم، تُستخدم لتطوير تطبيقات Flutter. تُترجَم إلى كود أصلي (Native) للحصول على أداء عالٍ، ولديها ميزات مثل الأمان من القيم الفارغة (Null Safety) ومكتبة قياسية غنية.';

  @override
  String get qWhatIsDartPros =>
      'سهلة التعلم للمطورين الذين يعرفون لغات مثل C أو Java\nتدعم كلاً من AOT و JIT Compilation\nميزات قوية للأمان من القيم الفارغة (Null Safety)';

  @override
  String get qWhatIsDartCons =>
      'نظام بيئي أصغر مقارنة بـ JavaScript\nتُستخدم بشكل رئيسي مع Flutter، مما يحد من إعادة استخدامها في الخادم (Server-Side)';

  @override
  String get qWhatIsDartBestUse =>
      'الأفضل لتطوير تطبيقات Flutter والتطبيقات التي تحتاج أداءً عالياً وإنتاجية للمطور.';

  @override
  String get qWhatAreWidgets => 'ما هي الـ Widgets في Flutter؟';

  @override
  String get qWhatAreWidgetsNotes =>
      'الـ Widgets هي اللبنات الأساسية لواجهة المستخدم في تطبيق Flutter. كل ما تراه على الشاشة في Flutter هو Widget، والذي يمكن أن يكون Stateless أو Stateful. تصف الـ Widgets كيفية عرض العناصر على الشاشة بطريقة تصريحية (Declarative).';

  @override
  String get qWhatAreWidgetsPros =>
      'قابلة للتخصيص والتركيب بشكل كبير\nيمكنك بناء واجهات معقدة بدمج عناصر بسيطة\nخاصية Hot Reload تعمل بشكل ممتاز مع شجرة الـ Widgets';

  @override
  String get qWhatAreWidgetsCons =>
      'التسلسلات الهرمية العميقة للـ Widgets قد تصبح معقدة\nتتطلب فهم دورة حياة الـ Widget لإدارة الحالة بفعالية';

  @override
  String get qWhatAreWidgetsBestUse =>
      'استخدم الـ Widgets لجميع مكونات واجهة المستخدم؛ استفد من StatelessWidget للأجزاء الثابتة و StatefulWidget للأجزاء التفاعلية.';

  @override
  String get qStatelessVsStateful =>
      'ما الفرق بين StatelessWidget و StatefulWidget؟';

  @override
  String get qStatelessVsStatefulNotes =>
      'الـ StatelessWidget لا يمكن تغيير حالته بعد البناء؛ فهو ثابت (Immutable). أما StatefulWidget فلديه حالة قابلة للتغيير (عبر كائن State) يمكن أن تتغير مع الوقت، مما يؤدي إلى إعادة البناء. StatelessWidget أبسط وأفضل أداءً للمحتوى الثابت. StatefulWidget يسمح بواجهة ديناميكية وتفاعلية.';

  @override
  String get qStatelessVsStatefulPros =>
      'StatelessWidget أبسط وأفضل أداءً للمحتوى الثابت\nStatefulWidget يسمح بواجهة ديناميكية وتفاعلية';

  @override
  String get qStatelessVsStatefulCons =>
      'StatelessWidget لا يمكنه تحديث الواجهة عند التغييرات\nStatefulWidget يضيف عبء إدارة الحالة وإعادة البناء';

  @override
  String get qStatelessVsStatefulBestUse =>
      'استخدم StatelessWidget للواجهة التي لا تتغير (مثل النص الثابت)، واستخدم StatefulWidget عندما تحتاج الواجهة للتحديث (مثل النماذج والرسوم المتحركة).';

  @override
  String get qWhatIsKey => 'ما هو الـ Key في Flutter ولماذا يُستخدم؟';

  @override
  String get qWhatIsKeyNotes =>
      'الـ Key هو معرّف للـ Widgets والـ Elements والـ SemanticsNodes. تحافظ الـ Keys على الحالة وتتحكم في هوية الـ Widget عند تغيير شجرة الـ Widgets (مثل إعادة الترتيب). استخدام الـ Keys يساعد Flutter في مطابقة الـ Widgets بين عمليات البناء.';

  @override
  String get qWhatIsKeyPros =>
      'استخدام الـ Keys (خاصة UniqueKey أو ValueKey) يساعد في تجنب السلوك غير المتوقع عند إعادة ترتيب أو تغيير قوائم الـ Widgets ديناميكياً';

  @override
  String get qWhatIsKeyCons =>
      'غالباً ليست ضرورية إلا إذا كنت تدير قوائم widgets ديناميكية\nالإفراط في استخدام الـ Keys قد يعقد الكود';

  @override
  String get qWhatIsKeyBestUse =>
      'استخدم الـ Keys عندما يكون لديك عدة widgets من نفس النوع وتحتاج للحفاظ على حالتها عند تحركها أو تغيير موقعها.';

  @override
  String get qHotReloadVsRestart =>
      'اشرح الفرق بين Hot Reload و Hot Restart في Flutter.';

  @override
  String get qHotReloadVsRestartNotes =>
      'الـ Hot Reload يضخ الكود المحدث في Dart VM الجاري، محافظاً على حالة التطبيق ويجعل تغييرات الواجهة مرئية فوراً تقريباً. أما Hot Restart فيعيد تشغيل التطبيق بالكامل، ويعيد بناء شجرة الـ Widgets ويعيد تهيئة الحالة، وهو أبطأ من Hot Reload.';

  @override
  String get qHotReloadVsRestartPros =>
      'Hot Reload يسرع تطوير الواجهة بشكل كبير بالحفاظ على الحالة\nHot Restart يضمن إعادة تعيين كاملة، مفيد عند الحاجة لحالة نظيفة';

  @override
  String get qHotReloadVsRestartCons =>
      'Hot Reload قد لا يعكس التغييرات خارج كود الـ Widget أو الإعداد الأولي\nHot Restart أبطأ ويفقد الحالة الحالية';

  @override
  String get qHotReloadVsRestartBestUse =>
      'استخدم Hot Reload للتكرار السريع أثناء تطوير الواجهة؛ استخدم Hot Restart عند الحاجة لتطبيق تغييرات تتطلب إعادة تشغيل التطبيق.';

  @override
  String get qMaterialAppScaffold =>
      'ما هو الغرض من MaterialApp و Scaffold widgets؟';

  @override
  String get qMaterialAppScaffoldNotes =>
      'MaterialApp هو widget يغلف عدداً من الـ widgets المطلوبة عادةً لتطبيقات Material Design، مثل الثيمات والتنقل. Scaffold يوفر إطاراً لتنفيذ الهيكل البصري الأساسي لـ Material Design (شريط التطبيق، الأدراج، الأوراق السفلية، إلخ).';

  @override
  String get qMaterialAppScaffoldPros =>
      'MaterialApp يتعامل مع إعدادات التطبيق (الثيم، اللغة، Navigator)\nScaffold يوفر عناصر واجهة قياسية جاهزة للاستخدام';

  @override
  String get qMaterialAppScaffoldCons =>
      'يفرضان Material Design\nللمظهر المخصص أو التصميم غير Material، يمكن استخدام WidgetsApp أو تخطيط مخصص';

  @override
  String get qMaterialAppScaffoldBestUse =>
      'استخدم MaterialApp و Scaffold عند تطوير تطبيق Flutter يتبع إرشادات Material Design.';

  @override
  String get qWidgetLifecycle =>
      'ما هي دورة حياة Widget في Flutter (دورة حياة StatefulWidget)؟';

  @override
  String get qWidgetLifecycleNotes =>
      'StatefulWidget لديه كائن State تتضمن دورة حياته initState()، didChangeDependencies()، build()، setState()، deactivate()، dispose()، و reassemble (أثناء hot reload). يُستدعى initState مرة واحدة عند إدراج الـ widget في الشجرة؛ build() يُستدعى كثيراً لإعادة الرسم؛ dispose() يُستدعى عند إزالة الـ widget.';

  @override
  String get qWidgetLifecyclePros =>
      'فهم دورة الحياة ضروري لإدارة الموارد (مثل تهيئة والتخلص من Controllers) والتحكم في إعادة البناء';

  @override
  String get qWidgetLifecycleCons =>
      'إدارة دورات الحياة المعقدة قد تكون عرضة للأخطاء\nنسيان dispose يمكن أن يسبب تسرب ذاكرة (Memory Leaks)';

  @override
  String get qWidgetLifecycleBestUse =>
      'استخدم initState للتهيئة لمرة واحدة، build لبناء الواجهة، و dispose لتنظيف الموارد مثل الرسوم المتحركة أو الـ Streams.';

  @override
  String get qWhatAreMixins => 'ما هي الـ Mixins في Dart وكيف تُستخدم؟';

  @override
  String get qWhatAreMixinsNotes =>
      'الـ Mixins تسمح للـ class باستخدام methods وخصائص من classes متعددة دون الوراثة المتعددة. في Dart، تعرّف mixin بكلمة \'mixin\' ثم تستخدمه بكلمة \'with\' في تعريف الـ class. مفيدة لإعادة استخدام الكود.';

  @override
  String get qWhatAreMixinsPros =>
      'توفر طريقة لإضافة وظائف مشتركة لـ classes متعددة دون فرض علاقة وراثة\nتبقي الـ Classes أكثر وحدوية';

  @override
  String get qWhatAreMixinsCons =>
      'الإفراط في استخدام الـ Mixins قد يؤدي لتسلسلات معقدة وسلوك غير متوقع إذا عدلت عدة mixins نفس الخصائص';

  @override
  String get qWhatAreMixinsBestUse =>
      'استخدم الـ Mixins عندما تريد مشاركة وظائف (مثل التسجيل، التحقق، إلخ) عبر classes مختلفة دون إنشاء class أساسي.';

  @override
  String get qExtensionMethods => 'ما هي Extension Methods في Dart؟';

  @override
  String get qExtensionMethodsNotes =>
      'Extension Methods تسمح لك بإضافة methods جديدة (أو getters/setters) للمكتبات أو الـ classes الموجودة دون تعديلها. تُعرّف باستخدام كلمة \'extension\'، وهي سهولة نحوية لتوسيع الوظائف.';

  @override
  String get qExtensionMethodsPros =>
      'تمكن من كتابة كود أنظف بتوسيع وظائف الأنواع المدمجة أو الـ classes (مثل إضافة methods مساعدة لـ String)';

  @override
  String get qExtensionMethodsCons =>
      'يمكن أن تجعل الكود أصعب في الاكتشاف، لأن الـ methods غير مرئية في تعريف الـ class الأصلي';

  @override
  String get qExtensionMethodsBestUse =>
      'استخدم extension methods لإضافة دوال مساعدة للأنواع في مشروعك دون إنشاء utility classes.';

  @override
  String get qListsSetsMaps =>
      'ما هي Lists و Sets و Maps في Dart ومتى تستخدم كلاً منها؟';

  @override
  String get qListsSetsMapsNotes =>
      'List هي مجموعة مرتبة تسمح بالتكرار؛ استخدمها عندما يهم الترتيب. Set هي مجموعة غير مرتبة من العناصر الفريدة؛ استخدمها عندما تحتاج التفرد. Map هي مخزن key-value؛ استخدمها عندما تحتاج لربط قيم بمفاتيح للبحث السريع.';

  @override
  String get qListsSetsMapsProsPros =>
      'Lists تسمح بالوصول بالفهرس والترتيب\nSets تضمن عدم التكرار وتوفر فحص عضوية سريع\nMaps توفر بحث سريع بالمفتاح';

  @override
  String get qListsSetsMapsProsCons =>
      'Lists قد تكون غير فعالة إذا كنت بحاجة لفرض التفرد\nSets لا تحافظ على ترتيب الإدراج\nMaps تستخدم ذاكرة أكثر لكل عنصر من list بسيطة';

  @override
  String get qListsSetsMapsProsBestUse =>
      'استخدم List لتسلسلات البيانات المرتبة، Set للمجموعات الفريدة، و Map لارتباطات key-value.';

  @override
  String get qSolidPrinciples => 'ما هي مبادئ SOLID وكيف تنطبق على Flutter؟';

  @override
  String get qSolidPrinciplesNotes =>
      'SOLID تشير لخمسة مبادئ في التصميم الكائني: المسؤولية الواحدة، المفتوح/المغلق، استبدال Liskov، فصل الواجهات، وعكس التبعية. في Flutter، احتفظ بـ widgets/controllers بمسؤولية واحدة، استخدم التجريدات للتبعيات، واجعل الـ classes مفتوحة للتوسعة لكن مغلقة للتعديل.';

  @override
  String get qSolidPrinciplesPros =>
      'اتباع SOLID يجعل الكود أكثر قابلية للصيانة والاختبار والتوسعة\nلـ Flutter، يشجع الفصل النظيف بين الواجهة والمنطق';

  @override
  String get qSolidPrinciplesCons =>
      'الالتزام الصارم قد يؤدي لمزيد من التجريد والكود المتكرر\nقد يعقد المشاريع البسيطة إذا بولغ فيه';

  @override
  String get qSolidPrinciplesBestUse =>
      'استخدم SOLID لهيكلة تطبيقات Flutter الأكبر؛ ابدأ بسيطاً لكن أعد الهيكلة نحو SOLID مع نمو التعقيد.';

  @override
  String get qBlocPattern => 'ما هو نمط BLoC في Flutter؟';

  @override
  String get qBlocPatternNotes =>
      'BLoC (Business Logic Component) هو نمط معماري يفصل منطق الأعمال عن الواجهة باستخدام Streams. BLoC يكشف streams من البيانات، وwidgets الواجهة تستمع إليها. هذا يجعل الكود أكثر قابلية للاختبار وإعادة الاستخدام.';

  @override
  String get qBlocPatternPros =>
      'يعزز فصل الاهتمامات وقابلية الاختبار\nيعمل جيداً مع البرمجة التفاعلية (Reactive Programming)\nيبسط إدارة الحالة للتطبيقات المعقدة';

  @override
  String get qBlocPatternCons =>
      'يضيف كوداً متكرراً (stream controllers، sinks، إلخ)\nقد يكون مبالغاً فيه للتطبيقات البسيطة\nمنحنى التعلم أعلى من setState البسيط';

  @override
  String get qBlocPatternBestUse =>
      'استخدم BLoC للتطبيقات المتوسطة والكبيرة حيث يكون فصل المنطق مفيداً. للتطبيقات الأصغر، قد تكفي طرق أبسط.';

  @override
  String get qProviderVsBloc => 'ما هو Provider في Flutter وكيف يختلف عن BLoC؟';

  @override
  String get qProviderVsBlocNotes =>
      'Provider هو غلاف حول InheritedWidget يسهل إدارة الحالة بتوفير والوصول لكائنات الحالة. بعكس BLoC (الذي يستخدم Streams)، Provider غالباً يستخدم ChangeNotifier أو كائنات بسيطة. Provider يبسط تمرير البيانات عبر شجرة الـ widgets.';

  @override
  String get qProviderVsBlocPros =>
      'خفيف وسهل الاستخدام\nكود أقل من BLoC\nمتكامل جيداً مع Flutter';

  @override
  String get qProviderVsBlocCons =>
      'لا يفرض نمطاً صارماً، مما قد يؤدي لمنطق حالة متفرق إذا لم يُنظم\nفصل أقل رسمية من BLoC';

  @override
  String get qProviderVsBlocBestUse =>
      'استخدم Provider لاحتياجات إدارة حالة أبسط أو تطبيقات أصغر. يتكامل جيداً مع Flutter وأسهل للبدء من BLoC.';

  @override
  String get qFutureVsStream => 'ما الفرق بين Future و Stream في Dart؟';

  @override
  String get qFutureVsStreamNotes =>
      'Future يمثل عملية حسابية غير متزامنة واحدة تكتمل بقيمة أو خطأ. Stream يمثل تسلسل من الأحداث أو البيانات غير المتزامنة عبر الوقت. FutureBuilder يُستخدم لنتائج async لمرة واحدة، StreamBuilder لتدفقات البيانات المستمرة.';

  @override
  String get qFutureVsStreamPros =>
      'استخدم Future لطلبات HTTP المفردة أو المهام async السريعة\nاستخدم Stream للأحداث مثل رسائل WebSocket، بيانات الحساسات، أو التحديثات الدورية';

  @override
  String get qFutureVsStreamCons =>
      'Future لا يمكنه التعامل مع قيم متعددة أو تحديثات مستمرة\nStreams تضيف تعقيداً أكثر (المستمعين، الإلغاءات)';

  @override
  String get qFutureVsStreamBestUse =>
      'استخدم Future عند توقع نتيجة واحدة. استخدم Stream عند الاستماع لنتائج متعددة أو تغييرات عبر الوقت.';

  @override
  String get qNavigationPushReplace =>
      'كيف تتنقل بين الشاشات في Flutter؟ (push، pushReplacement)';

  @override
  String get qNavigationPushReplaceNotes =>
      'التنقل في Flutter يستخدم Navigator widget. Navigator.push يضيف route للمكدس (المستخدم يمكنه الضغط على رجوع للعودة). Navigator.pushReplacement يستبدل الـ route الحالي بجديد، مزيلاً السابق من المكدس.';

  @override
  String get qNavigationPushReplacePros =>
      'push يحتفظ بالشاشة السابقة في الذاكرة (المستخدم يمكنه العودة)\npushReplacement يزيلها (مناسب لشاشات تسجيل الدخول أو التدفقات التي لا تحتاج العودة)';

  @override
  String get qNavigationPushReplaceCons =>
      'push قد يراكم routes كثيرة إذا لم يُدار (الذاكرة)\npushReplacement يمنع التنقل للخلف لكن يفقد حالة الشاشة السابقة';

  @override
  String get qNavigationPushReplaceBestUse =>
      'استخدم push للتنقل للأمام العادي. استخدم pushReplacement لاستبدال الشاشات بشكل دائم (مثل بعد تسجيل الدخول أو شاشة البداية).';

  @override
  String get qNavigator1Vs2 => 'ما الفرق بين Navigator 1.0 و Navigator 2.0؟';

  @override
  String get qNavigator1Vs2Notes =>
      'Navigator 1.0 هو API الأمري الكلاسيكي (push/pop بواسطة widget)، بينما Navigator 2.0 هو API تصريحي قائم على URL مع Router و RouteInformationParser. Navigator 2.0 يوفر تحكماً أكبر في URL المتصفح والروابط العميقة.';

  @override
  String get qNavigator1Vs2Pros =>
      'Navigator 2.0 يمكّن أنماط تنقل الويب والأكثر تعقيداً (الروابط العميقة)';

  @override
  String get qNavigator1Vs2Cons =>
      'Navigator 2.0 له منحنى تعلم أعلى وكود أكثر\nللتطبيقات البسيطة، Navigator 1.0 أسهل';

  @override
  String get qNavigator1Vs2BestUse =>
      'استخدم Navigator 2.0 لتطبيقات الويب أو التطبيقات التي تتطلب روابط عميقة وسلوك توجيه مخصص. للتنقل الأساسي، 1.0 كافٍ.';

  @override
  String get qBuildContext =>
      'ما هو معامل context في method الـ build() في Flutter؟';

  @override
  String get qBuildContextNotes =>
      'BuildContext هو كائن يمثل موقع widget في شجرة الـ widgets. يُمرر لـ method الـ build ويمكن استخدامه للوصول لبيانات الثيم والترجمة وللعثور على widgets الأسلاف في الشجرة.';

  @override
  String get qBuildContextPros =>
      'يسمح للـ widgets بالوصول للـ inherited widgets مثل Theme أو MediaQuery\nضروري للتواصل بين الـ widgets';

  @override
  String get qBuildContextCons =>
      'إساءة استخدام context (مثل استخدامه قبل initState أو في async) قد يؤدي لأخطاء';

  @override
  String get qBuildContextBestUse =>
      'استخدم context داخل build() للحصول على الثيم أو بيانات موروثة أخرى، أو Navigator للتنقل.';

  @override
  String get qWhatIsIsolate => 'ما هو الـ Isolate في Dart وكيف يُستخدم؟';

  @override
  String get qWhatIsIsolateNotes =>
      'Isolate هو خيط تنفيذ منفصل لا يشارك الذاكرة مع الـ isolate الرئيسي. له heap ذاكرة خاص به. الاتصال يتم عبر تمرير الرسائل (SendPort/ReceivePort). استخدم isolates للمهام المكثفة للـ CPU لتجنب حجب خيط الواجهة الرئيسي.';

  @override
  String get qWhatIsIsolatePros =>
      'يمكّن الحوسبة المتوازية الحقيقية في Dart بدون أخطاء التزامن للذاكرة المشتركة\nيحسن الأداء للمهام الثقيلة';

  @override
  String get qWhatIsIsolateCons =>
      'الاتصال عبر تمرير الرسائل قد يكون معقداً وأبطأ\nبدء isolate له تكلفة؛ غير مناسب للمهام الصغيرة';

  @override
  String get qWhatIsIsolateBestUse =>
      'استخدم isolates للحسابات المكلفة (معالجة الصور، الحسابات الكبيرة) بعيداً عن الخيط الرئيسي. لمعظم مهام الواجهة، استخدم async/await بدلاً.';

  @override
  String get qFutureBuilderStreamBuilder =>
      'ما هو FutureBuilder و StreamBuilder ولماذا يُستخدمان في Flutter؟';

  @override
  String get qFutureBuilderStreamBuilderNotes =>
      'FutureBuilder هو widget يبني نفسه بناءً على آخر snapshot من التفاعل مع Future. StreamBuilder يعيد البناء بالمثل عند وصول أحداث Stream جديدة. يبسطان التعامل مع البيانات غير المتزامنة في الواجهة بدون مستمعين يدويين.';

  @override
  String get qFutureBuilderStreamBuilderPros =>
      'يسهل تحديث الواجهة بناءً على نتائج async أو بيانات stream\nيتعامل مع حالات الاتصال والـ snapshots تلقائياً';

  @override
  String get qFutureBuilderStreamBuilderCons =>
      'قد يؤدي لإعادة بناء عند كل حدث\nتحتاج لإدارة الأداء إذا كانت الـ streams متكررة';

  @override
  String get qFutureBuilderStreamBuilderBestUse =>
      'استخدم FutureBuilder لنداءات async لمرة واحدة (مثل طلبات HTTP) و StreamBuilder للبيانات المستمرة (مثل التحديثات الفورية أو web sockets).';

  @override
  String get qConstructorFactory =>
      'ما هو الـ Constructor في Dart وما هي factory constructors؟';

  @override
  String get qConstructorFactoryNotes =>
      'Constructor في Dart هو method خاص لإنشاء كائنات من class. Factory constructor هو نوع خاص من الـ constructor يمكن أن يعيد instance موجود أو subclass. يُعلن عنه بكلمة \'factory\'. مفيد لتطبيقات singleton أو cache.';

  @override
  String get qConstructorFactoryPros =>
      'Factory constructors تسمح بالتحكم في إنشاء الـ instance (مثل تطبيق singletons أو caches)\nيمكن إرجاع أنواع فرعية مختلفة';

  @override
  String get qConstructorFactoryCons =>
      'Factory constructors لا يمكنها الوصول لـ \'this\' ولا تنشئ instance جديد تلقائياً\nتضيف تعقيداً مقارنة بـ constructor عادي';

  @override
  String get qConstructorFactoryBestUse =>
      'استخدم factory constructors لأنماط مثل singleton أو عندما تحتاج لمنطق مخصص لتحديد أي instance تعيده.';

  @override
  String get qSingletonPattern =>
      'ما هو نمط Singleton وكيف يمكنك تطبيقه في Dart؟';

  @override
  String get qSingletonPatternNotes =>
      'Singleton يضمن أن class له instance واحد فقط ويوفر نقطة وصول عامة. في Dart، يمكنك تطبيق singleton باستخدام constructor خاص و instance ثابت. مفيد للـ caches أو الموارد المشتركة.';

  @override
  String get qSingletonPatternPros =>
      'يضمن instance مشترك واحد عبر التطبيق (مفيد للـ caches، الموارد المشتركة)';

  @override
  String get qSingletonPatternCons =>
      'الحالة العامة قد تصعب الاختبار وتؤدي لتبعيات مخفية';

  @override
  String get qSingletonPatternBestUse =>
      'استخدم singleton للـ classes التي تدير حالة أو موارد عامة (مثل مدير الإعدادات أو عميل الشبكة).';

  @override
  String get qFlutterPerformance => 'كيف تحسّن أداء تطبيق Flutter؟';

  @override
  String get qFlutterPerformanceNotes =>
      'تحسينات أداء Flutter الشائعة تشمل: استخدام const constructors لتجنب إعادة البناء، تقسيم الـ widgets لتقليل نطاق إعادة البناء، استخدام هياكل بيانات فعالة، تقليل طبقات الـ widgets (RepaintBoundary)، وتخزين الصور أو البيانات مؤقتاً. تجنب أحجام الأصول الكبيرة وإعادة البناء المفرطة.';

  @override
  String get qFlutterPerformancePros =>
      'تطبيق هذه التقنيات يمكن أن يحسن معدلات الإطارات والاستجابة بشكل كبير';

  @override
  String get qFlutterPerformanceCons =>
      'التحسين المبكر المفرط قد يعقد الكود\nركز على الاختناقات المحددة بالتحليل (Profiling)';

  @override
  String get qFlutterPerformanceBestUse =>
      'استخدم تحليل الأداء (DevTools) للعثور على الاختناقات. طبق التحسينات مثل const constructors، التخطيط الفعال، ونقل العمل للـ isolates حسب الحاجة.';

  @override
  String get qRenderingEngine =>
      'ما هو محرك الرسوميات في Flutter وكيف يعمل (مثل Skia، Impeller)؟';

  @override
  String get qRenderingEngineNotes =>
      'محرك الرسوميات الافتراضي في Flutter هو Skia، مكتبة رسوميات ثنائية الأبعاد بلغة C++. محرك Impeller الأحدث يحسن الأداء ويقلل المشاكل الرسومية على بعض المنصات. هذه المحركات تترجم واجهة Flutter لأوامر رسوميات أصلية على كل منصة.';

  @override
  String get qRenderingEnginePros =>
      'Skia يوفر رسوميات عالية الجودة وسريعة\nImpeller يحسن استخدام GPU والقابلية للتنبؤ';

  @override
  String get qRenderingEngineCons =>
      'تفاصيل المحرك مجردة في الغالب\nيجب على المطورين معرفتها للتصحيح فقط\nImpeller لا يزال ينضج على بعض المنصات';

  @override
  String get qRenderingEngineBestUse =>
      'استفد من تحسينات المحرك عبر تحديثات Flutter. للاحتياجات المتقدمة (مثل shaders مخصصة)، تعلم كيفية استخدام المحرك المناسب.';

  @override
  String get qFlutterVsReactNative =>
      'قارن Flutter مع React Native: ما هي المميزات والعيوب؟';

  @override
  String get qFlutterVsReactNativeNotes =>
      'Flutter و React Native كلاهما أطر عمل متعددة المنصات. Flutter يترجم لكود ARM أصلي وله رسوميات خاصة، مما يوفر أداءً عالياً. React Native يستخدم جسر JavaScript للمكونات الأصلية، مما قد يكون أبطأ. واجهة Flutter قابلة للتخصيص بشكل كبير، بينما React Native يستخدم widgets أصلية بمرونة أقل.';

  @override
  String get qFlutterVsReactNativePros =>
      'Flutter: أداء عالٍ، تحكم كامل بالواجهة، قاعدة كود واحدة\nReact Native: نظام مكتبات أكبر، JavaScript مألوف لمطوري الويب';

  @override
  String get qFlutterVsReactNativeCons =>
      'Flutter: حجم تطبيق أكبر، Dart أقل شهرة، حزم طرف ثالث أقل\nReact Native: عبء أداء من جسر JS، مشاكل في اتساق الواجهة';

  @override
  String get qFlutterVsReactNativeBestUse =>
      'استخدم Flutter عندما يكون الأداء والواجهة المخصصة أولوية. استخدم React Native إذا كانت الاستفادة من كود JavaScript الموجود أو النظام البيئي أهم.';

  @override
  String get qInheritanceVsComposition =>
      'اشرح الوراثة (Inheritance) والتركيب (Composition) في Dart.';

  @override
  String get qInheritanceVsCompositionNotes =>
      'الوراثة عندما يمتد class من class آخر، موروثاً خصائصه و methods (علاقة \'is-a\'). التركيب عندما يتضمن class instances من classes أخرى كحقول (علاقة \'has-a\'). التركيب غالباً مفضل للمرونة.';

  @override
  String get qInheritanceVsCompositionPros =>
      'الوراثة تسهل إعادة استخدام الكود للـ classes ذات الصلة القريبة\nالتركيب يوفر مرونة أكبر وترابط أقل';

  @override
  String get qInheritanceVsCompositionCons =>
      'الوراثة قد تؤدي لتسلسلات جامدة وترابط شديد\nالتركيب قد يؤدي لكود متكرر أكثر لكنه أكثر قابلية للتكيف';

  @override
  String get qInheritanceVsCompositionBestUse =>
      'استخدم الوراثة عندما يكون للـ classes تسلسل واضح ويتشاركون سلوكاً. استخدم التركيب لتجميع السلوك من classes متعددة للمرونة.';

  @override
  String get qWhatIsPolymorphism =>
      'ما هو تعدد الأشكال (Polymorphism) في البرمجة الكائنية؟';

  @override
  String get qWhatIsPolymorphismNotes =>
      'تعدد الأشكال يعني \'أشكال متعددة\'. في Dart، يسمح بمعاملة كائنات من classes مختلفة عبر واجهة مشتركة (مثل methods مُعاد تعريفها في subclasses). دالة يمكن أن تقبل نوع class أساسي وتعمل على أي instance من subclass.';

  @override
  String get qWhatIsPolymorphismPros =>
      'يجعل الكود أكثر مرونة وقابلية لإعادة الاستخدام بالبرمجة لواجهة أو superclass بدلاً من classes محددة';

  @override
  String get qWhatIsPolymorphismCons =>
      'قد يجعل الكود أصعب في الفهم إذا أُفرط في استخدامه، لأن نوع الكائن الفعلي أقل وضوحاً';

  @override
  String get qWhatIsPolymorphismBestUse =>
      'استخدم تعدد الأشكال عندما تريد استخدام واجهة مشتركة (abstract class أو base class) لتطبيقات محددة مختلفة.';

  @override
  String get search => 'ابحث في الأسئلة...';

  @override
  String get noResults => 'لا توجد نتائج';

  @override
  String get all => 'الكل';

  @override
  String get expertLevel => 'محترف';

  @override
  String get codeExample => 'مثال كود';
}
