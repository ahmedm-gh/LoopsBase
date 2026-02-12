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
  String get factoryMethod => 'نمط المصنع (Factory Method)';

  @override
  String get abstractFactory => 'المصنع المجرد (Abstract Factory)';

  @override
  String get builder => 'نمط البناء (Builder)';

  @override
  String get prototype => 'نمط النسخ (Prototype)';

  @override
  String get singleton => 'نمط الكائن الوحيد (Singleton)';

  @override
  String get structuralPatterns =>
      'الأنماط الهيكلية - أنماط تنظيم الكائنات (Structural Patterns)';

  @override
  String get adapter => 'نمط المحول (Adapter)';

  @override
  String get bridge => 'نمط الجسر (Bridge)';

  @override
  String get composite => 'نمط التركيب الهرمي (Composite)';

  @override
  String get decorator => 'نمط المُغلِّف (Decorator)';

  @override
  String get facade => 'نمط الواجهة المبسطة (Facade)';

  @override
  String get flyweight => 'نمط توفير الذاكرة (Flyweight)';

  @override
  String get proxy => 'نمط الوكيل (Proxy)';

  @override
  String get behavioralPatterns =>
      'الأنماط السلوكية - أنماط التواصل بين الكائنات (Behavioral Patterns)';

  @override
  String get chainOfResponsibility =>
      'نمط سلسلة المسؤولية (Chain of Responsibility)';

  @override
  String get command => 'نمط الأمر (Command)';

  @override
  String get iterator => 'نمط المكرر (Iterator)';

  @override
  String get interpreter => 'نمط المفسر (Interpreter)';

  @override
  String get mediator => 'نمط الوسيط (Mediator)';

  @override
  String get memento => 'نمط حفظ الحالة (Memento)';

  @override
  String get observer => 'نمط المراقب (Observer)';

  @override
  String get state => 'نمط الحالة (State)';

  @override
  String get strategy => 'نمط الاستراتيجية (Strategy)';

  @override
  String get templateMethod => 'نمط القالب (Template Method)';

  @override
  String get visitor => 'نمط الزائر (Visitor)';

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
  String get notes => 'ملاحظات';

  @override
  String get details => 'التفاصيل';

  @override
  String get example => 'مثال بلغة Dart';

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
  String get copied => 'تم النسخ إلى الحافظة!';

  @override
  String get answer => 'الإجابة';

  @override
  String get basicLevel => 'مبتدئ';

  @override
  String get intermediateLevel => 'متوسط';

  @override
  String get advancedLevel => 'متقدم';

  @override
  String get expertLevel => 'محترف';

  @override
  String get search => 'ابحث في الأسئلة...';

  @override
  String get noResults => 'لا توجد نتائج';

  @override
  String get all => 'الكل';

  @override
  String get codeExample => 'مثال كود';

  @override
  String get programmingTerms => 'مصطلحات برمجية';

  @override
  String get usefulPubPackages => 'مكتبات مفيدة';

  @override
  String get tags => 'الوسوم';

  @override
  String get theoretical => 'نظري';

  @override
  String get practical => 'تطبيقي';

  @override
  String get cBasic => 'أساسي';

  @override
  String get cSecurity => 'أمان';

  @override
  String get cOOP => 'برمجة كائنية';

  @override
  String get cSolid => 'صلب';

  @override
  String get cDesignPatterns => 'أنماط التصميم';

  @override
  String get cDataStructures => 'هياكل البيانات';

  @override
  String get cStateManagement => 'إدارة الحالة';

  @override
  String get cPerformance => 'أداء';

  @override
  String get cTesting => 'اختبار';

  @override
  String get cNetworking => 'شبكات';

  @override
  String get cDatabase => 'قاعدة بيانات';

  @override
  String get cArchitecture => 'هندسة معمارية';

  @override
  String get cDartBasics => 'أساسيات دارت';

  @override
  String get cFlutterBasics => 'أساسيات فلاتر';

  @override
  String get cUI => 'واجهة المستخدم';

  @override
  String get cNativePlatform => 'منصة أصلية';

  @override
  String get cAnimations => 'رسوم متحركة';

  @override
  String get cModernFeatures => 'ميزات حديثة';

  @override
  String get cDeployment => 'النشر';

  @override
  String get questionNotFound => 'السؤال غير موجود';

  @override
  String get onlyBookmarked => 'فقط المحفوظة';

  @override
  String get allLevels => 'جميع المستويات';

  @override
  String get commonMistakes => 'الأخطاء الشائعة';

  @override
  String get noPattern => 'لا يوجد نمط';

  @override
  String get pGoF => 'الكلاسيكية (GoF)';

  @override
  String get pNonGoF => 'غير مدرجة ضمن GoF';

  @override
  String get pPractical => 'نمط عملي';

  @override
  String get pModern => 'نمط حديث';

  @override
  String get designPattern => 'نمط تصميم';

  @override
  String get architecturalPattern => 'نمط معماري';

  @override
  String get stateManagementPattern => 'نمط إدارة الحالة';

  @override
  String get uiPattern => 'نمط واجهة المستخدم (UI)';

  @override
  String get projectStructurePattern => 'نمط هيكلة المشروع';

  @override
  String get creationalPattern => 'نمط الإنشاء (Creational)';

  @override
  String get structuralPattern => 'نمط التركيب (Structural)';

  @override
  String get behavioralPattern => 'نمط السلوك (Behavioral)';

  @override
  String get relatedPatterns => 'أنماط متعلقة';

  @override
  String get oftenConfusedWith => 'غالباً ما يخطلت الأمر مع';

  @override
  String get termNotFound => 'المصطلح غير موجود';

  @override
  String get termTypeConcept => 'مفهوم';

  @override
  String get termTypeParadigm => 'نمط برمجي';

  @override
  String get termTypePattern => 'نمط';

  @override
  String get termTypePrinciple => 'مبدأ';

  @override
  String get termTypeSyntax => 'صياغة';

  @override
  String get termTypeKeyword => 'كلمة محجوزة';

  @override
  String get termTypeFeature => 'ميزة';

  @override
  String get termTypeArchitecture => 'معمارية';

  @override
  String get termTypeDataStructure => 'هيكل بيانات';

  @override
  String get termTypeAlgorithm => 'خوارزمية';

  @override
  String get termTypeTool => 'أداة';

  @override
  String get termTypeFramework => 'إطار عمل';

  @override
  String get termTypeLibrary => 'مكتبة';

  @override
  String get termTypeRuntime => 'بيئة تشغيل';

  @override
  String get termTypeProtocol => 'بروتوكول';

  @override
  String get termTypeMethodology => 'منهجية';

  @override
  String get termTypeDesignSystem => 'نظام تصميم';

  @override
  String get termCategoryFundamentals => 'الأساسيات';

  @override
  String get termCategoryOOP => 'البرمجة كائنية التوجه';

  @override
  String get termCategoryFunctionalProgramming => 'البرمجة الوظيفية';

  @override
  String get termCategoryProceduralProgramming => 'البرمجة الإجرائية';

  @override
  String get termCategoryReactiveProgramming => 'البرمجة التفاعلية';

  @override
  String get termCategoryConcurrency => 'التزامن';

  @override
  String get termCategoryMemoryManagement => 'إدارة الذاكرة';

  @override
  String get termCategoryNetworking => 'الشبكات';

  @override
  String get termCategorySecurity => 'الأمن';

  @override
  String get termCategoryDatabases => 'قواعد البيانات';

  @override
  String get termCategoryUiUx => 'واجهة وتجربة المستخدم';

  @override
  String get termCategoryFrontend => 'الواجهة الأمامية';

  @override
  String get termCategoryBackend => 'الواجهة الخلفية';

  @override
  String get termCategoryMobileDevelopment => 'تطوير تطبيقات الجوال';

  @override
  String get termCategoryWebDevelopment => 'تطوير الويب';

  @override
  String get termCategoryDevOps => 'ديف أوبس';

  @override
  String get termCategoryTesting => 'الاختبار';

  @override
  String get termCategoryArchitecture => 'المعمارية';

  @override
  String get termCategoryStateManagement => 'إدارة الحالة';

  @override
  String get termCategoryPerformance => 'الأداء';

  @override
  String get termCategoryCompilerInternals => 'بنية المترجم الداخلية';

  @override
  String get termCategoryVersionControl => 'إدارة الإصدارات';

  @override
  String get termCategoryCloud => 'الحوسبة السحابية';

  @override
  String get termCategoryArtificialIntelligence => 'الذكاء الاصطناعي';

  @override
  String get termEraClassic => 'كلاسيكي';

  @override
  String get termEraModern => 'حديث';

  @override
  String get termEraEmerging => 'ناشئ';

  @override
  String get popularityTierLabel => 'الشعبية';

  @override
  String get popularityTierVeryHigh => 'عالية جدًا';

  @override
  String get popularityTierHigh => 'عالية';

  @override
  String get popularityTierMedium => 'متوسطة';

  @override
  String get popularityTierLow => 'منخفضة';

  @override
  String get popularityTierNiche => 'متخصصة';

  @override
  String get aliases => 'معروف بـ';
}
