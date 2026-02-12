import "../core/models/code_block.dart";
import "../core/models/content.dart";
import "../core/models/design_patterns.dart";
import "../core/models/localized_text.dart";

abstract class PatternKeys {
  // Creational Patterns
  static const creationalPatterns = 'creational-patterns';
  static const factoryMethod = 'factory-method';
  static const abstractFactory = 'abstract-factory';
  static const builder = 'builder';
  static const prototype = 'prototype';
  static const singleton = 'singleton';
  static const objectPool = 'object-pool';
  static const lazyInitialization = 'lazy-initialization';
  static const multiton = 'multiton';
  static const factoryKit = 'factory-kit';

  // Structural Patterns
  static const structuralPatterns = 'structural-patterns';
  static const adapter = 'adapter';
  static const bridge = 'bridge';
  static const composite = 'composite';
  static const decorator = 'decorator';
  static const facade = 'facade';
  static const flyweight = 'flyweight';
  static const proxy = 'proxy';
  static const wrapper = 'wrapper';
  static const dataMapper = 'data-mapper';
  static const dto = 'dto';
  static const extensionObject = 'extension-object';
  static const plugin = 'plugin';

  // Behavioral Patterns
  static const behavioralPatterns = 'behavioral-patterns';
  static const chainOfResponsibility = 'chain-of-responsibility';
  static const command = 'command';
  static const interpreter = 'interpreter';
  static const iterator = 'iterator';
  static const mediator = 'mediator';
  static const memento = 'memento';
  static const observer = 'observer';
  static const state = 'state';
  static const strategy = 'strategy';
  static const templateMethod = 'template-method';
  static const visitor = 'visitor';
  static const dependencyInjection = 'dependency-injection';
  static const serviceLocator = 'service-locator';
  static const repository = 'repository';
  static const unitOfWork = 'unit-of-work';
  static const specification = 'specification';
  static const policy = 'policy';

  // Architectural Patterns
  static const architecturalPatterns = 'architectural-patterns';
  static const mvc = 'mvc';
  static const mvp = 'mvp';
  static const mvvm = 'mvvm';
  static const mvu = 'mvu';
  static const cleanArchitecture = 'clean-architecture';
  static const hexagonal = 'hexagonal';
  static const layeredArchitecture = 'layered-architecture';
  static const modularMonolith = 'modular-monolith';
  static const microservices = 'microservices';
  static const cqrs = 'cqrs';
  static const eventSourcing = 'event-sourcing';

  // State Management Patterns
  static const stateManagementPatterns = 'state-management-patterns';
  static const bloc = 'bloc';
  static const cubit = 'cubit';
  static const provider = 'provider';
  static const stateNotifier = 'state-notifier';
  static const redux = 'redux';
  static const unidirectionalDataFlow = 'unidirectional-data-flow';
  static const featureFirstStructure = 'feature-first-structure';
  static const presentationDomainData = 'presentation-domain-data';
}

const List<DesignPatternsCategory> designPatternCategories = [
  DesignPatternsCategory(
    id: PatternKeys.creationalPatterns,
    title: LocalizedString(
      en: "Creational Patterns",
      ar: "الأنماط الإنشائية (Creational Patterns)",
    ),
    description: LocalizedString(
      en: "Patterns that deal with object creation mechanisms",
      ar: "أنماط تتعامل مع آليات إنشاء الكائنات",
    ),
    isClassic: true,
    patterns: [
      PatternKeys.factoryMethod,
      PatternKeys.abstractFactory,
      PatternKeys.builder,
      PatternKeys.prototype,
      PatternKeys.singleton,
      PatternKeys.objectPool,
      PatternKeys.lazyInitialization,
      PatternKeys.multiton,
      PatternKeys.factoryKit,
    ],
  ),
  DesignPatternsCategory(
    id: PatternKeys.structuralPatterns,
    title: LocalizedString(
      en: "Structural Patterns",
      ar: "الأنماط البنيوية (Structural Patterns)",
    ),
    description: LocalizedString(
      en: "Patterns that deal with object composition and relationships",
      ar: "أنماط تتعامل مع تركيب الكائنات والعلاقات بينها",
    ),
    isClassic: true,
    patterns: [
      PatternKeys.adapter,
      PatternKeys.bridge,
      PatternKeys.composite,
      PatternKeys.decorator,
      PatternKeys.facade,
      PatternKeys.flyweight,
      PatternKeys.proxy,
      PatternKeys.wrapper,
      PatternKeys.dataMapper,
      PatternKeys.dto,
      PatternKeys.extensionObject,
      PatternKeys.plugin,
    ],
  ),
  DesignPatternsCategory(
    id: PatternKeys.behavioralPatterns,
    title: LocalizedString(
      en: "Behavioral Patterns",
      ar: "الأنماط السلوكية (Behavioral Patterns)",
    ),
    description: LocalizedString(
      en: "Patterns that deal with object communication and responsibility",
      ar: "أنماط تتعامل مع التواصل بين الكائنات والمسؤوليات",
    ),
    isClassic: true,
    patterns: [
      PatternKeys.chainOfResponsibility,
      PatternKeys.command,
      PatternKeys.interpreter,
      PatternKeys.iterator,
      PatternKeys.mediator,
      PatternKeys.memento,
      PatternKeys.observer,
      PatternKeys.state,
      PatternKeys.strategy,
      PatternKeys.templateMethod,
      PatternKeys.visitor,
      PatternKeys.dependencyInjection,
      PatternKeys.serviceLocator,
      PatternKeys.repository,
      PatternKeys.unitOfWork,
      PatternKeys.specification,
      PatternKeys.policy,
    ],
  ),
  DesignPatternsCategory(
    id: PatternKeys.architecturalPatterns,
    title: LocalizedString(
      en: "Architectural Patterns",
      ar: "الأنماط المعمارية (Architectural Patterns)",
    ),
    description: LocalizedString(
      en: "High-level patterns for application structure",
      ar: "أنماط عالية المستوى لبنية التطبيق",
    ),
    isClassic: false,
    patterns: [
      PatternKeys.mvc,
      PatternKeys.mvp,
      PatternKeys.mvvm,
      PatternKeys.mvu,
      PatternKeys.cleanArchitecture,
      PatternKeys.hexagonal,
      PatternKeys.layeredArchitecture,
      PatternKeys.modularMonolith,
      PatternKeys.microservices,
      PatternKeys.cqrs,
      PatternKeys.eventSourcing,
    ],
  ),
  DesignPatternsCategory(
    id: PatternKeys.stateManagementPatterns,
    title: LocalizedString(
      en: "State Management Patterns",
      ar: "أنماط إدارة الحالة (State Management Patterns)",
    ),
    description: LocalizedString(
      en: "Flutter-specific patterns for managing application state",
      ar: "أنماط خاصة بـ Flutter لإدارة حالة التطبيق",
    ),
    isClassic: false,
    patterns: [
      PatternKeys.bloc,
      PatternKeys.cubit,
      PatternKeys.provider,
      PatternKeys.stateNotifier,
      PatternKeys.redux,
      PatternKeys.unidirectionalDataFlow,
      PatternKeys.featureFirstStructure,
      PatternKeys.presentationDomainData,
    ],
  ),
];

const Map<String, DesignPattern> designPatterns = {
  PatternKeys.factoryMethod: DesignPattern(
    id: PatternKeys.factoryMethod,
    title: LocalizedString(
      en: "Factory Method",
      ar: "طريقة المصنع (Factory Method)",
    ),
    description: LocalizedString(
      en: "Defines an interface for creating objects, letting subclasses decide which class to instantiate",
      ar: "يعرّف واجهة لإنشاء الكائنات، مع السماح للفئات الفرعية بتحديد الفئة المُراد إنشاؤها",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Factory Method pattern provides a way to delegate the instantiation logic to child classes. Instead of calling a constructor directly, you call a factory method that returns instances of a common interface or base class.",
        ),
        StringContent(
          "This pattern is particularly useful when you need to decouple the client code from the concrete classes it needs to instantiate. The client only knows about the interface, not the specific implementations.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Product: The interface or abstract class for objects the factory method creates",
            "ConcreteProduct: Specific implementations of the Product",
            "Creator: Declares the factory method returning Product objects",
            "ConcreteCreator: Overrides the factory method to return ConcreteProduct instances",
          ],
        ),
        StringContent(
          "The pattern follows the Open/Closed Principle: you can introduce new product types without modifying existing client code by creating new concrete creators.",
        ),
      ],
      ar: [
        StringContent(
          "نمط طريقة المصنع (Factory Method) يوفر طريقة لتفويض منطق الإنشاء إلى الفئات الفرعية. بدلاً من استدعاء المُنشئ (constructor) مباشرة، تستدعي طريقة مصنع تُرجع كائنات من واجهة أو فئة أساسية مشتركة.",
        ),
        StringContent(
          "هذا النمط مفيد بشكل خاص عندما تحتاج إلى فصل كود العميل عن الفئات المحددة التي يحتاج لإنشائها. العميل يعرف فقط الواجهة، وليس التطبيقات المحددة.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "المنتج (Product): الواجهة أو الفئة المجردة للكائنات التي تنشئها طريقة المصنع",
            "المنتج المحدد (ConcreteProduct): تطبيقات محددة للمنتج",
            "المُنشئ (Creator): يعلن عن طريقة المصنع التي تُرجع كائنات المنتج",
            "المُنشئ المحدد (ConcreteCreator): يُعيد تعريف طريقة المصنع لإرجاع كائنات المنتج المحدد",
          ],
        ),
        StringContent(
          "يتبع النمط مبدأ المفتوح/المغلق (Open/Closed Principle): يمكنك إضافة أنواع منتجات جديدة دون تعديل كود العميل الموجود عن طريق إنشاء مُنشئين محددين جدد.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class Vessel {
  Volume get volume;
  String get liquid;
}

class Cup implements Vessel {
  @override
  final Volume volume = Volume.small;
  @override
  final String liquid = "coffee";
}

class Bucket implements Vessel {
  @override
  final Volume volume = Volume.large;
  @override
  final String liquid = "coffee";
}

enum Tiredness { mild, extreme }
enum Volume { small, large }

class CoffeeVesselFactory {
  static Vessel vesselFor(Tiredness tiredness) {
    switch (tiredness) {
      case Tiredness.mild:
        return Cup();
      case Tiredness.extreme:
        return Bucket();
    }
  }
}

