import "../../core/models/code_block.dart";
import "../../core/models/content.dart";
import "../../core/models/design_patterns.dart";
import "../../core/models/localized_text.dart";
import "keys.dart";

const Map<String, DesignPattern> creationalPatternsData = {
  PK.factoryMethod: DesignPattern(
    id: PK.factoryMethod,
    title: LocS(en: "Factory Method", ar: "طريقة المصنع (Factory Method)"),
    description: LocS(
      en: "Defines an interface for creating objects, letting subclasses decide which class to instantiate",
      ar: "يعرّف واجهة لإنشاء الكائنات، مع السماح للفئات الفرعية بتحديد الفئة المُراد إنشاؤها",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Factory Method pattern provides a way to delegate the instantiation logic to child classes. Instead of calling a constructor directly, you call a factory method that returns instances of a common interface or base class.",
        ),
        StrContent(
          "This pattern is particularly useful when you need to decouple the client code from the concrete classes it needs to instantiate. The client only knows about the interface, not the specific implementations.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Product: The interface or abstract class for objects the factory method creates",
            "ConcreteProduct: Specific implementations of the Product",
            "Creator: Declares the factory method returning Product objects",
            "ConcreteCreator: Overrides the factory method to return ConcreteProduct instances",
          ],
        ),
        StrContent(
          "The pattern follows the Open/Closed Principle: you can introduce new product types without modifying existing client code by creating new concrete creators.",
        ),
      ],
      ar: [
        StrContent(
          "نمط طريقة المصنع (Factory Method) يوفر طريقة لتفويض منطق الإنشاء إلى الفئات الفرعية. بدلاً من استدعاء المُنشئ (constructor) مباشرة، تستدعي طريقة مصنع تُرجع كائنات من واجهة أو فئة أساسية مشتركة.",
        ),
        StrContent(
          "هذا النمط مفيد بشكل خاص عندما تحتاج إلى فصل كود العميل عن الفئات المحددة التي يحتاج لإنشائها. العميل يعرف فقط الواجهة، وليس التطبيقات المحددة.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "المنتج (Product): الواجهة أو الفئة المجردة للكائنات التي تنشئها طريقة المصنع",
            "المنتج المحدد (ConcreteProduct): تطبيقات محددة للمنتج",
            "المُنشئ (Creator): يعلن عن طريقة المصنع التي تُرجع كائنات المنتج",
            "المُنشئ المحدد (ConcreteCreator): يُعيد تعريف طريقة المصنع لإرجاع كائنات المنتج المحدد",
          ],
        ),
        StrContent(
          "يتبع النمط مبدأ المفتوح/المغلق (Open/Closed Principle): يمكنك إضافة أنواع منتجات جديدة دون تعديل كود العميل الموجود عن طريق إنشاء مُنشئين محددين جدد.",
        ),
      ],
    ),
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Factory Method when:"),
        ULContent(
          value: [
            "A class cannot anticipate the exact type of objects it must create",
            "You want to delegate the choice of object type to subclasses",
            "You want to localize the knowledge of which class to instantiate",
            "You have factory-like methods that clutter a class's core responsibility",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم طريقة المصنع عندما:"),
        ULContent(
          value: [
            "لا تستطيع الفئة توقع النوع الدقيق للكائنات التي يجب إنشاؤها",
            "تريد تفويض اختيار نوع الكائن للفئات الفرعية",
            "تريد توطين المعرفة حول الفئة التي سيتم إنشاؤها",
            "لديك طرق شبيهة بالمصنع تُزاحم المسؤولية الأساسية للفئة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Overusing factories for every constructor, adding unnecessary indirection",
        "Creating \"Factories\" with huge conditional logic",
        "Allowing clients to downcast to concrete types, breaking the pattern's benefits",
        "Confusing it with Simple Factory or Abstract Factory patterns",
      ],
      ar: [
        "الإفراط في استخدام المصانع لكل مُنشئ، مما يضيف توجيهاً غير ضروري",
        "إنشاء \"Factories\" مع منطق شرطي ضخم",
        "السماح للعملاء بالتحويل إلى الأنواع المحددة، مما يكسر فوائد النمط",
        "الخلط بينه وبين أنماط المصنع البسيط أو المصنع المجرد",
      ],
    ),
    relatedPatterns: [PK.abstractFactory, PK.prototype, PK.templateMethod],
    oftenConfusedWith: [PK.abstractFactory],
  ),
  PK.abstractFactory: DesignPattern(
    id: PK.abstractFactory,
    title: LocS(en: "Abstract Factory", ar: "المصنع المجرد (Abstract Factory)"),
    description: LocS(
      en: "Provides an interface for creating families of related objects without specifying their concrete classes",
      ar: "يوفر واجهة لإنشاء عائلات من الكائنات المترابطة دون تحديد فئاتها المحددة",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "The Abstract Factory pattern groups multiple factory methods together to ensure that products from the same family are created and used consistently. Each concrete factory produces a complete set of related products.",
        ),
        StrContent(
          "Think of it as a factory of factories. Instead of creating one type of object, it creates multiple related types that are designed to work together.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "AbstractFactory: Declares methods for creating abstract products",
            "ConcreteFactory: Implements methods to create concrete products of a specific family",
            "AbstractProduct: Declares interfaces for product types",
            "ConcreteProduct: Specific product implementations created by concrete factories",
          ],
        ),
        StrContent(
          "This pattern is especially powerful when you need to ensure that products from different families are not mixed together, maintaining consistency across your application.",
        ),
      ],
      ar: [
        StrContent(
          "نمط المصنع المجرد يجمع عدة طرق مصنع معاً لضمان إنشاء واستخدام المنتجات من نفس العائلة بشكل متسق. كل مصنع محدد ينتج مجموعة كاملة من المنتجات المترابطة.",
        ),
        StrContent(
          "فكر فيه كمصنع للمصانع. بدلاً من إنشاء نوع واحد من الكائنات، ينشئ أنواعاً متعددة مترابطة مصممة للعمل معاً.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "المصنع المجرد (AbstractFactory): يعلن عن طرق لإنشاء منتجات مجردة",
            "المصنع المحدد (ConcreteFactory): ينفذ الطرق لإنشاء منتجات محددة من عائلة معينة",
            "المنتج المجرد (AbstractProduct): يعلن عن واجهات لأنواع المنتجات",
            "المنتج المحدد (ConcreteProduct): تطبيقات منتج محددة تُنشأ بواسطة المصانع المحددة",
          ],
        ),
        StrContent(
          "هذا النمط قوي بشكل خاص عندما تحتاج للتأكد من عدم خلط منتجات من عائلات مختلفة معاً، مع الحفاظ على الاتساق عبر تطبيقك.",
        ),
      ],
    ),
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Abstract Factory when:"),
        ULContent(
          value: [
            "Your code needs to work with various families of related products",
            "You want to enforce that products from one family are used together",
            "You need to provide a library of products revealing only interfaces",
            "Product families are likely to change or expand",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المصنع المجرد عندما:"),
        ULContent(
          value: [
            "يحتاج كودك للعمل مع عائلات مختلفة من المنتجات المترابطة",
            "تريد فرض استخدام منتجات من عائلة واحدة معاً",
            "تحتاج لتوفير مكتبة من المنتجات تكشف الواجهات فقط",
            "من المحتمل أن تتغير أو تتوسع عائلات المنتجات",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.factoryMethod, PK.singleton, PK.prototype],
    oftenConfusedWith: [PK.factoryMethod],
  ),
  PK.builder: DesignPattern(
    id: PK.builder,
    title: LocS(en: "Builder", ar: "البناء (Builder)"),
    description: LocS(
      en: "Separates object construction from its representation, allowing step-by-step creation of complex objects",
      ar: "يفصل بناء الكائن عن تمثيله، مما يسمح بإنشاء تدريجي للكائنات المعقدة",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Builder pattern constructs complex objects step by step. Unlike other creational patterns that construct products in one shot, Builder gives you fine control over the construction process.",
        ),
        StrContent(
          "This pattern is particularly useful when you need to create an object with many optional parameters or configurations, avoiding the \"telescoping constructor\" anti-pattern where you have multiple constructors with different parameter combinations.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Builder: Interface defining construction steps",
            "ConcreteBuilder: Implements steps and tracks the product being built",
            "Product: The complex object being constructed",
            "Director (optional): Orchestrates building steps in a specific order",
          ],
        ),
        StrContent(
          "In Dart, builders are often implemented as fluent interfaces where each method returns the builder itself, allowing method chaining.",
        ),
      ],
      ar: [
        StrContent(
          "نمط البناء (Builder) يبني الكائنات المعقدة خطوة بخطوة. على عكس الأنماط الإنشائية الأخرى التي تبني المنتجات دفعة واحدة، يمنحك البناء تحكماً دقيقاً في عملية البناء.",
        ),
        StrContent(
          "هذا النمط مفيد بشكل خاص عندما تحتاج لإنشاء كائن مع العديد من المعاملات أو الإعدادات الاختيارية، متجنباً نمط \"المُنشئ التلسكوبي\" المضاد حيث يكون لديك عدة مُنشئات مع مجموعات مختلفة من المعاملات.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "البناء (Builder): واجهة تحدد خطوات البناء",
            "البناء المحدد (ConcreteBuilder): ينفذ الخطوات ويتتبع المنتج الذي يتم بناؤه",
            "المنتج (Product): الكائن المعقد الذي يتم بناؤه",
            "المدير (Director) (اختياري): ينسق خطوات البناء بترتيب محدد",
          ],
        ),
        StrContent(
          "في Dart، غالباً ما تُنفذ أدوات البناء كواجهات انسيابية (fluent interfaces) حيث تُرجع كل طريقة أداة البناء نفسها، مما يسمح بتسلسل الطرق.",
        ),
      ],
    ),
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Builder when:"),
        ULContent(
          value: [
            "You need to construct complex objects with many optional parameters",
            "You want to create different representations using the same construction process",
            "You need to build composite tree structures step-by-step",
            "Object construction requires multiple steps in a specific order",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم البناء عندما:"),
        ULContent(
          value: [
            "تحتاج لبناء كائنات معقدة مع العديد من المعاملات الاختيارية",
            "تريد إنشاء تمثيلات مختلفة باستخدام نفس عملية البناء",
            "تحتاج لبناء هياكل شجرية مركبة خطوة بخطوة",
            "يتطلب بناء الكائن خطوات متعددة بترتيب محدد",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.abstractFactory, PK.composite, PK.singleton],
    oftenConfusedWith: [PK.factoryMethod],
  ),
  PK.prototype: DesignPattern(
    id: PK.prototype,
    title: LocS(en: "Prototype", ar: "النموذج الأولي (Prototype)"),
    description: LocS(
      en: "Creates new objects by copying existing instances, avoiding dependency on concrete classes",
      ar: "ينشئ كائنات جديدة من خلال نسخ نماذج موجودة، متجنباً الاعتماد على الفئات المحددة",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Prototype pattern creates new objects by cloning existing ones rather than constructing them from scratch. This is particularly useful when object creation is expensive or complex.",
        ),
        StrContent(
          "Instead of using the new keyword and constructors, you call a clone() method on a prototype instance. This approach decouples your code from concrete classes and can dramatically improve performance when creating similar objects.",
        ),
        ULContent(
          title: "Key Concepts:",
          value: [
            "Prototype: Declares a cloning interface (typically a clone() method)",
            "ConcretePrototype: Implements the cloning method",
            "Client: Creates new objects by asking prototypes to clone themselves",
          ],
        ),
        StrContent(
          "In Dart, this is often implemented using copy constructors or factory constructors that create copies of existing objects.",
        ),
      ],
      ar: [
        StrContent(
          "نمط النموذج الأولي ينشئ كائنات جديدة من خلال استنساخ كائنات موجودة بدلاً من بنائها من الصفر. هذا مفيد بشكل خاص عندما يكون إنشاء الكائن مكلفاً أو معقداً.",
        ),
        StrContent(
          "بدلاً من استخدام الكلمة المفتاحية new والمُنشئات، تستدعي طريقة ()clone على نموذج أولي موجود. هذا النهج يفصل كودك عن الفئات المحددة ويمكن أن يحسّن الأداء بشكل كبير عند إنشاء كائنات متشابهة.",
        ),
        ULContent(
          title: "المفاهيم الأساسية:",
          value: [
            "النموذج الأولي (Prototype): يعلن عن واجهة الاستنساخ (عادةً طريقة ()clone)",
            "النموذج الأولي المحدد (ConcretePrototype): ينفذ طريقة الاستنساخ",
            "العميل (Client): ينشئ كائنات جديدة من خلال طلب استنساخ النماذج الأولية",
          ],
        ),
        StrContent(
          "في Dart، غالباً ما يُنفذ هذا باستخدام مُنشئات النسخ (copy constructors) أو مُنشئات المصنع التي تنشئ نسخاً من الكائنات الموجودة.",
        ),
      ],
    ),
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Prototype when:"),
        ULContent(
          value: [
            "Object creation is expensive (e.g., requires database queries)",
            "You need many similar objects with slight variations",
            "You want to avoid subclass proliferation",
            "Classes to instantiate are specified at runtime",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم النموذج الأولي عندما:"),
        ULContent(
          value: [
            "إنشاء الكائن مكلف (مثلاً، يتطلب استعلامات قاعدة بيانات)",
            "تحتاج للعديد من الكائنات المتشابهة مع اختلافات طفيفة",
            "تريد تجنب تكاثر الفئات الفرعية",
            "الفئات المراد إنشاؤها تُحدد في وقت التشغيل",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.abstractFactory, PK.composite, PK.decorator],
    oftenConfusedWith: [PK.factoryMethod],
  ),
  PK.singleton: DesignPattern(
    id: PK.singleton,
    title: LocS(en: "Singleton", ar: "المفرد (Singleton)"),
    description: LocS(
      en: "Ensures a class has only one instance and provides global access to it",
      ar: "يضمن أن الفئة لها نسخة واحدة فقط ويوفر وصولاً عالمياً إليها",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "The Singleton pattern restricts instantiation of a class to a single instance and provides a global point of access to that instance. This is achieved through a private constructor and a static method that returns the sole instance.",
        ),
        StrContent(
          "While Singleton is one of the most well-known patterns, it's also one of the most controversial. Modern software development often favors dependency injection over singletons due to better testability and reduced global state.",
        ),
        ULContent(
          title: "Common Use Cases:",
          value: [
            "Logging systems",
            "Configuration managers",
            "Database connections",
            "Caching mechanisms",
            "Thread pools",
          ],
        ),
        StrContent(
          "However, use singletons sparingly. They introduce global state which can make testing difficult and hide dependencies between classes.",
        ),
      ],
      ar: [
        StrContent(
          "نمط المفرد (Singleton) يقيّد إنشاء الفئة إلى نسخة واحدة فقط ويوفر نقطة وصول عالمية لتلك النسخة. يتحقق هذا من خلال مُنشئ خاص وطريقة ثابتة تُرجع النسخة الوحيدة.",
        ),
        StrContent(
          "بينما المفرد هو أحد أشهر الأنماط، فهو أيضاً أحد أكثرها إثارة للجدل. غالباً ما تفضل البرمجة الحديثة حقن الاعتمادية (Dependency Injection) على المفرد بسبب قابلية الاختبار الأفضل وتقليل الحالة العالمية.",
        ),
        ULContent(
          title: "حالات الاستخدام الشائعة:",
          value: [
            "أنظمة التسجيل (Logging)",
            "مديرو الإعدادات (Configuration)",
            "اتصالات قاعدة البيانات",
            "آليات التخزين المؤقت (Caching)",
            "مجموعات الخيوط (Thread pools)",
          ],
        ),
        StrContent(
          "مع ذلك، استخدم المفرد باعتدال. يُدخل حالة عالمية يمكن أن تجعل الاختبار صعباً وتخفي التبعيات بين الفئات.",
        ),
      ],
    ),
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Singleton when:"),
        ULContent(
          value: [
            "Exactly one instance is needed system-wide",
            "The instance must be accessible globally",
            "You need strict control over instance creation",
            "The single instance should be extensible by subclassing",
          ],
        ),
        StrContent(
          "Consider alternatives like dependency injection in most cases for better testability.",
        ),
      ],
      ar: [
        StrContent("استخدم المفرد عندما:"),
        ULContent(
          value: [
            "تحتاج نسخة واحدة بالضبط على مستوى النظام",
            "يجب أن تكون النسخة متاحة عالمياً",
            "تحتاج تحكماً صارماً في إنشاء النسخة",
            "يجب أن تكون النسخة الواحدة قابلة للتوسيع عبر الفئات الفرعية",
          ],
        ),
        StrContent(
          "ضع في اعتبارك بدائل مثل حقن الاعتمادية في معظم الحالات لقابلية اختبار أفضل.",
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.abstractFactory, PK.facade, PK.flyweight],
  ),
  PK.objectPool: DesignPattern(
    id: PK.objectPool,
    title: LocS(en: "Object Pool", ar: "تجمع الكائنات (Object Pool)"),
    description: LocS(
      en: "Manages a pool of reusable objects to improve performance by avoiding expensive creation and destruction",
      ar: "يدير مجموعة من الكائنات القابلة لإعادة الاستخدام لتحسين الأداء بتجنب الإنشاء والإتلاف المكلفين",
    ),
    group: .design,
    type: .creational,
    category: .practical,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "Object Pool maintains a set of initialized objects ready for use. Instead of creating and destroying objects repeatedly, clients borrow objects from the pool, use them, and return them for reuse.",
        ),
        StrContent(
          "This pattern is particularly valuable when object creation is expensive (database connections, thread creation, large buffers) and you need many short-lived instances.",
        ),
        ULContent(
          title: "Key Concepts:",
          value: [
            "Pool: Manages available and in-use objects",
            "Acquire: Retrieves an available object from the pool",
            "Release: Returns an object to the pool for reuse",
            "Validation: Ensures returned objects are in valid state",
          ],
        ),
        StrContent(
          "Modern garbage collectors are highly optimized, so object pooling is only beneficial for truly expensive objects or in performance-critical scenarios.",
        ),
      ],
      ar: [
        StrContent(
          "تجمع الكائنات يحتفظ بمجموعة من الكائنات المُهيأة الجاهزة للاستخدام. بدلاً من إنشاء وإتلاف الكائنات بشكل متكرر، يستعير العملاء كائنات من التجمع، ويستخدمونها، ثم يعيدونها لإعادة الاستخدام.",
        ),
        StrContent(
          "هذا النمط ذو قيمة خاصة عندما يكون إنشاء الكائن مكلفاً (اتصالات قاعدة البيانات، إنشاء الخيوط، المخازن الكبيرة) وتحتاج للعديد من النسخ قصيرة العمر.",
        ),
        ULContent(
          title: "المفاهيم الأساسية:",
          value: [
            "التجمع (Pool): يدير الكائنات المتاحة والمستخدمة",
            "الحصول (Acquire): يسترجع كائناً متاحاً من التجمع",
            "الإطلاق (Release): يُعيد كائناً للتجمع لإعادة الاستخدام",
            "التحقق (Validation): يضمن أن الكائنات المُعادة في حالة صالحة",
          ],
        ),
        StrContent(
          "جامعو القمامة الحديثون مُحسّنون للغاية، لذا يكون تجميع الكائنات مفيداً فقط للكائنات المكلفة حقاً أو في السيناريوهات الحرجة للأداء.",
        ),
      ],
    ),
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
      en: [
        "Adds complexity to manage object lifecycle",
        "Stale state bugs if objects aren't properly reset",
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
    whenToUse: LocV(
      en: [
        StrContent("Use Object Pool when:"),
        ULContent(
          value: [
            "Object creation/destruction is demonstrably expensive",
            "You need many short-lived instances",
            "Resource limits must be enforced (e.g., max database connections)",
            "Performance profiling shows object creation as a bottleneck",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم تجمع الكائنات عندما:"),
        ULContent(
          value: [
            "إنشاء/إتلاف الكائن مكلف بشكل واضح",
            "تحتاج للعديد من النسخ قصيرة العمر",
            "يجب فرض حدود الموارد (مثل أقصى عدد لاتصالات قاعدة البيانات)",
            "تُظهر مراقبة الأداء أن إنشاء الكائن عنق زجاجة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.singleton, PK.factoryMethod, PK.flyweight],
    oftenConfusedWith: [PK.flyweight],
  ),
  PK.lazyInitialization: DesignPattern(
    id: PK.lazyInitialization,
    title: LocS(
      en: "Lazy Initialization",
      ar: "التهيئة الكسولة (Lazy Initialization)",
    ),
    description: LocS(
      en: "Defers object creation or value computation until first access",
      ar: "يؤجل إنشاء الكائن أو حساب القيمة حتى الوصول الأول",
    ),
    group: .design,
    type: .creational,
    category: .practical,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "Lazy Initialization postpones the creation of an object, calculation of a value, or execution of expensive operation until it's actually needed. This can significantly improve application startup time and reduce memory usage.",
        ),
        StrContent(
          "The pattern is implemented by checking if a resource has been initialized before accessing it. If not, it's created on-the-spot; otherwise, the cached instance is returned.",
        ),
        ULContent(
          title: "Common Applications:",
          value: [
            "Database connections that may not be needed",
            "Heavy computational results",
            "Large data structures",
            "Expensive I/O operations",
          ],
        ),
        StrContent(
          "In Dart, the late keyword provides built-in support for lazy initialization, making this pattern easy to implement.",
        ),
      ],
      ar: [
        StrContent(
          "التهيئة الكسولة تؤجل إنشاء الكائن، أو حساب القيمة، أو تنفيذ العملية المكلفة حتى الحاجة الفعلية لها. هذا يمكن أن يحسّن بشكل كبير وقت بدء التطبيق ويقلل استخدام الذاكرة.",
        ),
        StrContent(
          "يُنفذ النمط من خلال التحقق مما إذا تم تهيئة المورد قبل الوصول إليه. إن لم يكن، يتم إنشاؤه في الحال؛ وإلا، تُرجع النسخة المُخزنة مؤقتاً.",
        ),
        ULContent(
          title: "التطبيقات الشائعة:",
          value: [
            "اتصالات قاعدة البيانات التي قد لا تكون مطلوبة",
            "نتائج حسابية ثقيلة",
            "هياكل بيانات كبيرة",
            "عمليات إدخال/إخراج مكلفة",
          ],
        ),
        StrContent(
          "في Dart، توفر الكلمة المفتاحية late دعماً مدمجاً للتهيئة الكسولة، مما يجعل تنفيذ هذا النمط سهلاً.",
        ),
      ],
    ),
    examples: LocV(
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
  print("App started");
  
  final resource = ExpensiveResource.instance;
  resource.useResource();
  
  final modern = ModernLazyExample();
  print("Object created");
  print(modern.expensiveValue); // Computed here
  print(modern.expensiveValue); // Cached
}"""),
      ],
    ),
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Lazy Initialization when:"),
        ULContent(
          value: [
            "Object creation is expensive and usage is uncertain",
            "You want to optimize application startup time",
            "Resource may never be needed in some execution paths",
            "Initialization depends on runtime configuration",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم التهيئة الكسولة عندما:"),
        ULContent(
          value: [
            "إنشاء الكائن مكلف والاستخدام غير مؤكد",
            "تريد تحسين وقت بدء التطبيق",
            "قد لا يكون المورد مطلوباً أبداً في بعض مسارات التنفيذ",
            "تعتمد التهيئة على إعدادات وقت التشغيل",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.singleton, PK.proxy, PK.factoryMethod],
    oftenConfusedWith: [PK.proxy],
  ),
  PK.multiton: DesignPattern(
    id: PK.multiton,
    title: LocS(en: "Multiton", ar: "المتعدد (Multiton)"),
    description: LocS(
      en: "Ensures a class has a limited number of named instances, one per unique key",
      ar: "يضمن أن الفئة لها عدد محدود من النسخ المسماة، واحدة لكل مفتاح فريد",
    ),
    group: .design,
    type: .creational,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "Multiton extends the Singleton concept to manage multiple named instances. Instead of one global instance, you have one instance per key, stored in a registry.",
        ),
        StrContent(
          "This pattern is useful when you need a controlled number of instances that are identified by keys, such as database connection pools for different databases or configuration objects for different environments.",
        ),
        ULContent(
          title: "Key Characteristics:",
          value: [
            "Maintains a map of instances keyed by identifier",
            "Returns existing instance for a key or creates new one",
            "Each key maps to exactly one instance",
            "Provides centralized access to named instances",
          ],
        ),
        StrContent(
          "Like Singleton, Multiton should be used sparingly as it introduces global state, but it's more flexible when you need multiple well-defined instances.",
        ),
      ],
      ar: [
        StrContent(
          "المتعدد (Multiton) يوسّع مفهوم المفرد لإدارة نسخ متعددة مسماة. بدلاً من نسخة عالمية واحدة، لديك نسخة واحدة لكل مفتاح، مُخزنة في سجل.",
        ),
        StrContent(
          "هذا النمط مفيد عندما تحتاج لعدد محدود من النسخ المُحددة بمفاتيح، مثل تجمعات اتصال قاعدة البيانات لقواعد بيانات مختلفة أو كائنات إعدادات لبيئات مختلفة.",
        ),
        ULContent(
          title: "الخصائص الأساسية:",
          value: [
            "يحتفظ بخريطة من النسخ بمفاتيح محددة",
            "يُرجع نسخة موجودة لمفتاح أو ينشئ واحدة جديدة",
            "كل مفتاح يُربط بنسخة واحدة بالضبط",
            "يوفر وصولاً مركزياً للنسخ المسماة",
          ],
        ),
        StrContent(
          "مثل المفرد، يجب استخدام المتعدد باعتدال لأنه يُدخل حالة عالمية، لكنه أكثر مرونة عندما تحتاج لنسخ متعددة محددة جيداً.",
        ),
      ],
    ),
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Multiton when:"),
        ULContent(
          value: [
            "You need more than one but a limited number of instances",
            "Instances are identified by keys or names",
            "Each logical category should have exactly one instance",
            "You want to avoid recreating expensive objects with same identifier",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المتعدد عندما:"),
        ULContent(
          value: [
            "تحتاج لأكثر من نسخة واحدة لكن عدد محدود من النسخ",
            "النسخ مُحددة بمفاتيح أو أسماء",
            "كل فئة منطقية يجب أن يكون لها نسخة واحدة بالضبط",
            "تريد تجنب إعادة إنشاء كائنات مكلفة بنفس المُعرّف",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.singleton, PK.factoryMethod, PK.objectPool],
    oftenConfusedWith: [PK.singleton],
  ),
  PK.factoryKit: DesignPattern(
    id: PK.factoryKit,
    title: LocS(en: "Factory Kit", ar: "مجموعة المصنع (Factory Kit)"),
    description: LocS(
      en: "Allows clients to define object creation logic within controlled guidelines",
      ar: "يسمح للعملاء بتعريف منطق إنشاء الكائنات ضمن إرشادات محكومة",
    ),
    group: .design,
    type: .creational,
    category: .practical,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "Factory Kit is a less common pattern where the framework provides interfaces and hooks that allow external code to plug in custom creation logic. Think of it as a \"reverse factory\" where clients define how objects are created, but within constraints set by the framework.",
        ),
        StrContent(
          "This pattern is particularly useful in plugin architectures or game engines where you want to give users controlled extensibility without exposing internal implementation details.",
        ),
        ULContent(
          title: "Core Concepts:",
          value: [
            "Framework defines creation interfaces and constraints",
            "Clients implement factories within these guidelines",
            "Registration system for custom factories",
            "Type-safe object creation with user-defined logic",
          ],
        ),
        StrContent(
          "The pattern provides high customization while maintaining system integrity through well-defined extension points.",
        ),
      ],
      ar: [
        StrContent(
          "مجموعة المصنع (Factory Kit) هو نمط أقل شيوعاً حيث يوفر الإطار واجهات وخطافات تسمح للكود الخارجي بإضافة منطق إنشاء مخصص. فكر فيه كـ \"مصنع معكوس\" حيث يعرّف العملاء كيفية إنشاء الكائنات، لكن ضمن قيود يضعها الإطار.",
        ),
        StrContent(
          "هذا النمط مفيد بشكل خاص في معماريات الإضافات (plugins) أو محركات الألعاب حيث تريد منح المستخدمين قابلية توسع محكومة دون كشف تفاصيل التنفيذ الداخلية.",
        ),
        ULContent(
          title: "المفاهيم الأساسية:",
          value: [
            "الإطار يعرّف واجهات وقيود الإنشاء",
            "العملاء ينفذون مصانع ضمن هذه الإرشادات",
            "نظام تسجيل للمصانع المخصصة",
            "إنشاء كائنات آمن من حيث النوع مع منطق معرّف من المستخدم",
          ],
        ),
        StrContent(
          "يوفر النمط تخصيصاً عالياً مع الحفاظ على سلامة النظام من خلال نقاط توسع محددة جيداً.",
        ),
      ],
    ),
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Factory Kit when:"),
        ULContent(
          value: [
            "Building frameworks or engines with user-defined content",
            "Need controlled extensibility points for object creation",
            "Plugin architecture requires custom object types",
            "Want to separate creation logic from framework code",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم مجموعة المصنع عندما:"),
        ULContent(
          value: [
            "بناء أطر أو محركات مع محتوى معرّف من المستخدم",
            "تحتاج نقاط توسع محكومة لإنشاء الكائنات",
            "معمارية الإضافات تتطلب أنواع كائنات مخصصة",
            "تريد فصل منطق الإنشاء عن كود الإطار",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.abstractFactory, PK.plugin, PK.strategy],
    oftenConfusedWith: [PK.abstractFactory],
  ),
};