void main() {
  final vessel = CoffeeVesselFactory.vesselFor(Tiredness.extreme);
  print("Got a \${vessel.runtimeType} with \${vessel.volume} volume");
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class Vessel {
  Volume get volume;
  String get liquid;
}

class Cup implements Vessel {
  @override
  final Volume volume = Volume.small;
  @override
  final String liquid = "coffee";
}

class Bucket implements Vessel {
  @override
  final Volume volume = Volume.large;
  @override
  final String liquid = "coffee";
}

enum Tiredness { mild, extreme }
enum Volume { small, large }

class CoffeeVesselFactory {
  static Vessel vesselFor(Tiredness tiredness) {
    switch (tiredness) {
      case Tiredness.mild:
        return Cup();
      case Tiredness.extreme:
        return Bucket();
    }
  }
}

void main() {
  final vessel = CoffeeVesselFactory.vesselFor(Tiredness.extreme);
  print("حصلت على \${vessel.runtimeType} بحجم \${vessel.volume}");
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Decouples client code from concrete product classes",
        "Follows Single Responsibility Principle by extracting object creation",
        "Follows Open/Closed Principle - easy to add new product types",
        "Makes testing easier by allowing mock objects",
      ],
      ar: [
        "يفصل كود العميل عن فئات المنتج المحددة",
        "يتبع مبدأ المسؤولية الواحدة (SRP) من خلال استخراج إنشاء الكائنات",
        "يتبع مبدأ المفتوح/المغلق - سهولة إضافة أنواع منتجات جديدة",
        "يسهّل الاختبار من خلال السماح بكائنات وهمية (mock objects)",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Increases code complexity with many subclasses",
        "Can lead to parallel class hierarchies",
        "May be overkill for simple object creation scenarios",
        "Difficult to understand for beginners",
      ],
      ar: [
        "يزيد من تعقيد الكود مع العديد من الفئات الفرعية",
        "قد يؤدي إلى تسلسلات هرمية متوازية للفئات",
        "قد يكون مبالغاً فيه لسيناريوهات إنشاء الكائنات البسيطة",
        "صعب الفهم للمبتدئين",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Factory Method when:"),
        UnorderedListContent(
          value: [
            "A class cannot anticipate the exact type of objects it must create",
            "You want to delegate the choice of object type to subclasses",
            "You want to localize the knowledge of which class to instantiate",
            "You have factory-like methods that clutter a class\"s core responsibility",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم طريقة المصنع عندما:"),
        UnorderedListContent(
          value: [
            "لا تستطيع الفئة توقع النوع الدقيق للكائنات التي يجب إنشاؤها",
            "تريد تفويض اختيار نوع الكائن للفئات الفرعية",
            "تريد توطين المعرفة حول الفئة التي سيتم إنشاؤها",
            "لديك طرق شبيهة بالمصنع تُزاحم المسؤولية الأساسية للفئة",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Overusing factories for every constructor, adding unnecessary indirection",
        "Creating \"Factories\" with huge conditional logic",
        "Allowing clients to downcast to concrete types, breaking the pattern\"s benefits",
        "Confusing it with Simple Factory or Abstract Factory patterns",
      ],
      ar: [
        "الإفراط في استخدام المصانع لكل مُنشئ، مما يضيف توجيهاً غير ضروري",
        "إنشاء \"Factories\" مع منطق شرطي ضخم",
        "السماح للعملاء بالتحويل إلى الأنواع المحددة، مما يكسر فوائد النمط",
        "الخلط بينه وبين أنماط المصنع البسيط أو المصنع المجرد",
      ],
    ),
    relatedPatterns: [
      PatternKeys.abstractFactory,
      PatternKeys.prototype,
      PatternKeys.templateMethod,
    ],
    oftenConfusedWith: [PatternKeys.abstractFactory],
  ),
  PatternKeys.abstractFactory: DesignPattern(
    id: PatternKeys.abstractFactory,
    title: LocalizedString(
      en: "Abstract Factory",
      ar: "المصنع المجرد (Abstract Factory)",
    ),
    description: LocalizedString(
      en: "Provides an interface for creating families of related objects without specifying their concrete classes",
      ar: "يوفر واجهة لإنشاء عائلات من الكائنات المترابطة دون تحديد فئاتها المحددة",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Abstract Factory pattern groups multiple factory methods together to ensure that products from the same family are created and used consistently. Each concrete factory produces a complete set of related products.",
        ),
        StringContent(
          "Think of it as a factory of factories. Instead of creating one type of object, it creates multiple related types that are designed to work together.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "AbstractFactory: Declares methods for creating abstract products",
            "ConcreteFactory: Implements methods to create concrete products of a specific family",
            "AbstractProduct: Declares interfaces for product types",
            "ConcreteProduct: Specific product implementations created by concrete factories",
          ],
        ),
        StringContent(
          "This pattern is especially powerful when you need to ensure that products from different families are not mixed together, maintaining consistency across your application.",
        ),
      ],
      ar: [
        StringContent(
          "نمط المصنع المجرد يجمع عدة طرق مصنع معاً لضمان إنشاء واستخدام المنتجات من نفس العائلة بشكل متسق. كل مصنع محدد ينتج مجموعة كاملة من المنتجات المترابطة.",
        ),
        StringContent(
          "فكر فيه كمصنع للمصانع. بدلاً من إنشاء نوع واحد من الكائنات، ينشئ أنواعاً متعددة مترابطة مصممة للعمل معاً.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "المصنع المجرد (AbstractFactory): يعلن عن طرق لإنشاء منتجات مجردة",
            "المصنع المحدد (ConcreteFactory): ينفذ الطرق لإنشاء منتجات محددة من عائلة معينة",
            "المنتج المجرد (AbstractProduct): يعلن عن واجهات لأنواع المنتجات",
            "المنتج المحدد (ConcreteProduct): تطبيقات منتج محددة تُنشأ بواسطة المصانع المحددة",
          ],
        ),
        StringContent(
          "هذا النمط قوي بشكل خاص عندما تحتاج للتأكد من عدم خلط منتجات من عائلات مختلفة معاً، مع الحفاظ على الاتساق عبر تطبيقك.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class Button {
  void render();
}

abstract class TextField {
  void render();
}

abstract class UIFactory {
  Button createButton();
  TextField createTextField();
}

class AndroidButton implements Button {
  @override
  void render() => print("Rendering Android button");
}

class AndroidTextField implements TextField {
  @override
  void render() => print("Rendering Android text field");
}

class AndroidFactory implements UIFactory {
  @override
  Button createButton() => AndroidButton();
  
  @override
  TextField createTextField() => AndroidTextField();
}

class IOSButton implements Button {
  @override
  void render() => print("Rendering iOS button");
}

class IOSTextField implements TextField {
  @override
  void render() => print("Rendering iOS text field");
}

class IOSFactory implements UIFactory {
  @override
  Button createButton() => IOSButton();
  
  @override
  TextField createTextField() => IOSTextField();
}

class Application {
  final UIFactory factory;
  
  Application(this.factory);
  
  void buildUI() {
    final button = factory.createButton();
    final textField = factory.createTextField();
    button.render();
    textField.render();
  }
}

void main() {
  final factory = IOSFactory();
  final app = Application(factory);
  app.buildUI();
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class Button {
  void render();
}

abstract class TextField {
  void render();
}

abstract class UIFactory {
  Button createButton();
  TextField createTextField();
}

class AndroidButton implements Button {
  @override
  void render() => print("عرض زر أندرويد");
}

class AndroidTextField implements TextField {
  @override
  void render() => print("عرض حقل نص أندرويد");
}

class AndroidFactory implements UIFactory {
  @override
  Button createButton() => AndroidButton();
  
  @override
  TextField createTextField() => AndroidTextField();
}

class IOSButton implements Button {
  @override
  void render() => print("عرض زر iOS");
}

class IOSTextField implements TextField {
  @override
  void render() => print("عرض حقل نص iOS");
}

class IOSFactory implements UIFactory {
  @override
  Button createButton() => IOSButton();
  
  @override
  TextField createTextField() => IOSTextField();
}

class Application {
  final UIFactory factory;
  
  Application(this.factory);
  
  void buildUI() {
    final button = factory.createButton();
    final textField = factory.createTextField();
    button.render();
    textField.render();
  }
}

void main() {
  final factory = IOSFactory();
  final app = Application(factory);
  app.buildUI();
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Ensures product compatibility within families",
        "Isolates concrete classes from client code",
        "Makes product family switching easy",
        "Follows Single Responsibility and Open/Closed principles",
      ],
      ar: [
        "يضمن توافق المنتجات ضمن العائلات",
        "يعزل الفئات المحددة عن كود العميل",
        "يسهّل تبديل عائلات المنتجات",
        "يتبع مبادئ المسؤولية الواحدة والمفتوح/المغلق",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Introduces many new interfaces and classes",
        "Can be overkill if product families are simple or fixed",
        "Difficult to add new product types to existing families",
        "Increases initial complexity",
      ],
      ar: [
        "يُدخل العديد من الواجهات والفئات الجديدة",
        "قد يكون مبالغاً فيه إذا كانت عائلات المنتجات بسيطة أو ثابتة",
        "صعوبة إضافة أنواع منتجات جديدة للعائلات الموجودة",
        "يزيد من التعقيد الأولي",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Abstract Factory when:"),
        UnorderedListContent(
          value: [
            "Your code needs to work with various families of related products",
            "You want to enforce that products from one family are used together",
            "You need to provide a library of products revealing only interfaces",
            "Product families are likely to change or expand",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم المصنع المجرد عندما:"),
        UnorderedListContent(
          value: [
            "يحتاج كودك للعمل مع عائلات مختلفة من المنتجات المترابطة",
            "تريد فرض استخدام منتجات من عائلة واحدة معاً",
            "تحتاج لتوفير مكتبة من المنتجات تكشف الواجهات فقط",
            "من المحتمل أن تتغير أو تتوسع عائلات المنتجات",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Confusing it with Factory Method - Abstract Factory creates families, not single products",
        "Using it when you only need to create one type of object",
        "Making factories too granular with too many create methods",
        "Not maintaining consistency between products in a family",
      ],
      ar: [
        "الخلط بينه وبين طريقة المصنع - المصنع المجرد ينشئ عائلات، ليس منتجات منفردة",
        "استخدامه عندما تحتاج فقط لإنشاء نوع واحد من الكائنات",
        "جعل المصانع دقيقة جداً مع عدد كبير من طرق الإنشاء",
        "عدم الحفاظ على الاتساق بين المنتجات في العائلة",
      ],
    ),
    relatedPatterns: [
      PatternKeys.factoryMethod,
      PatternKeys.singleton,
      PatternKeys.prototype,
    ],
    oftenConfusedWith: [PatternKeys.factoryMethod],
  ),
  PatternKeys.builder: DesignPattern(
    id: PatternKeys.builder,
    title: LocalizedString(en: "Builder", ar: "البناء (Builder)"),
    description: LocalizedString(
      en: "Separates object construction from its representation, allowing step-by-step creation of complex objects",
      ar: "يفصل بناء الكائن عن تمثيله، مما يسمح بإنشاء تدريجي للكائنات المعقدة",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Builder pattern constructs complex objects step by step. Unlike other creational patterns that construct products in one shot, Builder gives you fine control over the construction process.",
        ),
        StringContent(
          "This pattern is particularly useful when you need to create an object with many optional parameters or configurations, avoiding the \"telescoping constructor\" anti-pattern where you have multiple constructors with different parameter combinations.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Builder: Interface defining construction steps",
            "ConcreteBuilder: Implements steps and tracks the product being built",
            "Product: The complex object being constructed",
            "Director (optional): Orchestrates building steps in a specific order",
          ],
        ),
        StringContent(
          "In Dart, builders are often implemented as fluent interfaces where each method returns the builder itself, allowing method chaining.",
        ),
      ],
      ar: [
        StringContent(
          "نمط البناء (Builder) يبني الكائنات المعقدة خطوة بخطوة. على عكس الأنماط الإنشائية الأخرى التي تبني المنتجات دفعة واحدة، يمنحك البناء تحكماً دقيقاً في عملية البناء.",
        ),
        StringContent(
          "هذا النمط مفيد بشكل خاص عندما تحتاج لإنشاء كائن مع العديد من المعاملات أو الإعدادات الاختيارية، متجنباً نمط \"المُنشئ التلسكوبي\" المضاد حيث يكون لديك عدة مُنشئات مع مجموعات مختلفة من المعاملات.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "البناء (Builder): واجهة تحدد خطوات البناء",
            "البناء المحدد (ConcreteBuilder): ينفذ الخطوات ويتتبع المنتج الذي يتم بناؤه",
            "المنتج (Product): الكائن المعقد الذي يتم بناؤه",
            "المدير (Director) (اختياري): ينسق خطوات البناء بترتيب محدد",
          ],
        ),
        StringContent(
          "في Dart، غالباً ما تُنفذ أدوات البناء كواجهات انسيابية (fluent interfaces) حيث تُرجع كل طريقة أداة البناء نفسها، مما يسمح بتسلسل الطرق.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""class Pizza {
  final String crust;
  final int diameter;
  final List<String> toppings;
  
  Pizza._({
    required this.crust,
    required this.diameter,
    required this.toppings,
  });
}

class PizzaBuilder {
  String _crust = "regular";
  int _diameter = 12;
  final Set<String> _toppings = {};
  
  PizzaBuilder(this._diameter);
  
  PizzaBuilder setCrust(String crust) {
    _crust = crust;
    return this;
  }
  
  PizzaBuilder addTopping(String topping) {
    _toppings.add(topping);
    return this;
  }
  
  PizzaBuilder addToppings(List<String> toppings) {
    _toppings.addAll(toppings);
    return this;
  }
  
  void _ensureCheese() {
    if (!_toppings.contains("cheese")) {
      _toppings.add("cheese");
    }
  }
  
  Pizza build() {
    _ensureCheese();
    return Pizza._(
      crust: _crust,
      diameter: _diameter,
      toppings: _toppings.toList(),
    );
  }
}

void main() {
  final pizza = PizzaBuilder(16)
      .setCrust("thin")
      .addTopping("pepperoni")
      .addTopping("mushrooms")
      .build();
  
  print("Pizza: \${pizza.diameter} \${pizza.crust} crust");
  print("Toppings: \${pizza.toppings.join(", ")}");
}"""),
      ],
      ar: [
        StrCodeBlock("""class Pizza {
  final String crust;
  final int diameter;
  final List<String> toppings;
  
  Pizza._({
    required this.crust,
    required this.diameter,
    required this.toppings,
  });
}

class PizzaBuilder {
  String _crust = "عادية";
  int _diameter = 12;
  final Set<String> _toppings = {};
  
  PizzaBuilder(this._diameter);
  
  PizzaBuilder setCrust(String crust) {
    _crust = crust;
    return this;
  }
  
  PizzaBuilder addTopping(String topping) {
    _toppings.add(topping);
    return this;
  }
  
  PizzaBuilder addToppings(List<String> toppings) {
    _toppings.addAll(toppings);
    return this;
  }
  
  void _ensureCheese() {
    if (!_toppings.contains("جبنة")) {
      _toppings.add("جبنة");
    }
  }
  
  Pizza build() {
    _ensureCheese();
    return Pizza._(
      crust: _crust,
      diameter: _diameter,
      toppings: _toppings.toList(),
    );
  }
}

void main() {
  final pizza = PizzaBuilder(16)
      .setCrust("رقيقة")
      .addTopping("بيبروني")
      .addTopping("فطر")
      .build();
  
  print("بيتزا: \${pizza.diameter}" قاعدة \${pizza.crust}");
  print("الإضافات: \${pizza.toppings.join("، ")}");
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Constructs objects step-by-step with fine control",
        "Allows reusing construction code for different representations",
        "Isolates complex construction logic (Single Responsibility)",
        "Avoids telescoping constructors",
      ],
      ar: [
        "يبني الكائنات خطوة بخطوة مع تحكم دقيق",
        "يسمح بإعادة استخدام كود البناء لتمثيلات مختلفة",
        "يعزل منطق البناء المعقد (المسؤولية الواحدة)",
        "يتجنب المُنشئات التلسكوبية",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Increases code complexity with additional builder classes",
        "Requires creating a new concrete builder for each product type",
        "May be overkill for simple object construction",
        "Adds verbosity to the codebase",
      ],
      ar: [
        "يزيد من تعقيد الكود مع فئات بناء إضافية",
        "يتطلب إنشاء بناء محدد جديد لكل نوع منتج",
        "قد يكون مبالغاً فيه لبناء الكائنات البسيطة",
        "يضيف طولاً للكود البرمجي",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Builder when:"),
        UnorderedListContent(
          value: [
            "You need to construct complex objects with many optional parameters",
            "You want to create different representations using the same construction process",
            "You need to build composite tree structures step-by-step",
            "Object construction requires multiple steps in a specific order",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم البناء عندما:"),
        UnorderedListContent(
          value: [
            "تحتاج لبناء كائنات معقدة مع العديد من المعاملات الاختيارية",
            "تريد إنشاء تمثيلات مختلفة باستخدام نفس عملية البناء",
            "تحتاج لبناء هياكل شجرية مركبة خطوة بخطوة",
            "يتطلب بناء الكائن خطوات متعددة بترتيب محدد",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Over-generalizing builder steps, making code hard to understand",
        "Not separating building steps meaningfully",
        "Using Director when it hides needed customization",
        "Forgetting to validate required fields before calling build()",
      ],
      ar: [
        "التعميم المفرط لخطوات البناء، مما يجعل الكود صعب الفهم",
        "عدم فصل خطوات البناء بشكل مفيد",
        "استخدام المدير (Director) عندما يخفي التخصيص المطلوب",
        "نسيان التحقق من الحقول المطلوبة قبل استدعاء ()build",
      ],
    ),
    relatedPatterns: [
      PatternKeys.abstractFactory,
      PatternKeys.composite,
      PatternKeys.singleton,
    ],
    oftenConfusedWith: [PatternKeys.factoryMethod],
  ),
  PatternKeys.prototype: DesignPattern(
    id: PatternKeys.prototype,
    title: LocalizedString(en: "Prototype", ar: "النموذج الأولي (Prototype)"),
    description: LocalizedString(
      en: "Creates new objects by copying existing instances, avoiding dependency on concrete classes",
      ar: "ينشئ كائنات جديدة من خلال نسخ نماذج موجودة، متجنباً الاعتماد على الفئات المحددة",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Prototype pattern creates new objects by cloning existing ones rather than constructing them from scratch. This is particularly useful when object creation is expensive or complex.",
        ),
        StringContent(
          "Instead of using the new keyword and constructors, you call a clone() method on a prototype instance. This approach decouples your code from concrete classes and can dramatically improve performance when creating similar objects.",
        ),
        UnorderedListContent(
          title: "Key Concepts:",
          value: [
            "Prototype: Declares a cloning interface (typically a clone() method)",
            "ConcretePrototype: Implements the cloning method",
            "Client: Creates new objects by asking prototypes to clone themselves",
          ],
        ),
        StringContent(
          "In Dart, this is often implemented using copy constructors or factory constructors that create copies of existing objects.",
        ),
      ],
      ar: [
        StringContent(
          "نمط النموذج الأولي ينشئ كائنات جديدة من خلال استنساخ كائنات موجودة بدلاً من بنائها من الصفر. هذا مفيد بشكل خاص عندما يكون إنشاء الكائن مكلفاً أو معقداً.",
        ),
        StringContent(
          "بدلاً من استخدام الكلمة المفتاحية new والمُنشئات، تستدعي طريقة ()clone على نموذج أولي موجود. هذا النهج يفصل كودك عن الفئات المحددة ويمكن أن يحسّن الأداء بشكل كبير عند إنشاء كائنات متشابهة.",
        ),
        UnorderedListContent(
          title: "المفاهيم الأساسية:",
          value: [
            "النموذج الأولي (Prototype): يعلن عن واجهة الاستنساخ (عادةً طريقة ()clone)",
            "النموذج الأولي المحدد (ConcretePrototype): ينفذ طريقة الاستنساخ",
            "العميل (Client): ينشئ كائنات جديدة من خلال طلب استنساخ النماذج الأولية",
          ],
        ),
        StringContent(
          "في Dart، غالباً ما يُنفذ هذا باستخدام مُنشئات النسخ (copy constructors) أو مُنشئات المصنع التي تنشئ نسخاً من الكائنات الموجودة.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class Shape {
  int x;
  int y;
  String color;
  
  Shape(this.x, this.y, this.color);
  
  Shape clone();
  
  void draw() {
    print("Drawing \$runtimeType at (\$x, \$y) with color \$color");
  }
}

class Rectangle extends Shape {
  int width;
  int height;
  
  Rectangle(int x, int y, String color, this.width, this.height) 
      : super(x, y, color);
  
  Rectangle._copy(Rectangle source)
      : width = source.width,
        height = source.height,
        super(source.x, source.y, source.color);
  
  @override
  Rectangle clone() => Rectangle._copy(this);
}

class Circle extends Shape {
  int radius;
  
  Circle(int x, int y, String color, this.radius) 
      : super(x, y, color);
  
  Circle._copy(Circle source)
      : radius = source.radius,
        super(source.x, source.y, source.color);
  
  @override
  Circle clone() => Circle._copy(this);
}

void main() {
  final redCircle = Circle(10, 10, "red", 5);
  final blueCircle = redCircle.clone()
    ..color = "blue"
    ..x = 20;
  
  redCircle.draw();
  blueCircle.draw();
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class Shape {
  int x;
  int y;
  String color;
  
  Shape(this.x, this.y, this.color);
  
  Shape clone();
  
  void draw() {
    print("رسم \$runtimeType عند (\$x، \$y) باللون \$color");
  }
}

class Rectangle extends Shape {
  int width;
  int height;
  
  Rectangle(int x, int y, String color, this.width, this.height) 
      : super(x, y, color);
  
  Rectangle._copy(Rectangle source)
      : width = source.width,
        height = source.height,
        super(source.x, source.y, source.color);
  
  @override
  Rectangle clone() => Rectangle._copy(this);
}

class Circle extends Shape {
  int radius;
  
  Circle(int x, int y, String color, this.radius) 
      : super(x, y, color);
  
  Circle._copy(Circle source)
      : radius = source.radius,
        super(source.x, source.y, source.color);
  
  @override
  Circle clone() => Circle._copy(this);
}

void main() {
  final redCircle = Circle(10, 10, "أحمر", 5);
  final blueCircle = redCircle.clone()
    ..color = "أزرق"
    ..x = 20;
  
  redCircle.draw();
  blueCircle.draw();
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Avoids coupling to concrete classes",
        "Eliminates need for complex initialization",
        "Can be faster than creating objects from scratch",
        "Reduces subclass proliferation in some cases",
      ],
      ar: [
        "يتجنب الاقتران بالفئات المحددة",
        "يلغي الحاجة للتهيئة المعقدة",
        "يمكن أن يكون أسرع من إنشاء الكائنات من الصفر",
        "يقلل من تكاثر الفئات الفرعية في بعض الحالات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Cloning objects with circular references can be tricky",
        "Deep copying complex objects requires careful implementation",
        "Every class must implement correct copy logic",
        "Can be complex with objects that have many dependencies",
      ],
      ar: [
        "استنساخ الكائنات ذات المراجع الدائرية قد يكون صعباً",
        "النسخ العميق للكائنات المعقدة يتطلب تنفيذاً دقيقاً",
        "يجب على كل فئة تنفيذ منطق نسخ صحيح",
        "قد يكون معقداً مع الكائنات التي لديها العديد من التبعيات",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Prototype when:"),
        UnorderedListContent(
          value: [
            "Object creation is expensive (e.g., requires database queries)",
            "You need many similar objects with slight variations",
            "You want to avoid subclass proliferation",
            "Classes to instantiate are specified at runtime",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم النموذج الأولي عندما:"),
        UnorderedListContent(
          value: [
            "إنشاء الكائن مكلف (مثلاً، يتطلب استعلامات قاعدة بيانات)",
            "تحتاج للعديد من الكائنات المتشابهة مع اختلافات طفيفة",
            "تريد تجنب تكاثر الفئات الفرعية",
            "الفئات المراد إنشاؤها تُحدد في وقت التشغيل",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Forgetting to deep copy mutable fields, causing shared state bugs",
        "Not handling circular references properly",
        "Overusing when simple construction would suffice",
        "Not implementing proper equality checks for cloned objects",
      ],
      ar: [
        "نسيان النسخ العميق للحقول القابلة للتغيير، مما يسبب أخطاء الحالة المشتركة",
        "عدم التعامل مع المراجع الدائرية بشكل صحيح",
        "الإفراط في الاستخدام عندما يكفي البناء البسيط",
        "عدم تنفيذ فحوصات مساواة مناسبة للكائنات المستنسخة",
      ],
    ),
    relatedPatterns: [
      PatternKeys.abstractFactory,
      PatternKeys.composite,
      PatternKeys.decorator,
    ],
    oftenConfusedWith: [PatternKeys.factoryMethod],
  ),
  PatternKeys.singleton: DesignPattern(
    id: PatternKeys.singleton,
    title: LocalizedString(en: "Singleton", ar: "المفرد (Singleton)"),
    description: LocalizedString(
      en: "Ensures a class has only one instance and provides global access to it",
      ar: "يضمن أن الفئة لها نسخة واحدة فقط ويوفر وصولاً عالمياً إليها",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Singleton pattern restricts instantiation of a class to a single instance and provides a global point of access to that instance. This is achieved through a private constructor and a static method that returns the sole instance.",
        ),
        StringContent(
          "While Singleton is one of the most well-known patterns, it\"s also one of the most controversial. Modern software development often favors dependency injection over singletons due to better testability and reduced global state.",
        ),
        UnorderedListContent(
          title: "Common Use Cases:",
          value: [
            "Logging systems",
            "Configuration managers",
            "Database connections",
            "Caching mechanisms",
            "Thread pools",
          ],
        ),
        StringContent(
          "However, use singletons sparingly. They introduce global state which can make testing difficult and hide dependencies between classes.",
        ),
      ],
      ar: [
        StringContent(
          "نمط المفرد (Singleton) يقيّد إنشاء الفئة إلى نسخة واحدة فقط ويوفر نقطة وصول عالمية لتلك النسخة. يتحقق هذا من خلال مُنشئ خاص وطريقة ثابتة تُرجع النسخة الوحيدة.",
        ),
        StringContent(
          "بينما المفرد هو أحد أشهر الأنماط، فهو أيضاً أحد أكثرها إثارة للجدل. غالباً ما تفضل البرمجة الحديثة حقن الاعتمادية (Dependency Injection) على المفرد بسبب قابلية الاختبار الأفضل وتقليل الحالة العالمية.",
        ),
        UnorderedListContent(
          title: "حالات الاستخدام الشائعة:",
          value: [
            "أنظمة التسجيل (Logging)",
            "مديرو الإعدادات (Configuration)",
            "اتصالات قاعدة البيانات",
            "آليات التخزين المؤقت (Caching)",
            "مجموعات الخيوط (Thread pools)",
          ],
        ),
        StringContent(
          "مع ذلك، استخدم المفرد باعتدال. يُدخل حالة عالمية يمكن أن تجعل الاختبار صعباً وتخفي التبعيات بين الفئات.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""class Logger {
  Logger._internal();
  
  static final Logger _instance = Logger._internal();
  
  static Logger get instance => _instance;
  
  factory Logger() => _instance;
  
  void log(String message) {
    print("[\${DateTime.now()}] \$message");
  }
}

class ConfigManager {
  final Map<String, dynamic> _config = {};
  
  ConfigManager._internal();
  
  static final ConfigManager _instance = ConfigManager._internal();
  
  static ConfigManager get instance => _instance;
  
  void set(String key, dynamic value) => _config[key] = value;
  
  dynamic get(String key) => _config[key];
}

void main() {
  final logger1 = Logger.instance;
  final logger2 = Logger();
  
  print(identical(logger1, logger2)); // true
  
  logger1.log("Application started");
  
  ConfigManager.instance.set("apiUrl", "https://api.example.com");
  print(ConfigManager.instance.get("apiUrl"));
}"""),
      ],
      ar: [
        StrCodeBlock("""class Logger {
  Logger._internal();
  
  static final Logger _instance = Logger._internal();
  
  static Logger get instance => _instance;
  
  factory Logger() => _instance;
  
  void log(String message) {
    print("[\${DateTime.now()}] \$message");
  }
}

class ConfigManager {
  final Map<String, dynamic> _config = {};
  
  ConfigManager._internal();
  
  static final ConfigManager _instance = ConfigManager._internal();
  
  static ConfigManager get instance => _instance;
  
  void set(String key, dynamic value) => _config[key] = value;
  
  dynamic get(String key) => _config[key];
}

void main() {
  final logger1 = Logger.instance;
  final logger2 = Logger();
  
  print(identical(logger1, logger2)); // true
  
  logger1.log("بدء التطبيق");
  
  ConfigManager.instance.set("apiUrl", "https://api.example.com");
  print(ConfigManager.instance.get("apiUrl"));
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Guarantees only one instance exists",
        "Provides global access point",
        "Lazy initialization possible",
        "Saves memory by reusing instance",
      ],
      ar: [
        "يضمن وجود نسخة واحدة فقط",
        "يوفر نقطة وصول عالمية",
        "يمكن التهيئة الكسولة (Lazy initialization)",
        "يوفر الذاكرة من خلال إعادة استخدام النسخة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Creates global state, making testing difficult",
        "Violates Single Responsibility Principle",
        "Can become a bottleneck in concurrent applications",
        "Hides dependencies between classes",
      ],
      ar: [
        "ينشئ حالة عالمية، مما يجعل الاختبار صعباً",
        "ينتهك مبدأ المسؤولية الواحدة",
        "قد يصبح عنق زجاجة في التطبيقات المتزامنة",
        "يخفي التبعيات بين الفئات",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Singleton when:"),
        UnorderedListContent(
          value: [
            "Exactly one instance is needed system-wide",
            "The instance must be accessible globally",
            "You need strict control over instance creation",
            "The single instance should be extensible by subclassing",
          ],
        ),
        StringContent(
          "Consider alternatives like dependency injection in most cases for better testability.",
        ),
      ],
      ar: [
        StringContent("استخدم المفرد عندما:"),
        UnorderedListContent(
          value: [
            "تحتاج نسخة واحدة بالضبط على مستوى النظام",
            "يجب أن تكون النسخة متاحة عالمياً",
            "تحتاج تحكماً صارماً في إنشاء النسخة",
            "يجب أن تكون النسخة الواحدة قابلة للتوسيع عبر الفئات الفرعية",
          ],
        ),
        StringContent(
          "ضع في اعتبارك بدائل مثل حقن الاعتمادية في معظم الحالات لقابلية اختبار أفضل.",
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Overusing singletons for every shared resource",
        "Not considering thread safety in concurrent environments",
        "Making singletons with mutable state",
        "Using Singleton when Dependency Injection would be better",
      ],
      ar: [
        "الإفراط في استخدام المفرد لكل مورد مشترك",
        "عدم مراعاة أمان الخيوط في البيئات المتزامنة",
        "إنشاء مفردات بحالة قابلة للتغيير",
        "استخدام المفرد عندما يكون حقن الاعتمادية أفضل",
      ],
    ),
    relatedPatterns: [
      PatternKeys.abstractFactory,
      PatternKeys.facade,
      PatternKeys.flyweight,
    ],
    // oftenConfusedWith: ["static-class"],
  ),
  PatternKeys.objectPool: DesignPattern(
    id: PatternKeys.objectPool,
    title: LocalizedString(
      en: "Object Pool",
      ar: "تجمع الكائنات (Object Pool)",
    ),
    description: LocalizedString(
      en: "Manages a pool of reusable objects to improve performance by avoiding expensive creation and destruction",
      ar: "يدير مجموعة من الكائنات القابلة لإعادة الاستخدام لتحسين الأداء بتجنب الإنشاء والإتلاف المكلفين",
    ),
    group: .design,
    type: .creational,
    category: .practical,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "Object Pool maintains a set of initialized objects ready for use. Instead of creating and destroying objects repeatedly, clients borrow objects from the pool, use them, and return them for reuse.",
        ),
        StringContent(
          "This pattern is particularly valuable when object creation is expensive (database connections, thread creation, large buffers) and you need many short-lived instances.",
        ),
        UnorderedListContent(
          title: "Key Concepts:",
          value: [
            "Pool: Manages available and in-use objects",
            "Acquire: Retrieves an available object from the pool",
            "Release: Returns an object to the pool for reuse",
            "Validation: Ensures returned objects are in valid state",
          ],
        ),
        StringContent(
          "Modern garbage collectors are highly optimized, so object pooling is only beneficial for truly expensive objects or in performance-critical scenarios.",
        ),
      ],
      ar: [
        StringContent(
          "تجمع الكائنات يحتفظ بمجموعة من الكائنات المُهيأة الجاهزة للاستخدام. بدلاً من إنشاء وإتلاف الكائنات بشكل متكرر، يستعير العملاء كائنات من التجمع، ويستخدمونها، ثم يعيدونها لإعادة الاستخدام.",
        ),
        StringContent(
          "هذا النمط ذو قيمة خاصة عندما يكون إنشاء الكائن مكلفاً (اتصالات قاعدة البيانات، إنشاء الخيوط، المخازن الكبيرة) وتحتاج للعديد من النسخ قصيرة العمر.",
        ),
        UnorderedListContent(
          title: "المفاهيم الأساسية:",
          value: [
            "التجمع (Pool): يدير الكائنات المتاحة والمستخدمة",
            "الحصول (Acquire): يسترجع كائناً متاحاً من التجمع",
            "الإطلاق (Release): يُعيد كائناً للتجمع لإعادة الاستخدام",
            "التحقق (Validation): يضمن أن الكائنات المُعادة في حالة صالحة",
          ],
        ),
        StringContent(
          "جامعو القمامة الحديثون مُحسّنون للغاية، لذا يكون تجميع الكائنات مفيداً فقط للكائنات المكلفة حقاً أو في السيناريوهات الحرجة للأداء.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""class DatabaseConnection {
  final String connectionString;
  bool _isOpen = false;
  
  DatabaseConnection(this.connectionString);
  
  void open() {
    _isOpen = true;
    print("Opening connection: \$connectionString");
  }
  
  void close() {
    _isOpen = false;
    print("Closing connection");
  }
  
  void reset() {
    print("Resetting connection state");
  }
  
  bool get isOpen => _isOpen;
}

class ConnectionPool {
  final List<DatabaseConnection> _available = [];
  final List<DatabaseConnection> _inUse = [];
  final String connectionString;
  final int maxSize;
  
  ConnectionPool(this.connectionString, {this.maxSize = 10});
  
  DatabaseConnection acquire() {
    if (_available.isEmpty && _inUse.length < maxSize) {
      final connection = DatabaseConnection(connectionString);
      connection.open();
      return connection;
    }
    
    if (_available.isNotEmpty) {
      final connection = _available.removeLast();
      _inUse.add(connection);
      return connection;
    }
    
    throw Exception("Pool exhausted");
  }
  
  void release(DatabaseConnection connection) {
    if (_inUse.remove(connection)) {
      connection.reset();
      _available.add(connection);
    }
  }
  
  void dispose() {
    for (final conn in [..._available, ..._inUse]) {
      conn.close();
    }
    _available.clear();
    _inUse.clear();
  }
}

void main() {
  final pool = ConnectionPool("Server=localhost;Database=test", maxSize: 3);
  
  final conn1 = pool.acquire();
  final conn2 = pool.acquire();
  
  pool.release(conn1);
  final conn3 = pool.acquire(); // Reuses conn1
  
  pool.dispose();
}"""),
      ],
      ar: [
        StrCodeBlock("""class DatabaseConnection {
  final String connectionString;
  bool _isOpen = false;
  
  DatabaseConnection(this.connectionString);
  
  void open() {
    _isOpen = true;
    print("فتح الاتصال: \$connectionString");
  }
  
  void close() {
    _isOpen = false;
    print("إغلاق الاتصال");
  }
  
  void reset() {
    print("إعادة تعيين حالة الاتصال");
  }
  
  bool get isOpen => _isOpen;
}

class ConnectionPool {
  final List<DatabaseConnection> _available = [];
  final List<DatabaseConnection> _inUse = [];
  final String connectionString;
  final int maxSize;
  
  ConnectionPool(this.connectionString, {this.maxSize = 10});
  
  DatabaseConnection acquire() {
    if (_available.isEmpty && _inUse.length < maxSize) {
      final connection = DatabaseConnection(connectionString);
      connection.open();
      return connection;
    }
    
    if (_available.isNotEmpty) {
      final connection = _available.removeLast();
      _inUse.add(connection);
      return connection;
    }
    
    throw Exception("التجمع مُستنفد");
  }
  
  void release(DatabaseConnection connection) {
    if (_inUse.remove(connection)) {
      connection.reset();
      _available.add(connection);
    }
  }
  
  void dispose() {
    for (final conn in [..._available, ..._inUse]) {
      conn.close();
    }
    _available.clear();
    _inUse.clear();
  }
}

void main() {
  final pool = ConnectionPool("Server=localhost;Database=test", maxSize: 3);
  
  final conn1 = pool.acquire();
  final conn2 = pool.acquire();
  
  pool.release(conn1);
  final conn3 = pool.acquire(); // يعيد استخدام conn1
  
  pool.dispose();
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Significantly improves performance for expensive object creation",
        "Reduces garbage collection pressure",
        "Predictable resource usage",
        "Better control over resource limits",
      ],
      ar: [
        "يحسّن الأداء بشكل كبير لإنشاء الكائنات المكلفة",
        "يقلل ضغط جمع القمامة",
        "استخدام موارد قابل للتنبؤ",
        "تحكم أفضل في حدود الموارد",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Adds complexity to manage object lifecycle",
        "Stale state bugs if objects aren\"t properly reset",
        "Thread safety concerns in concurrent environments",
        "Memory waste if pool grows too large",
      ],
      ar: [
        "يضيف تعقيداً لإدارة دورة حياة الكائن",
        "أخطاء الحالة القديمة إذا لم يتم إعادة تعيين الكائنات بشكل صحيح",
        "مخاوف أمان الخيوط في البيئات المتزامنة",
        "هدر الذاكرة إذا نما التجمع بشكل كبير جداً",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Object Pool when:"),
        UnorderedListContent(
          value: [
            "Object creation/destruction is demonstrably expensive",
            "You need many short-lived instances",
            "Resource limits must be enforced (e.g., max database connections)",
            "Performance profiling shows object creation as a bottleneck",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم تجمع الكائنات عندما:"),
        UnorderedListContent(
          value: [
            "إنشاء/إتلاف الكائن مكلف بشكل واضح",
            "تحتاج للعديد من النسخ قصيرة العمر",
            "يجب فرض حدود الموارد (مثل أقصى عدد لاتصالات قاعدة البيانات)",
            "تُظهر مراقبة الأداء أن إنشاء الكائن عنق زجاجة",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Pooling objects where creation is actually cheap",
        "Not resetting object state before returning to pool",
        "Allowing two threads to use the same pooled object",
        "Creating pools that grow unbounded",
      ],
      ar: [
        "تجميع كائنات حيث الإنشاء فعلياً رخيص",
        "عدم إعادة تعيين حالة الكائن قبل الإرجاع للتجمع",
        "السماح لخيطين باستخدام نفس الكائن المُجمّع",
        "إنشاء تجمعات تنمو بلا حدود",
      ],
    ),
    relatedPatterns: [
      PatternKeys.singleton,
      PatternKeys.factoryMethod,
      PatternKeys.flyweight,
    ],
    oftenConfusedWith: [PatternKeys.flyweight],
  ),
  PatternKeys.lazyInitialization: DesignPattern(
    id: PatternKeys.lazyInitialization,
    title: LocalizedString(
      en: "Lazy Initialization",
      ar: "التهيئة الكسولة (Lazy Initialization)",
    ),
    description: LocalizedString(
      en: "Defers object creation or value computation until first access",
      ar: "يؤجل إنشاء الكائن أو حساب القيمة حتى الوصول الأول",
    ),
    group: .design,
    type: .creational,
    category: .practical,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "Lazy Initialization postpones the creation of an object, calculation of a value, or execution of expensive operation until it\"s actually needed. This can significantly improve application startup time and reduce memory usage.",
        ),
        StringContent(
          "The pattern is implemented by checking if a resource has been initialized before accessing it. If not, it\"s created on-the-spot; otherwise, the cached instance is returned.",
        ),
        UnorderedListContent(
          title: "Common Applications:",
          value: [
            "Database connections that may not be needed",
            "Heavy computational results",
            "Large data structures",
            "Expensive I/O operations",
          ],
        ),
        StringContent(
          "In Dart, the late keyword provides built-in support for lazy initialization, making this pattern easy to implement.",
        ),
      ],
      ar: [
        StringContent(
          "التهيئة الكسولة تؤجل إنشاء الكائن، أو حساب القيمة، أو تنفيذ العملية المكلفة حتى الحاجة الفعلية لها. هذا يمكن أن يحسّن بشكل كبير وقت بدء التطبيق ويقلل استخدام الذاكرة.",
        ),
        StringContent(
          "يُنفذ النمط من خلال التحقق مما إذا تم تهيئة المورد قبل الوصول إليه. إن لم يكن، يتم إنشاؤه في الحال؛ وإلا، تُرجع النسخة المُخزنة مؤقتاً.",
        ),
        UnorderedListContent(
          title: "التطبيقات الشائعة:",
          value: [
            "اتصالات قاعدة البيانات التي قد لا تكون مطلوبة",
            "نتائج حسابية ثقيلة",
            "هياكل بيانات كبيرة",
            "عمليات إدخال/إخراج مكلفة",
          ],
        ),
        StringContent(
          "في Dart، توفر الكلمة المفتاحية late دعماً مدمجاً للتهيئة الكسولة، مما يجعل تنفيذ هذا النمط سهلاً.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""class ExpensiveResource {
  ExpensiveResource._() {
    print("Creating expensive resource...");
    _loadData();
  }
  
  void _loadData() {
    // Simulate expensive initialization
    print("Loading heavy data...");
  }
  
  static ExpensiveResource? _instance;
  
  static ExpensiveResource get instance {
    _instance ??= ExpensiveResource._();
    return _instance!;
  }
  
  void useResource() {
    print("Using resource");
  }
}

class DataCache {
  late final Map<String, dynamic> _cache = _loadCache();
  
  Map<String, dynamic> _loadCache() {
    print("Loading cache from disk...");
    return {"key": "value"};
  }
  
  dynamic get(String key) => _cache[key];
}

class ModernLazyExample {
  late String expensiveValue = _computeValue();
  
  String _computeValue() {
    print("Computing expensive value...");
    return "result";
  }
}

void main() {
  print("App started");
  
  final resource = ExpensiveResource.instance;
  resource.useResource();
  
  final modern = ModernLazyExample();
  print("Object created");
  print(modern.expensiveValue); // Computed here
  print(modern.expensiveValue); // Cached
}"""),
      ],
      ar: [
        StrCodeBlock("""class ExpensiveResource {
  ExpensiveResource._() {
    print("إنشاء مورد مكلف...");
    _loadData();
  }
  
  void _loadData() {
    // محاكاة تهيئة مكلفة
    print("تحميل بيانات ثقيلة...");
  }
  
  static ExpensiveResource? _instance;
  
  static ExpensiveResource get instance {
    _instance ??= ExpensiveResource._();
    return _instance!;
  }
  
  void useResource() {
    print("استخدام المورد");
  }
}

class DataCache {
  late final Map<String, dynamic> _cache = _loadCache();
  
  Map<String, dynamic> _loadCache() {
    print("تحميل الذاكرة المؤقتة من القرص...");
    return {"key": "value"};
  }
  
  dynamic get(String key) => _cache[key];
}

class ModernLazyExample {
  late String expensiveValue = _computeValue();
  
  String _computeValue() {
    print("حساب قيمة مكلفة...");
    return "نتيجة";
  }
}

void main() {
  print("بدء التطبيق");
  
  final resource = ExpensiveResource.instance;
  resource.useResource();
  
  final modern = ModernLazyExample();
  print("تم إنشاء الكائن");
  print(modern.expensiveValue); // يُحسب هنا
  print(modern.expensiveValue); // مُخزن مؤقتاً
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Improves application startup time",
        "Reduces initial memory footprint",
        "Avoids unnecessary work for unused features",
        "Spreads initialization cost over time",
      ],
      ar: [
        "يحسّن وقت بدء التطبيق",
        "يقلل البصمة الأولية للذاكرة",
        "يتجنب العمل غير الضروري للميزات غير المستخدمة",
        "ينشر تكلفة التهيئة على مدى الوقت",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Adds conditional overhead on each access",
        "Can cause unexpected delays when first accessed",
        "Requires thread safety in concurrent environments",
        "Not beneficial if resource is always needed",
      ],
      ar: [
        "يضيف عبئاً شرطياً في كل وصول",
        "قد يسبب تأخيرات غير متوقعة عند الوصول الأول",
        "يتطلب أمان الخيوط في البيئات المتزامنة",
        "غير مفيد إذا كان المورد مطلوباً دائماً",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Lazy Initialization when:"),
        UnorderedListContent(
          value: [
            "Object creation is expensive and usage is uncertain",
            "You want to optimize application startup time",
            "Resource may never be needed in some execution paths",
            "Initialization depends on runtime configuration",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم التهيئة الكسولة عندما:"),
        UnorderedListContent(
          value: [
            "إنشاء الكائن مكلف والاستخدام غير مؤكد",
            "تريد تحسين وقت بدء التطبيق",
            "قد لا يكون المورد مطلوباً أبداً في بعض مسارات التنفيذ",
            "تعتمد التهيئة على إعدادات وقت التشغيل",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Using lazy initialization when resource is always needed",
        "Not handling thread safety properly in concurrent code",
        "Over-optimizing with lazy init for cheap operations",
        "Forgetting to handle initialization failures",
      ],
      ar: [
        "استخدام التهيئة الكسولة عندما يكون المورد مطلوباً دائماً",
        "عدم التعامل مع أمان الخيوط بشكل صحيح في الكود المتزامن",
        "الإفراط في التحسين مع التهيئة الكسولة للعمليات الرخيصة",
        "نسيان التعامل مع فشل التهيئة",
      ],
    ),
    relatedPatterns: [
      PatternKeys.singleton,
      PatternKeys.proxy,
      PatternKeys.factoryMethod,
    ],
    oftenConfusedWith: [PatternKeys.proxy],
  ),
  PatternKeys.multiton: DesignPattern(
    id: PatternKeys.multiton,
    title: LocalizedString(en: "Multiton", ar: "المتعدد (Multiton)"),
    description: LocalizedString(
      en: "Ensures a class has a limited number of named instances, one per unique key",
      ar: "يضمن أن الفئة لها عدد محدود من النسخ المسماة، واحدة لكل مفتاح فريد",
    ),
    group: .design,
    type: .creational,
    category: .practical,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "Multiton extends the Singleton concept to manage multiple named instances. Instead of one global instance, you have one instance per key, stored in a registry.",
        ),
        StringContent(
          "This pattern is useful when you need a controlled number of instances that are identified by keys, such as database connection pools for different databases or configuration objects for different environments.",
        ),
        UnorderedListContent(
          title: "Key Characteristics:",
          value: [
            "Maintains a map of instances keyed by identifier",
            "Returns existing instance for a key or creates new one",
            "Each key maps to exactly one instance",
            "Provides centralized access to named instances",
          ],
        ),
        StringContent(
          "Like Singleton, Multiton should be used sparingly as it introduces global state, but it\"s more flexible when you need multiple well-defined instances.",
        ),
      ],
      ar: [
        StringContent(
          "المتعدد (Multiton) يوسّع مفهوم المفرد لإدارة نسخ متعددة مسماة. بدلاً من نسخة عالمية واحدة، لديك نسخة واحدة لكل مفتاح، مُخزنة في سجل.",
        ),
        StringContent(
          "هذا النمط مفيد عندما تحتاج لعدد محدود من النسخ المُحددة بمفاتيح، مثل تجمعات اتصال قاعدة البيانات لقواعد بيانات مختلفة أو كائنات إعدادات لبيئات مختلفة.",
        ),
        UnorderedListContent(
          title: "الخصائص الأساسية:",
          value: [
            "يحتفظ بخريطة من النسخ بمفاتيح محددة",
            "يُرجع نسخة موجودة لمفتاح أو ينشئ واحدة جديدة",
            "كل مفتاح يُربط بنسخة واحدة بالضبط",
            "يوفر وصولاً مركزياً للنسخ المسماة",
          ],
        ),
        StringContent(
          "مثل المفرد، يجب استخدام المتعدد باعتدال لأنه يُدخل حالة عالمية، لكنه أكثر مرونة عندما تحتاج لنسخ متعددة محددة جيداً.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""class DatabaseConnection {
  final String database;
  
  DatabaseConnection._(this.database) {
    print("Creating connection to \$database");
  }
  
  static final Map<String, DatabaseConnection> _instances = {};
  
  factory DatabaseConnection(String database) {
    return _instances.putIfAbsent(
      database,
      () => DatabaseConnection._(database),
    );
  }
  
  void query(String sql) {
    print("[\$database] Executing: \$sql");
  }
}

class Logger {
  final String category;
  
  Logger._(this.category);
  
  static final Map<String, Logger> _loggers = {};
  
  factory Logger.forCategory(String category) {
    return _loggers.putIfAbsent(
      category,
      () => Logger._(category),
    );
  }
  
  void log(String message) {
    print("[\$category] \$message");
  }
}

void main() {
  final userDb1 = DatabaseConnection("users");
  final userDb2 = DatabaseConnection("users");
  print(identical(userDb1, userDb2)); // true
  
  final ordersDb = DatabaseConnection("orders");
  print(identical(userDb1, ordersDb)); // false
  
  userDb1.query("SELECT * FROM users");
  ordersDb.query("SELECT * FROM orders");
  
  final authLogger = Logger.forCategory("auth");
  final dbLogger = Logger.forCategory("database");
  authLogger.log("User logged in");
  dbLogger.log("Query executed");
}"""),
      ],
      ar: [
        StrCodeBlock("""class DatabaseConnection {
  final String database;
  
  DatabaseConnection._(this.database) {
    print("إنشاء اتصال بـ \$database");
  }
  
  static final Map<String, DatabaseConnection> _instances = {};
  
  factory DatabaseConnection(String database) {
    return _instances.putIfAbsent(
      database,
      () => DatabaseConnection._(database),
    );
  }
  
  void query(String sql) {
    print("[\$database] تنفيذ: \$sql");
  }
}

class Logger {
  final String category;
  
  Logger._(this.category);
  
  static final Map<String, Logger> _loggers = {};
  
  factory Logger.forCategory(String category) {
    return _loggers.putIfAbsent(
      category,
      () => Logger._(category),
    );
  }
  
  void log(String message) {
    print("[\$category] \$message");
  }
}

void main() {
  final userDb1 = DatabaseConnection("users");
  final userDb2 = DatabaseConnection("users");
  print(identical(userDb1, userDb2)); // true
  
  final ordersDb = DatabaseConnection("orders");
  print(identical(userDb1, ordersDb)); // false
  
  userDb1.query("SELECT * FROM users");
  ordersDb.query("SELECT * FROM orders");
  
  final authLogger = Logger.forCategory("auth");
  final dbLogger = Logger.forCategory("database");
  authLogger.log("تسجيل دخول المستخدم");
  dbLogger.log("تم تنفيذ الاستعلام");
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Controls number of instances per key",
        "Provides centralized access to named instances",
        "Reuses instances efficiently",
        "More flexible than pure Singleton",
      ],
      ar: [
        "يتحكم في عدد النسخ لكل مفتاح",
        "يوفر وصولاً مركزياً للنسخ المسماة",
        "يعيد استخدام النسخ بكفاءة",
        "أكثر مرونة من المفرد النقي",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Introduces global state",
        "Requires careful key management",
        "Potential memory leaks if instances never cleaned up",
        "Thread safety concerns with concurrent access",
      ],
      ar: [
        "يُدخل حالة عالمية",
        "يتطلب إدارة دقيقة للمفاتيح",
        "تسريبات ذاكرة محتملة إذا لم يتم تنظيف النسخ أبداً",
        "مخاوف أمان الخيوط مع الوصول المتزامن",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Multiton when:"),
        UnorderedListContent(
          value: [
            "You need more than one but a limited number of instances",
            "Instances are identified by keys or names",
            "Each logical category should have exactly one instance",
            "You want to avoid recreating expensive objects with same identifier",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم المتعدد عندما:"),
        UnorderedListContent(
          value: [
            "تحتاج لأكثر من نسخة واحدة لكن عدد محدود من النسخ",
            "النسخ مُحددة بمفاتيح أو أسماء",
            "كل فئة منطقية يجب أن يكون لها نسخة واحدة بالضبط",
            "تريد تجنب إعادة إنشاء كائنات مكلفة بنفس المُعرّف",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Using arbitrary or unlimited keys, defeating the purpose",
        "Not ensuring thread safety on instance map",
        "Allowing keys to collide or be ambiguous",
        "Never cleaning up unused instances",
      ],
      ar: [
        "استخدام مفاتيح عشوائية أو غير محدودة، مما يُفشل الغرض",
        "عدم ضمان أمان الخيوط على خريطة النسخ",
        "السماح للمفاتيح بالتصادم أو أن تكون غامضة",
        "عدم تنظيف النسخ غير المستخدمة أبداً",
      ],
    ),
    relatedPatterns: [
      PatternKeys.singleton,
      PatternKeys.factoryMethod,
      PatternKeys.objectPool,
    ],
    oftenConfusedWith: [PatternKeys.singleton],
  ),
  PatternKeys.factoryKit: DesignPattern(
    id: PatternKeys.factoryKit,
    title: LocalizedString(
      en: "Factory Kit",
      ar: "مجموعة المصنع (Factory Kit)",
    ),
    description: LocalizedString(
      en: "Allows clients to define object creation logic within controlled guidelines",
      ar: "يسمح للعملاء بتعريف منطق إنشاء الكائنات ضمن إرشادات محكومة",
    ),
    group: .design,
    type: .creational,
    category: .practical,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "Factory Kit is a less common pattern where the framework provides interfaces and hooks that allow external code to plug in custom creation logic. Think of it as a \"reverse factory\" where clients define how objects are created, but within constraints set by the framework.",
        ),
        StringContent(
          "This pattern is particularly useful in plugin architectures or game engines where you want to give users controlled extensibility without exposing internal implementation details.",
        ),
        UnorderedListContent(
          title: "Core Concepts:",
          value: [
            "Framework defines creation interfaces and constraints",
            "Clients implement factories within these guidelines",
            "Registration system for custom factories",
            "Type-safe object creation with user-defined logic",
          ],
        ),
        StringContent(
          "The pattern provides high customization while maintaining system integrity through well-defined extension points.",
        ),
      ],
      ar: [
        StringContent(
          "مجموعة المصنع (Factory Kit) هو نمط أقل شيوعاً حيث يوفر الإطار واجهات وخطافات تسمح للكود الخارجي بإضافة منطق إنشاء مخصص. فكر فيه كـ \"مصنع معكوس\" حيث يعرّف العملاء كيفية إنشاء الكائنات، لكن ضمن قيود يضعها الإطار.",
        ),
        StringContent(
          "هذا النمط مفيد بشكل خاص في معماريات الإضافات (plugins) أو محركات الألعاب حيث تريد منح المستخدمين قابلية توسع محكومة دون كشف تفاصيل التنفيذ الداخلية.",
        ),
        UnorderedListContent(
          title: "المفاهيم الأساسية:",
          value: [
            "الإطار يعرّف واجهات وقيود الإنشاء",
            "العملاء ينفذون مصانع ضمن هذه الإرشادات",
            "نظام تسجيل للمصانع المخصصة",
            "إنشاء كائنات آمن من حيث النوع مع منطق معرّف من المستخدم",
          ],
        ),
        StringContent(
          "يوفر النمط تخصيصاً عالياً مع الحفاظ على سلامة النظام من خلال نقاط توسع محددة جيداً.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class Weapon {
  String get name;
  int get damage;
  void attack();
}

typedef WeaponFactory = Weapon Function();

class WeaponKit {
  final Map<String, WeaponFactory> _factories = {};
  
  void registerFactory(String type, WeaponFactory factory) {
    _factories[type] = factory;
  }
  
  Weapon? create(String type) {
    final factory = _factories[type];
    return factory?.call();
  }
  
  List<String> get availableTypes => _factories.keys.toList();
}

class Sword implements Weapon {
  @override
  String get name => "Sword";
  
  @override
  int get damage => 10;
  
  @override
  void attack() => print("Slashing with sword!");
}

class Bow implements Weapon {
  @override
  String get name => "Bow";
  
  @override
  int get damage => 7;
  
  @override
  void attack() => print("Shooting arrow!");
}

void main() {
  final weaponKit = WeaponKit();
  
  weaponKit.registerFactory("sword", () => Sword());
  weaponKit.registerFactory("bow", () => Bow());
  
  final weapon1 = weaponKit.create("sword");
  final weapon2 = weaponKit.create("bow");
  
  weapon1?.attack();
  weapon2?.attack();
  
  print("Available weapons: \${weaponKit.availableTypes}");
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class Weapon {
  String get name;
  int get damage;
  void attack();
}

typedef WeaponFactory = Weapon Function();

class WeaponKit {
  final Map<String, WeaponFactory> _factories = {};
  
  void registerFactory(String type, WeaponFactory factory) {
    _factories[type] = factory;
  }
  
  Weapon? create(String type) {
    final factory = _factories[type];
    return factory?.call();
  }
  
  List<String> get availableTypes => _factories.keys.toList();
}

class Sword implements Weapon {
  @override
  String get name => "سيف";
  
  @override
  int get damage => 10;
  
  @override
  void attack() => print("الضرب بالسيف!");
}

class Bow implements Weapon {
  @override
  String get name => "قوس";
  
  @override
  int get damage => 7;
  
  @override
  void attack() => print("إطلاق سهم!");
}

void main() {
  final weaponKit = WeaponKit();
  
  weaponKit.registerFactory("sword", () => Sword());
  weaponKit.registerFactory("bow", () => Bow());
  
  final weapon1 = weaponKit.create("sword");
  final weapon2 = weaponKit.create("bow");
  
  weapon1?.attack();
  weapon2?.attack();
  
  print("الأسلحة المتاحة: \${weaponKit.availableTypes}");
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "High customization and extensibility",
        "Users can add new factories without modifying core code",
        "Useful in plugin and modular architectures",
        "Maintains type safety with controlled creation",
      ],
      ar: [
        "تخصيص وقابلية توسع عالية",
        "المستخدمون يمكنهم إضافة مصانع جديدة دون تعديل الكود الأساسي",
        "مفيد في معماريات الإضافات والمعيارية",
        "يحافظ على أمان الأنواع مع إنشاء محكوم",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Complex to design and document properly",
        "Users can misuse extension points",
        "Difficult to enforce invariants",
        "Can be hard to test all factory combinations",
      ],
      ar: [
        "معقد في التصميم والتوثيق بشكل صحيح",
        "المستخدمون قد يسيئون استخدام نقاط التوسع",
        "صعب فرض الثوابت (invariants)",
        "قد يكون صعباً اختبار جميع مجموعات المصانع",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Factory Kit when:"),
        UnorderedListContent(
          value: [
            "Building frameworks or engines with user-defined content",
            "Need controlled extensibility points for object creation",
            "Plugin architecture requires custom object types",
            "Want to separate creation logic from framework code",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم مجموعة المصنع عندما:"),
        UnorderedListContent(
          value: [
            "بناء أطر أو محركات مع محتوى معرّف من المستخدم",
            "تحتاج نقاط توسع محكومة لإنشاء الكائنات",
            "معمارية الإضافات تتطلب أنواع كائنات مخصصة",
            "تريد فصل منطق الإنشاء عن كود الإطار",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Exposing too much of internal structure to clients",
        "Not providing clear guidelines for factory implementation",
        "Allowing inconsistent object creation across factories",
        "Missing validation of user-provided factories",
      ],
      ar: [
        "كشف الكثير من البنية الداخلية للعملاء",
        "عدم توفير إرشادات واضحة لتنفيذ المصنع",
        "السماح بإنشاء كائنات غير متسق عبر المصانع",
        "عدم التحقق من المصانع المُوفرة من المستخدم",
      ],
    ),
    relatedPatterns: [
      PatternKeys.abstractFactory,
      PatternKeys.plugin,
      PatternKeys.strategy,
    ],
    oftenConfusedWith: [PatternKeys.abstractFactory],
  ),
  PatternKeys.adapter: DesignPattern(
    id: PatternKeys.adapter,
    title: LocalizedString(en: "Adapter", ar: "المُحوّل (Adapter)"),
    description: LocalizedString(
      en: "Converts one interface to another, allowing incompatible classes to work together",
      ar: "يحوّل واجهة إلى أخرى، مما يسمح للفئات غير المتوافقة بالعمل معاً",
    ),
    group: .design,
    type: .structural,
    category: .GoF,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Adapter pattern (also known as Wrapper) allows objects with incompatible interfaces to collaborate. It acts as a bridge between two incompatible interfaces by wrapping one object and exposing a different interface.",
        ),
        StringContent(
          "This pattern is particularly useful when integrating third-party libraries, legacy code, or when you need to convert data between different formats without modifying existing code.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Target: The interface expected by the client",
            "Adaptee: The existing interface that needs adapting",
            "Adapter: Wraps the Adaptee and implements the Target interface",
            "Client: Works with objects through the Target interface",
          ],
        ),
        StringContent(
          "Adapters can be implemented as class adapters (using inheritance) or object adapters (using composition). In Dart, object adapters are more common and flexible.",
        ),
      ],
      ar: [
        StringContent(
          "نمط المُحوّل (المعروف أيضاً بالغلاف - Wrapper) يسمح للكائنات ذات الواجهات غير المتوافقة بالتعاون. يعمل كجسر بين واجهتين غير متوافقتين من خلال لف كائن واحد وكشف واجهة مختلفة.",
        ),
        StringContent(
          "هذا النمط مفيد بشكل خاص عند دمج مكتبات طرف ثالث، أو كود قديم، أو عندما تحتاج لتحويل البيانات بين تنسيقات مختلفة دون تعديل الكود الموجود.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "الهدف (Target): الواجهة المتوقعة من قبل العميل",
            "المُحوّل إليه (Adaptee): الواجهة الموجودة التي تحتاج للتحويل",
            "المُحوّل (Adapter): يلف المُحوّل إليه وينفذ واجهة الهدف",
            "العميل (Client): يعمل مع الكائنات من خلال واجهة الهدف",
          ],
        ),
        StringContent(
          "يمكن تنفيذ المُحوّلات كمُحوّلات فئة (باستخدام الوراثة) أو مُحوّلات كائن (باستخدام التركيب). في Dart، مُحوّلات الكائن أكثر شيوعاً ومرونة.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""class LegacyRectangle {
  double x, y, width, height;
  
  LegacyRectangle(this.x, this.y, this.width, this.height);
  
  void draw() {
    print("Drawing rectangle at (\$x, \$y) with size \${width}x\$height");
  }
}

abstract class Shape {
  void render();
  double getArea();
}

class RectangleAdapter implements Shape {
  final LegacyRectangle _rectangle;
  
  RectangleAdapter(this._rectangle);
  
  @override
  void render() {
    _rectangle.draw();
  }
  
  @override
  double getArea() {
    return _rectangle.width * _rectangle.height;
  }
}

class Circle implements Shape {
  final double radius;
  
  Circle(this.radius);
  
  @override
  void render() {
    print("Drawing circle with radius \$radius");
  }
  
  @override
  double getArea() {
    return 3.14 * radius * radius;
  }
}

void main() {
  final shapes = <Shape>[
    Circle(5),
    RectangleAdapter(LegacyRectangle(0, 0, 10, 20)),
  ];
  
  for (final shape in shapes) {
    shape.render();
    print("Area: \${shape.getArea()}");
  }
}"""),
      ],
      ar: [
        StrCodeBlock("""class LegacyRectangle {
  double x, y, width, height;
  
  LegacyRectangle(this.x, this.y, this.width, this.height);
  
  void draw() {
    print("رسم مستطيل عند (\$x، \$y) بحجم \${width}×\$height");
  }
}

abstract class Shape {
  void render();
  double getArea();
}

class RectangleAdapter implements Shape {
  final LegacyRectangle _rectangle;
  
  RectangleAdapter(this._rectangle);
  
  @override
  void render() {
    _rectangle.draw();
  }
  
  @override
  double getArea() {
    return _rectangle.width * _rectangle.height;
  }
}

class Circle implements Shape {
  final double radius;
  
  Circle(this.radius);
  
  @override
  void render() {
    print("رسم دائرة بنصف قطر \$radius");
  }
  
  @override
  double getArea() {
    return 3.14 * radius * radius;
  }
}

void main() {
  final shapes = <Shape>[
    Circle(5),
    RectangleAdapter(LegacyRectangle(0, 0, 10, 20)),
  ];
  
  for (final shape in shapes) {
    shape.render();
    print("المساحة: \${shape.getArea()}");
  }
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Separates interface conversion from business logic (SRP)",
        "Allows using existing classes without modifying them",
        "Follows Open/Closed Principle",
        "Makes incompatible interfaces compatible",
      ],
      ar: [
        "يفصل تحويل الواجهة عن منطق العمل (SRP)",
        "يسمح باستخدام الفئات الموجودة دون تعديلها",
        "يتبع مبدأ المفتوح/المغلق",
        "يجعل الواجهات غير المتوافقة متوافقة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Increases overall code complexity",
        "Can be overkill if you control both interfaces",
        "May add performance overhead",
        "Multiple layers of adapters can be confusing",
      ],
      ar: [
        "يزيد من التعقيد الإجمالي للكود",
        "قد يكون مبالغاً فيه إذا كنت تتحكم في كلا الواجهتين",
        "قد يضيف عبئاً على الأداء",
        "طبقات متعددة من المُحوّلات قد تكون مُربكة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Adapter when:"),
        UnorderedListContent(
          value: [
            "You want to use an existing class with an incompatible interface",
            "Integrating third-party libraries or legacy code",
            "Need to convert between different data formats",
            "Creating a reusable class that works with unrelated classes",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم المُحوّل عندما:"),
        UnorderedListContent(
          value: [
            "تريد استخدام فئة موجودة بواجهة غير متوافقة",
            "دمج مكتبات طرف ثالث أو كود قديم",
            "تحتاج للتحويل بين تنسيقات بيانات مختلفة",
            "إنشاء فئة قابلة لإعادة الاستخدام تعمل مع فئات غير مرتبطة",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Confusing Adapter with Facade (Adapter changes interface, Facade simplifies)",
        "Creating deep adapter chains",
        "Over-adapting when direct modification would be simpler",
        "Not handling all interface methods properly",
      ],
      ar: [
        "الخلط بين المُحوّل والواجهة (Facade) (المُحوّل يغير الواجهة، الواجهة تُبسّط)",
        "إنشاء سلاسل مُحوّل عميقة",
        "الإفراط في التحويل عندما يكون التعديل المباشر أبسط",
        "عدم التعامل مع جميع طرق الواجهة بشكل صحيح",
      ],
    ),
    relatedPatterns: [
      PatternKeys.bridge,
      PatternKeys.decorator,
      PatternKeys.proxy,
    ],
    oftenConfusedWith: [PatternKeys.facade, PatternKeys.decorator],
  ),
  PatternKeys.bridge: DesignPattern(
    id: PatternKeys.bridge,
    title: LocalizedString(en: "Bridge", ar: "الجسر (Bridge)"),
    description: LocalizedString(
      en: "Separates abstraction from implementation so they can vary independently",
      ar: "يفصل التجريد عن التنفيذ بحيث يمكن أن يتغيرا بشكل مستقل",
    ),
    group: .design,
    type: .structural,
    category: .GoF,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Bridge pattern splits a large class or set of closely related classes into two separate hierarchies: abstraction and implementation. These can be developed independently of each other.",
        ),
        StringContent(
          "This pattern is about preferring composition over inheritance. Instead of creating a multiplicative class hierarchy for every combination of features, you separate concerns into two hierarchies connected by a bridge.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Abstraction: High-level control layer for some entity",
            "Implementation: Platform or low-level operations",
            "Refined Abstraction: Variants of control logic",
            "Concrete Implementation: Specific platform implementations",
          ],
        ),
        StringContent(
          "For example, if you have shapes (Circle, Square) and rendering methods (Vector, Raster), instead of creating VectorCircle, RasterCircle, VectorSquare, RasterSquare, you create Shape with a Renderer reference.",
        ),
      ],
      ar: [
        StringContent(
          "نمط الجسر يقسم فئة كبيرة أو مجموعة من الفئات المترابطة بشكل وثيق إلى تسلسلين هرميين منفصلين: التجريد والتنفيذ. يمكن تطويرهما بشكل مستقل عن بعضهما البعض.",
        ),
        StringContent(
          "هذا النمط يفضل التركيب على الوراثة. بدلاً من إنشاء تسلسل هرمي ضربي للفئات لكل مجموعة من الميزات، تفصل الاهتمامات إلى تسلسلين هرميين متصلين بجسر.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "التجريد (Abstraction): طبقة التحكم عالية المستوى لكيان ما",
            "التنفيذ (Implementation): المنصة أو العمليات منخفضة المستوى",
            "التجريد المُحسّن (Refined Abstraction): متغيرات من منطق التحكم",
            "التنفيذ المحدد (Concrete Implementation): تنفيذات منصة محددة",
          ],
        ),
        StringContent(
          "على سبيل المثال، إذا كان لديك أشكال (دائرة، مربع) وطرق عرض (متجه، نقطي)، بدلاً من إنشاء VectorCircle وRasterCircle وVectorSquare وRasterSquare، تنشئ Shape مع مرجع Renderer.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class Renderer {
  void renderCircle(double radius);
  void renderSquare(double side);
}

class VectorRenderer implements Renderer {
  @override
  void renderCircle(double radius) {
    print("Drawing circle with radius \$radius as vector");
  }
  
  @override
  void renderSquare(double side) {
    print("Drawing square with side \$side as vector");
  }
}

class RasterRenderer implements Renderer {
  @override
  void renderCircle(double radius) {
    print("Drawing circle with radius \$radius as pixels");
  }
  
  @override
  void renderSquare(double side) {
    print("Drawing square with side \$side as pixels");
  }
}

abstract class Shape {
  final Renderer renderer;
  
  Shape(this.renderer);
  
  void draw();
}

class Circle extends Shape {
  final double radius;
  
  Circle(super.renderer, this.radius);
  
  @override
  void draw() {
    renderer.renderCircle(radius);
  }
}

class Square extends Shape {
  final double side;
  
  Square(super.renderer, this.side);
  
  @override
  void draw() {
    renderer.renderSquare(side);
  }
}

void main() {
  final vectorRenderer = VectorRenderer();
  final rasterRenderer = RasterRenderer();
  
  final circle1 = Circle(vectorRenderer, 5);
  final circle2 = Circle(rasterRenderer, 5);
  
  circle1.draw();
  circle2.draw();
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class Renderer {
  void renderCircle(double radius);
  void renderSquare(double side);
}

class VectorRenderer implements Renderer {
  @override
  void renderCircle(double radius) {
    print("رسم دائرة بنصف قطر \$radius كمتجه");
  }
  
  @override
  void renderSquare(double side) {
    print("رسم مربع بضلع \$side كمتجه");
  }
}

class RasterRenderer implements Renderer {
  @override
  void renderCircle(double radius) {
    print("رسم دائرة بنصف قطر \$radius كنقاط");
  }
  
  @override
  void renderSquare(double side) {
    print("رسم مربع بضلع \$side كنقاط");
  }
}

abstract class Shape {
  final Renderer renderer;
  
  Shape(this.renderer);
  
  void draw();
}

class Circle extends Shape {
  final double radius;
  
  Circle(super.renderer, this.radius);
  
  @override
  void draw() {
    renderer.renderCircle(radius);
  }
}

class Square extends Shape {
  final double side;
  
  Square(super.renderer, this.side);
  
  @override
  void draw() {
    renderer.renderSquare(side);
  }
}

void main() {
  final vectorRenderer = VectorRenderer();
  final rasterRenderer = RasterRenderer();
  
  final circle1 = Circle(vectorRenderer, 5);
  final circle2 = Circle(rasterRenderer, 5);
  
  circle1.draw();
  circle2.draw();
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Platform-independent code design",
        "Abstraction and implementation can vary independently",
        "Follows Open/Closed Principle",
        "Follows Single Responsibility Principle",
      ],
      ar: [
        "تصميم كود مستقل عن المنصة",
        "التجريد والتنفيذ يمكن أن يتغيرا بشكل مستقل",
        "يتبع مبدأ المفتوح/المغلق",
        "يتبع مبدأ المسؤولية الواحدة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Increases complexity for simple cases",
        "Requires many classes and interfaces",
        "Not needed unless you have multiple dimensions of variation",
        "Can be over-engineered for cohesive classes",
      ],
      ar: [
        "يزيد التعقيد للحالات البسيطة",
        "يتطلب العديد من الفئات والواجهات",
        "غير مطلوب ما لم يكن لديك أبعاد متعددة من التنوع",
        "قد يكون مُفرط الهندسة للفئات المتماسكة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Bridge when:"),
        UnorderedListContent(
          value: [
            "You want to avoid permanent binding between abstraction and implementation",
            "Both abstraction and implementation should be extensible by subclassing",
            "You have multiple dimensions of variation (avoid class explosion)",
            "Changes in implementation should not affect clients",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم الجسر عندما:"),
        UnorderedListContent(
          value: [
            "تريد تجنب الربط الدائم بين التجريد والتنفيذ",
            "كل من التجريد والتنفيذ يجب أن يكونا قابلين للتوسيع عبر الفئات الفرعية",
            "لديك أبعاد متعددة من التنوع (تجنب انفجار الفئات)",
            "التغييرات في التنفيذ لا يجب أن تؤثر على العملاء",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Applying to highly cohesive classes (no real independent dimensions)",
        "Using when only one dimension varies",
        "Confusing with Adapter (Bridge is designed upfront, Adapter is applied to existing code)",
        "Over-complicating simple designs",
      ],
      ar: [
        "التطبيق على فئات متماسكة جداً (لا أبعاد مستقلة حقيقية)",
        "الاستخدام عندما يتنوع بُعد واحد فقط",
        "الخلط مع المُحوّل (الجسر مُصمم مسبقاً، المُحوّل يُطبق على كود موجود)",
        "التعقيد المفرط للتصاميم البسيطة",
      ],
    ),
    relatedPatterns: [
      PatternKeys.abstractFactory,
      PatternKeys.adapter,
      PatternKeys.strategy,
    ],
    oftenConfusedWith: [PatternKeys.adapter],
  ),
  PatternKeys.composite: DesignPattern(
    id: PatternKeys.composite,
    title: LocalizedString(en: "Composite", ar: "المُركب (Composite)"),
    description: LocalizedString(
      en: "Composes objects into tree structures and treats individual objects and compositions uniformly",
      ar: "يُركب الكائنات في بنى شجرية ويعامل الكائنات الفردية والتركيبات بشكل موحد",
    ),
    group: .design,
    type: .structural,
    category: .GoF,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Composite pattern lets you compose objects into tree structures to represent part-whole hierarchies. It allows clients to treat individual objects and compositions of objects uniformly.",
        ),
        StringContent(
          "This pattern is perfect for representing hierarchies like file systems, UI component trees, organizational charts, or any recursive tree-like structure where containers and leaves should be treated the same way.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Component: Common interface for both simple and complex objects",
            "Leaf: Basic element that has no children",
            "Composite: Element that may have children",
            "Client: Works with all elements through the Component interface",
          ],
        ),
        StringContent(
          "Both Leaf and Composite implement the same interface, so the client code can work with them uniformly without knowing whether it's dealing with a simple or complex element.",
        ),
      ],
      ar: [
        StringContent(
          "نمط المُركب يتيح لك تركيب الكائنات في بنى شجرية لتمثيل تسلسلات هرمية جزء-كل. يسمح للعملاء بمعاملة الكائنات الفردية وتركيبات الكائنات بشكل موحد.",
        ),
        StringContent(
          "هذا النمط مثالي لتمثيل التسلسلات الهرمية مثل أنظمة الملفات، أشجار مكونات واجهة المستخدم، المخططات التنظيمية، أو أي بنية شجرية تكرارية حيث يجب معاملة الحاويات والأوراق بنفس الطريقة.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "المكون (Component): واجهة مشتركة للكائنات البسيطة والمعقدة",
            "الورقة (Leaf): عنصر أساسي ليس له أطفال",
            "المُركب (Composite): عنصر قد يكون له أطفال",
            "العميل (Client): يعمل مع جميع العناصر من خلال واجهة المكون",
          ],
        ),
        StringContent(
          "كل من Leaf وComposite ينفذان نفس الواجهة، لذا يمكن لكود العميل العمل معهما بشكل موحد دون معرفة ما إذا كان يتعامل مع عنصر بسيط أو معقد.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class FileSystemEntity {
  String get name;
  int getSize();
  void display([int depth = 0]);
}

class File implements FileSystemEntity {
  @override
  final String name;
  final int size;
  
  File(this.name, this.size);
  
  @override
  int getSize() => size;
  
  @override
  void display([int depth = 0]) {
    print("\${'  ' * depth}- \$name (\$size bytes)");
  }
}

class Directory implements FileSystemEntity {
  @override
  final String name;
  final List<FileSystemEntity> _children = [];
  
  Directory(this.name);
  
  void add(FileSystemEntity entity) {
    _children.add(entity);
  }
  
  void remove(FileSystemEntity entity) {
    _children.remove(entity);
  }
  
  @override
  int getSize() {
    return _children.fold(0, (sum, child) => sum + child.getSize());
  }
  
  @override
  void display([int depth = 0]) {
    print("\${'  ' * depth}+ \$name/");
    for (final child in _children) {
      child.display(depth + 1);
    }
  }
}

void main() {
  final root = Directory("root");
  final docs = Directory("documents");
  final pics = Directory("pictures");
  
  docs.add(File("resume.pdf", 1024));
  docs.add(File("letter.docx", 512));
  
  pics.add(File("photo1.jpg", 2048));
  pics.add(File("photo2.jpg", 2560));
  
  root.add(docs);
  root.add(pics);
  root.add(File("readme.txt", 256));
  
  root.display();
  print("Total size: \${root.getSize()} bytes");
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class FileSystemEntity {
  String get name;
  int getSize();
  void display([int depth = 0]);
}

class File implements FileSystemEntity {
  @override
  final String name;
  final int size;
  
  File(this.name, this.size);
  
  @override
  int getSize() => size;
  
  @override
  void display([int depth = 0]) {
    print("\${'  ' * depth}- \$name (\$size بايت)");
  }
}

class Directory implements FileSystemEntity {
  @override
  final String name;
  final List<FileSystemEntity> _children = [];
  
  Directory(this.name);
  
  void add(FileSystemEntity entity) {
    _children.add(entity);
  }
  
  void remove(FileSystemEntity entity) {
    _children.remove(entity);
  }
  
  @override
  int getSize() {
    return _children.fold(0, (sum, child) => sum + child.getSize());
  }
  
  @override
  void display([int depth = 0]) {
    print("\${'  ' * depth}+ \$name/");
    for (final child in _children) {
      child.display(depth + 1);
    }
  }
}

void main() {
  final root = Directory("root");
  final docs = Directory("documents");
  final pics = Directory("pictures");
  
  docs.add(File("resume.pdf", 1024));
  docs.add(File("letter.docx", 512));
  
  pics.add(File("photo1.jpg", 2048));
  pics.add(File("photo2.jpg", 2560));
  
  root.add(docs);
  root.add(pics);
  root.add(File("readme.txt", 256));
  
  root.display();
  print("الحجم الكلي: \${root.getSize()} بايت");
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Simplifies client code through uniform interface",
        "Makes adding new component types easy (Open/Closed)",
        "Natural fit for recursive algorithms",
        "Works well with hierarchical structures",
      ],
      ar: [
        "يبسط كود العميل من خلال واجهة موحدة",
        "يسهّل إضافة أنواع مكونات جديدة (المفتوح/المغلق)",
        "ملائم طبيعي للخوارزميات التكرارية",
        "يعمل جيداً مع البنى الهرمية",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can make design overly general",
        "Difficult to restrict component types in composites",
        "May be hard to design common interface for very different elements",
        "Can violate Interface Segregation Principle",
      ],
      ar: [
        "قد يجعل التصميم عاماً بشكل مفرط",
        "صعوبة تقييد أنواع المكونات في المُركبات",
        "قد يكون صعباً تصميم واجهة مشتركة لعناصر مختلفة جداً",
        "قد ينتهك مبدأ فصل الواجهة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Composite when:"),
        UnorderedListContent(
          value: [
            "You have part-whole hierarchies of objects",
            "You want clients to treat individual and composite objects uniformly",
            "You're building tree structures (file systems, UI components, menus)",
            "Recursive composition makes sense for your domain",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم المُركب عندما:"),
        UnorderedListContent(
          value: [
            "لديك تسلسلات هرمية جزء-كل للكائنات",
            "تريد أن يعامل العملاء الكائنات الفردية والمُركبة بشكل موحد",
            "تبني بنى شجرية (أنظمة ملفات، مكونات واجهة مستخدم، قوائم)",
            "التركيب التكراري منطقي لمجالك",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Forcing a common interface on dissimilar components",
        "Not exposing child management methods (add/remove) properly",
        "Allowing circular references in the tree",
        "Not considering who owns/manages child lifecycle",
      ],
      ar: [
        "فرض واجهة مشتركة على مكونات مختلفة",
        "عدم كشف طرق إدارة الأطفال (إضافة/إزالة) بشكل صحيح",
        "السماح بمراجع دائرية في الشجرة",
        "عدم النظر في من يملك/يدير دورة حياة الأطفال",
      ],
    ),
    relatedPatterns: [
      PatternKeys.iterator,
      PatternKeys.visitor,
      PatternKeys.decorator,
    ],
    oftenConfusedWith: [PatternKeys.decorator],
  ),
  PatternKeys.decorator: DesignPattern(
    id: PatternKeys.decorator,
    title: LocalizedString(en: "Decorator", ar: "المُزخرف (Decorator)"),
    description: LocalizedString(
      en: "Attaches additional responsibilities to objects dynamically without modifying their structure",
      ar: "يُلحق مسؤوليات إضافية بالكائنات ديناميكياً دون تعديل بنيتها",
    ),
    group: .design,
    type: .structural,
    category: .GoF,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Decorator pattern allows you to attach new behaviors to objects by placing them inside wrapper objects that contain the behaviors. It provides a flexible alternative to subclassing for extending functionality.",
        ),
        StringContent(
          "Decorators wrap a component and add their own behavior before and/or after delegating to the component. Multiple decorators can be stacked to add multiple behaviors.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Component: Common interface for both wrappers and wrapped objects",
            "Concrete Component: Object being decorated",
            "Decorator: Base decorator maintaining reference to component",
            "Concrete Decorators: Add specific behaviors",
          ],
        ),
        StringContent(
          "Unlike inheritance which adds behavior at compile time, decorators add behavior at runtime and can be combined in various ways.",
        ),
      ],
      ar: [
        StringContent(
          "نمط المُزخرف يسمح لك بإلحاق سلوكيات جديدة بالكائنات من خلال وضعها داخل كائنات غلاف تحتوي على السلوكيات. يوفر بديلاً مرناً للفئات الفرعية لتوسيع الوظائف.",
        ),
        StringContent(
          "المُزخرفات تلف مكوناً وتضيف سلوكها الخاص قبل و/أو بعد التفويض للمكون. يمكن تكديس عدة مُزخرفات لإضافة سلوكيات متعددة.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "المكون (Component): واجهة مشتركة للأغلفة والكائنات الملفوفة",
            "المكون المحدد (Concrete Component): الكائن الذي يتم تزيينه",
            "المُزخرف (Decorator): مُزخرف أساسي يحتفظ بمرجع للمكون",
            "المُزخرفات المحددة (Concrete Decorators): تضيف سلوكيات محددة",
          ],
        ),
        StringContent(
          "على عكس الوراثة التي تضيف السلوك في وقت الترجمة، تضيف المُزخرفات السلوك في وقت التشغيل ويمكن دمجها بطرق مختلفة.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class Coffee {
  String getDescription();
  double getCost();
}

class SimpleCoffee implements Coffee {
  @override
  String getDescription() => "Simple coffee";
  
  @override
  double getCost() => 2.0;
}

abstract class CoffeeDecorator implements Coffee {
  final Coffee coffee;
  
  CoffeeDecorator(this.coffee);
}

class MilkDecorator extends CoffeeDecorator {
  MilkDecorator(super.coffee);
  
  @override
  String getDescription() => "\${coffee.getDescription()}, milk";
  
  @override
  double getCost() => coffee.getCost() + 0.5;
}

class SugarDecorator extends CoffeeDecorator {
  SugarDecorator(super.coffee);
  
  @override
  String getDescription() => "\${coffee.getDescription()}, sugar";
  
  @override
  double getCost() => coffee.getCost() + 0.2;
}

class WhipDecorator extends CoffeeDecorator {
  WhipDecorator(super.coffee);
  
  @override
  String getDescription() => "\${coffee.getDescription()}, whip";
  
  @override
  double getCost() => coffee.getCost() + 0.7;
}

void main() {
  Coffee coffee = SimpleCoffee();
  print("\${coffee.getDescription()}: \\\$\${coffee.getCost()}");
  
  coffee = MilkDecorator(coffee);
  coffee = SugarDecorator(coffee);
  coffee = WhipDecorator(coffee);
  
  print("\${coffee.getDescription()}: \\\$\${coffee.getCost()}");
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class Coffee {
  String getDescription();
  double getCost();
}

class SimpleCoffee implements Coffee {
  @override
  String getDescription() => "قهوة بسيطة";
  
  @override
  double getCost() => 2.0;
}

abstract class CoffeeDecorator implements Coffee {
  final Coffee coffee;
  
  CoffeeDecorator(this.coffee);
}

class MilkDecorator extends CoffeeDecorator {
  MilkDecorator(super.coffee);
  
  @override
  String getDescription() => "\${coffee.getDescription()}، حليب";
  
  @override
  double getCost() => coffee.getCost() + 0.5;
}

class SugarDecorator extends CoffeeDecorator {
  SugarDecorator(super.coffee);
  
  @override
  String getDescription() => "\${coffee.getDescription()}، سكر";
  
  @override
  double getCost() => coffee.getCost() + 0.2;
}

class WhipDecorator extends CoffeeDecorator {
  WhipDecorator(super.coffee);
  
  @override
  String getDescription() => "\${coffee.getDescription()}، كريمة";
  
  @override
  double getCost() => coffee.getCost() + 0.7;
}

void main() {
  Coffee coffee = SimpleCoffee();
  print("\${coffee.getDescription()}: \\\$\${coffee.getCost()}");
  
  coffee = MilkDecorator(coffee);
  coffee = SugarDecorator(coffee);
  coffee = WhipDecorator(coffee);
  
  print("\${coffee.getDescription()}: \\\$\${coffee.getCost()}");
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "More flexible than static inheritance",
        "Can add/remove responsibilities at runtime",
        "Can combine behaviors in different ways",
        "Follows Single Responsibility Principle",
      ],
      ar: [
        "أكثر مرونة من الوراثة الثابتة",
        "يمكن إضافة/إزالة المسؤوليات في وقت التشغيل",
        "يمكن دمج السلوكيات بطرق مختلفة",
        "يتبع مبدأ المسؤولية الواحدة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Many small objects can complicate the design",
        "Hard to debug with multiple layers of wrapping",
        "Decorators must implement same interface as component",
        "Order of decorators can matter",
      ],
      ar: [
        "العديد من الكائنات الصغيرة قد تعقد التصميم",
        "صعب تصحيح الأخطاء مع طبقات متعددة من الالتفاف",
        "يجب على المُزخرفات تنفيذ نفس واجهة المكون",
        "ترتيب المُزخرفات قد يكون مهماً",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Decorator when:"),
        UnorderedListContent(
          value: [
            "You need to add responsibilities to individual objects dynamically",
            "Extension by subclassing is impractical",
            "You want to add features that can be combined in various ways",
            "You want to keep classes focused (SRP) with features in separate decorators",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم المُزخرف عندما:"),
        UnorderedListContent(
          value: [
            "تحتاج لإضافة مسؤوليات لكائنات فردية ديناميكياً",
            "التوسع عبر الفئات الفرعية غير عملي",
            "تريد إضافة ميزات يمكن دمجها بطرق مختلفة",
            "تريد إبقاء الفئات مركزة (SRP) مع ميزات في مُزخرفات منفصلة",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Changing the interface instead of just adding behavior",
        "Using decorators when simple inheritance suffices",
        "Not considering decorator order dependencies",
        "Creating decorators that change core functionality",
      ],
      ar: [
        "تغيير الواجهة بدلاً من مجرد إضافة السلوك",
        "استخدام المُزخرفات عندما تكفي الوراثة البسيطة",
        "عدم النظر في تبعيات ترتيب المُزخرف",
        "إنشاء مُزخرفات تغير الوظيفة الأساسية",
      ],
    ),
    relatedPatterns: [
      PatternKeys.adapter,
      PatternKeys.composite,
      PatternKeys.strategy,
    ],
    oftenConfusedWith: [PatternKeys.adapter, PatternKeys.proxy],
  ),
  PatternKeys.facade: DesignPattern(
    id: PatternKeys.facade,
    title: LocalizedString(en: "Facade", ar: "الواجهة (Facade)"),
    description: LocalizedString(
      en: "Provides a simplified interface to a complex subsystem",
      ar: "يوفر واجهة مبسطة لنظام فرعي معقد",
    ),
    group: .design,
    type: PatternType.structural,
    category: .GoF,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Facade pattern provides a simple, unified interface to a complex subsystem. It hides the complexities of the system and provides a single entry point to the client.",
        ),
        StringContent(
          "A facade doesn't prevent clients from accessing subsystem classes directly if they need to, but it offers a convenient high-level interface for common tasks.",
        ),
        UnorderedListContent(
          title: "Key Benefits:",
          value: [
            "Simplifies complex systems for clients",
            "Reduces coupling between clients and subsystems",
            "Provides a single point of interaction",
            "Can combine multiple subsystem operations",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط الواجهة يوفر واجهة بسيطة وموحدة لنظام فرعي معقد. يخفي تعقيدات النظام ويوفر نقطة دخول واحدة للعميل.",
        ),
        StringContent(
          "الواجهة لا تمنع العملاء من الوصول المباشر لفئات النظام الفرعي إذا احتاجوا لذلك، لكنها تقدم واجهة عالية المستوى مريحة للمهام الشائعة.",
        ),
        UnorderedListContent(
          title: "الفوائد الأساسية:",
          value: [
            "تبسط الأنظمة المعقدة للعملاء",
            "تقلل الاقتران بين العملاء والأنظمة الفرعية",
            "توفر نقطة تفاعل واحدة",
            "يمكن دمج عدة عمليات للنظام الفرعي",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Simplifies usage of complex libraries",
        "Reduces dependencies on subsystem classes",
        "Provides a single entry point",
        "Easy to understand and use",
      ],
      ar: [
        "يبسط استخدام المكتبات المعقدة",
        "يقلل التبعيات على فئات النظام الفرعي",
        "يوفر نقطة دخول واحدة",
        "سهل الفهم والاستخدام",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can become a god object if not careful",
        "May limit flexibility if poorly designed",
        "Can hide too much, making advanced usage difficult",
        "Additional layer of abstraction",
      ],
      ar: [
        "قد يصبح كائناً إلهياً إذا لم تكن حذراً",
        "قد يحد من المرونة إذا كان سيئ التصميم",
        "قد يخفي الكثير، مما يجعل الاستخدام المتقدم صعباً",
        "طبقة تجريد إضافية",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Facade when:"),
        UnorderedListContent(
          value: [
            "You need a simple interface to a complex subsystem",
            "You want to layer your subsystems",
            "You want to reduce coupling between client and subsystem",
            "You're integrating legacy code or third-party libraries",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم الواجهة عندما:"),
        UnorderedListContent(
          value: [
            "تحتاج واجهة بسيطة لنظام فرعي معقد",
            "تريد تطبيق طبقات على أنظمتك الفرعية",
            "تريد تقليل الاقتران بين العميل والنظام الفرعي",
            "تدمج كوداً قديماً أو مكتبات طرف ثالث",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Making facade too complex with too many responsibilities",
        "Exposing too much internal structure",
        "Not allowing direct subsystem access when needed",
        "Creating multiple competing facades for same subsystem",
      ],
      ar: [
        "جعل الواجهة معقدة جداً مع مسؤوليات كثيرة",
        "كشف الكثير من البنية الداخلية",
        "عدم السماح بالوصول المباشر للنظام الفرعي عند الحاجة",
        "إنشاء واجهات متنافسة متعددة لنفس النظام الفرعي",
      ],
    ),
    relatedPatterns: [
      PatternKeys.adapter,
      PatternKeys.singleton,
      PatternKeys.abstractFactory,
    ],
    oftenConfusedWith: [PatternKeys.adapter],
  ),
  PatternKeys.flyweight: DesignPattern(
    id: PatternKeys.flyweight,
    title: LocalizedString(en: "Flyweight", ar: "وزن الريشة (Flyweight)"),
    description: LocalizedString(
      en: "Shares common state among multiple objects to reduce memory usage",
      ar: "يشارك الحالة المشتركة بين عدة كائنات لتقليل استخدام الذاكرة",
    ),
    group: .design,
    type: PatternType.structural,
    category: .GoF,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Flyweight pattern minimizes memory usage by sharing as much data as possible with similar objects. It separates intrinsic state (shared) from extrinsic state (context-specific).",
        ),
        StringContent(
          "This pattern is particularly useful when you need to create a large number of similar objects. Instead of storing all data in every object, shared data is stored once and referenced.",
        ),
        UnorderedListContent(
          title: "Key Concepts:",
          value: [
            "Intrinsic state: Shared, immutable data stored in flyweight",
            "Extrinsic state: Context-specific data passed to flyweight methods",
            "Flyweight factory: Manages flyweight instances",
            "Reuse: Same flyweight instance used in multiple contexts",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط وزن الريشة يقلل استخدام الذاكرة من خلال مشاركة أكبر قدر ممكن من البيانات مع كائنات مشابهة. يفصل الحالة الجوهرية (المشتركة) عن الحالة الخارجية (الخاصة بالسياق).",
        ),
        StringContent(
          "هذا النمط مفيد بشكل خاص عندما تحتاج لإنشاء عدد كبير من الكائنات المتشابهة. بدلاً من تخزين جميع البيانات في كل كائن، تُخزن البيانات المشتركة مرة واحدة ويُشار إليها.",
        ),
        UnorderedListContent(
          title: "المفاهيم الأساسية:",
          value: [
            "الحالة الجوهرية: بيانات مشتركة وثابتة مُخزنة في وزن الريشة",
            "الحالة الخارجية: بيانات خاصة بالسياق تُمرر لطرق وزن الريشة",
            "مصنع وزن الريشة: يدير نسخ وزن الريشة",
            "إعادة الاستخدام: نفس نسخة وزن الريشة تُستخدم في سياقات متعددة",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Significantly reduces memory usage",
        "Can handle large numbers of objects efficiently",
        "Improves performance by reducing object creation",
        "Separates shared and unique state clearly",
      ],
      ar: [
        "يقلل استخدام الذاكرة بشكل كبير",
        "يمكنه التعامل مع أعداد كبيرة من الكائنات بكفاءة",
        "يحسن الأداء من خلال تقليل إنشاء الكائنات",
        "يفصل الحالة المشتركة والفريدة بوضوح",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Increases code complexity",
        "Extrinsic state management can be tricky",
        "Only beneficial with many similar objects",
        "Requires careful separation of state types",
      ],
      ar: [
        "يزيد تعقيد الكود",
        "إدارة الحالة الخارجية قد تكون صعبة",
        "مفيد فقط مع العديد من الكائنات المتشابهة",
        "يتطلب فصلاً دقيقاً لأنواع الحالة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Flyweight when:"),
        UnorderedListContent(
          value: [
            "Application uses large numbers of similar objects",
            "Memory usage is a concern",
            "Objects share significant amounts of state",
            "Object identity is not important",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم وزن الريشة عندما:"),
        UnorderedListContent(
          value: [
            "يستخدم التطبيق أعداداً كبيرة من الكائنات المتشابهة",
            "استخدام الذاكرة مصدر قلق",
            "الكائنات تشارك كميات كبيرة من الحالة",
            "هوية الكائن ليست مهمة",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Using when object count is small",
        "Not properly separating intrinsic and extrinsic state",
        "Making flyweights mutable",
        "Over-complicating simple scenarios",
      ],
      ar: [
        "الاستخدام عندما يكون عدد الكائنات صغيراً",
        "عدم فصل الحالة الجوهرية والخارجية بشكل صحيح",
        "جعل أوزان الريشة قابلة للتغيير",
        "التعقيد المفرط للسيناريوهات البسيطة",
      ],
    ),
    relatedPatterns: [
      PatternKeys.singleton,
      PatternKeys.objectPool,
      PatternKeys.composite,
    ],
    oftenConfusedWith: [PatternKeys.objectPool],
  ),
  PatternKeys.proxy: DesignPattern(
    id: PatternKeys.proxy,
    title: LocalizedString(en: "Proxy", ar: "الوكيل (Proxy)"),
    description: LocalizedString(
      en: "Provides a surrogate or placeholder for another object to control access to it",
      ar: "يوفر بديلاً أو عنصراً نائباً لكائن آخر للتحكم في الوصول إليه",
    ),
    group: .design,
    type: PatternType.structural,
    category: .GoF,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Proxy pattern provides a substitute or placeholder for another object. A proxy controls access to the original object, allowing you to perform something either before or after the request gets through to the original object.",
        ),
        UnorderedListContent(
          title: "Common Types:",
          value: [
            "Virtual Proxy: Lazy initialization of expensive objects",
            "Remote Proxy: Represents object in different address space",
            "Protection Proxy: Controls access based on permissions",
            "Caching Proxy: Caches results of expensive operations",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط الوكيل يوفر بديلاً أو عنصراً نائباً لكائن آخر. الوكيل يتحكم في الوصول للكائن الأصلي، مما يسمح لك بتنفيذ شيء ما قبل أو بعد وصول الطلب للكائن الأصلي.",
        ),
        UnorderedListContent(
          title: "الأنواع الشائعة:",
          value: [
            "الوكيل الافتراضي: تهيئة كسولة للكائنات المكلفة",
            "الوكيل البعيد: يمثل كائناً في مساحة عنوان مختلفة",
            "وكيل الحماية: يتحكم في الوصول بناءً على الأذونات",
            "وكيل التخزين المؤقت: يخزن نتائج العمليات المكلفة مؤقتاً",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Controls access to objects",
        "Can add functionality transparently",
        "Supports lazy initialization",
        "Can add security, caching, or logging",
      ],
      ar: [
        "يتحكم في الوصول للكائنات",
        "يمكن إضافة وظائف بشفافية",
        "يدعم التهيئة الكسولة",
        "يمكن إضافة الأمان أو التخزين المؤقت أو التسجيل",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Adds extra layer and complexity",
        "Response time may increase",
        "Requires maintaining proxy and real object in sync",
        "Can make debugging harder",
      ],
      ar: [
        "يضيف طبقة وتعقيداً إضافياً",
        "قد يزيد وقت الاستجابة",
        "يتطلب الحفاظ على تزامن الوكيل والكائن الحقيقي",
        "قد يجعل تصحيح الأخطاء أصعب",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Proxy when:"),
        UnorderedListContent(
          value: [
            "You need lazy initialization of expensive objects",
            "You want to add access control",
            "You need remote object access",
            "You want caching or logging without changing the object",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم الوكيل عندما:"),
        UnorderedListContent(
          value: [
            "تحتاج لتهيئة كسولة للكائنات المكلفة",
            "تريد إضافة تحكم في الوصول",
            "تحتاج للوصول لكائن بعيد",
            "تريد التخزين المؤقت أو التسجيل دون تغيير الكائن",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Not implementing same interface as real object",
        "Adding too much logic to proxy",
        "Using when simple direct access suffices",
        "Not handling proxy initialization errors",
      ],
      ar: [
        "عدم تنفيذ نفس واجهة الكائن الحقيقي",
        "إضافة الكثير من المنطق للوكيل",
        "الاستخدام عندما يكفي الوصول المباشر البسيط",
        "عدم التعامل مع أخطاء تهيئة الوكيل",
      ],
    ),
    relatedPatterns: [
      PatternKeys.adapter,
      PatternKeys.decorator,
      PatternKeys.facade,
    ],
    oftenConfusedWith: [PatternKeys.adapter, PatternKeys.decorator],
  ),
  PatternKeys.wrapper: DesignPattern(
    id: PatternKeys.wrapper,
    title: LocalizedString(en: "Wrapper", ar: "الغلاف (Wrapper)"),
    description: LocalizedString(
      en: "A general term for patterns that wrap objects to extend or adapt their behavior",
      ar: "مصطلح عام للأنماط التي تلف الكائنات لتوسيع أو تكييف سلوكها",
    ),
    group: .design,
    type: PatternType.structural,
    category: .practical,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "Wrapper is a general term that encompasses patterns like Adapter and Decorator. It refers to any pattern where one object wraps another to modify or extend its interface or behavior.",
        ),
        StringContent(
          "While not a standalone GoF pattern, the wrapper concept is fundamental to understanding how objects can be enhanced or adapted through composition rather than inheritance.",
        ),
        UnorderedListContent(
          title: "Common Wrapper Uses:",
          value: [
            "Adapting interfaces (Adapter pattern)",
            "Adding behavior (Decorator pattern)",
            "Controlling access (Proxy pattern)",
            "Simplifying interfaces (Facade pattern)",
          ],
        ),
      ],
      ar: [
        StringContent(
          "الغلاف مصطلح عام يشمل أنماطاً مثل المُحوّل والمُزخرف. يشير إلى أي نمط حيث يلف كائن آخر لتعديل أو توسيع واجهته أو سلوكه.",
        ),
        StringContent(
          "بينما ليس نمطاً منفصلاً من GoF، مفهوم الغلاف أساسي لفهم كيف يمكن تعزيز أو تكييف الكائنات من خلال التركيب بدلاً من الوراثة.",
        ),
        UnorderedListContent(
          title: "استخدامات الغلاف الشائعة:",
          value: [
            "تكييف الواجهات (نمط المُحوّل)",
            "إضافة السلوك (نمط المُزخرف)",
            "التحكم في الوصول (نمط الوكيل)",
            "تبسيط الواجهات (نمط الواجهة)",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Composition over inheritance",
        "Runtime behavior modification",
        "Separation of concerns",
        "Flexible and reusable",
      ],
      ar: [
        "التركيب على الوراثة",
        "تعديل السلوك في وقت التشغيل",
        "فصل الاهتمامات",
        "مرن وقابل لإعادة الاستخدام",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can add complexity with multiple layers",
        "May impact performance",
        "Can make code harder to debug",
        "Requires careful interface design",
      ],
      ar: [
        "قد يضيف تعقيداً مع طبقات متعددة",
        "قد يؤثر على الأداء",
        "قد يجعل الكود أصعب في تصحيح الأخطاء",
        "يتطلب تصميم واجهة دقيق",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Wrapper concept when:"),
        UnorderedListContent(
          value: [
            "You need to extend functionality without inheritance",
            "You want to add cross-cutting concerns",
            "You need to adapt existing interfaces",
            "Runtime behavior modification is required",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم مفهوم الغلاف عندما:"),
        UnorderedListContent(
          value: [
            "تحتاج لتوسيع الوظائف دون وراثة",
            "تريد إضافة اهتمامات شاملة",
            "تحتاج لتكييف واجهات موجودة",
            "تعديل السلوك في وقت التشغيل مطلوب",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Creating too many wrapper layers",
        "Not maintaining interface consistency",
        "Using when simple inheritance would suffice",
        "Forgetting to forward all necessary methods",
      ],
      ar: [
        "إنشاء طبقات غلاف كثيرة جداً",
        "عدم الحفاظ على اتساق الواجهة",
        "الاستخدام عندما تكفي الوراثة البسيطة",
        "نسيان توجيه جميع الطرق الضرورية",
      ],
    ),
    relatedPatterns: [
      PatternKeys.adapter,
      PatternKeys.decorator,
      PatternKeys.proxy,
    ],
    oftenConfusedWith: [PatternKeys.decorator],
  ),
  PatternKeys.dataMapper: DesignPattern(
    id: PatternKeys.dataMapper,
    title: LocalizedString(
      en: "Data Mapper",
      ar: "مُخطط البيانات (Data Mapper)",
    ),
    description: LocalizedString(
      en: "Separates domain objects from database access logic",
      ar: "يفصل كائنات المجال عن منطق الوصول لقاعدة البيانات",
    ),
    group: .design,
    type: PatternType.structural,
    category: .practical,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "Data Mapper is a layer that moves data between objects and a database while keeping them independent of each other. Domain objects have no knowledge of how they're persisted.",
        ),
        StringContent(
          "This pattern is essential for maintaining clean separation between your business logic and data access layers, allowing each to evolve independently.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Domain Model: Pure business objects without persistence logic",
            "Mapper: Handles data transfer between domain and database",
            "Database Layer: Actual data storage mechanism",
            "Identity Map (optional): Ensures single instance per record",
          ],
        ),
      ],
      ar: [
        StringContent(
          "مُخطط البيانات هو طبقة تنقل البيانات بين الكائنات وقاعدة البيانات مع إبقائها مستقلة عن بعضها. كائنات المجال ليس لديها معرفة بكيفية حفظها.",
        ),
        StringContent(
          "هذا النمط أساسي للحفاظ على فصل نظيف بين منطق العمل وطبقات الوصول للبيانات، مما يسمح لكل منها بالتطور بشكل مستقل.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "نموذج المجال: كائنات عمل نقية بدون منطق حفظ",
            "المُخطط: يتعامل مع نقل البيانات بين المجال وقاعدة البيانات",
            "طبقة قاعدة البيانات: آلية التخزين الفعلية للبيانات",
            "خريطة الهوية (اختياري): يضمن نسخة واحدة لكل سجل",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Keeps domain objects clean of persistence concerns",
        "Allows independent evolution of domain and data layers",
        "Easier to test domain logic",
        "Supports multiple data sources",
      ],
      ar: [
        "يبقي كائنات المجال نظيفة من اهتمامات الحفظ",
        "يسمح بتطور مستقل لطبقات المجال والبيانات",
        "أسهل في اختبار منطق المجال",
        "يدعم مصادر بيانات متعددة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Adds complexity with additional layer",
        "Requires more code and classes",
        "Can have performance overhead",
        "Mapping logic can become complex",
      ],
      ar: [
        "يضيف تعقيداً مع طبقة إضافية",
        "يتطلب المزيد من الكود والفئات",
        "قد يكون له عبء أداء",
        "منطق التخطيط قد يصبح معقداً",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Data Mapper when:"),
        UnorderedListContent(
          value: [
            "You want rich domain models free of persistence logic",
            "Domain and database schemas differ significantly",
            "You need to support multiple data sources",
            "You want maximum testability of domain logic",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم مُخطط البيانات عندما:"),
        UnorderedListContent(
          value: [
            "تريد نماذج مجال غنية خالية من منطق الحفظ",
            "مخططات المجال وقاعدة البيانات تختلف بشكل كبير",
            "تحتاج لدعم مصادر بيانات متعددة",
            "تريد أقصى قابلية اختبار لمنطق المجال",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Putting business logic in mappers",
        "Creating bidirectional dependencies",
        "Not handling complex object graphs properly",
        "Ignoring N+1 query problems",
      ],
      ar: [
        "وضع منطق العمل في المُخططات",
        "إنشاء تبعيات ثنائية الاتجاه",
        "عدم التعامل مع رسوم الكائنات المعقدة بشكل صحيح",
        "تجاهل مشاكل استعلام N+1",
      ],
    ),
    relatedPatterns: [
      PatternKeys.repository,
      PatternKeys.unitOfWork,
      PatternKeys.dto,
    ],
  ),
  PatternKeys.dto: DesignPattern(
    id: PatternKeys.dto,
    title: LocalizedString(
      en: "Data Transfer Object (DTO)",
      ar: "كائن نقل البيانات (DTO)",
    ),
    description: LocalizedString(
      en: "Transfers data between software application subsystems",
      ar: "ينقل البيانات بين أنظمة فرعية للتطبيق البرمجي",
    ),
    group: .design,
    type: PatternType.structural,
    category: .practical,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "A DTO is a simple object that carries data between processes. It has no behavior except for storage and retrieval of its own data (accessors and mutators).",
        ),
        StringContent(
          "DTOs are commonly used to transfer data across network boundaries, between layers, or when you need to aggregate data from multiple sources into a single object.",
        ),
        UnorderedListContent(
          title: "Common Use Cases:",
          value: [
            "API request/response objects",
            "Data transfer between client and server",
            "Aggregating data from multiple domain objects",
            "Isolating internal models from external interfaces",
          ],
        ),
      ],
      ar: [
        StringContent(
          "DTO هو كائن بسيط ينقل البيانات بين العمليات. ليس له سلوك إلا لتخزين واسترجاع بياناته الخاصة (الموصلات والمغيرات).",
        ),
        StringContent(
          "تُستخدم DTOs عادة لنقل البيانات عبر حدود الشبكة، بين الطبقات، أو عندما تحتاج لتجميع البيانات من مصادر متعددة في كائن واحد.",
        ),
        UnorderedListContent(
          title: "حالات الاستخدام الشائعة:",
          value: [
            "كائنات طلب/استجابة API",
            "نقل البيانات بين العميل والخادم",
            "تجميع البيانات من عدة كائنات مجال",
            "عزل النماذج الداخلية عن الواجهات الخارجية",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Reduces network calls by batching data",
        "Decouples internal models from external contracts",
        "Simplifies serialization",
        "Clear data contracts",
      ],
      ar: [
        "يقلل استدعاءات الشبكة من خلال تجميع البيانات",
        "يفصل النماذج الداخلية عن العقود الخارجية",
        "يبسط التسلسل",
        "عقود بيانات واضحة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Requires mapping between DTOs and domain objects",
        "Additional boilerplate code",
        "Can lead to anemic domain models if overused",
        "Duplication of property definitions",
      ],
      ar: [
        "يتطلب التخطيط بين DTOs وكائنات المجال",
        "كود قالبي إضافي",
        "قد يؤدي لنماذج مجال فقيرة إذا استُخدم بكثرة",
        "تكرار تعريفات الخصائص",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use DTO when:"),
        UnorderedListContent(
          value: [
            "Transferring data across network boundaries",
            "Aggregating data from multiple sources",
            "You need different representations for different consumers",
            "Separating API contracts from domain models",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم DTO عندما:"),
        UnorderedListContent(
          value: [
            "نقل البيانات عبر حدود الشبكة",
            "تجميع البيانات من مصادر متعددة",
            "تحتاج تمثيلات مختلفة لمستهلكين مختلفين",
            "فصل عقود API عن نماذج المجال",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Adding business logic to DTOs",
        "Using DTOs everywhere instead of domain objects",
        "Not validating DTO data",
        "Creating overly complex DTOs",
      ],
      ar: [
        "إضافة منطق عمل إلى DTOs",
        "استخدام DTOs في كل مكان بدلاً من كائنات المجال",
        "عدم التحقق من بيانات DTO",
        "إنشاء DTOs معقدة بشكل مفرط",
      ],
    ),
    relatedPatterns: [
      PatternKeys.dataMapper,
      PatternKeys.adapter,
      PatternKeys.facade,
    ],
  ),
  PatternKeys.extensionObject: DesignPattern(
    id: PatternKeys.extensionObject,
    title: LocalizedString(
      en: "Extension Object",
      ar: "كائن التوسيع (Extension Object)",
    ),
    description: LocalizedString(
      en: "Allows extending objects with new functionality at runtime",
      ar: "يسمح بتوسيع الكائنات بوظائف جديدة في وقت التشغيل",
    ),
    group: .design,
    type: PatternType.structural,
    category: .practical,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Extension Object pattern allows clients to add new functionality to objects without modifying their classes. It provides a way to anticipate future extensions.",
        ),
        StringContent(
          "This pattern is particularly useful in framework design where you want to allow plugins or extensions without knowing in advance what they'll be.",
        ),
        UnorderedListContent(
          title: "Implementation Approaches:",
          value: [
            "Extension registry: Objects register extensions by name/type",
            "Extension methods: Static methods that appear as instance methods",
            "Plugin architecture: Loadable modules that extend functionality",
            "Visitor-like approach: Double dispatch for extensions",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط كائن التوسيع يسمح للعملاء بإضافة وظائف جديدة للكائنات دون تعديل فئاتها. يوفر طريقة لتوقع التوسعات المستقبلية.",
        ),
        StringContent(
          "هذا النمط مفيد بشكل خاص في تصميم الأطر حيث تريد السماح بالإضافات أو التوسعات دون معرفة مسبقة بما ستكون.",
        ),
        UnorderedListContent(
          title: "طرق التنفيذ:",
          value: [
            "سجل التوسيع: الكائنات تسجل التوسعات بالاسم/النوع",
            "طرق التوسيع: طرق ثابتة تظهر كطرق نسخة",
            "معمارية الإضافات: وحدات قابلة للتحميل تُوسع الوظائف",
            "نهج شبيه بالزائر: إرسال مزدوج للتوسعات",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Allows runtime extension",
        "Avoids class proliferation",
        "Supports open/closed principle",
        "Flexible plugin architecture",
      ],
      ar: [
        "يسمح بالتوسع في وقت التشغيل",
        "يتجنب تكاثر الفئات",
        "يدعم مبدأ المفتوح/المغلق",
        "معمارية إضافات مرنة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can make code harder to follow",
        "Type safety challenges",
        "Potential performance overhead",
        "Complexity in managing extensions",
      ],
      ar: [
        "قد يجعل الكود أصعب في المتابعة",
        "تحديات أمان الأنواع",
        "عبء أداء محتمل",
        "تعقيد في إدارة التوسعات",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Extension Object when:"),
        UnorderedListContent(
          value: [
            "You need to add features to objects without subclassing",
            "Building a framework with plugin support",
            "Future extensions are anticipated but unknown",
            "You want to avoid heavy inheritance hierarchies",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم كائن التوسيع عندما:"),
        UnorderedListContent(
          value: [
            "تحتاج لإضافة ميزات للكائنات دون فئات فرعية",
            "بناء إطار مع دعم الإضافات",
            "التوسعات المستقبلية متوقعة لكن غير معروفة",
            "تريد تجنب التسلسلات الهرمية الثقيلة للوراثة",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Overusing when simple inheritance would work",
        "Not properly managing extension lifecycles",
        "Creating tight coupling between extensions",
        "Ignoring type safety concerns",
      ],
      ar: [
        "الإفراط في الاستخدام عندما تكفي الوراثة البسيطة",
        "عدم إدارة دورات حياة التوسيع بشكل صحيح",
        "إنشاء اقتران وثيق بين التوسعات",
        "تجاهل مخاوف أمان الأنواع",
      ],
    ),
    relatedPatterns: [
      PatternKeys.visitor,
      PatternKeys.decorator,
      PatternKeys.plugin,
    ],
  ),
  PatternKeys.plugin: DesignPattern(
    id: PatternKeys.plugin,
    title: LocalizedString(en: "Plugin", ar: "الإضافة (Plugin)"),
    description: LocalizedString(
      en: "Allows adding functionality to an application at runtime through loadable modules",
      ar: "يسمح بإضافة وظائف للتطبيق في وقت التشغيل من خلال وحدات قابلة للتحميل",
    ),
    group: .design,
    type: PatternType.structural,
    category: .practical,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Plugin pattern enables extending application functionality without modifying the core code. Plugins are modules that can be added, removed, or updated independently.",
        ),
        StringContent(
          "This pattern is fundamental to creating extensible applications like IDEs, browsers, content management systems, and frameworks.",
        ),
        UnorderedListContent(
          title: "Key Elements:",
          value: [
            "Plugin Interface: Contract that plugins must implement",
            "Plugin Manager: Discovers, loads, and manages plugins",
            "Host Application: Core app that plugins extend",
            "Plugin Lifecycle: Registration, initialization, execution, cleanup",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط الإضافة يمكّن من توسيع وظائف التطبيق دون تعديل الكود الأساسي. الإضافات هي وحدات يمكن إضافتها أو إزالتها أو تحديثها بشكل مستقل.",
        ),
        StringContent(
          "هذا النمط أساسي لإنشاء تطبيقات قابلة للتوسيع مثل بيئات التطوير المتكاملة والمتصفحات وأنظمة إدارة المحتوى والأطر.",
        ),
        UnorderedListContent(
          title: "العناصر الأساسية:",
          value: [
            "واجهة الإضافة: العقد الذي يجب أن تنفذه الإضافات",
            "مدير الإضافات: يكتشف ويحمل ويدير الإضافات",
            "التطبيق المضيف: التطبيق الأساسي الذي توسعه الإضافات",
            "دورة حياة الإضافة: التسجيل، التهيئة، التنفيذ، التنظيف",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Highly extensible without core changes",
        "Supports third-party development",
        "Hot-swappable components",
        "Modular architecture",
      ],
      ar: [
        "قابل للتوسيع بشكل كبير دون تغييرات أساسية",
        "يدعم تطوير الطرف الثالث",
        "مكونات قابلة للتبديل السريع",
        "معمارية معيارية",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Security concerns with third-party plugins",
        "Version compatibility issues",
        "Performance overhead from plugin loading",
        "Complex dependency management",
      ],
      ar: [
        "مخاوف أمنية مع إضافات الطرف الثالث",
        "مشاكل توافق الإصدارات",
        "عبء أداء من تحميل الإضافات",
        "إدارة تبعيات معقدة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Plugin when:"),
        UnorderedListContent(
          value: [
            "Building extensible applications or frameworks",
            "You want to support third-party extensions",
            "Features should be added/removed dynamically",
            "Creating modular, component-based systems",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم الإضافة عندما:"),
        UnorderedListContent(
          value: [
            "بناء تطبيقات أو أطر قابلة للتوسيع",
            "تريد دعم توسعات الطرف الثالث",
            "يجب إضافة/إزالة الميزات ديناميكياً",
            "إنشاء أنظمة معيارية قائمة على المكونات",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Insufficient plugin isolation (security)",
        "Poor version management",
        "Not validating plugin integrity",
        "Unclear plugin API contracts",
      ],
      ar: [
        "عزل إضافات غير كافٍ (أمني)",
        "إدارة إصدارات سيئة",
        "عدم التحقق من سلامة الإضافة",
        "عقود API إضافة غير واضحة",
      ],
    ),
    relatedPatterns: [
      PatternKeys.extensionObject,
      PatternKeys.factoryKit,
      PatternKeys.abstractFactory,
    ],
  ),
  PatternKeys.chainOfResponsibility: DesignPattern(
    id: PatternKeys.chainOfResponsibility,
    title: LocalizedString(
      en: "Chain of Responsibility",
      ar: "سلسلة المسؤولية (Chain of Responsibility)",
    ),
    description: LocalizedString(
      en: "Passes requests along a chain of handlers until one handles it",
      ar: "يمرر الطلبات على طول سلسلة من المعالجات حتى يتعامل أحدها معه",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Chain of Responsibility pattern allows you to pass requests along a chain of handlers. Each handler decides either to process the request or to pass it to the next handler in the chain.",
        ),
        StringContent(
          "This pattern promotes loose coupling by preventing a sender from needing to know which object will ultimately handle its request. Handlers can be added, removed, or reordered dynamically.",
        ),
        UnorderedListContent(
          title: "Key Concepts:",
          value: [
            "Handler: Interface for handling requests",
            "Concrete Handlers: Process requests or pass to next handler",
            "Client: Initiates request to chain",
            "Chain: Linked handlers in sequence",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط سلسلة المسؤولية يسمح لك بتمرير الطلبات على طول سلسلة من المعالجات. كل معالج يقرر إما معالجة الطلب أو تمريره للمعالج التالي في السلسلة.",
        ),
        StringContent(
          "هذا النمط يعزز الاقتران الفضفاض من خلال منع المُرسل من الحاجة لمعرفة أي كائن سيتعامل في النهاية مع طلبه. يمكن إضافة المعالجات أو إزالتها أو إعادة ترتيبها ديناميكياً.",
        ),
        UnorderedListContent(
          title: "المفاهيم الأساسية:",
          value: [
            "المعالج (Handler): واجهة لمعالجة الطلبات",
            "المعالجات المحددة: تعالج الطلبات أو تمررها للمعالج التالي",
            "العميل (Client): يبدأ الطلب للسلسلة",
            "السلسلة: معالجات مرتبطة بتسلسل",
          ],
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class Handler {
  Handler? _nextHandler;
  
  void setNext(Handler handler) {
    _nextHandler = handler;
  }
  
  void handle(Request request) {
    if (canHandle(request)) {
      processRequest(request);
    } else if (_nextHandler != null) {
      _nextHandler!.handle(request);
    } else {
      print("Request could not be handled: \${request.description}");
    }
  }
  
  bool canHandle(Request request);
  void processRequest(Request request);
}

class Request {
  final String type;
  final String description;
  final int priority;
  
  Request(this.type, this.description, this.priority);
}

class LowPriorityHandler extends Handler {
  @override
  bool canHandle(Request request) => request.priority <= 3;
  
  @override
  void processRequest(Request request) {
    print("LowPriorityHandler: Handling \${request.description}");
  }
}

class MediumPriorityHandler extends Handler {
  @override
  bool canHandle(Request request) => request.priority > 3 && request.priority <= 7;
  
  @override
  void processRequest(Request request) {
    print("MediumPriorityHandler: Handling \${request.description}");
  }
}

class HighPriorityHandler extends Handler {
  @override
  bool canHandle(Request request) => request.priority > 7;
  
  @override
  void processRequest(Request request) {
    print("HighPriorityHandler: Handling \${request.description}");
  }
}

void main() {
  final low = LowPriorityHandler();
  final medium = MediumPriorityHandler();
  final high = HighPriorityHandler();
  
  low.setNext(medium);
  medium.setNext(high);
  
  final requests = [
    Request("bug", "Minor UI glitch", 2),
    Request("feature", "New dashboard", 5),
    Request("critical", "System crash", 10),
  ];
  
  for (final request in requests) {
    low.handle(request);
  }
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class Handler {
  Handler? _nextHandler;
  
  void setNext(Handler handler) {
    _nextHandler = handler;
  }
  
  void handle(Request request) {
    if (canHandle(request)) {
      processRequest(request);
    } else if (_nextHandler != null) {
      _nextHandler!.handle(request);
    } else {
      print("لم يمكن معالجة الطلب: \${request.description}");
    }
  }
  
  bool canHandle(Request request);
  void processRequest(Request request);
}

class Request {
  final String type;
  final String description;
  final int priority;
  
  Request(this.type, this.description, this.priority);
}

class LowPriorityHandler extends Handler {
  @override
  bool canHandle(Request request) => request.priority <= 3;
  
  @override
  void processRequest(Request request) {
    print("معالج الأولوية المنخفضة: معالجة \${request.description}");
  }
}

class MediumPriorityHandler extends Handler {
  @override
  bool canHandle(Request request) => request.priority > 3 && request.priority <= 7;
  
  @override
  void processRequest(Request request) {
    print("معالج الأولوية المتوسطة: معالجة \${request.description}");
  }
}

class HighPriorityHandler extends Handler {
  @override
  bool canHandle(Request request) => request.priority > 7;
  
  @override
  void processRequest(Request request) {
    print("معالج الأولوية العالية: معالجة \${request.description}");
  }
}

void main() {
  final low = LowPriorityHandler();
  final medium = MediumPriorityHandler();
  final high = HighPriorityHandler();
  
  low.setNext(medium);
  medium.setNext(high);
  
  final requests = [
    Request("bug", "خلل واجهة بسيط", 2),
    Request("feature", "لوحة تحكم جديدة", 5),
    Request("critical", "انهيار النظام", 10),
  ];
  
  for (final request in requests) {
    low.handle(request);
  }
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Decouples sender from receivers",
        "Flexible chain composition",
        "Single Responsibility - each handler does one thing",
        "Open/Closed - easy to add new handlers",
      ],
      ar: [
        "يفصل المُرسل عن المستقبلين",
        "تركيب سلسلة مرن",
        "المسؤولية الواحدة - كل معالج يفعل شيئاً واحداً",
        "المفتوح/المغلق - سهولة إضافة معالجات جديدة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "No guarantee request will be handled",
        "Can be hard to debug",
        "Performance concerns with long chains",
        "May create unexpected behavior if chain order is wrong",
      ],
      ar: [
        "لا ضمان أن الطلب سيُعالج",
        "قد يكون صعب التصحيح",
        "مخاوف الأداء مع السلاسل الطويلة",
        "قد يخلق سلوكاً غير متوقع إذا كان ترتيب السلسلة خاطئاً",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Chain of Responsibility when:"),
        UnorderedListContent(
          value: [
            "Multiple objects may handle a request",
            "The handler isn't known in advance",
            "You want to decouple sender from receiver",
            "You want dynamic handler assignment",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم سلسلة المسؤولية عندما:"),
        UnorderedListContent(
          value: [
            "عدة كائنات قد تعالج طلباً",
            "المعالج غير معروف مسبقاً",
            "تريد فصل المُرسل عن المستقبل",
            "تريد تعيين معالج ديناميكي",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Not handling the case when no handler processes request",
        "Creating circular chains",
        "Making handlers too complex",
        "Not considering chain order carefully",
      ],
      ar: [
        "عدم التعامل مع الحالة عندما لا يعالج أي معالج الطلب",
        "إنشاء سلاسل دائرية",
        "جعل المعالجات معقدة جداً",
        "عدم النظر في ترتيب السلسلة بعناية",
      ],
    ),
    relatedPatterns: [
      PatternKeys.command,
      PatternKeys.composite,
      PatternKeys.decorator,
    ],
  ),
  PatternKeys.command: DesignPattern(
    id: PatternKeys.command,
    title: LocalizedString(en: "Command", ar: "الأمر (Command)"),
    description: LocalizedString(
      en: "Encapsulates a request as an object, allowing parameterization and queuing",
      ar: "يغلف طلباً ككائن، مما يسمح بالمعاملات والوضع في قوائم الانتظار",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Command pattern turns a request into a stand-alone object that contains all information about the request. This transformation lets you pass requests as method arguments, delay or queue execution, and support undoable operations.",
        ),
        StringContent(
          "Commands decouple objects that invoke operations from objects that perform them. This is fundamental for implementing undo/redo, macro recording, and transaction systems.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Command: Interface with execute() method",
            "Concrete Command: Implements execute() and binds receiver",
            "Receiver: Performs the actual work",
            "Invoker: Asks command to execute",
            "Client: Creates and configures commands",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط الأمر يحول طلباً إلى كائن مستقل يحتوي على جميع المعلومات عن الطلب. هذا التحويل يتيح لك تمرير الطلبات كمعاملات طرق، وتأخير أو وضع التنفيذ في قائمة انتظار، ودعم العمليات القابلة للتراجع.",
        ),
        StringContent(
          "الأوامر تفصل الكائنات التي تستدعي العمليات عن الكائنات التي تؤديها. هذا أساسي لتنفيذ التراجع/الإعادة، وتسجيل الماكرو، وأنظمة المعاملات.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "الأمر (Command): واجهة مع طريقة ()execute",
            "الأمر المحدد (Concrete Command): ينفذ ()execute ويربط المستقبل",
            "المستقبل (Receiver): يؤدي العمل الفعلي",
            "المُستدعي (Invoker): يطلب من الأمر التنفيذ",
            "العميل (Client): ينشئ ويُهيئ الأوامر",
          ],
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class Command {
  void execute();
  void undo();
}

class Light {
  bool _isOn = false;
  
  void turnOn() {
    _isOn = true;
    print("Light is ON");
  }
  
  void turnOff() {
    _isOn = false;
    print("Light is OFF");
  }
  
  bool get isOn => _isOn;
}

class LightOnCommand implements Command {
  final Light _light;
  
  LightOnCommand(this._light);
  
  @override
  void execute() {
    _light.turnOn();
  }
  
  @override
  void undo() {
    _light.turnOff();
  }
}

class LightOffCommand implements Command {
  final Light _light;
  
  LightOffCommand(this._light);
  
  @override
  void execute() {
    _light.turnOff();
  }
  
  @override
  void undo() {
    _light.turnOn();
  }
}

class RemoteControl {
  final List<Command> _commandHistory = [];
  
  void pressButton(Command command) {
    command.execute();
    _commandHistory.add(command);
  }
  
  void pressUndo() {
    if (_commandHistory.isNotEmpty) {
      final command = _commandHistory.removeLast();
      command.undo();
    }
  }
}

void main() {
  final light = Light();
  final remote = RemoteControl();
  
  final turnOn = LightOnCommand(light);
  final turnOff = LightOffCommand(light);
  
  remote.pressButton(turnOn);
  remote.pressButton(turnOff);
  remote.pressUndo(); // Light turns back on
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class Command {
  void execute();
  void undo();
}

class Light {
  bool _isOn = false;
  
  void turnOn() {
    _isOn = true;
    print("الضوء مُشغّل");
  }
  
  void turnOff() {
    _isOn = false;
    print("الضوء مُطفأ");
  }
  
  bool get isOn => _isOn;
}

class LightOnCommand implements Command {
  final Light _light;
  
  LightOnCommand(this._light);
  
  @override
  void execute() {
    _light.turnOn();
  }
  
  @override
  void undo() {
    _light.turnOff();
  }
}

class LightOffCommand implements Command {
  final Light _light;
  
  LightOffCommand(this._light);
  
  @override
  void execute() {
    _light.turnOff();
  }
  
  @override
  void undo() {
    _light.turnOn();
  }
}

class RemoteControl {
  final List<Command> _commandHistory = [];
  
  void pressButton(Command command) {
    command.execute();
    _commandHistory.add(command);
  }
  
  void pressUndo() {
    if (_commandHistory.isNotEmpty) {
      final command = _commandHistory.removeLast();
      command.undo();
    }
  }
}

void main() {
  final light = Light();
  final remote = RemoteControl();
  
  final turnOn = LightOnCommand(light);
  final turnOff = LightOffCommand(light);
  
  remote.pressButton(turnOn);
  remote.pressButton(turnOff);
  remote.pressUndo(); // الضوء يُشغّل مرة أخرى
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Decouples invoker from receiver",
        "Easy to add new commands (Open/Closed)",
        "Supports undo/redo operations",
        "Can compose commands into macros",
      ],
      ar: [
        "يفصل المُستدعي عن المستقبل",
        "سهولة إضافة أوامر جديدة (المفتوح/المغلق)",
        "يدعم عمليات التراجع/الإعادة",
        "يمكن تركيب الأوامر في ماكرو",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Increases number of classes",
        "Can be overkill for simple operations",
        "Command history can consume memory",
        "Complex for trivial callbacks",
      ],
      ar: [
        "يزيد عدد الفئات",
        "قد يكون مبالغاً فيه للعمليات البسيطة",
        "سجل الأوامر قد يستهلك الذاكرة",
        "معقد لاستدعاءات بسيطة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Command when:"),
        UnorderedListContent(
          value: [
            "You want to parameterize objects with operations",
            "You need to queue, schedule, or log operations",
            "You want to support undo/redo",
            "You need to structure a system around high-level operations",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم الأمر عندما:"),
        UnorderedListContent(
          value: [
            "تريد معاملة الكائنات بالعمليات",
            "تحتاج لوضع العمليات في قوائم انتظار أو جدولتها أو تسجيلها",
            "تريد دعم التراجع/الإعادة",
            "تحتاج لهيكلة نظام حول عمليات عالية المستوى",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Not implementing undo properly",
        "Making commands too complex with business logic",
        "Not managing command history lifecycle",
        "Using when simple callbacks would suffice",
      ],
      ar: [
        "عدم تنفيذ التراجع بشكل صحيح",
        "جعل الأوامر معقدة جداً مع منطق العمل",
        "عدم إدارة دورة حياة سجل الأوامر",
        "الاستخدام عندما تكفي الاستدعاءات البسيطة",
      ],
    ),
    relatedPatterns: [
      PatternKeys.chainOfResponsibility,
      PatternKeys.memento,
      PatternKeys.composite,
    ],
  ),
  PatternKeys.interpreter: DesignPattern(
    id: PatternKeys.interpreter,
    title: LocalizedString(en: "Interpreter", ar: "المُفسّر (Interpreter)"),
    description: LocalizedString(
      en: "Defines a grammar and interpreter for a language",
      ar: "يُعرّف قواعد نحوية ومُفسّراً للغة",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .GoF,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Interpreter pattern defines a representation for a grammar along with an interpreter that uses the representation to interpret sentences in the language.",
        ),
        StringContent(
          "This pattern is useful for designing simple languages, parsers, or expression evaluators. Each grammar rule becomes a class in the pattern.",
        ),
        UnorderedListContent(
          title: "Key Concepts:",
          value: [
            "Abstract Expression: Interface for all expressions",
            "Terminal Expression: Implements grammar terminal symbols",
            "Non-terminal Expression: Implements grammar rules",
            "Context: Contains global information for interpreter",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط المُفسّر يُعرّف تمثيلاً لقواعد نحوية مع مُفسّر يستخدم التمثيل لتفسير جمل في اللغة.",
        ),
        StringContent(
          "هذا النمط مفيد لتصميم لغات بسيطة أو محللات أو مُقيّمات تعبيرات. كل قاعدة نحوية تصبح فئة في النمط.",
        ),
        UnorderedListContent(
          title: "المفاهيم الأساسية:",
          value: [
            "التعبير المجرد: واجهة لجميع التعبيرات",
            "التعبير الطرفي: ينفذ الرموز الطرفية النحوية",
            "التعبير غير الطرفي: ينفذ القواعد النحوية",
            "السياق: يحتوي على معلومات عامة للمُفسّر",
          ],
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class Expression {
  int interpret(Map<String, int> context);
}

class NumberExpression implements Expression {
  final int number;
  
  NumberExpression(this.number);
  
  @override
  int interpret(Map<String, int> context) => number;
}

class VariableExpression implements Expression {
  final String name;
  
  VariableExpression(this.name);
  
  @override
  int interpret(Map<String, int> context) {
    return context[name] ?? 0;
  }
}

class AddExpression implements Expression {
  final Expression left;
  final Expression right;
  
  AddExpression(this.left, this.right);
  
  @override
  int interpret(Map<String, int> context) {
    return left.interpret(context) + right.interpret(context);
  }
}

class SubtractExpression implements Expression {
  final Expression left;
  final Expression right;
  
  SubtractExpression(this.left, this.right);
  
  @override
  int interpret(Map<String, int> context) {
    return left.interpret(context) - right.interpret(context);
  }
}

void main() {
  // Represents: x + (y - 5)
  final expression = AddExpression(
    VariableExpression('x'),
    SubtractExpression(
      VariableExpression('y'),
      NumberExpression(5),
    ),
  );
  
  final context = {'x': 10, 'y': 20};
  final result = expression.interpret(context);
  
  print('Result: \$result'); // 10 + (20 - 5) = 25
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class Expression {
  int interpret(Map<String, int> context);
}

class NumberExpression implements Expression {
  final int number;
  
  NumberExpression(this.number);
  
  @override
  int interpret(Map<String, int> context) => number;
}

class VariableExpression implements Expression {
  final String name;
  
  VariableExpression(this.name);
  
  @override
  int interpret(Map<String, int> context) {
    return context[name] ?? 0;
  }
}

class AddExpression implements Expression {
  final Expression left;
  final Expression right;
  
  AddExpression(this.left, this.right);
  
  @override
  int interpret(Map<String, int> context) {
    return left.interpret(context) + right.interpret(context);
  }
}

class SubtractExpression implements Expression {
  final Expression left;
  final Expression right;
  
  SubtractExpression(this.left, this.right);
  
  @override
  int interpret(Map<String, int> context) {
    return left.interpret(context) - right.interpret(context);
  }
}

void main() {
  // يمثل: x + (y - 5)
  final expression = AddExpression(
    VariableExpression('x'),
    SubtractExpression(
      VariableExpression('y'),
      NumberExpression(5),
    ),
  );
  
  final context = {'x': 10, 'y': 20};
  final result = expression.interpret(context);
  
  print('النتيجة: \$result'); // 10 + (20 - 5) = 25
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Easy to change and extend grammar",
        "Each rule is a class (easy to understand)",
        "Adding new expressions is straightforward",
        "Good for simple grammars",
      ],
      ar: [
        "سهولة تغيير وتوسيع القواعد النحوية",
        "كل قاعدة فئة (سهل الفهم)",
        "إضافة تعبيرات جديدة مباشرة",
        "جيد للقواعد النحوية البسيطة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Complex grammars are hard to maintain",
        "Can result in many classes",
        "Not efficient for complex languages",
        "Better alternatives exist (parser generators)",
      ],
      ar: [
        "القواعد النحوية المعقدة صعبة الصيانة",
        "قد ينتج عنه فئات كثيرة",
        "غير فعال للغات معقدة",
        "توجد بدائل أفضل (مولدات المحللات)",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Interpreter when:"),
        UnorderedListContent(
          value: [
            "Grammar is simple and not likely to change often",
            "Efficiency is not a critical concern",
            "You're building a simple scripting language",
            "Expression evaluation or rule engine needed",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم المُفسّر عندما:"),
        UnorderedListContent(
          value: [
            "القواعد النحوية بسيطة وليس من المحتمل تغييرها كثيراً",
            "الكفاءة ليست مصدر قلق حرج",
            "تبني لغة برمجة نصية بسيطة",
            "مطلوب تقييم تعبيرات أو محرك قواعد",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Using for complex grammars (use parser generators instead)",
        "Not considering performance implications",
        "Making expression classes too complex",
        "Poor separation of parsing and interpretation",
      ],
      ar: [
        "الاستخدام للقواعد النحوية المعقدة (استخدم مولدات المحللات بدلاً من ذلك)",
        "عدم النظر في آثار الأداء",
        "جعل فئات التعبير معقدة جداً",
        "فصل سيئ بين التحليل والتفسير",
      ],
    ),
    relatedPatterns: [
      PatternKeys.composite,
      PatternKeys.flyweight,
      PatternKeys.iterator,
    ],
  ),
  PatternKeys.iterator: DesignPattern(
    id: PatternKeys.iterator,
    title: LocalizedString(en: "Iterator", ar: "المُكرر (Iterator)"),
    description: LocalizedString(
      en: "Provides sequential access to elements without exposing underlying representation",
      ar: "يوفر وصولاً تسلسلياً للعناصر دون كشف التمثيل الأساسي",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .GoF,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Iterator pattern provides a way to access elements of a collection sequentially without exposing the underlying representation (list, stack, tree, etc.).",
        ),
        StringContent(
          "This pattern extracts traversal behavior into a separate iterator object, allowing multiple traversals to happen simultaneously and supporting different traversal algorithms.",
        ),
        UnorderedListContent(
          title: "Key Benefits:",
          value: [
            "Hides collection's internal structure",
            "Supports multiple simultaneous traversals",
            "Uniform interface for different collections",
            "Single Responsibility - separation of traversal logic",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط المُكرر يوفر طريقة للوصول لعناصر مجموعة بشكل تسلسلي دون كشف التمثيل الأساسي (قائمة، مكدس، شجرة، إلخ).",
        ),
        StringContent(
          "هذا النمط يستخرج سلوك الاجتياز في كائن مُكرر منفصل، مما يسمح بحدوث اجتيازات متعددة في وقت واحد ودعم خوارزميات اجتياز مختلفة.",
        ),
        UnorderedListContent(
          title: "الفوائد الأساسية:",
          value: [
            "يخفي البنية الداخلية للمجموعة",
            "يدعم اجتيازات متزامنة متعددة",
            "واجهة موحدة لمجموعات مختلفة",
            "المسؤولية الواحدة - فصل منطق الاجتياز",
          ],
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class Iterator<T> {
  bool hasNext();
  T next();
}

abstract class Aggregate<T> {
  Iterator<T> createIterator();
}

class BookCollection implements Aggregate<String> {
  final List<String> _books = [];
  
  void addBook(String book) => _books.add(book);
  
  @override
  Iterator<String> createIterator() {
    return BookIterator(_books);
  }
  
  // Alternative traversal
  Iterator<String> createReverseIterator() {
    return ReverseBookIterator(_books);
  }
}

class BookIterator implements Iterator<String> {
  final List<String> _books;
  int _currentIndex = 0;
  
  BookIterator(this._books);
  
  @override
  bool hasNext() => _currentIndex < _books.length;
  
  @override
  String next() {
    if (!hasNext()) throw StateError('No more elements');
    return _books[_currentIndex++];
  }
}

class ReverseBookIterator implements Iterator<String> {
  final List<String> _books;
  late int _currentIndex;
  
  ReverseBookIterator(this._books) {
    _currentIndex = _books.length - 1;
  }
  
  @override
  bool hasNext() => _currentIndex >= 0;
  
  @override
  String next() {
    if (!hasNext()) throw StateError('No more elements');
    return _books[_currentIndex--];
  }
}

void main() {
  final collection = BookCollection();
  collection.addBook('Design Patterns');
  collection.addBook('Clean Code');
  collection.addBook('Refactoring');
  
  print('Forward:');
  var iterator = collection.createIterator();
  while (iterator.hasNext()) {
    print(iterator.next());
  }
  
  print('\\nReverse:');
  var reverseIterator = collection.createReverseIterator();
  while (reverseIterator.hasNext()) {
    print(reverseIterator.next());
  }
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class Iterator<T> {
  bool hasNext();
  T next();
}

abstract class Aggregate<T> {
  Iterator<T> createIterator();
}

class BookCollection implements Aggregate<String> {
  final List<String> _books = [];
  
  void addBook(String book) => _books.add(book);
  
  @override
  Iterator<String> createIterator() {
    return BookIterator(_books);
  }
  
  // اجتياز بديل
  Iterator<String> createReverseIterator() {
    return ReverseBookIterator(_books);
  }
}

class BookIterator implements Iterator<String> {
  final List<String> _books;
  int _currentIndex = 0;
  
  BookIterator(this._books);
  
  @override
  bool hasNext() => _currentIndex < _books.length;
  
  @override
  String next() {
    if (!hasNext()) throw StateError('لا مزيد من العناصر');
    return _books[_currentIndex++];
  }
}

class ReverseBookIterator implements Iterator<String> {
  final List<String> _books;
  late int _currentIndex;
  
  ReverseBookIterator(this._books) {
    _currentIndex = _books.length - 1;
  }
  
  @override
  bool hasNext() => _currentIndex >= 0;
  
  @override
  String next() {
    if (!hasNext()) throw StateError('لا مزيد من العناصر');
    return _books[_currentIndex--];
  }
}

void main() {
  final collection = BookCollection();
  collection.addBook('أنماط التصميم');
  collection.addBook('الكود النظيف');
  collection.addBook('إعادة الهيكلة');
  
  print('للأمام:');
  var iterator = collection.createIterator();
  while (iterator.hasNext()) {
    print(iterator.next());
  }
  
  print('\\nللخلف:');
  var reverseIterator = collection.createReverseIterator();
  while (reverseIterator.hasNext()) {
    print(reverseIterator.next());
  }
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Clean separation of traversal from collection",
        "Single Responsibility Principle",
        "Open/Closed - new iterators without changing collection",
        "Can iterate same collection in parallel",
      ],
      ar: [
        "فصل نظيف للاجتياز عن المجموعة",
        "مبدأ المسؤولية الواحدة",
        "المفتوح/المغلق - مُكررات جديدة دون تغيير المجموعة",
        "يمكن اجتياز نفس المجموعة بالتوازي",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Overkill for simple collections",
        "Less efficient than direct access",
        "Can be complex for complex data structures",
        "Dart already provides excellent iterator support",
      ],
      ar: [
        "مبالغ فيه للمجموعات البسيطة",
        "أقل كفاءة من الوصول المباشر",
        "قد يكون معقداً لهياكل البيانات المعقدة",
        "Dart يوفر بالفعل دعماً ممتازاً للمُكرر",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Iterator when:"),
        UnorderedListContent(
          value: [
            "You want to hide collection's internal structure",
            "You need multiple traversal algorithms",
            "You want a uniform interface for different collections",
            "You need to traverse complex data structures",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم المُكرر عندما:"),
        UnorderedListContent(
          value: [
            "تريد إخفاء البنية الداخلية للمجموعة",
            "تحتاج لخوارزميات اجتياز متعددة",
            "تريد واجهة موحدة لمجموعات مختلفة",
            "تحتاج لاجتياز هياكل بيانات معقدة",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Modifying collection during iteration",
        "Not handling concurrent modifications",
        "Creating iterators when Dart's built-in ones suffice",
        "Not checking hasNext() before calling next()",
      ],
      ar: [
        "تعديل المجموعة أثناء الاجتياز",
        "عدم التعامل مع التعديلات المتزامنة",
        "إنشاء مُكررات عندما تكفي مُكررات Dart المدمجة",
        "عدم التحقق من ()hasNext قبل استدعاء ()next",
      ],
    ),
    relatedPatterns: [
      PatternKeys.composite,
      PatternKeys.factoryMethod,
      PatternKeys.visitor,
    ],
  ),
  PatternKeys.mediator: DesignPattern(
    id: PatternKeys.mediator,
    title: LocalizedString(en: "Mediator", ar: "الوسيط (Mediator)"),
    description: LocalizedString(
      en: "Defines an object that encapsulates how a set of objects interact",
      ar: "يُعرّف كائناً يغلف كيفية تفاعل مجموعة من الكائنات",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Mediator pattern reduces chaotic dependencies between objects by forcing them to communicate indirectly through a mediator object. This promotes loose coupling by keeping objects from referring to each other explicitly.",
        ),
        StringContent(
          "Instead of components communicating directly (creating a web of dependencies), they send messages to a mediator, which coordinates the interaction. This centralizes complex communications and control logic.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Mediator: Interface defining communication methods",
            "Concrete Mediator: Implements coordination logic",
            "Colleague: Components that communicate through mediator",
            "Each colleague knows its mediator but not other colleagues",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط الوسيط يقلل التبعيات الفوضوية بين الكائنات من خلال إجبارها على التواصل بشكل غير مباشر عبر كائن وسيط. هذا يعزز الاقتران الفضفاض من خلال منع الكائنات من الإشارة لبعضها البعض صراحةً.",
        ),
        StringContent(
          "بدلاً من تواصل المكونات مباشرة (مما يخلق شبكة من التبعيات)، ترسل رسائل لوسيط، والذي ينسق التفاعل. هذا يركز الاتصالات المعقدة ومنطق التحكم.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "الوسيط (Mediator): واجهة تُعرّف طرق الاتصال",
            "الوسيط المحدد (Concrete Mediator): ينفذ منطق التنسيق",
            "الزميل (Colleague): مكونات تتواصل عبر الوسيط",
            "كل زميل يعرف وسيطه لكن ليس الزملاء الآخرين",
          ],
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class ChatMediator {
  void sendMessage(String message, User user);
  void addUser(User user);
}

class ChatRoom implements ChatMediator {
  final List<User> _users = [];
  
  @override
  void addUser(User user) {
    _users.add(user);
  }
  
  @override
  void sendMessage(String message, User sender) {
    for (final user in _users) {
      if (user != sender) {
        user.receive(message, sender);
      }
    }
  }
}

class User {
  final String name;
  final ChatMediator _mediator;
  
  User(this.name, this._mediator) {
    _mediator.addUser(this);
  }
  
  void send(String message) {
    print('\$name sends: \$message');
    _mediator.sendMessage(message, this);
  }
  
  void receive(String message, User sender) {
    print('\$name received from \${sender.name}: \$message');
  }
}

void main() {
  final chatRoom = ChatRoom();
  
  final alice = User('Alice', chatRoom);
  final bob = User('Bob', chatRoom);
  final charlie = User('Charlie', chatRoom);
  
  alice.send('Hello everyone!');
  bob.send('Hi Alice!');
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class ChatMediator {
  void sendMessage(String message, User user);
  void addUser(User user);
}

class ChatRoom implements ChatMediator {
  final List<User> _users = [];
  
  @override
  void addUser(User user) {
    _users.add(user);
  }
  
  @override
  void sendMessage(String message, User sender) {
    for (final user in _users) {
      if (user != sender) {
        user.receive(message, sender);
      }
    }
  }
}

class User {
  final String name;
  final ChatMediator _mediator;
  
  User(this.name, this._mediator) {
    _mediator.addUser(this);
  }
  
  void send(String message) {
    print('\$name يرسل: \$message');
    _mediator.sendMessage(message, this);
  }
  
  void receive(String message, User sender) {
    print('\$name استلم من \${sender.name}: \$message');
  }
}

void main() {
  final chatRoom = ChatRoom();
  
  final alice = User('أليس', chatRoom);
  final bob = User('بوب', chatRoom);
  final charlie = User('تشارلي', chatRoom);
  
  alice.send('مرحباً بالجميع!');
  bob.send('أهلاً أليس!');
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Reduces coupling between components",
        "Centralizes control logic",
        "Simplifies object protocols",
        "Makes component reuse easier",
      ],
      ar: [
        "يقلل الاقتران بين المكونات",
        "يركز منطق التحكم",
        "يبسط بروتوكولات الكائن",
        "يسهل إعادة استخدام المكونات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Mediator can become a god object",
        "Can be complex to maintain",
        "May reduce performance with extra indirection",
        "Single point of failure",
      ],
      ar: [
        "الوسيط قد يصبح كائناً إلهياً",
        "قد يكون معقداً في الصيانة",
        "قد يقلل الأداء مع التوجيه الإضافي",
        "نقطة فشل واحدة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Mediator when:"),
        UnorderedListContent(
          value: [
            "Objects communicate in complex but well-defined ways",
            "Reusing objects is difficult due to dependencies",
            "Behavior distributed among classes should be customizable",
            "You want to avoid tight coupling between components",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم الوسيط عندما:"),
        UnorderedListContent(
          value: [
            "الكائنات تتواصل بطرق معقدة لكن محددة جيداً",
            "إعادة استخدام الكائنات صعبة بسبب التبعيات",
            "السلوك الموزع بين الفئات يجب أن يكون قابلاً للتخصيص",
            "تريد تجنب الاقتران الوثيق بين المكونات",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Making mediator too complex with business logic",
        "Components still directly referencing each other",
        "Not considering mediator as a single point of failure",
        "Using when simple observer pattern would work",
      ],
      ar: [
        "جعل الوسيط معقداً جداً مع منطق العمل",
        "المكونات لا تزال تشير لبعضها مباشرة",
        "عدم النظر للوسيط كنقطة فشل واحدة",
        "الاستخدام عندما يكفي نمط المراقب البسيط",
      ],
    ),
    relatedPatterns: [
      PatternKeys.facade,
      PatternKeys.observer,
      PatternKeys.command,
    ],
  ),
  PatternKeys.memento: DesignPattern(
    id: PatternKeys.memento,
    title: LocalizedString(en: "Memento", ar: "التذكار (Memento)"),
    description: LocalizedString(
      en: "Captures and restores an object's internal state without violating encapsulation",
      ar: "يلتقط ويستعيد الحالة الداخلية للكائن دون انتهاك التغليف",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Memento pattern lets you save and restore the previous state of an object without revealing the details of its implementation. It's essential for implementing undo/redo functionality.",
        ),
        StringContent(
          "The pattern uses three key actors: the Originator (creates memento), the Memento (stores state), and the Caretaker (manages mementos without examining their contents).",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Originator: Object whose state needs saving",
            "Memento: Stores the originator's internal state",
            "Caretaker: Manages mementos (when and why to save)",
            "Memento is opaque to everyone except originator",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط التذكار يتيح لك حفظ واستعادة الحالة السابقة للكائن دون الكشف عن تفاصيل تنفيذه. إنه أساسي لتنفيذ وظيفة التراجع/الإعادة.",
        ),
        StringContent(
          "يستخدم النمط ثلاثة فاعلين رئيسيين: المُنشئ (ينشئ التذكار)، والتذكار (يخزن الحالة)، والوصي (يدير التذكارات دون فحص محتوياتها).",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "المُنشئ (Originator): الكائن الذي تحتاج حالته للحفظ",
            "التذكار (Memento): يخزن الحالة الداخلية للمُنشئ",
            "الوصي (Caretaker): يدير التذكارات (متى ولماذا تُحفظ)",
            "التذكار غير شفاف للجميع إلا المُنشئ",
          ],
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""class EditorMemento {
  final String _content;
  final int _cursorPosition;
  
  EditorMemento(this._content, this._cursorPosition);
  
  String get content => _content;
  int get cursorPosition => _cursorPosition;
}

class TextEditor {
  String _content = '';
  int _cursorPosition = 0;
  
  void write(String text) {
    _content += text;
    _cursorPosition = _content.length;
  }
  
  void setCursor(int position) {
    _cursorPosition = position;
  }
  
  EditorMemento save() {
    return EditorMemento(_content, _cursorPosition);
  }
  
  void restore(EditorMemento memento) {
    _content = memento.content;
    _cursorPosition = memento.cursorPosition;
  }
  
  @override
  String toString() => 'Content: "\$_content", Cursor: \$_cursorPosition';
}

class History {
  final List<EditorMemento> _mementos = [];
  
  void save(EditorMemento memento) {
    _mementos.add(memento);
  }
  
  EditorMemento? undo() {
    if (_mementos.isEmpty) return null;
    return _mementos.removeLast();
  }
}

void main() {
  final editor = TextEditor();
  final history = History();
  
  editor.write('Hello ');
  history.save(editor.save());
  
  editor.write('World');
  history.save(editor.save());
  
  editor.write('!');
  print('Current: \$editor');
  
  final previousState = history.undo();
  if (previousState != null) {
    editor.restore(previousState);
    print('After undo: \$editor');
  }
}"""),
      ],
      ar: [
        StrCodeBlock("""class EditorMemento {
  final String _content;
  final int _cursorPosition;
  
  EditorMemento(this._content, this._cursorPosition);
  
  String get content => _content;
  int get cursorPosition => _cursorPosition;
}

class TextEditor {
  String _content = '';
  int _cursorPosition = 0;
  
  void write(String text) {
    _content += text;
    _cursorPosition = _content.length;
  }
  
  void setCursor(int position) {
    _cursorPosition = position;
  }
  
  EditorMemento save() {
    return EditorMemento(_content, _cursorPosition);
  }
  
  void restore(EditorMemento memento) {
    _content = memento.content;
    _cursorPosition = memento.cursorPosition;
  }
  
  @override
  String toString() => 'المحتوى: "\$_content"، المؤشر: \$_cursorPosition';
}

class History {
  final List<EditorMemento> _mementos = [];
  
  void save(EditorMemento memento) {
    _mementos.add(memento);
  }
  
  EditorMemento? undo() {
    if (_mementos.isEmpty) return null;
    return _mementos.removeLast();
  }
}

void main() {
  final editor = TextEditor();
  final history = History();
  
  editor.write('مرحباً ');
  history.save(editor.save());
  
  editor.write('بالعالم');
  history.save(editor.save());
  
  editor.write('!');
  print('الحالي: \$editor');
  
  final previousState = history.undo();
  if (previousState != null) {
    editor.restore(previousState);
    print('بعد التراجع: \$editor');
  }
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Preserves encapsulation boundaries",
        "Simplifies originator by extracting state management",
        "Easy to implement undo/redo",
        "Clean separation of concerns",
      ],
      ar: [
        "يحافظ على حدود التغليف",
        "يبسط المُنشئ من خلال استخراج إدارة الحالة",
        "سهولة تنفيذ التراجع/الإعادة",
        "فصل نظيف للاهتمامات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can be expensive if originator has large state",
        "Caretaker must track originator lifecycle",
        "May consume significant memory",
        "Can be complex to implement correctly",
      ],
      ar: [
        "قد يكون مكلفاً إذا كان للمُنشئ حالة كبيرة",
        "يجب على الوصي تتبع دورة حياة المُنشئ",
        "قد يستهلك ذاكرة كبيرة",
        "قد يكون معقداً في التنفيذ بشكل صحيح",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Memento when:"),
        UnorderedListContent(
          value: [
            "You need to save/restore object state",
            "Direct access to state would expose implementation",
            "Implementing undo/redo functionality",
            "Creating snapshots or checkpoints",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم التذكار عندما:"),
        UnorderedListContent(
          value: [
            "تحتاج لحفظ/استعادة حالة الكائن",
            "الوصول المباشر للحالة سيكشف التنفيذ",
            "تنفيذ وظيفة التراجع/الإعادة",
            "إنشاء لقطات أو نقاط تفتيش",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Exposing memento internals to caretaker",
        "Not limiting history size (memory leaks)",
        "Storing full state when incremental would work",
        "Not handling restoration failures",
      ],
      ar: [
        "كشف عناصر التذكار الداخلية للوصي",
        "عدم تحديد حجم السجل (تسريبات ذاكرة)",
        "تخزين الحالة الكاملة عندما يكفي التدريجي",
        "عدم التعامل مع فشل الاستعادة",
      ],
    ),
    relatedPatterns: [
      PatternKeys.command,
      PatternKeys.iterator,
      PatternKeys.prototype,
    ],
  ),
  PatternKeys.observer: DesignPattern(
    id: PatternKeys.observer,
    title: LocalizedString(en: "Observer", ar: "المراقب (Observer)"),
    description: LocalizedString(
      en: "Defines a one-to-many dependency so when one object changes state, all dependents are notified",
      ar: "يُعرّف تبعية واحد-إلى-عديد بحيث عندما يتغير كائن حالته، يُخطر جميع المعتمدين",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .GoF,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Observer pattern (also known as Publish-Subscribe) defines a subscription mechanism to notify multiple objects about events that happen to the object they're observing.",
        ),
        StringContent(
          "This pattern is fundamental to event-driven programming and is the basis for many reactive frameworks. Observers register with a subject and are automatically notified of changes.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Subject: Maintains list of observers and notifies them",
            "Observer: Interface for objects that should be notified",
            "Concrete Subject: Stores state and sends notifications",
            "Concrete Observer: Updates in response to notifications",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط المراقب (المعروف أيضاً بالنشر-الاشتراك) يُعرّف آلية اشتراك لإخطار عدة كائنات عن أحداث تحدث للكائن الذي يراقبونه.",
        ),
        StringContent(
          "هذا النمط أساسي للبرمجة المُوجهة بالأحداث وهو أساس العديد من الأطر التفاعلية. المراقبون يسجلون مع موضوع ويُخطرون تلقائياً بالتغييرات.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "الموضوع (Subject): يحافظ على قائمة المراقبين ويخطرهم",
            "المراقب (Observer): واجهة للكائنات التي يجب إخطارها",
            "الموضوع المحدد: يخزن الحالة ويرسل الإخطارات",
            "المراقب المحدد: يتحدث استجابة للإخطارات",
          ],
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class Observer {
  void update(String news);
}

abstract class Subject {
  void attach(Observer observer);
  void detach(Observer observer);
  void notify();
}

class NewsAgency implements Subject {
  final List<Observer> _observers = [];
  String _news = '';
  
  @override
  void attach(Observer observer) {
    _observers.add(observer);
  }
  
  @override
  void detach(Observer observer) {
    _observers.remove(observer);
  }
  
  @override
  void notify() {
    for (final observer in _observers) {
      observer.update(_news);
    }
  }
  
  void setNews(String news) {
    _news = news;
    notify();
  }
}

class NewsChannel implements Observer {
  final String _name;
  
  NewsChannel(this._name);
  
  @override
  void update(String news) {
    print('[\$_name] Breaking news: \$news');
  }
}

class EmailSubscriber implements Observer {
  final String _email;
  
  EmailSubscriber(this._email);
  
  @override
  void update(String news) {
    print('Email to \$_email: \$news');
  }
}

void main() {
  final agency = NewsAgency();
  
  final channel1 = NewsChannel('CNN');
  final channel2 = NewsChannel('BBC');
  final subscriber = EmailSubscriber('user@example.com');
  
  agency.attach(channel1);
  agency.attach(channel2);
  agency.attach(subscriber);
  
  agency.setNews('Major event happened!');
  
  agency.detach(channel1);
  agency.setNews('Another update');
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class Observer {
  void update(String news);
}

abstract class Subject {
  void attach(Observer observer);
  void detach(Observer observer);
  void notify();
}

class NewsAgency implements Subject {
  final List<Observer> _observers = [];
  String _news = '';
  
  @override
  void attach(Observer observer) {
    _observers.add(observer);
  }
  
  @override
  void detach(Observer observer) {
    _observers.remove(observer);
  }
  
  @override
  void notify() {
    for (final observer in _observers) {
      observer.update(_news);
    }
  }
  
  void setNews(String news) {
    _news = news;
    notify();
  }
}

class NewsChannel implements Observer {
  final String _name;
  
  NewsChannel(this._name);
  
  @override
  void update(String news) {
    print('[\$_name] أخبار عاجلة: \$news');
  }
}

class EmailSubscriber implements Observer {
  final String _email;
  
  EmailSubscriber(this._email);
  
  @override
  void update(String news) {
    print('بريد إلكتروني إلى \$_email: \$news');
  }
}

void main() {
  final agency = NewsAgency();
  
  final channel1 = NewsChannel('سي إن إن');
  final channel2 = NewsChannel('بي بي سي');
  final subscriber = EmailSubscriber('user@example.com');
  
  agency.attach(channel1);
  agency.attach(channel2);
  agency.attach(subscriber);
  
  agency.setNews('حدث حدث كبير!');
  
  agency.detach(channel1);
  agency.setNews('تحديث آخر');
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Loose coupling between subject and observers",
        "Open/Closed - add observers without modifying subject",
        "Dynamic relationships at runtime",
        "Broadcast communication",
      ],
      ar: [
        "اقتران فضفاض بين الموضوع والمراقبين",
        "المفتوح/المغلق - إضافة مراقبين دون تعديل الموضوع",
        "علاقات ديناميكية في وقت التشغيل",
        "اتصال بث",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Observers notified in random order",
        "Memory leaks if observers not detached",
        "Can cause unexpected updates",
        "Debugging can be difficult",
      ],
      ar: [
        "المراقبون يُخطرون بترتيب عشوائي",
        "تسريبات ذاكرة إذا لم يُفصل المراقبون",
        "قد يسبب تحديثات غير متوقعة",
        "التصحيح قد يكون صعباً",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Observer when:"),
        UnorderedListContent(
          value: [
            "Change to one object requires changing others",
            "Number of dependent objects is unknown or dynamic",
            "Building event-driven systems",
            "Implementing publish-subscribe patterns",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم المراقب عندما:"),
        UnorderedListContent(
          value: [
            "التغيير في كائن واحد يتطلب تغيير آخرين",
            "عدد الكائنات المعتمدة غير معروف أو ديناميكي",
            "بناء أنظمة موجهة بالأحداث",
            "تنفيذ أنماط النشر-الاشتراك",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Forgetting to detach observers (memory leaks)",
        "Modifying subject state during notification",
        "Creating circular dependencies",
        "Not considering notification order",
      ],
      ar: [
        "نسيان فصل المراقبين (تسريبات ذاكرة)",
        "تعديل حالة الموضوع أثناء الإخطار",
        "إنشاء تبعيات دائرية",
        "عدم النظر في ترتيب الإخطار",
      ],
    ),
    relatedPatterns: [
      PatternKeys.mediator,
      PatternKeys.singleton,
      PatternKeys.command,
    ],
  ),
  PatternKeys.state: DesignPattern(
    id: PatternKeys.state,
    title: LocalizedString(en: "State", ar: "الحالة (State)"),
    description: LocalizedString(
      en: "Allows an object to alter its behavior when its internal state changes",
      ar: "يسمح للكائن بتغيير سلوكه عندما تتغير حالته الداخلية",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "The State pattern allows an object to appear to change its class when its internal state changes. It encapsulates state-specific behavior into separate state classes.",
        ),
        StringContent(
          "Instead of having massive conditional statements, each state becomes a class. The context delegates state-specific behavior to the current state object, making the code cleaner and more maintainable.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Context: Maintains current state and delegates to it",
            "State: Interface for encapsulating state behavior",
            "Concrete States: Implement behavior for specific states",
            "States can transition to other states",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط الحالة يسمح للكائن بالظهور وكأنه يغير فئته عندما تتغير حالته الداخلية. يغلف السلوك الخاص بالحالة في فئات حالة منفصلة.",
        ),
        StringContent(
          "بدلاً من وجود عبارات شرطية ضخمة، تصبح كل حالة فئة. السياق يفوض السلوك الخاص بالحالة لكائن الحالة الحالي، مما يجعل الكود أنظف وأسهل في الصيانة.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "السياق (Context): يحافظ على الحالة الحالية ويفوض إليها",
            "الحالة (State): واجهة لتغليف سلوك الحالة",
            "الحالات المحددة: تنفذ السلوك لحالات محددة",
            "الحالات يمكن أن تنتقل لحالات أخرى",
          ],
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class State {
  void insertCoin(VendingMachine machine);
  void selectProduct(VendingMachine machine);
  void dispense(VendingMachine machine);
}

class VendingMachine {
  State _state;
  
  VendingMachine() : _state = NoCoinState();
  
  void setState(State state) {
    _state = state;
  }
  
  void insertCoin() => _state.insertCoin(this);
  void selectProduct() => _state.selectProduct(this);
  void dispense() => _state.dispense(this);
}

class NoCoinState implements State {
  @override
  void insertCoin(VendingMachine machine) {
    print('Coin inserted');
    machine.setState(HasCoinState());
  }
  
  @override
  void selectProduct(VendingMachine machine) {
    print('Insert coin first');
  }
  
  @override
  void dispense(VendingMachine machine) {
    print('Insert coin first');
  }
}

class HasCoinState implements State {
  @override
  void insertCoin(VendingMachine machine) {
    print('Coin already inserted');
  }
  
  @override
  void selectProduct(VendingMachine machine) {
    print('Product selected');
    machine.setState(DispensingState());
  }
  
  @override
  void dispense(VendingMachine machine) {
    print('Select product first');
  }
}

class DispensingState implements State {
  @override
  void insertCoin(VendingMachine machine) {
    print('Please wait, dispensing...');
  }
  
  @override
  void selectProduct(VendingMachine machine) {
    print('Please wait, dispensing...');
  }
  
  @override
  void dispense(VendingMachine machine) {
    print('Dispensing product');
    machine.setState(NoCoinState());
  }
}

void main() {
  final machine = VendingMachine();
  
  machine.selectProduct(); // Can't - no coin
  machine.insertCoin();
  machine.selectProduct();
  machine.dispense();
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class State {
  void insertCoin(VendingMachine machine);
  void selectProduct(VendingMachine machine);
  void dispense(VendingMachine machine);
}

class VendingMachine {
  State _state;
  
  VendingMachine() : _state = NoCoinState();
  
  void setState(State state) {
    _state = state;
  }
  
  void insertCoin() => _state.insertCoin(this);
  void selectProduct() => _state.selectProduct(this);
  void dispense() => _state.dispense(this);
}

class NoCoinState implements State {
  @override
  void insertCoin(VendingMachine machine) {
    print('تم إدخال عملة');
    machine.setState(HasCoinState());
  }
  
  @override
  void selectProduct(VendingMachine machine) {
    print('أدخل عملة أولاً');
  }
  
  @override
  void dispense(VendingMachine machine) {
    print('أدخل عملة أولاً');
  }
}

class HasCoinState implements State {
  @override
  void insertCoin(VendingMachine machine) {
    print('العملة مُدخلة بالفعل');
  }
  
  @override
  void selectProduct(VendingMachine machine) {
    print('تم اختيار المنتج');
    machine.setState(DispensingState());
  }
  
  @override
  void dispense(VendingMachine machine) {
    print('اختر المنتج أولاً');
  }
}

class DispensingState implements State {
  @override
  void insertCoin(VendingMachine machine) {
    print('انتظر من فضلك، جاري التوزيع...');
  }
  
  @override
  void selectProduct(VendingMachine machine) {
    print('انتظر من فضلك، جاري التوزيع...');
  }
  
  @override
  void dispense(VendingMachine machine) {
    print('توزيع المنتج');
    machine.setState(NoCoinState());
  }
}

void main() {
  final machine = VendingMachine();
  
  machine.selectProduct(); // لا يمكن - لا توجد عملة
  machine.insertCoin();
  machine.selectProduct();
  machine.dispense();
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Eliminates complex conditional statements",
        "Organizes state-specific code",
        "Makes state transitions explicit",
        "Easy to add new states (Open/Closed)",
      ],
      ar: [
        "يزيل العبارات الشرطية المعقدة",
        "ينظم الكود الخاص بالحالة",
        "يجعل انتقالات الحالة صريحة",
        "سهولة إضافة حالات جديدة (المفتوح/المغلق)",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Increases number of classes",
        "Can be overkill for simple state machines",
        "States need to know about each other for transitions",
        "Context and states are tightly coupled",
      ],
      ar: [
        "يزيد عدد الفئات",
        "قد يكون مبالغاً فيه لآلات الحالة البسيطة",
        "الحالات تحتاج لمعرفة بعضها للانتقالات",
        "السياق والحالات مقترنة بإحكام",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use State when:"),
        UnorderedListContent(
          value: [
            "Object behavior depends on its state",
            "Operations have large conditional statements on state",
            "State transitions are complex",
            "You want to avoid duplicate code across states",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم الحالة عندما:"),
        UnorderedListContent(
          value: [
            "سلوك الكائن يعتمد على حالته",
            "العمليات لديها عبارات شرطية كبيرة على الحالة",
            "انتقالات الحالة معقدة",
            "تريد تجنب تكرار الكود عبر الحالات",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Using when simple enum would suffice",
        "Making states share too much logic",
        "Not handling invalid state transitions",
        "Creating states that aren't truly different",
      ],
      ar: [
        "الاستخدام عندما يكفي enum بسيط",
        "جعل الحالات تشارك الكثير من المنطق",
        "عدم التعامل مع انتقالات الحالة غير الصالحة",
        "إنشاء حالات ليست مختلفة حقاً",
      ],
    ),
    relatedPatterns: [
      PatternKeys.strategy,
      PatternKeys.singleton,
      PatternKeys.flyweight,
    ],
    oftenConfusedWith: [PatternKeys.strategy],
  ),
  PatternKeys.strategy: DesignPattern(
    id: PatternKeys.strategy,
    title: LocalizedString(en: "Strategy", ar: "الاستراتيجية (Strategy)"),
    description: LocalizedString(
      en: "Defines a family of algorithms and makes them interchangeable",
      ar: "يُعرّف عائلة من الخوارزميات ويجعلها قابلة للتبديل",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .GoF,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Strategy pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it.",
        ),
        StringContent(
          "Instead of implementing a single algorithm directly, the code receives runtime instructions as to which algorithm in a family to use. This is especially useful when you have multiple ways to perform an operation.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Strategy: Common interface for all algorithms",
            "Concrete Strategies: Different algorithm implementations",
            "Context: Uses a strategy and can switch between them",
            "Algorithms are selected at runtime",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط الاستراتيجية يُعرّف عائلة من الخوارزميات، يغلف كل واحدة، ويجعلها قابلة للتبديل. الاستراتيجية تسمح للخوارزمية بالتنوع بشكل مستقل عن العملاء الذين يستخدمونها.",
        ),
        StringContent(
          "بدلاً من تنفيذ خوارزمية واحدة مباشرة، يتلقى الكود تعليمات وقت التشغيل حول أي خوارزمية في عائلة يجب استخدامها. هذا مفيد بشكل خاص عندما يكون لديك طرق متعددة لأداء عملية.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "الاستراتيجية (Strategy): واجهة مشتركة لجميع الخوارزميات",
            "الاستراتيجيات المحددة: تنفيذات خوارزمية مختلفة",
            "السياق (Context): يستخدم استراتيجية ويمكنه التبديل بينها",
            "الخوارزميات تُختار في وقت التشغيل",
          ],
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class PaymentStrategy {
  void pay(double amount);
}

class CreditCardStrategy implements PaymentStrategy {
  final String cardNumber;
  
  CreditCardStrategy(this.cardNumber);
  
  @override
  void pay(double amount) {
    print('Paid \\\$\$amount with credit card \$cardNumber');
  }
}

class PayPalStrategy implements PaymentStrategy {
  final String email;
  
  PayPalStrategy(this.email);
  
  @override
  void pay(double amount) {
    print('Paid \\\$\$amount via PayPal account \$email');
  }
}

class CryptoStrategy implements PaymentStrategy {
  final String walletAddress;
  
  CryptoStrategy(this.walletAddress);
  
  @override
  void pay(double amount) {
    print('Paid \\\$\$amount via crypto wallet \$walletAddress');
  }
}

class ShoppingCart {
  PaymentStrategy? _paymentStrategy;
  
  void setPaymentStrategy(PaymentStrategy strategy) {
    _paymentStrategy = strategy;
  }
  
  void checkout(double amount) {
    if (_paymentStrategy == null) {
      print('Please select a payment method');
      return;
    }
    _paymentStrategy!.pay(amount);
  }
}

void main() {
  final cart = ShoppingCart();
  
  cart.setPaymentStrategy(CreditCardStrategy('1234-5678-9012-3456'));
  cart.checkout(99.99);
  
  cart.setPaymentStrategy(PayPalStrategy('user@example.com'));
  cart.checkout(149.99);
  
  cart.setPaymentStrategy(CryptoStrategy('0x742d35Cc6634C0532925a3b844Bc9e7595f0bEb'));
  cart.checkout(299.99);
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class PaymentStrategy {
  void pay(double amount);
}

class CreditCardStrategy implements PaymentStrategy {
  final String cardNumber;
  
  CreditCardStrategy(this.cardNumber);
  
  @override
  void pay(double amount) {
    print('دفع \$\$amount ببطاقة ائتمان \$cardNumber');
  }
}

class PayPalStrategy implements PaymentStrategy {
  final String email;
  
  PayPalStrategy(this.email);
  
  @override
  void pay(double amount) {
    print('دفع \$\$amount عبر حساب PayPal \$email');
  }
}

class CryptoStrategy implements PaymentStrategy {
  final String walletAddress;
  
  CryptoStrategy(this.walletAddress);
  
  @override
  void pay(double amount) {
    print('دفع \$\$amount عبر محفظة تشفير \$walletAddress');
  }
}

class ShoppingCart {
  PaymentStrategy? _paymentStrategy;
  
  void setPaymentStrategy(PaymentStrategy strategy) {
    _paymentStrategy = strategy;
  }
  
  void checkout(double amount) {
    if (_paymentStrategy == null) {
      print('يرجى اختيار طريقة دفع');
      return;
    }
    _paymentStrategy!.pay(amount);
  }
}

void main() {
  final cart = ShoppingCart();
  
  cart.setPaymentStrategy(CreditCardStrategy('1234-5678-9012-3456'));
  cart.checkout(99.99);
  
  cart.setPaymentStrategy(PayPalStrategy('user@example.com'));
  cart.checkout(149.99);
  
  cart.setPaymentStrategy(CryptoStrategy('0x742d35Cc6634C0532925a3b844Bc9e7595f0bEb'));
  cart.checkout(299.99);
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Swaps algorithms at runtime",
        "Isolates algorithm implementation from usage",
        "Replaces conditional statements",
        "Open/Closed - easy to add new strategies",
      ],
      ar: [
        "يبدل الخوارزميات في وقت التشغيل",
        "يعزل تنفيذ الخوارزمية عن الاستخدام",
        "يستبدل العبارات الشرطية",
        "المفتوح/المغلق - سهولة إضافة استراتيجيات جديدة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Clients must know about different strategies",
        "Increases number of objects",
        "Communication overhead between strategy and context",
        "Can be overkill for simple cases",
      ],
      ar: [
        "يجب على العملاء معرفة الاستراتيجيات المختلفة",
        "يزيد عدد الكائنات",
        "عبء اتصال بين الاستراتيجية والسياق",
        "قد يكون مبالغاً فيه للحالات البسيطة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Strategy when:"),
        UnorderedListContent(
          value: [
            "You have multiple ways to perform an operation",
            "You want to switch algorithms at runtime",
            "You want to avoid conditional statements",
            "Algorithms use different data structures",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم الاستراتيجية عندما:"),
        UnorderedListContent(
          value: [
            "لديك طرق متعددة لأداء عملية",
            "تريد تبديل الخوارزميات في وقت التشغيل",
            "تريد تجنب العبارات الشرطية",
            "الخوارزميات تستخدم هياكل بيانات مختلفة",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Using when algorithms don't truly vary",
        "Making strategies too dependent on context",
        "Not considering simpler alternatives like function parameters",
        "Exposing strategy details to clients",
      ],
      ar: [
        "الاستخدام عندما لا تتنوع الخوارزميات حقاً",
        "جعل الاستراتيجيات معتمدة جداً على السياق",
        "عدم النظر في بدائل أبسط مثل معاملات الدوال",
        "كشف تفاصيل الاستراتيجية للعملاء",
      ],
    ),
    relatedPatterns: [
      PatternKeys.state,
      PatternKeys.bridge,
      PatternKeys.decorator,
    ],
    oftenConfusedWith: [PatternKeys.state],
  ),
  PatternKeys.templateMethod: DesignPattern(
    id: PatternKeys.templateMethod,
    title: LocalizedString(
      en: "Template Method",
      ar: "طريقة القالب (Template Method)",
    ),
    description: LocalizedString(
      en: "Defines the skeleton of an algorithm, letting subclasses override specific steps",
      ar: "يُعرّف هيكل الخوارزمية، مما يسمح للفئات الفرعية بتجاوز خطوات محددة",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .GoF,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Template Method pattern defines the skeleton of an algorithm in a base class, allowing subclasses to override specific steps without changing the algorithm's structure.",
        ),
        StringContent(
          "This pattern is one of the most commonly used patterns in framework design. It allows the framework to define the overall algorithm while letting users customize specific parts through inheritance.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Abstract Class: Defines template method and abstract steps",
            "Template Method: Calls primitive operations in fixed order",
            "Primitive Operations: Abstract methods to be implemented by subclasses",
            "Hook Methods: Optional steps with default implementation",
          ],
        ),
        StringContent(
          "The template method uses the Hollywood Principle: \"Don't call us, we'll call you.\" The parent class controls when methods are called, not the subclasses.",
        ),
      ],
      ar: [
        StringContent(
          "نمط طريقة القالب يُعرّف هيكل الخوارزمية في فئة أساسية، مما يسمح للفئات الفرعية بتجاوز خطوات محددة دون تغيير بنية الخوارزمية.",
        ),
        StringContent(
          "هذا النمط هو أحد أكثر الأنماط استخداماً في تصميم الأطر. يسمح للإطار بتعريف الخوارزمية الإجمالية مع السماح للمستخدمين بتخصيص أجزاء محددة من خلال الوراثة.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "الفئة المجردة: تُعرّف طريقة القالب والخطوات المجردة",
            "طريقة القالب: تستدعي العمليات البدائية بترتيب ثابت",
            "العمليات البدائية: طرق مجردة يجب تنفيذها بواسطة الفئات الفرعية",
            "طرق الخطاف: خطوات اختيارية مع تنفيذ افتراضي",
          ],
        ),
        StringContent(
          "طريقة القالب تستخدم مبدأ هوليوود: \"لا تتصل بنا، سنتصل بك.\" الفئة الأم تتحكم في متى تُستدعى الطرق، وليس الفئات الفرعية.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class DataParser {
  // Template Method
  void parseData(String filePath) {
    final data = readData(filePath);
    final parsedData = parseContent(data);
    final validData = validateData(parsedData);
    final processedData = processData(validData);
    saveData(processedData);
    
    // Hook - optional step
    if (shouldNotify()) {
      notifyUser();
    }
  }
  
  // Abstract methods - must be implemented
  String readData(String filePath);
  Map<String, dynamic> parseContent(String data);
  Map<String, dynamic> processData(Map<String, dynamic> data);
  
  // Concrete method with default implementation
  Map<String, dynamic> validateData(Map<String, dynamic> data) {
    print("Validating data...");
    return data;
  }
  
  void saveData(Map<String, dynamic> data) {
    print("Saving data: \$data");
  }
  
  // Hook - can be overridden
  bool shouldNotify() => false;
  
  void notifyUser() {
    print("Data processing complete!");
  }
}

class CsvParser extends DataParser {
  @override
  String readData(String filePath) {
    print("Reading CSV file: \$filePath");
    return "name,age\\nAlice,30\\nBob,25";
  }
  
  @override
  Map<String, dynamic> parseContent(String data) {
    print("Parsing CSV data");
    final lines = data.split('\\n');
    return {'type': 'csv', 'rows': lines.length - 1};
  }
  
  @override
  Map<String, dynamic> processData(Map<String, dynamic> data) {
    print("Processing CSV data");
    data['processed'] = true;
    return data;
  }
  
  @override
  bool shouldNotify() => true;
}

class JsonParser extends DataParser {
  @override
  String readData(String filePath) {
    print("Reading JSON file: \$filePath");
    return '{"users": [{"name": "Alice"}, {"name": "Bob"}]}';
  }
  
  @override
  Map<String, dynamic> parseContent(String data) {
    print("Parsing JSON data");
    return {'type': 'json', 'users': 2};
  }
  
  @override
  Map<String, dynamic> processData(Map<String, dynamic> data) {
    print("Processing JSON data");
    data['processed'] = true;
    data['format'] = 'json';
    return data;
  }
  
  @override
  Map<String, dynamic> validateData(Map<String, dynamic> data) {
    print("Custom JSON validation");
    // Custom validation logic
    return super.validateData(data);
  }
}

void main() {
  print("=== CSV Parser ===");
  final csvParser = CsvParser();
  csvParser.parseData("data.csv");
  
  print("\\n=== JSON Parser ===");
  final jsonParser = JsonParser();
  jsonParser.parseData("data.json");
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class DataParser {
  // طريقة القالب
  void parseData(String filePath) {
    final data = readData(filePath);
    final parsedData = parseContent(data);
    final validData = validateData(parsedData);
    final processedData = processData(validData);
    saveData(processedData);
    
    // خطاف - خطوة اختيارية
    if (shouldNotify()) {
      notifyUser();
    }
  }
  
  // طرق مجردة - يجب تنفيذها
  String readData(String filePath);
  Map<String, dynamic> parseContent(String data);
  Map<String, dynamic> processData(Map<String, dynamic> data);
  
  // طريقة محددة مع تنفيذ افتراضي
  Map<String, dynamic> validateData(Map<String, dynamic> data) {
    print("التحقق من البيانات...");
    return data;
  }
  
  void saveData(Map<String, dynamic> data) {
    print("حفظ البيانات: \$data");
  }
  
  // خطاف - يمكن تجاوزه
  bool shouldNotify() => false;
  
  void notifyUser() {
    print("اكتملت معالجة البيانات!");
  }
}

class CsvParser extends DataParser {
  @override
  String readData(String filePath) {
    print("قراءة ملف CSV: \$filePath");
    return "name,age\\nAlice,30\\nBob,25";
  }
  
  @override
  Map<String, dynamic> parseContent(String data) {
    print("تحليل بيانات CSV");
    final lines = data.split('\\n');
    return {'type': 'csv', 'rows': lines.length - 1};
  }
  
  @override
  Map<String, dynamic> processData(Map<String, dynamic> data) {
    print("معالجة بيانات CSV");
    data['processed'] = true;
    return data;
  }
  
  @override
  bool shouldNotify() => true;
}

class JsonParser extends DataParser {
  @override
  String readData(String filePath) {
    print("قراءة ملف JSON: \$filePath");
    return '{"users": [{"name": "Alice"}, {"name": "Bob"}]}';
  }
  
  @override
  Map<String, dynamic> parseContent(String data) {
    print("تحليل بيانات JSON");
    return {'type': 'json', 'users': 2};
  }
  
  @override
  Map<String, dynamic> processData(Map<String, dynamic> data) {
    print("معالجة بيانات JSON");
    data['processed'] = true;
    data['format'] = 'json';
    return data;
  }
  
  @override
  Map<String, dynamic> validateData(Map<String, dynamic> data) {
    print("التحقق المخصص من JSON");
    // منطق تحقق مخصص
    return super.validateData(data);
  }
}

void main() {
  print("=== محلل CSV ===");
  final csvParser = CsvParser();
  csvParser.parseData("data.csv");
  
  print("\\n=== محلل JSON ===");
  final jsonParser = JsonParser();
  jsonParser.parseData("data.json");
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Reuses code through inheritance",
        "Controls algorithm structure in one place",
        "Easy to extend with new implementations",
        "Enforces a common structure across implementations",
      ],
      ar: [
        "يعيد استخدام الكود من خلال الوراثة",
        "يتحكم في بنية الخوارزمية في مكان واحد",
        "سهولة التوسع مع تنفيذات جديدة",
        "يفرض بنية مشتركة عبر التنفيذات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Violates Liskov Substitution if not careful",
        "Increases coupling through inheritance",
        "Can be inflexible - hard to change algorithm structure",
        "May lead to code duplication if steps vary significantly",
      ],
      ar: [
        "ينتهك استبدال ليسكوف إذا لم تكن حذراً",
        "يزيد الاقتران من خلال الوراثة",
        "قد يكون غير مرن - صعوبة تغيير بنية الخوارزمية",
        "قد يؤدي لتكرار الكود إذا تباينت الخطوات بشكل كبير",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Template Method when:"),
        UnorderedListContent(
          value: [
            "You have algorithms with similar structure but different steps",
            "You want to avoid code duplication in similar algorithms",
            "You want to control which parts of algorithm can be customized",
            "You're building frameworks or libraries",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم طريقة القالب عندما:"),
        UnorderedListContent(
          value: [
            "لديك خوارزميات ببنية متشابهة لكن خطوات مختلفة",
            "تريد تجنب تكرار الكود في خوارزميات متشابهة",
            "تريد التحكم في أي أجزاء الخوارزمية يمكن تخصيصها",
            "تبني أطر أو مكتبات",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Using when Strategy pattern would be more appropriate",
        "Making template method too rigid or too flexible",
        "Not using hook methods for optional steps",
        "Forgetting to make template method final to prevent override",
      ],
      ar: [
        "الاستخدام عندما يكون نمط الاستراتيجية أكثر ملاءمة",
        "جعل طريقة القالب صارمة جداً أو مرنة جداً",
        "عدم استخدام طرق الخطاف للخطوات الاختيارية",
        "نسيان جعل طريقة القالب نهائية لمنع التجاوز",
      ],
    ),
    relatedPatterns: [
      PatternKeys.factoryMethod,
      PatternKeys.strategy,
      PatternKeys.builder,
    ],
    oftenConfusedWith: [PatternKeys.strategy],
  ),
  PatternKeys.visitor: DesignPattern(
    id: PatternKeys.visitor,
    title: LocalizedString(en: "Visitor", ar: "الزائر (Visitor)"),
    description: LocalizedString(
      en: "Separates algorithms from objects they operate on by moving operations into visitor classes",
      ar: "يفصل الخوارزميات عن الكائنات التي تعمل عليها بنقل العمليات لفئات الزائر",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .GoF,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Visitor pattern lets you separate algorithms from the objects on which they operate. You can add new operations without modifying the classes of the elements on which it operates.",
        ),
        StringContent(
          "This pattern uses a technique called double dispatch. The operation depends on both the type of visitor and the type of element being visited. This solves the problem of adding new operations to existing object structures without modifying those structures.",
        ),
        UnorderedListContent(
          title: "Key Components:",
          value: [
            "Visitor: Interface declaring visit methods for each element type",
            "Concrete Visitor: Implements operations for each element type",
            "Element: Interface with accept method taking visitor",
            "Concrete Elements: Call appropriate visitor method",
          ],
        ),
        StringContent(
          "The pattern is most useful when you have a stable object structure but need to add many unrelated operations. It's common in compilers and document processing systems.",
        ),
      ],
      ar: [
        StringContent(
          "نمط الزائر يتيح لك فصل الخوارزميات عن الكائنات التي تعمل عليها. يمكنك إضافة عمليات جديدة دون تعديل فئات العناصر التي تعمل عليها.",
        ),
        StringContent(
          "هذا النمط يستخدم تقنية تسمى الإرسال المزدوج. العملية تعتمد على كل من نوع الزائر ونوع العنصر المُزار. هذا يحل مشكلة إضافة عمليات جديدة لبنى كائنات موجودة دون تعديل تلك البنى.",
        ),
        UnorderedListContent(
          title: "المكونات الأساسية:",
          value: [
            "الزائر (Visitor): واجهة تعلن طرق الزيارة لكل نوع عنصر",
            "الزائر المحدد: ينفذ العمليات لكل نوع عنصر",
            "العنصر (Element): واجهة مع طريقة قبول تأخذ الزائر",
            "العناصر المحددة: تستدعي طريقة الزائر المناسبة",
          ],
        ),
        StringContent(
          "النمط أكثر فائدة عندما يكون لديك بنية كائنات ثابتة لكن تحتاج لإضافة عمليات كثيرة غير مترابطة. شائع في المُجمعات وأنظمة معالجة المستندات.",
        ),
      ],
    ),
    examples: LocalizedValue(
      en: [
        StrCodeBlock("""abstract class Visitor {
  void visitCircle(Circle circle);
  void visitRectangle(Rectangle rectangle);
  void visitTriangle(Triangle triangle);
}

abstract class Shape {
  void accept(Visitor visitor);
}

class Circle extends Shape {
  final double radius;
  
  Circle(this.radius);
  
  @override
  void accept(Visitor visitor) {
    visitor.visitCircle(this);
  }
}

class Rectangle extends Shape {
  final double width;
  final double height;
  
  Rectangle(this.width, this.height);
  
  @override
  void accept(Visitor visitor) {
    visitor.visitRectangle(this);
  }
}

class Triangle extends Shape {
  final double base;
  final double height;
  
  Triangle(this.base, this.height);
  
  @override
  void accept(Visitor visitor) {
    visitor.visitTriangle(this);
  }
}

class AreaCalculator implements Visitor {
  double totalArea = 0;
  
  @override
  void visitCircle(Circle circle) {
    final area = 3.14 * circle.radius * circle.radius;
    print("Circle area: \$area");
    totalArea += area;
  }
  
  @override
  void visitRectangle(Rectangle rectangle) {
    final area = rectangle.width * rectangle.height;
    print("Rectangle area: \$area");
    totalArea += area;
  }
  
  @override
  void visitTriangle(Triangle triangle) {
    final area = 0.5 * triangle.base * triangle.height;
    print("Triangle area: \$area");
    totalArea += area;
  }
}

class PerimeterCalculator implements Visitor {
  double totalPerimeter = 0;
  
  @override
  void visitCircle(Circle circle) {
    final perimeter = 2 * 3.14 * circle.radius;
    print("Circle perimeter: \$perimeter");
    totalPerimeter += perimeter;
  }
  
  @override
  void visitRectangle(Rectangle rectangle) {
    final perimeter = 2 * (rectangle.width + rectangle.height);
    print("Rectangle perimeter: \$perimeter");
    totalPerimeter += perimeter;
  }
  
  @override
  void visitTriangle(Triangle triangle) {
    // Assuming equilateral for simplicity
    final perimeter = 3 * triangle.base;
    print("Triangle perimeter: \$perimeter");
    totalPerimeter += perimeter;
  }
}

class DrawVisitor implements Visitor {
  @override
  void visitCircle(Circle circle) {
    print("Drawing circle with radius \${circle.radius}");
  }
  
  @override
  void visitRectangle(Rectangle rectangle) {
    print("Drawing rectangle \${rectangle.width}x\${rectangle.height}");
  }
  
  @override
  void visitTriangle(Triangle triangle) {
    print("Drawing triangle base=\${triangle.base} height=\${triangle.height}");
  }
}

void main() {
  final shapes = <Shape>[
    Circle(5),
    Rectangle(4, 6),
    Triangle(3, 4),
  ];
  
  print("=== Calculating Areas ===");
  final areaCalc = AreaCalculator();
  for (final shape in shapes) {
    shape.accept(areaCalc);
  }
  print("Total area: \${areaCalc.totalArea}");
  
  print("\\n=== Calculating Perimeters ===");
  final perimeterCalc = PerimeterCalculator();
  for (final shape in shapes) {
    shape.accept(perimeterCalc);
  }
  print("Total perimeter: \${perimeterCalc.totalPerimeter}");
  
  print("\\n=== Drawing Shapes ===");
  final drawer = DrawVisitor();
  for (final shape in shapes) {
    shape.accept(drawer);
  }
}"""),
      ],
      ar: [
        StrCodeBlock("""abstract class Visitor {
  void visitCircle(Circle circle);
  void visitRectangle(Rectangle rectangle);
  void visitTriangle(Triangle triangle);
}

abstract class Shape {
  void accept(Visitor visitor);
}

class Circle extends Shape {
  final double radius;
  
  Circle(this.radius);
  
  @override
  void accept(Visitor visitor) {
    visitor.visitCircle(this);
  }
}

class Rectangle extends Shape {
  final double width;
  final double height;
  
  Rectangle(this.width, this.height);
  
  @override
  void accept(Visitor visitor) {
    visitor.visitRectangle(this);
  }
}

class Triangle extends Shape {
  final double base;
  final double height;
  
  Triangle(this.base, this.height);
  
  @override
  void accept(Visitor visitor) {
    visitor.visitTriangle(this);
  }
}

class AreaCalculator implements Visitor {
  double totalArea = 0;
  
  @override
  void visitCircle(Circle circle) {
    final area = 3.14 * circle.radius * circle.radius;
    print("مساحة الدائرة: \$area");
    totalArea += area;
  }
  
  @override
  void visitRectangle(Rectangle rectangle) {
    final area = rectangle.width * rectangle.height;
    print("مساحة المستطيل: \$area");
    totalArea += area;
  }
  
  @override
  void visitTriangle(Triangle triangle) {
    final area = 0.5 * triangle.base * triangle.height;
    print("مساحة المثلث: \$area");
    totalArea += area;
  }
}

class PerimeterCalculator implements Visitor {
  double totalPerimeter = 0;
  
  @override
  void visitCircle(Circle circle) {
    final perimeter = 2 * 3.14 * circle.radius;
    print("محيط الدائرة: \$perimeter");
    totalPerimeter += perimeter;
  }
  
  @override
  void visitRectangle(Rectangle rectangle) {
    final perimeter = 2 * (rectangle.width + rectangle.height);
    print("محيط المستطيل: \$perimeter");
    totalPerimeter += perimeter;
  }
  
  @override
  void visitTriangle(Triangle triangle) {
    // افتراض متساوي الأضلاع للبساطة
    final perimeter = 3 * triangle.base;
    print("محيط المثلث: \$perimeter");
    totalPerimeter += perimeter;
  }
}

class DrawVisitor implements Visitor {
  @override
  void visitCircle(Circle circle) {
    print("رسم دائرة بنصف قطر \${circle.radius}");
  }
  
  @override
  void visitRectangle(Rectangle rectangle) {
    print("رسم مستطيل \${rectangle.width}×\${rectangle.height}");
  }
  
  @override
  void visitTriangle(Triangle triangle) {
    print("رسم مثلث قاعدة=\${triangle.base} ارتفاع=\${triangle.height}");
  }
}

void main() {
  final shapes = <Shape>[
    Circle(5),
    Rectangle(4, 6),
    Triangle(3, 4),
  ];
  
  print("=== حساب المساحات ===");
  final areaCalc = AreaCalculator();
  for (final shape in shapes) {
    shape.accept(areaCalc);
  }
  print("المساحة الإجمالية: \${areaCalc.totalArea}");
  
  print("\\n=== حساب المحيطات ===");
  final perimeterCalc = PerimeterCalculator();
  for (final shape in shapes) {
    shape.accept(perimeterCalc);
  }
  print("المحيط الإجمالي: \${perimeterCalc.totalPerimeter}");
  
  print("\\n=== رسم الأشكال ===");
  final drawer = DrawVisitor();
  for (final shape in shapes) {
    shape.accept(drawer);
  }
}"""),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Easy to add new operations",
        "Groups related operations in visitor",
        "Can accumulate state while visiting",
        "Follows Open/Closed Principle for operations",
      ],
      ar: [
        "سهولة إضافة عمليات جديدة",
        "يجمع العمليات المترابطة في الزائر",
        "يمكن تجميع الحالة أثناء الزيارة",
        "يتبع مبدأ المفتوح/المغلق للعمليات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Hard to add new element types",
        "Breaks encapsulation of elements",
        "Complex to understand and implement",
        "Requires updating all visitors when elements change",
      ],
      ar: [
        "صعوبة إضافة أنواع عناصر جديدة",
        "يكسر تغليف العناصر",
        "معقد في الفهم والتنفيذ",
        "يتطلب تحديث جميع الزوار عند تغيير العناصر",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Visitor when:"),
        UnorderedListContent(
          value: [
            "Object structure is stable but operations change frequently",
            "Many unrelated operations need to be performed on objects",
            "You want to avoid polluting classes with many operations",
            "You need to accumulate state across object structure",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم الزائر عندما:"),
        UnorderedListContent(
          value: [
            "بنية الكائن ثابتة لكن العمليات تتغير بشكل متكرر",
            "عمليات كثيرة غير مترابطة يجب أداؤها على الكائنات",
            "تريد تجنب تلويث الفئات بعمليات كثيرة",
            "تحتاج لتجميع الحالة عبر بنية الكائن",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Using when object structure changes frequently",
        "Making visitors too complex with business logic",
        "Not considering simpler alternatives like Strategy",
        "Forgetting to update all visitors when adding elements",
      ],
      ar: [
        "الاستخدام عندما تتغير بنية الكائن بشكل متكرر",
        "جعل الزوار معقدين جداً مع منطق العمل",
        "عدم النظر في بدائل أبسط مثل الاستراتيجية",
        "نسيان تحديث جميع الزوار عند إضافة عناصر",
      ],
    ),
    relatedPatterns: [
      PatternKeys.composite,
      PatternKeys.interpreter,
      PatternKeys.iterator,
    ],
  ),
  PatternKeys.dependencyInjection: DesignPattern(
    id: PatternKeys.dependencyInjection,
    title: LocalizedString(
      en: "Dependency Injection",
      ar: "حقن الاعتمادية (Dependency Injection)",
    ),
    description: LocalizedString(
      en: "Provides dependencies to objects from external sources rather than creating them internally",
      ar: "يوفر التبعيات للكائنات من مصادر خارجية بدلاً من إنشائها داخلياً",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .practical,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "Dependency Injection is a technique where an object receives its dependencies from external sources rather than creating them itself. This is a fundamental principle for achieving Inversion of Control (IoC).",
        ),
        StringContent(
          "DI makes code more testable, maintainable, and flexible by decoupling object creation from usage. Dependencies are 'injected' into objects through constructors, setters, or interface injection.",
        ),
        UnorderedListContent(
          title: "Types of Injection:",
          value: [
            "Constructor Injection: Dependencies passed through constructor (preferred)",
            "Setter Injection: Dependencies set through setter methods",
            "Interface Injection: Dependencies provided through interface methods",
            "Service Locator: Objects request dependencies from a registry",
          ],
        ),
      ],
      ar: [
        StringContent(
          "حقن الاعتمادية هي تقنية حيث يتلقى الكائن تبعياته من مصادر خارجية بدلاً من إنشائها بنفسه. هذا مبدأ أساسي لتحقيق عكس التحكم (IoC).",
        ),
        StringContent(
          "DI يجعل الكود أكثر قابلية للاختبار والصيانة والمرونة من خلال فصل إنشاء الكائن عن استخدامه. التبعيات 'تُحقن' في الكائنات من خلال المُنشئات أو المُعدلات أو حقن الواجهة.",
        ),
        UnorderedListContent(
          title: "أنواع الحقن:",
          value: [
            "حقن المُنشئ: التبعيات تُمرر عبر المُنشئ (المُفضل)",
            "حقن المُعدل: التبعيات تُعين عبر طرق المُعدل",
            "حقن الواجهة: التبعيات تُوفر عبر طرق الواجهة",
            "موقع الخدمة: الكائنات تطلب التبعيات من سجل",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Highly testable - easy to mock dependencies",
        "Reduces coupling between components",
        "Makes dependencies explicit",
        "Supports different implementations easily",
      ],
      ar: [
        "قابل للاختبار بشكل كبير - سهولة محاكاة التبعيات",
        "يقلل الاقتران بين المكونات",
        "يجعل التبعيات صريحة",
        "يدعم تنفيذات مختلفة بسهولة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can add complexity with DI containers",
        "May obscure code flow",
        "Requires more boilerplate",
        "Learning curve for frameworks",
      ],
      ar: [
        "قد يضيف تعقيداً مع حاويات DI",
        "قد يُبهم تدفق الكود",
        "يتطلب المزيد من الكود القالبي",
        "منحنى تعلم للأطر",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Dependency Injection when:"),
        UnorderedListContent(
          value: [
            "You want testable code with mockable dependencies",
            "You need to swap implementations",
            "You want to follow SOLID principles",
            "You're building modular, decoupled systems",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم حقن الاعتمادية عندما:"),
        UnorderedListContent(
          value: [
            "تريد كوداً قابلاً للاختبار مع تبعيات قابلة للمحاكاة",
            "تحتاج لتبديل التنفيذات",
            "تريد اتباع مبادئ SOLID",
            "تبني أنظمة معيارية ومفصولة",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Over-using DI frameworks for simple cases",
        "Creating circular dependencies",
        "Not using constructor injection as default",
        "Injecting too many dependencies (code smell)",
      ],
      ar: [
        "الإفراط في استخدام أطر DI للحالات البسيطة",
        "إنشاء تبعيات دائرية",
        "عدم استخدام حقن المُنشئ كافتراضي",
        "حقن تبعيات كثيرة جداً (رائحة كود)",
      ],
    ),
    relatedPatterns: [
      PatternKeys.factoryMethod,
      PatternKeys.serviceLocator,
      PatternKeys.singleton,
    ],
  ),
  PatternKeys.serviceLocator: DesignPattern(
    id: PatternKeys.serviceLocator,
    title: LocalizedString(
      en: "Service Locator",
      ar: "موقع الخدمة (Service Locator)",
    ),
    description: LocalizedString(
      en: "Provides a central registry for services that objects can request",
      ar: "يوفر سجلاً مركزياً للخدمات التي يمكن للكائنات طلبها",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .practical,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "Service Locator encapsulates the process of obtaining services. Instead of having dependencies injected, objects ask a service locator for the services they need.",
        ),
        StringContent(
          "While simpler than full DI containers, Service Locator is often considered an anti-pattern because it hides dependencies and makes testing harder. However, it's still useful in certain scenarios.",
        ),
        UnorderedListContent(
          title: "Key Aspects:",
          value: [
            "Central registry maintains services",
            "Objects request services when needed",
            "Can provide lazy initialization",
            "Hides dependencies from constructors",
          ],
        ),
      ],
      ar: [
        StringContent(
          "موقع الخدمة يغلف عملية الحصول على الخدمات. بدلاً من حقن التبعيات، الكائنات تطلب من موقع الخدمة الخدمات التي تحتاجها.",
        ),
        StringContent(
          "بينما أبسط من حاويات DI الكاملة، غالباً ما يُعتبر موقع الخدمة نمطاً مضاداً لأنه يخفي التبعيات ويجعل الاختبار أصعب. ومع ذلك، لا يزال مفيداً في سيناريوهات معينة.",
        ),
        UnorderedListContent(
          title: "الجوانب الأساسية:",
          value: [
            "السجل المركزي يحتفظ بالخدمات",
            "الكائنات تطلب الخدمات عند الحاجة",
            "يمكن توفير التهيئة الكسولة",
            "يخفي التبعيات من المُنشئات",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Simple to implement",
        "Centralized service management",
        "Supports lazy initialization",
        "Decouples client from concrete classes",
      ],
      ar: [
        "سهل التنفيذ",
        "إدارة خدمات مركزية",
        "يدعم التهيئة الكسولة",
        "يفصل العميل عن الفئات المحددة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Hides dependencies",
        "Harder to test than DI",
        "Can become god object",
        "Runtime errors for missing services",
      ],
      ar: [
        "يخفي التبعيات",
        "أصعب في الاختبار من DI",
        "قد يصبح كائناً إلهياً",
        "أخطاء وقت التشغيل للخدمات المفقودة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Service Locator when:"),
        UnorderedListContent(
          value: [
            "You have a simple application",
            "You can't use constructor injection",
            "Services are optional or conditional",
            "You're working with legacy code",
          ],
        ),
        StringContent("Prefer Dependency Injection when possible."),
      ],
      ar: [
        StringContent("استخدم موقع الخدمة عندما:"),
        UnorderedListContent(
          value: [
            "لديك تطبيق بسيط",
            "لا يمكنك استخدام حقن المُنشئ",
            "الخدمات اختيارية أو شرطية",
            "تعمل مع كود قديم",
          ],
        ),
        StringContent("فضّل حقن الاعتمادية عندما يكون ممكناً."),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Using when DI would be better",
        "Not handling missing services",
        "Creating global state issues",
        "Making it too complex",
      ],
      ar: [
        "الاستخدام عندما يكون DI أفضل",
        "عدم التعامل مع الخدمات المفقودة",
        "إنشاء مشاكل حالة عامة",
        "جعله معقداً جداً",
      ],
    ),
    relatedPatterns: [
      PatternKeys.dependencyInjection,
      PatternKeys.singleton,
      PatternKeys.factoryMethod,
    ],
  ),
  PatternKeys.repository: DesignPattern(
    id: PatternKeys.repository,
    title: LocalizedString(en: "Repository", ar: "المستودع (Repository)"),
    description: LocalizedString(
      en: "Mediates between domain and data layers using a collection-like interface",
      ar: "يتوسط بين طبقات المجال والبيانات باستخدام واجهة شبيهة بالمجموعة",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .practical,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Repository pattern encapsulates data access logic and provides a collection-like interface for accessing domain objects. It acts as an in-memory collection of domain entities.",
        ),
        StringContent(
          "Repositories provide a cleaner separation between domain and data layers, making it easier to test business logic and swap data sources. They typically handle CRUD operations and queries.",
        ),
        UnorderedListContent(
          title: "Key Characteristics:",
          value: [
            "Collection-like interface (add, remove, find)",
            "Abstracts data access details",
            "Works with domain entities",
            "Can combine Data Mapper pattern",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط المستودع يغلف منطق الوصول للبيانات ويوفر واجهة شبيهة بالمجموعة للوصول لكائنات المجال. يعمل كمجموعة في الذاكرة لكيانات المجال.",
        ),
        StringContent(
          "المستودعات توفر فصلاً أنظف بين طبقات المجال والبيانات، مما يسهل اختبار منطق العمل وتبديل مصادر البيانات. عادة ما تتعامل مع عمليات CRUD والاستعلامات.",
        ),
        UnorderedListContent(
          title: "الخصائص الأساسية:",
          value: [
            "واجهة شبيهة بالمجموعة (إضافة، إزالة، إيجاد)",
            "يجرد تفاصيل الوصول للبيانات",
            "يعمل مع كيانات المجال",
            "يمكن دمجه مع نمط مُخطط البيانات",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Centralizes data access logic",
        "Makes testing easier with mock repositories",
        "Allows swapping data sources",
        "Domain model stays clean",
      ],
      ar: [
        "يركز منطق الوصول للبيانات",
        "يسهل الاختبار مع مستودعات وهمية",
        "يسمح بتبديل مصادر البيانات",
        "يبقي نموذج المجال نظيفاً",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Additional layer of abstraction",
        "Can lead to code duplication",
        "May hide complex queries",
        "Learning curve for patterns",
      ],
      ar: [
        "طبقة تجريد إضافية",
        "قد يؤدي لتكرار الكود",
        "قد يخفي استعلامات معقدة",
        "منحنى تعلم للأنماط",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Repository when:"),
        UnorderedListContent(
          value: [
            "You want clean separation of concerns",
            "You need to swap data sources",
            "Complex domain logic needs testing",
            "You're following DDD principles",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم المستودع عندما:"),
        UnorderedListContent(
          value: [
            "تريد فصلاً نظيفاً للاهتمامات",
            "تحتاج لتبديل مصادر البيانات",
            "منطق المجال المعقد يحتاج للاختبار",
            "تتبع مبادئ DDD",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Putting business logic in repositories",
        "Creating generic repositories (one-size-fits-all)",
        "Exposing IQueryable/data layer concerns",
        "Not considering performance implications",
      ],
      ar: [
        "وضع منطق العمل في المستودعات",
        "إنشاء مستودعات عامة (مقاس واحد يناسب الجميع)",
        "كشف IQueryable/اهتمامات طبقة البيانات",
        "عدم النظر في آثار الأداء",
      ],
    ),
    relatedPatterns: [
      PatternKeys.dataMapper,
      PatternKeys.unitOfWork,
      PatternKeys.specification,
    ],
  ),
  PatternKeys.unitOfWork: DesignPattern(
    id: PatternKeys.unitOfWork,
    title: LocalizedString(en: "Unit of Work", ar: "وحدة العمل (Unit of Work)"),
    description: LocalizedString(
      en: "Maintains a list of changes and coordinates writing them to the database",
      ar: "يحتفظ بقائمة التغييرات وينسق كتابتها لقاعدة البيانات",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .practical,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "Unit of Work maintains a list of objects affected by a business transaction and coordinates writing out changes. It tracks all changes made during a transaction and commits them as a single unit.",
        ),
        StringContent(
          "This pattern is crucial for maintaining data consistency and implementing transactions across multiple repositories. It ensures either all changes succeed or all fail.",
        ),
        UnorderedListContent(
          title: "Key Responsibilities:",
          value: [
            "Tracks changes to entities",
            "Coordinates commits across repositories",
            "Handles transaction management",
            "Implements change tracking",
          ],
        ),
      ],
      ar: [
        StringContent(
          "وحدة العمل تحتفظ بقائمة الكائنات المتأثرة بمعاملة عمل وتنسق كتابة التغييرات. تتتبع جميع التغييرات المُجراة خلال معاملة وتلتزم بها كوحدة واحدة.",
        ),
        StringContent(
          "هذا النمط حاسم للحفاظ على اتساق البيانات وتنفيذ المعاملات عبر مستودعات متعددة. يضمن إما نجاح جميع التغييرات أو فشلها جميعاً.",
        ),
        UnorderedListContent(
          title: "المسؤوليات الأساسية:",
          value: [
            "يتتبع التغييرات على الكيانات",
            "ينسق الالتزامات عبر المستودعات",
            "يتعامل مع إدارة المعاملات",
            "ينفذ تتبع التغيير",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Ensures transactional consistency",
        "Reduces database roundtrips",
        "Centralizes transaction logic",
        "Automatic change tracking",
      ],
      ar: [
        "يضمن الاتساق المعاملي",
        "يقلل رحلات قاعدة البيانات",
        "يركز منطق المعاملات",
        "تتبع تغيير تلقائي",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Complex to implement correctly",
        "Can hide performance issues",
        "Memory overhead for tracking",
        "Not suitable for all scenarios",
      ],
      ar: [
        "معقد في التنفيذ بشكل صحيح",
        "قد يخفي مشاكل الأداء",
        "عبء ذاكرة للتتبع",
        "غير مناسب لجميع السيناريوهات",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Unit of Work when:"),
        UnorderedListContent(
          value: [
            "You need transactional consistency",
            "Multiple repositories in same transaction",
            "Working with complex domain models",
            "Following Domain-Driven Design",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم وحدة العمل عندما:"),
        UnorderedListContent(
          value: [
            "تحتاج لاتساق معاملي",
            "مستودعات متعددة في نفس المعاملة",
            "العمل مع نماذج مجال معقدة",
            "اتباع التصميم الموجه بالمجال",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Long-lived units of work",
        "Not handling rollback properly",
        "Tracking too many entities",
        "Using when simpler approaches work",
      ],
      ar: [
        "وحدات عمل طويلة العمر",
        "عدم التعامل مع التراجع بشكل صحيح",
        "تتبع كيانات كثيرة جداً",
        "الاستخدام عندما تكفي طرق أبسط",
      ],
    ),
    relatedPatterns: [
      PatternKeys.repository,
      PatternKeys.dataMapper,
      PatternKeys.memento,
    ],
  ),
  PatternKeys.specification: DesignPattern(
    id: PatternKeys.specification,
    title: LocalizedString(en: "Specification", ar: "المواصفة (Specification)"),
    description: LocalizedString(
      en: "Encapsulates business rules as reusable and combinable objects",
      ar: "يغلف قواعد العمل ككائنات قابلة لإعادة الاستخدام والدمج",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .practical,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Specification pattern encapsulates business rules into separate, combinable objects. Specifications can be chained using logical operators (AND, OR, NOT) to create complex business rules.",
        ),
        StringContent(
          "This pattern is particularly useful in Domain-Driven Design for expressing domain rules, validation logic, and query criteria in a clear and testable way.",
        ),
        UnorderedListContent(
          title: "Key Features:",
          value: [
            "Encapsulates business rules",
            "Reusable across different contexts",
            "Combinable with logical operators",
            "Expressive and readable",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط المواصفة يغلف قواعد العمل في كائنات منفصلة وقابلة للدمج. يمكن ربط المواصفات باستخدام عوامل منطقية (AND، OR، NOT) لإنشاء قواعد عمل معقدة.",
        ),
        StringContent(
          "هذا النمط مفيد بشكل خاص في التصميم الموجه بالمجال للتعبير عن قواعد المجال ومنطق التحقق ومعايير الاستعلام بطريقة واضحة وقابلة للاختبار.",
        ),
        UnorderedListContent(
          title: "الميزات الأساسية:",
          value: [
            "يغلف قواعد العمل",
            "قابل لإعادة الاستخدام عبر سياقات مختلفة",
            "قابل للدمج مع عوامل منطقية",
            "معبّر وقابل للقراءة",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Highly reusable business rules",
        "Testable in isolation",
        "Composable for complex rules",
        "Expressive domain language",
      ],
      ar: [
        "قواعد عمل قابلة لإعادة الاستخدام بشكل كبير",
        "قابل للاختبار بمعزل",
        "قابل للتركيب لقواعد معقدة",
        "لغة مجال معبّرة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can lead to many small classes",
        "May be overkill for simple rules",
        "Performance overhead with chaining",
        "Learning curve for team",
      ],
      ar: [
        "قد يؤدي لفئات صغيرة كثيرة",
        "قد يكون مبالغاً فيه لقواعد بسيطة",
        "عبء أداء مع التسلسل",
        "منحنى تعلم للفريق",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Specification when:"),
        UnorderedListContent(
          value: [
            "Business rules are complex and reused",
            "You need to combine rules dynamically",
            "Validation logic is scattered",
            "Following Domain-Driven Design",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم المواصفة عندما:"),
        UnorderedListContent(
          value: [
            "قواعد العمل معقدة ومُعاد استخدامها",
            "تحتاج لدمج القواعد ديناميكياً",
            "منطق التحقق مُبعثر",
            "اتباع التصميم الموجه بالمجال",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Using for simple conditions",
        "Not considering performance",
        "Creating too granular specifications",
        "Mixing specification with query logic",
      ],
      ar: [
        "الاستخدام للشروط البسيطة",
        "عدم النظر في الأداء",
        "إنشاء مواصفات دقيقة جداً",
        "خلط المواصفة مع منطق الاستعلام",
      ],
    ),
    relatedPatterns: [
      PatternKeys.repository,
      PatternKeys.strategy,
      PatternKeys.composite,
    ],
  ),
  PatternKeys.policy: DesignPattern(
    id: PatternKeys.policy,
    title: LocalizedString(en: "Policy", ar: "السياسة (Policy)"),
    description: LocalizedString(
      en: "Encapsulates business policies as pluggable strategy objects",
      ar: "يغلف سياسات العمل ككائنات استراتيجية قابلة للإضافة",
    ),
    group: .design,
    type: PatternType.behavioral,
    category: .practical,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "The Policy pattern is a variation of Strategy that encapsulates business policies and decision-making logic. It allows business rules to be defined independently and applied consistently.",
        ),
        StringContent(
          "Policies are particularly useful when you have varying business rules that change based on context, configuration, or customer requirements. They make rules explicit and testable.",
        ),
        UnorderedListContent(
          title: "Common Use Cases:",
          value: [
            "Pricing policies (regular, discount, bulk)",
            "Validation policies (strict, lenient)",
            "Authorization policies (role-based, attribute-based)",
            "Workflow policies (approval rules)",
          ],
        ),
      ],
      ar: [
        StringContent(
          "نمط السياسة هو تنويع على الاستراتيجية يغلف سياسات العمل ومنطق اتخاذ القرار. يسمح بتعريف قواعد العمل بشكل مستقل وتطبيقها بشكل متسق.",
        ),
        StringContent(
          "السياسات مفيدة بشكل خاص عندما يكون لديك قواعد عمل متنوعة تتغير بناءً على السياق أو الإعدادات أو متطلبات العميل. تجعل القواعد صريحة وقابلة للاختبار.",
        ),
        UnorderedListContent(
          title: "حالات الاستخدام الشائعة:",
          value: [
            "سياسات التسعير (عادي، خصم، جملة)",
            "سياسات التحقق (صارمة، متساهلة)",
            "سياسات التفويض (قائمة على الدور، قائمة على السمة)",
            "سياسات سير العمل (قواعد الموافقة)",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Makes business rules explicit",
        "Easy to test policies independently",
        "Flexible and configurable",
        "Supports multiple policy sets",
      ],
      ar: [
        "يجعل قواعد العمل صريحة",
        "سهولة اختبار السياسات بشكل مستقل",
        "مرن وقابل للتكوين",
        "يدعم مجموعات سياسات متعددة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can proliferate classes",
        "May add complexity",
        "Requires careful design",
        "Similar to Strategy pattern",
      ],
      ar: [
        "قد يتكاثر الفئات",
        "قد يضيف تعقيداً",
        "يتطلب تصميماً دقيقاً",
        "مشابه لنمط الاستراتيجية",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Policy when:"),
        UnorderedListContent(
          value: [
            "Business rules vary by context",
            "You need configurable decision logic",
            "Rules should be testable separately",
            "Multiple rule sets coexist",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم السياسة عندما:"),
        UnorderedListContent(
          value: [
            "قواعد العمل تتنوع حسب السياق",
            "تحتاج لمنطق قرار قابل للتكوين",
            "يجب أن تكون القواعد قابلة للاختبار بشكل منفصل",
            "تتعايش مجموعات قواعد متعددة",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Confusing with Strategy (very similar)",
        "Making policies too granular",
        "Not considering policy composition",
        "Hardcoding policy selection",
      ],
      ar: [
        "الخلط مع الاستراتيجية (متشابهة جداً)",
        "جعل السياسات دقيقة جداً",
        "عدم النظر في تركيب السياسة",
        "ترميز اختيار السياسة بشكل ثابت",
      ],
    ),
    relatedPatterns: [
      PatternKeys.strategy,
      PatternKeys.specification,
      PatternKeys.chainOfResponsibility,
    ],
  ),
  PatternKeys.mvc: DesignPattern(
    id: PatternKeys.mvc,
    title: LocalizedString(
      en: "MVC (Model-View-Controller)",
      ar: "MVC (نموذج-عرض-متحكم)",
    ),
    description: LocalizedString(
      en: "Separates application into Model, View, and Controller components",
      ar: "يفصل التطبيق إلى مكونات النموذج والعرض والمتحكم",
    ),
    group: .architectural,
    category: .practical,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "MVC is an architectural pattern that separates an application into three interconnected components: Model (data), View (presentation), and Controller (business logic).",
        ),
        UnorderedListContent(
          title: "Components:",
          value: [
            "Model: Manages data and business logic",
            "View: Presents data to user",
            "Controller: Handles user input and updates model",
          ],
        ),
      ],
      ar: [
        StringContent(
          "MVC هو نمط معماري يفصل التطبيق إلى ثلاثة مكونات مترابطة: النموذج (البيانات)، والعرض (العرض التقديمي)، والمتحكم (منطق العمل).",
        ),
        UnorderedListContent(
          title: "المكونات:",
          value: [
            "النموذج: يدير البيانات ومنطق العمل",
            "العرض: يعرض البيانات للمستخدم",
            "المتحكم: يتعامل مع مدخلات المستخدم ويحدث النموذج",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Separation of concerns",
        "Parallel development",
        "Testable components",
      ],
      ar: ["فصل الاهتمامات", "تطوير متوازٍ", "مكونات قابلة للاختبار"],
    ),
    cons: LocalizedValue(
      en: ["Can be complex for simple apps", "View-Controller coupling"],
      ar: ["قد يكون معقداً للتطبيقات البسيطة", "اقتران العرض-المتحكم"],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use MVC when:"),
        UnorderedListContent(
          value: [
            "Building web applications",
            "Need clear separation of concerns",
            "Multiple views for same data",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم MVC عندما:"),
        UnorderedListContent(
          value: [
            "بناء تطبيقات ويب",
            "تحتاج لفصل واضح للاهتمامات",
            "عدة عروض لنفس البيانات",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: ["Putting logic in views", "Fat controllers", "Tight coupling"],
      ar: ["وضع المنطق في العروض", "متحكمات سمينة", "اقتران وثيق"],
    ),
    relatedPatterns: [PatternKeys.mvp, PatternKeys.mvvm, PatternKeys.observer],
  ),
  PatternKeys.mvp: DesignPattern(
    id: PatternKeys.mvp,
    title: LocalizedString(
      en: "MVP (Model-View-Presenter)",
      ar: "MVP (نموذج-عرض-مقدم)",
    ),
    description: LocalizedString(
      en: "Separates presentation logic into a Presenter that mediates between View and Model",
      ar: "يفصل منطق العرض إلى مقدم يتوسط بين العرض والنموذج",
    ),
    group: .architectural,
    category: .practical,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "MVP is derived from MVC where the Presenter handles all presentation logic. The View is passive and delegates all user interactions to the Presenter.",
        ),
        UnorderedListContent(
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
        StringContent(
          "MVP مشتق من MVC حيث يتعامل المقدم مع كل منطق العرض. العرض سلبي ويفوض جميع تفاعلات المستخدم للمقدم.",
        ),
        UnorderedListContent(
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
    pros: LocalizedValue(
      en: ["Highly testable", "Clear responsibilities", "View independence"],
      ar: ["قابل للاختبار بشكل كبير", "مسؤوليات واضحة", "استقلالية العرض"],
    ),
    cons: LocalizedValue(
      en: ["More boilerplate", "One-to-one coupling", "Can become complex"],
      ar: ["كود قالبي أكثر", "اقتران واحد لواحد", "قد يصبح معقداً"],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use MVP when:"),
        UnorderedListContent(
          value: [
            "Need highly testable code",
            "Complex UI logic",
            "Desktop or mobile apps",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم MVP عندما:"),
        UnorderedListContent(
          value: [
            "تحتاج لكود قابل للاختبار بشكل كبير",
            "منطق واجهة مستخدم معقد",
            "تطبيقات سطح المكتب أو الهاتف المحمول",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "View knowing about Model",
        "Presenter doing too much",
        "Memory leaks",
      ],
      ar: ["العرض يعرف عن النموذج", "المقدم يفعل الكثير", "تسريبات ذاكرة"],
    ),
    relatedPatterns: [PatternKeys.mvc, PatternKeys.mvvm, PatternKeys.mediator],
  ),
  PatternKeys.mvvm: DesignPattern(
    id: PatternKeys.mvvm,
    title: LocalizedString(
      en: "MVVM (Model-View-ViewModel)",
      ar: "MVVM (نموذج-عرض-نموذج العرض)",
    ),
    description: LocalizedString(
      en: "Separates UI from business logic using data binding between View and ViewModel",
      ar: "يفصل واجهة المستخدم عن منطق العمل باستخدام ربط البيانات بين العرض ونموذج العرض",
    ),
    group: .architectural,
    category: .practical,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "MVVM uses data binding to connect View with ViewModel, eliminating the need for manual updates. The ViewModel exposes data and commands that the View binds to.",
        ),
        UnorderedListContent(
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
        StringContent(
          "MVVM يستخدم ربط البيانات لربط العرض بنموذج العرض، مما يلغي الحاجة للتحديثات اليدوية. نموذج العرض يكشف البيانات والأوامر التي يربطها العرض.",
        ),
        UnorderedListContent(
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
    pros: LocalizedValue(
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
    cons: LocalizedValue(
      en: ["Learning curve", "Can be overkill", "Debugging data binding"],
      ar: ["منحنى تعلم", "قد يكون مبالغاً فيه", "تصحيح ربط البيانات"],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use MVVM when:"),
        UnorderedListContent(
          value: [
            "Framework supports data binding",
            "Complex UI state",
            "Reactive applications",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم MVVM عندما:"),
        UnorderedListContent(
          value: [
            "الإطار يدعم ربط البيانات",
            "حالة واجهة مستخدم معقدة",
            "تطبيقات تفاعلية",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: ["Logic in View", "Fat ViewModels", "Breaking data binding"],
      ar: ["المنطق في العرض", "نماذج عرض سمينة", "كسر ربط البيانات"],
    ),
    relatedPatterns: [PatternKeys.mvc, PatternKeys.mvp, PatternKeys.observer],
  ),
  PatternKeys.mvu: DesignPattern(
    id: PatternKeys.mvu,
    title: LocalizedString(
      en: "MVU (Model-View-Update)",
      ar: "MVU (نموذج-عرض-تحديث)",
    ),
    description: LocalizedString(
      en: "Unidirectional data flow with immutable state updates",
      ar: "تدفق بيانات أحادي الاتجاه مع تحديثات حالة ثابتة",
    ),
    group: .architectural,
    category: .modern,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "MVU (also called Elm Architecture or TEA) uses unidirectional data flow where events trigger state updates, and state changes trigger view updates.",
        ),
        UnorderedListContent(
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
        StringContent(
          "MVU (يسمى أيضاً معمارية Elm أو TEA) يستخدم تدفق بيانات أحادي الاتجاه حيث الأحداث تطلق تحديثات الحالة، وتغييرات الحالة تطلق تحديثات العرض.",
        ),
        UnorderedListContent(
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
    pros: LocalizedValue(
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
    cons: LocalizedValue(
      en: ["Boilerplate for simple cases", "Learning curve", "Verbosity"],
      ar: ["كود قالبي للحالات البسيطة", "منحنى تعلم", "طول"],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use MVU when:"),
        UnorderedListContent(
          value: [
            "Need predictable state",
            "Complex state management",
            "Debugging is critical",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم MVU عندما:"),
        UnorderedListContent(
          value: [
            "تحتاج لحالة قابلة للتنبؤ",
            "إدارة حالة معقدة",
            "التصحيح حرج",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: ["Mutable state", "Side effects in update", "Not using messages"],
      ar: [
        "حالة قابلة للتغيير",
        "آثار جانبية في التحديث",
        "عدم استخدام الرسائل",
      ],
    ),
    relatedPatterns: [
      PatternKeys.redux,
      PatternKeys.unidirectionalDataFlow,
      PatternKeys.command,
    ],
  ),
  PatternKeys.cleanArchitecture: DesignPattern(
    id: PatternKeys.cleanArchitecture,
    title: LocalizedString(
      en: "Clean Architecture",
      ar: "المعمارية النظيفة (Clean Architecture)",
    ),
    description: LocalizedString(
      en: "Organizes code into layers with dependency rules pointing inward toward business logic",
      ar: "ينظم الكود في طبقات مع قواعد تبعية تشير للداخل نحو منطق العمل",
    ),
    group: .architectural,
    category: .modern,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "Clean Architecture separates code into layers where dependencies point inward. The core business logic is independent of frameworks, UI, and databases.",
        ),
        UnorderedListContent(
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
        StringContent(
          "المعمارية النظيفة تفصل الكود في طبقات حيث التبعيات تشير للداخل. منطق العمل الأساسي مستقل عن الأطر وواجهة المستخدم وقواعد البيانات.",
        ),
        UnorderedListContent(
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
    pros: LocalizedValue(
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
    cons: LocalizedValue(
      en: [
        "Initial complexity",
        "More files",
        "Learning curve",
        "May be overkill",
      ],
      ar: ["تعقيد أولي", "ملفات أكثر", "منحنى تعلم", "قد يكون مبالغاً فيه"],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Clean Architecture when:"),
        UnorderedListContent(
          value: [
            "Long-term maintainability important",
            "Large team projects",
            "Complex business logic",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم المعمارية النظيفة عندما:"),
        UnorderedListContent(
          value: [
            "الصيانة طويلة الأمد مهمة",
            "مشاريع فريق كبير",
            "منطق عمل معقد",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Dependencies pointing wrong way",
        "Too many layers",
        "Overengineering",
      ],
      ar: ["التبعيات تشير بالاتجاه الخاطئ", "طبقات كثيرة جداً", "هندسة مفرطة"],
    ),
    relatedPatterns: [
      PatternKeys.hexagonal,
      PatternKeys.layeredArchitecture,
      PatternKeys.dependencyInjection,
    ],
  ),
  PatternKeys.hexagonal: DesignPattern(
    id: PatternKeys.hexagonal,
    title: LocalizedString(
      en: "Hexagonal Architecture (Ports and Adapters)",
      ar: "المعمارية السداسية (المنافذ والمحولات)",
    ),
    description: LocalizedString(
      en: "Isolates core logic with ports for external interactions and adapters for implementations",
      ar: "يعزل المنطق الأساسي بمنافذ للتفاعلات الخارجية ومحولات للتنفيذات",
    ),
    group: .architectural,
    category: .modern,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "Hexagonal Architecture (Ports and Adapters) places business logic at the center, with ports defining interfaces and adapters implementing external interactions.",
        ),
        UnorderedListContent(
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
        StringContent(
          "المعمارية السداسية (المنافذ والمحولات) تضع منطق العمل في المركز، مع منافذ تعرّف الواجهات ومحولات تنفذ التفاعلات الخارجية.",
        ),
        UnorderedListContent(
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
    pros: LocalizedValue(
      en: ["Technology agnostic", "Testable", "Flexible", "Clear boundaries"],
      ar: ["مستقل عن التقنية", "قابل للاختبار", "مرن", "حدود واضحة"],
    ),
    cons: LocalizedValue(
      en: ["Initial complexity", "More abstraction", "Boilerplate"],
      ar: ["تعقيد أولي", "تجريد أكثر", "كود قالبي"],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Hexagonal Architecture when:"),
        UnorderedListContent(
          value: [
            "Core logic must be isolated",
            "Multiple interfaces (UI, API, CLI)",
            "Technology changes expected",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم المعمارية السداسية عندما:"),
        UnorderedListContent(
          value: [
            "يجب عزل المنطق الأساسي",
            "واجهات متعددة (واجهة مستخدم، API، CLI)",
            "تغييرات التقنية متوقعة",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: ["Confusing with layered", "Too many ports", "Leaking details"],
      ar: ["الخلط مع الطبقات", "منافذ كثيرة جداً", "تسريب التفاصيل"],
    ),
    relatedPatterns: [
      PatternKeys.cleanArchitecture,
      PatternKeys.adapter,
      PatternKeys.dependencyInjection,
    ],
  ),
  PatternKeys.layeredArchitecture: DesignPattern(
    id: PatternKeys.layeredArchitecture,
    title: LocalizedString(
      en: "Layered Architecture",
      ar: "المعمارية الطبقية (Layered Architecture)",
    ),
    description: LocalizedString(
      en: "Organizes code into horizontal layers with defined dependencies",
      ar: "ينظم الكود في طبقات أفقية مع تبعيات محددة",
    ),
    group: .architectural,
    category: .practical,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "Layered Architecture organizes code into horizontal layers, typically Presentation, Business Logic, and Data Access, where each layer depends only on layers below it.",
        ),
        UnorderedListContent(
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
        StringContent(
          "المعمارية الطبقية تنظم الكود في طبقات أفقية، عادة العرض ومنطق العمل والوصول للبيانات، حيث كل طبقة تعتمد فقط على الطبقات أدناها.",
        ),
        UnorderedListContent(
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
    pros: LocalizedValue(
      en: ["Simple to understand", "Clear separation", "Standard approach"],
      ar: ["سهل الفهم", "فصل واضح", "نهج قياسي"],
    ),
    cons: LocalizedValue(
      en: ["Can become monolithic", "Layer violations", "Database-centric"],
      ar: ["قد يصبح متراصاً", "انتهاكات الطبقة", "محوري لقاعدة البيانات"],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Layered Architecture when:"),
        UnorderedListContent(
          value: [
            "Starting a project",
            "Team familiar with pattern",
            "Simple to moderate complexity",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم المعمارية الطبقية عندما:"),
        UnorderedListContent(
          value: [
            "بدء مشروع",
            "الفريق على دراية بالنمط",
            "تعقيد بسيط إلى متوسط",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: ["Skipping layers", "Circular dependencies", "Fat layers"],
      ar: ["تخطي الطبقات", "تبعيات دائرية", "طبقات سمينة"],
    ),
    relatedPatterns: [
      PatternKeys.cleanArchitecture,
      PatternKeys.mvc,
      PatternKeys.facade,
    ],
  ),
  PatternKeys.modularMonolith: DesignPattern(
    id: PatternKeys.modularMonolith,
    title: LocalizedString(
      en: "Modular Monolith",
      ar: "المتراص المعياري (Modular Monolith)",
    ),
    description: LocalizedString(
      en: "Organizes a monolithic application into independent, loosely-coupled modules with clear boundaries",
      ar: "ينظم تطبيقاً متراصاً في وحدات مستقلة ومفصولة بشكل فضفاض مع حدود واضحة",
    ),
    group: .architectural,
    category: .modern,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "A Modular Monolith is a single deployable unit organized into independent modules with well-defined boundaries. Each module encapsulates its own domain logic, data, and dependencies while communicating with other modules through defined interfaces.",
        ),
        StringContent(
          "This architecture provides the simplicity of a monolith with the modularity benefits of microservices, making it easier to evolve the system and potentially extract modules into separate services later.",
        ),
        UnorderedListContent(
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
        StringContent(
          "Modules typically correspond to bounded contexts in Domain-Driven Design, making the transition to microservices smoother if needed.",
        ),
      ],
      ar: [
        StringContent(
          "المتراص المعياري هو وحدة قابلة للنشر واحدة منظمة في وحدات مستقلة بحدود محددة جيداً. كل وحدة تغلف منطق المجال والبيانات والتبعيات الخاصة بها مع التواصل مع الوحدات الأخرى من خلال واجهات محددة.",
        ),
        StringContent(
          "توفر هذه المعمارية بساطة المتراص مع فوائد المعيارية للخدمات المصغرة، مما يسهل تطوير النظام واستخراج الوحدات لاحقاً إلى خدمات منفصلة إذا لزم الأمر.",
        ),
        UnorderedListContent(
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
        StringContent(
          "عادة ما تتوافق الوحدات مع السياقات المحدودة في التصميم الموجه بالمجال، مما يجعل الانتقال إلى الخدمات المصغرة أكثر سلاسة إذا لزم الأمر.",
        ),
      ],
    ),
    pros: LocalizedValue(
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
    cons: LocalizedValue(
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
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Modular Monolith when:"),
        UnorderedListContent(
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
        StringContent("استخدم المتراص المعياري عندما:"),
        UnorderedListContent(
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
    commonMistakes: LocalizedValue(
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
      PatternKeys.microservices,
      PatternKeys.layeredArchitecture,
      PatternKeys.cleanArchitecture,
    ],
  ),
  PatternKeys.microservices: DesignPattern(
    id: PatternKeys.microservices,
    title: LocalizedString(
      en: "Microservices",
      ar: "الخدمات المصغرة (Microservices)",
    ),
    description: LocalizedString(
      en: "Decomposes application into small, independent services that communicate over network",
      ar: "يحلل التطبيق إلى خدمات صغيرة ومستقلة تتواصل عبر الشبكة",
    ),
    group: .architectural,
    category: .modern,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "Microservices architecture decomposes an application into small, loosely-coupled services that are independently deployable and scalable. Each service owns its data and communicates with others via well-defined APIs (typically HTTP/REST or message queues).",
        ),
        StringContent(
          "This architecture enables teams to work independently, use different technology stacks, and deploy services separately. However, it introduces significant operational complexity and challenges around distributed systems.",
        ),
        UnorderedListContent(
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
        StringContent(
          "Common communication patterns include synchronous (REST, gRPC) and asynchronous (message queues, events). Services discover each other through service discovery mechanisms.",
        ),
      ],
      ar: [
        StringContent(
          "معمارية الخدمات المصغرة تحلل التطبيق إلى خدمات صغيرة ومفصولة بشكل فضفاض قابلة للنشر والتوسع بشكل مستقل. كل خدمة تمتلك بياناتها وتتواصل مع الأخرى عبر واجهات برمجة محددة جيداً (عادة HTTP/REST أو قوائم الرسائل).",
        ),
        StringContent(
          "تمكّن هذه المعمارية الفرق من العمل بشكل مستقل، واستخدام مكدسات تقنية مختلفة، ونشر الخدمات بشكل منفصل. ومع ذلك، تُدخل تعقيداً تشغيلياً كبيراً وتحديات حول الأنظمة الموزعة.",
        ),
        UnorderedListContent(
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
        StringContent(
          "أنماط الاتصال الشائعة تشمل المتزامن (REST، gRPC) واللامتزامن (قوائم الرسائل، الأحداث). الخدمات تكتشف بعضها من خلال آليات اكتشاف الخدمة.",
        ),
      ],
    ),
    pros: LocalizedValue(
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
    cons: LocalizedValue(
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
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Microservices when:"),
        UnorderedListContent(
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
        StringContent("Consider starting with Modular Monolith first."),
      ],
      ar: [
        StringContent("استخدم الخدمات المصغرة عندما:"),
        UnorderedListContent(
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
        StringContent("اعتبر البدء بالمتراص المعياري أولاً."),
      ],
    ),
    commonMistakes: LocalizedValue(
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
    relatedPatterns: [
      PatternKeys.modularMonolith,
      PatternKeys.cqrs,
      PatternKeys.eventSourcing,
    ],
  ),
  PatternKeys.cqrs: DesignPattern(
    id: PatternKeys.cqrs,
    title: LocalizedString(
      en: "CQRS (Command Query Responsibility Segregation)",
      ar: "CQRS (فصل مسؤولية الأوامر والاستعلامات)",
    ),
    description: LocalizedString(
      en: "Separates read and write operations into different models",
      ar: "يفصل عمليات القراءة والكتابة في نماذج مختلفة",
    ),
    group: .architectural,
    category: .modern,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "CQRS separates the read (Query) and write (Command) sides of an application into different models. Commands change state but don't return data. Queries return data but don't change state.",
        ),
        StringContent(
          "This pattern is particularly powerful when combined with Event Sourcing and works well in systems with complex business logic or different read/write performance requirements.",
        ),
        UnorderedListContent(
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
        StringContent(
          "The read and write models can use different databases, with changes propagated asynchronously through events or message queues.",
        ),
      ],
      ar: [
        StringContent(
          "CQRS يفصل جوانب القراءة (الاستعلام) والكتابة (الأمر) للتطبيق في نماذج مختلفة. الأوامر تغير الحالة لكن لا تُرجع بيانات. الاستعلامات تُرجع بيانات لكن لا تغير الحالة.",
        ),
        StringContent(
          "هذا النمط قوي بشكل خاص عند دمجه مع Event Sourcing ويعمل جيداً في الأنظمة ذات منطق العمل المعقد أو متطلبات أداء القراءة/الكتابة المختلفة.",
        ),
        UnorderedListContent(
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
        StringContent(
          "نماذج القراءة والكتابة يمكن أن تستخدم قواعد بيانات مختلفة، مع نشر التغييرات بشكل غير متزامن من خلال الأحداث أو قوائم الرسائل.",
        ),
      ],
    ),
    pros: LocalizedValue(
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
    cons: LocalizedValue(
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
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use CQRS when:"),
        UnorderedListContent(
          value: [
            "Read and write workloads have very different characteristics",
            "Complex business logic on write side",
            "Need to scale reads and writes independently",
            "Multiple representations of same data needed",
            "Working with Event Sourcing",
            "High-performance requirements for queries",
          ],
        ),
        StringContent("Don't use for simple CRUD applications."),
      ],
      ar: [
        StringContent("استخدم CQRS عندما:"),
        UnorderedListContent(
          value: [
            "أحمال القراءة والكتابة لها خصائص مختلفة جداً",
            "منطق عمل معقد على جانب الكتابة",
            "تحتاج لتوسيع القراءة والكتابة بشكل مستقل",
            "تمثيلات متعددة لنفس البيانات مطلوبة",
            "العمل مع Event Sourcing",
            "متطلبات أداء عالية للاستعلامات",
          ],
        ),
        StringContent("لا تستخدم لتطبيقات CRUD البسيطة."),
      ],
    ),
    commonMistakes: LocalizedValue(
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
    relatedPatterns: [
      PatternKeys.eventSourcing,
      PatternKeys.command,
      PatternKeys.repository,
    ],
  ),
  PatternKeys.eventSourcing: DesignPattern(
    id: PatternKeys.eventSourcing,
    title: LocalizedString(
      en: "Event Sourcing",
      ar: "مصادر الأحداث (Event Sourcing)",
    ),
    description: LocalizedString(
      en: "Stores all changes to application state as a sequence of events",
      ar: "يخزن جميع التغييرات على حالة التطبيق كتسلسل من الأحداث",
    ),
    group: .architectural,
    category: .modern,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "Event Sourcing stores all changes to application state as a sequence of events rather than storing just the current state. The current state is derived by replaying all events from the beginning.",
        ),
        StringContent(
          "This pattern provides a complete audit trail, enables temporal queries (\"what was the state at time X?\"), and works naturally with CQRS and event-driven architectures.",
        ),
        UnorderedListContent(
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
        StringContent(
          "Events are never deleted or modified, only new events are appended. This provides complete history and enables features like time travel debugging and audit trails.",
        ),
      ],
      ar: [
        StringContent(
          "مصادر الأحداث يخزن جميع التغييرات على حالة التطبيق كتسلسل من الأحداث بدلاً من تخزين الحالة الحالية فقط. الحالة الحالية تُستمد من خلال إعادة تشغيل جميع الأحداث من البداية.",
        ),
        StringContent(
          "يوفر هذا النمط مسار تدقيق كامل، ويمكّن الاستعلامات الزمنية (\"ما كانت الحالة في الوقت X؟\")، ويعمل بشكل طبيعي مع CQRS والمعماريات الموجهة بالأحداث.",
        ),
        UnorderedListContent(
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
        StringContent(
          "الأحداث لا تُحذف أو تُعدل أبداً، فقط تُلحق أحداث جديدة. هذا يوفر تاريخاً كاملاً ويمكّن ميزات مثل تصحيح السفر عبر الزمن ومسارات التدقيق.",
        ),
      ],
    ),
    pros: LocalizedValue(
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
    cons: LocalizedValue(
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
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Event Sourcing when:"),
        UnorderedListContent(
          value: [
            "Audit trail is critical requirement",
            "Need to analyze historical data",
            "Complex domain with many state transitions",
            "Working with CQRS architecture",
            "Time-based queries are important",
            "Need to replay events for debugging or analysis",
          ],
        ),
        StringContent("Not recommended for simple CRUD applications."),
      ],
      ar: [
        StringContent("استخدم مصادر الأحداث عندما:"),
        UnorderedListContent(
          value: [
            "مسار التدقيق متطلب حرج",
            "تحتاج لتحليل البيانات التاريخية",
            "مجال معقد مع انتقالات حالة كثيرة",
            "العمل مع معمارية CQRS",
            "الاستعلامات القائمة على الوقت مهمة",
            "تحتاج لإعادة تشغيل الأحداث للتصحيح أو التحليل",
          ],
        ),
        StringContent("غير موصى به لتطبيقات CRUD البسيطة."),
      ],
    ),
    commonMistakes: LocalizedValue(
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
    relatedPatterns: [
      PatternKeys.cqrs,
      PatternKeys.memento,
      PatternKeys.command,
    ],
  ),
  PatternKeys.bloc: DesignPattern(
    id: PatternKeys.bloc,
    title: LocalizedString(
      en: "BLoC (Business Logic Component)",
      ar: "BLoC (مكون منطق العمل)",
    ),
    description: LocalizedString(
      en: "Separates business logic from UI using streams and events",
      ar: "يفصل منطق العمل عن واجهة المستخدم باستخدام التدفقات والأحداث",
    ),
    group: .stateManagement,
    category: .modern,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "BLoC is a state management pattern in Flutter that uses Streams to handle state and events. It separates presentation from business logic, making code testable and reusable.",
        ),
        StringContent(
          "BLoCs receive events from the UI, process them according to business logic, and emit new states that the UI reacts to. This creates a clear unidirectional data flow.",
        ),
        UnorderedListContent(
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
        StringContent(
          "The flutter_bloc package provides helpful widgets like BlocBuilder, BlocListener, and BlocConsumer to react to state changes.",
        ),
      ],
      ar: [
        StringContent(
          "BLoC هو نمط إدارة حالة في Flutter يستخدم التدفقات (Streams) للتعامل مع الحالة والأحداث. يفصل العرض عن منطق العمل، مما يجعل الكود قابلاً للاختبار وإعادة الاستخدام.",
        ),
        StringContent(
          "BLoCs تتلقى الأحداث من واجهة المستخدم، تعالجها وفقاً لمنطق العمل، وتصدر حالات جديدة تتفاعل معها واجهة المستخدم. هذا ينشئ تدفق بيانات أحادي الاتجاه واضح.",
        ),
        UnorderedListContent(
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
        StringContent(
          "حزمة flutter_bloc توفر ودجات مفيدة مثل BlocBuilder وBlocListener وBlocConsumer للتفاعل مع تغييرات الحالة.",
        ),
      ],
    ),
    pros: LocalizedValue(
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
    cons: LocalizedValue(
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
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use BLoC when:"),
        UnorderedListContent(
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
        StringContent("استخدم BLoC عندما:"),
        UnorderedListContent(
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
    commonMistakes: LocalizedValue(
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
        "استخدام BLoC للحالة المحلية البسيطة",
        "التعقيد المفرط لتسلسلات الأحداث/الحالة",
      ],
    ),
    relatedPatterns: [
      PatternKeys.cubit,
      PatternKeys.redux,
      PatternKeys.observer,
    ],
  ),
  PatternKeys.cubit: DesignPattern(
    id: PatternKeys.cubit,
    title: LocalizedString(en: "Cubit", ar: "Cubit"),
    description: LocalizedString(
      en: "Simplified BLoC that exposes functions instead of events",
      ar: "BLoC مبسط يكشف الدوال بدلاً من الأحداث",
    ),
    group: .stateManagement,
    category: .modern,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "Cubit is a simplified version of BLoC that emits states in response to function calls rather than events. It reduces boilerplate while maintaining the benefits of BLoC architecture.",
        ),
        StringContent(
          "Instead of defining events and handling them in mapEventToState, Cubits expose public methods that directly emit new states. This makes the code simpler and more straightforward.",
        ),
        UnorderedListContent(
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
        StringContent(
          "Cubit هو نسخة مبسطة من BLoC تصدر حالات استجابة لاستدعاءات الدوال بدلاً من الأحداث. يقلل الكود القالبي مع الحفاظ على فوائد معمارية BLoC.",
        ),
        StringContent(
          "بدلاً من تعريف الأحداث والتعامل معها في mapEventToState، Cubits تكشف طرقاً عامة تصدر حالات جديدة مباشرة. هذا يجعل الكود أبسط وأكثر مباشرة.",
        ),
        UnorderedListContent(
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
    pros: LocalizedValue(
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
    cons: LocalizedValue(
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
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Cubit when:"),
        UnorderedListContent(
          value: [
            "You want simpler state management than BLoC",
            "Events feel like unnecessary abstraction",
            "Simple state transformations",
            "Learning state management patterns",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم Cubit عندما:"),
        UnorderedListContent(
          value: [
            "تريد إدارة حالة أبسط من BLoC",
            "الأحداث تبدو كتجريد غير ضروري",
            "تحويلات حالة بسيطة",
            "تعلم أنماط إدارة الحالة",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
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
    relatedPatterns: [
      PatternKeys.bloc,
      PatternKeys.provider,
      PatternKeys.stateNotifier,
    ],
  ),
  PatternKeys.provider: DesignPattern(
    id: PatternKeys.provider,
    title: LocalizedString(en: "Provider", ar: "Provider"),
    description: LocalizedString(
      en: "Dependency injection and state management using InheritedWidget",
      ar: "حقن الاعتمادية وإدارة الحالة باستخدام InheritedWidget",
    ),
    group: .stateManagement,
    category: .modern,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "Provider is Flutter's recommended way to manage state and dependencies. It wraps InheritedWidget to make it easier to use and provides a simple way to rebuild widgets when data changes.",
        ),
        StringContent(
          "Provider supports various use cases from simple dependency injection to complex state management, often combined with ChangeNotifier for reactive state updates.",
        ),
        UnorderedListContent(
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
        StringContent(
          "Provider هو الطريقة الموصى بها في Flutter لإدارة الحالة والتبعيات. يلف InheritedWidget لجعله أسهل في الاستخدام ويوفر طريقة بسيطة لإعادة بناء الودجات عند تغيير البيانات.",
        ),
        StringContent(
          "Provider يدعم حالات استخدام متنوعة من حقن الاعتمادية البسيط إلى إدارة الحالة المعقدة، غالباً ما يُدمج مع ChangeNotifier لتحديثات الحالة التفاعلية.",
        ),
        UnorderedListContent(
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
    pros: LocalizedValue(
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
    cons: LocalizedValue(
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
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Provider when:"),
        UnorderedListContent(
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
        StringContent("استخدم Provider عندما:"),
        UnorderedListContent(
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
    commonMistakes: LocalizedValue(
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
    relatedPatterns: [
      PatternKeys.dependencyInjection,
      PatternKeys.observer,
      PatternKeys.cubit,
    ],
  ),
  PatternKeys.stateNotifier: DesignPattern(
    id: PatternKeys.stateNotifier,
    title: LocalizedString(en: "StateNotifier", ar: "StateNotifier"),
    description: LocalizedString(
      en: "Immutable state management with StateNotifier and Riverpod",
      ar: "إدارة حالة ثابتة مع StateNotifier وRiverpod",
    ),
    group: .stateManagement,
    category: .modern,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "StateNotifier is an immutable state management solution often used with Riverpod. It enforces immutability and provides a clean way to handle state transitions.",
        ),
        StringContent(
          "Unlike ChangeNotifier, StateNotifier promotes immutable state updates where each state change creates a new state object. This makes state changes predictable and easier to debug.",
        ),
        UnorderedListContent(
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
        StringContent(
          "StateNotifier هو حل إدارة حالة ثابتة يُستخدم غالباً مع Riverpod. يفرض الثبات ويوفر طريقة نظيفة للتعامل مع انتقالات الحالة.",
        ),
        StringContent(
          "على عكس ChangeNotifier، StateNotifier يعزز تحديثات الحالة الثابتة حيث كل تغيير حالة ينشئ كائن حالة جديد. هذا يجعل تغييرات الحالة قابلة للتنبؤ وأسهل في التصحيح.",
        ),
        UnorderedListContent(
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
    pros: LocalizedValue(
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
    cons: LocalizedValue(
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
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use StateNotifier when:"),
        UnorderedListContent(
          value: [
            "Using Riverpod for state management",
            "Want immutable state",
            "Need more structure than Provider",
            "Using freezed or similar code generation",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم StateNotifier عندما:"),
        UnorderedListContent(
          value: [
            "استخدام Riverpod لإدارة الحالة",
            "تريد حالة ثابتة",
            "تحتاج لبنية أكثر من Provider",
            "استخدام freezed أو توليد كود مشابه",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
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
    relatedPatterns: [
      PatternKeys.cubit,
      PatternKeys.provider,
      PatternKeys.redux,
    ],
  ),
  PatternKeys.redux: DesignPattern(
    id: PatternKeys.redux,
    title: LocalizedString(en: "Redux", ar: "Redux"),
    description: LocalizedString(
      en: "Predictable state container with unidirectional data flow",
      ar: "حاوية حالة قابلة للتنبؤ مع تدفق بيانات أحادي الاتجاه",
    ),
    group: .stateManagement,
    category: .modern,
    level: .advanced,
    content: LocalizedValue(
      en: [
        StringContent(
          "Redux is a predictable state container pattern with strict unidirectional data flow. All state is stored in a single immutable store, modified only through pure reducer functions.",
        ),
        StringContent(
          "Actions describe what happened, Reducers specify how state changes, and the Store holds the entire application state. This creates a highly predictable and debuggable system.",
        ),
        UnorderedListContent(
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
        StringContent(
          "Redux هو نمط حاوية حالة قابلة للتنبؤ مع تدفق بيانات أحادي الاتجاه صارم. جميع الحالة مُخزنة في مخزن ثابت واحد، تُعدل فقط من خلال دوال مُخفّضة نقية.",
        ),
        StringContent(
          "الإجراءات تصف ما حدث، المُخفّضات تحدد كيف تتغير الحالة، والمخزن يحتفظ بحالة التطبيق بالكامل. هذا ينشئ نظاماً قابلاً للتنبؤ والتصحيح بشكل كبير.",
        ),
        UnorderedListContent(
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
    pros: LocalizedValue(
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
    cons: LocalizedValue(
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
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Redux when:"),
        UnorderedListContent(
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
        StringContent("استخدم Redux عندما:"),
        UnorderedListContent(
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
    commonMistakes: LocalizedValue(
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
    relatedPatterns: [
      PatternKeys.bloc,
      PatternKeys.mvu,
      PatternKeys.unidirectionalDataFlow,
    ],
  ),
  PatternKeys.unidirectionalDataFlow: DesignPattern(
    id: PatternKeys.unidirectionalDataFlow,
    title: LocalizedString(
      en: "Unidirectional Data Flow",
      ar: "تدفق البيانات أحادي الاتجاه",
    ),
    description: LocalizedString(
      en: "Architectural principle where data flows in one direction through the application",
      ar: "مبدأ معماري حيث تتدفق البيانات في اتجاه واحد عبر التطبيق",
    ),
    group: .stateManagement,
    category: .modern,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "Unidirectional Data Flow is a principle where data flows in a single direction: User actions → State changes → UI updates. This creates predictable and debuggable applications.",
        ),
        StringContent(
          "This principle is fundamental to many state management patterns including Redux, BLoC, and MVU. It prevents complex bidirectional data flows that make applications hard to reason about.",
        ),
        UnorderedListContent(
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
        StringContent(
          "تدفق البيانات أحادي الاتجاه هو مبدأ حيث تتدفق البيانات في اتجاه واحد: إجراءات المستخدم ← تغييرات الحالة ← تحديثات واجهة المستخدم. هذا ينشئ تطبيقات قابلة للتنبؤ والتصحيح.",
        ),
        StringContent(
          "هذا المبدأ أساسي للعديد من أنماط إدارة الحالة بما في ذلك Redux وBLoC وMVU. يمنع تدفقات البيانات ثنائية الاتجاه المعقدة التي تجعل التطبيقات صعبة الفهم.",
        ),
        UnorderedListContent(
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
    pros: LocalizedValue(
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
    cons: LocalizedValue(
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
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Unidirectional Data Flow when:"),
        UnorderedListContent(
          value: [
            "Building complex applications",
            "Predictability is important",
            "Team needs clear patterns",
            "Debugging is challenging",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم تدفق البيانات أحادي الاتجاه عندما:"),
        UnorderedListContent(
          value: [
            "بناء تطبيقات معقدة",
            "القابلية للتنبؤ مهمة",
            "الفريق يحتاج لأنماط واضحة",
            "التصحيح صعب",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
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
    relatedPatterns: [PatternKeys.redux, PatternKeys.bloc, PatternKeys.mvu],
  ),
  PatternKeys.featureFirstStructure: DesignPattern(
    id: PatternKeys.featureFirstStructure,
    title: LocalizedString(
      en: "Feature-First Structure",
      ar: "بنية الميزة أولاً",
    ),
    description: LocalizedString(
      en: "Organizes code by features rather than by layers",
      ar: "ينظم الكود حسب الميزات بدلاً من الطبقات",
    ),
    group: .projectStructure,
    category: .modern,
    level: .beginner,
    content: LocalizedValue(
      en: [
        StringContent(
          "Feature-First structure organizes code by features/modules rather than technical layers. Each feature contains all its related files (UI, logic, data) in one place.",
        ),
        UnorderedListContent(
          title: "Structure Example:",
          value: [
            "lib/features/auth/ (login, signup, etc.)",
            "lib/features/home/ (home screen, widgets)",
            "lib/features/profile/ (profile screen, logic)",
            "lib/core/ (shared utilities, widgets)",
          ],
        ),
      ],
      ar: [
        StringContent(
          "بنية الميزة أولاً تنظم الكود حسب الميزات/الوحدات بدلاً من الطبقات التقنية. كل ميزة تحتوي على جميع ملفاتها ذات الصلة (واجهة المستخدم، المنطق، البيانات) في مكان واحد.",
        ),
        UnorderedListContent(
          title: "مثال البنية:",
          value: [
            "lib/features/auth/ (تسجيل الدخول، التسجيل، إلخ.)",
            "lib/features/home/ (شاشة الرئيسية، الودجات)",
            "lib/features/profile/ (شاشة الملف الشخصي، المنطق)",
            "lib/core/ (أدوات مشتركة، ودجات)",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Easy to locate feature code",
        "Scalable for large projects",
        "Clear feature boundaries",
        "Easy to add/remove features",
      ],
      ar: [
        "سهولة تحديد موقع كود الميزة",
        "قابل للتوسع للمشاريع الكبيرة",
        "حدود ميزة واضحة",
        "سهولة إضافة/إزالة الميزات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can have code duplication",
        "Shared code organization needed",
        "May be overkill for small apps",
      ],
      ar: [
        "قد يكون هناك تكرار كود",
        "تنظيم الكود المشترك مطلوب",
        "قد يكون مبالغاً فيه للتطبيقات الصغيرة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Feature-First when:"),
        UnorderedListContent(
          value: [
            "Building large applications",
            "Multiple developers/teams",
            "Features are independent",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم الميزة أولاً عندما:"),
        UnorderedListContent(
          value: ["بناء تطبيقات كبيرة", "مطورون/فرق متعددة", "الميزات مستقلة"],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: [
        "Not organizing shared code properly",
        "Too many nested folders",
        "Unclear feature boundaries",
      ],
      ar: [
        "عدم تنظيم الكود المشترك بشكل صحيح",
        "مجلدات متداخلة كثيرة جداً",
        "حدود ميزة غير واضحة",
      ],
    ),
    relatedPatterns: [
      PatternKeys.presentationDomainData,
      PatternKeys.modularMonolith,
    ],
  ),
  PatternKeys.presentationDomainData: DesignPattern(
    id: PatternKeys.presentationDomainData,
    title: LocalizedString(
      en: "Presentation-Domain-Data (Layer-First)",
      ar: "العرض-المجال-البيانات (الطبقة أولاً)",
    ),
    description: LocalizedString(
      en: "Organizes code by technical layers (presentation, domain, data)",
      ar: "ينظم الكود حسب الطبقات التقنية (العرض، المجال، البيانات)",
    ),
    group: .projectStructure,
    category: .practical,
    level: .intermediate,
    content: LocalizedValue(
      en: [
        StringContent(
          "Presentation-Domain-Data structure organizes code by technical layers. This is common in Clean Architecture implementations in Flutter.",
        ),
        UnorderedListContent(
          title: "Layers:",
          value: [
            "Presentation: UI, widgets, state management",
            "Domain: Business logic, entities, use cases",
            "Data: Repositories, data sources, models",
          ],
        ),
      ],
      ar: [
        StringContent(
          "بنية العرض-المجال-البيانات تنظم الكود حسب الطبقات التقنية. هذا شائع في تنفيذات المعمارية النظيفة في Flutter.",
        ),
        UnorderedListContent(
          title: "الطبقات:",
          value: [
            "العرض: واجهة المستخدم، الودجات، إدارة الحالة",
            "المجال: منطق العمل، الكيانات، حالات الاستخدام",
            "البيانات: المستودعات، مصادر البيانات، النماذج",
          ],
        ),
      ],
    ),
    pros: LocalizedValue(
      en: [
        "Clear separation of concerns",
        "Follows Clean Architecture",
        "Easy to understand layers",
        "Good for learning architecture",
      ],
      ar: [
        "فصل واضح للاهتمامات",
        "يتبع المعمارية النظيفة",
        "سهولة فهم الطبقات",
        "جيد لتعلم المعمارية",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Files spread across many folders",
        "Hard to locate all feature code",
        "Can feel over-engineered",
      ],
      ar: [
        "الملفات منتشرة عبر مجلدات كثيرة",
        "صعوبة تحديد موقع كل كود الميزة",
        "قد يبدو مُفرط الهندسة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent("Use Layer-First when:"),
        UnorderedListContent(
          value: [
            "Learning Clean Architecture",
            "Small to medium apps",
            "Team prefers layered approach",
          ],
        ),
      ],
      ar: [
        StringContent("استخدم الطبقة أولاً عندما:"),
        UnorderedListContent(
          value: [
            "تعلم المعمارية النظيفة",
            "تطبيقات صغيرة إلى متوسطة",
            "الفريق يفضل النهج الطبقي",
          ],
        ),
      ],
    ),
    commonMistakes: LocalizedValue(
      en: ["Mixing layers", "Unclear dependencies", "Over-abstracting"],
      ar: ["خلط الطبقات", "تبعيات غير واضحة", "التجريد المفرط"],
    ),
    relatedPatterns: [
      PatternKeys.cleanArchitecture,
      PatternKeys.featureFirstStructure,
    ],
  ),
};
