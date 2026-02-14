import "../../core/models/code_block.dart";
import "../../core/models/content.dart";
import "../../core/models/design_patterns.dart";
import "../../core/models/localized_text.dart";
import "keys.dart";

const Map<String, DesignPattern> structuralPatternsData = {
  PK.adapter: DesignPattern(
    id: PK.adapter,
    title: LocS(en: "Adapter", ar: "المُحوّل (Adapter)"),
    description: LocS(
      en: "Converts one interface to another, allowing incompatible classes to work together",
      ar: "يحوّل واجهة إلى أخرى، مما يسمح للفئات غير المتوافقة بالعمل معاً",
    ),
    group: .design,
    type: .structural,
    category: .GoF,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "The Adapter pattern (also known as Wrapper) allows objects with incompatible interfaces to collaborate. It acts as a bridge between two incompatible interfaces by wrapping one object and exposing a different interface.",
        ),
        StrContent(
          "This pattern is particularly useful when integrating third-party libraries, legacy code, or when you need to convert data between different formats without modifying existing code.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Target: The interface expected by the client",
            "Adaptee: The existing interface that needs adapting",
            "Adapter: Wraps the Adaptee and implements the Target interface",
            "Client: Works with objects through the Target interface",
          ],
        ),
        StrContent(
          "Adapters can be implemented as class adapters (using inheritance) or object adapters (using composition). In Dart, object adapters are more common and flexible.",
        ),
      ],
      ar: [
        StrContent(
          "نمط المُحوّل (المعروف أيضاً بالغلاف - Wrapper) يسمح للكائنات ذات الواجهات غير المتوافقة بالتعاون. يعمل كجسر بين واجهتين غير متوافقتين من خلال لف كائن واحد وكشف واجهة مختلفة.",
        ),
        StrContent(
          "هذا النمط مفيد بشكل خاص عند دمج مكتبات طرف ثالث، أو كود قديم، أو عندما تحتاج لتحويل البيانات بين تنسيقات مختلفة دون تعديل الكود الموجود.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "الهدف (Target): الواجهة المتوقعة من قبل العميل",
            "المُحوّل إليه (Adaptee): الواجهة الموجودة التي تحتاج للتحويل",
            "المُحوّل (Adapter): يلف المُحوّل إليه وينفذ واجهة الهدف",
            "العميل (Client): يعمل مع الكائنات من خلال واجهة الهدف",
          ],
        ),
        StrContent(
          "يمكن تنفيذ المُحوّلات كمُحوّلات فئة (باستخدام الوراثة) أو مُحوّلات كائن (باستخدام التركيب). في Dart، مُحوّلات الكائن أكثر شيوعاً ومرونة.",
        ),
      ],
    ),
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Adapter when:"),
        ULContent(
          value: [
            "You want to use an existing class with an incompatible interface",
            "Integrating third-party libraries or legacy code",
            "Need to convert between different data formats",
            "Creating a reusable class that works with unrelated classes",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المُحوّل عندما:"),
        ULContent(
          value: [
            "تريد استخدام فئة موجودة بواجهة غير متوافقة",
            "دمج مكتبات طرف ثالث أو كود قديم",
            "تحتاج للتحويل بين تنسيقات بيانات مختلفة",
            "إنشاء فئة قابلة لإعادة الاستخدام تعمل مع فئات غير مرتبطة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.bridge, PK.decorator, PK.proxy],
    oftenConfusedWith: [PK.facade, PK.decorator],
  ),
  PK.bridge: DesignPattern(
    id: PK.bridge,
    title: LocS(en: "Bridge", ar: "الجسر (Bridge)"),
    description: LocS(
      en: "Separates abstraction from implementation so they can vary independently",
      ar: "يفصل التجريد عن التنفيذ بحيث يمكن أن يتغيرا بشكل مستقل",
    ),
    group: .design,
    type: .structural,
    category: .GoF,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "The Bridge pattern splits a large class or set of closely related classes into two separate hierarchies: abstraction and implementation. These can be developed independently of each other.",
        ),
        StrContent(
          "This pattern is about preferring composition over inheritance. Instead of creating a multiplicative class hierarchy for every combination of features, you separate concerns into two hierarchies connected by a bridge.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Abstraction: High-level control layer for some entity",
            "Implementation: Platform or low-level operations",
            "Refined Abstraction: Variants of control logic",
            "Concrete Implementation: Specific platform implementations",
          ],
        ),
        StrContent(
          "For example, if you have shapes (Circle, Square) and rendering methods (Vector, Raster), instead of creating VectorCircle, RasterCircle, VectorSquare, RasterSquare, you create Shape with a Renderer reference.",
        ),
      ],
      ar: [
        StrContent(
          "نمط الجسر يقسم فئة كبيرة أو مجموعة من الفئات المترابطة بشكل وثيق إلى تسلسلين هرميين منفصلين: التجريد والتنفيذ. يمكن تطويرهما بشكل مستقل عن بعضهما البعض.",
        ),
        StrContent(
          "هذا النمط يفضل التركيب على الوراثة. بدلاً من إنشاء تسلسل هرمي ضربي للفئات لكل مجموعة من الميزات، تفصل الاهتمامات إلى تسلسلين هرميين متصلين بجسر.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "التجريد (Abstraction): طبقة التحكم عالية المستوى لكيان ما",
            "التنفيذ (Implementation): المنصة أو العمليات منخفضة المستوى",
            "التجريد المُحسّن (Refined Abstraction): متغيرات من منطق التحكم",
            "التنفيذ المحدد (Concrete Implementation): تنفيذات منصة محددة",
          ],
        ),
        StrContent(
          "على سبيل المثال، إذا كان لديك أشكال (دائرة، مربع) وطرق عرض (متجه، نقطي)، بدلاً من إنشاء VectorCircle وRasterCircle وVectorSquare وRasterSquare، تنشئ Shape مع مرجع Renderer.",
        ),
      ],
    ),
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Bridge when:"),
        ULContent(
          value: [
            "You want to avoid permanent binding between abstraction and implementation",
            "Both abstraction and implementation should be extensible by subclassing",
            "You have multiple dimensions of variation (avoid class explosion)",
            "Changes in implementation should not affect clients",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الجسر عندما:"),
        ULContent(
          value: [
            "تريد تجنب الربط الدائم بين التجريد والتنفيذ",
            "كل من التجريد والتنفيذ يجب أن يكونا قابلين للتوسيع عبر الفئات الفرعية",
            "لديك أبعاد متعددة من التنوع (تجنب انفجار الفئات)",
            "التغييرات في التنفيذ لا يجب أن تؤثر على العملاء",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.abstractFactory, PK.adapter, PK.strategy],
    oftenConfusedWith: [PK.adapter],
  ),
  PK.composite: DesignPattern(
    id: PK.composite,
    title: LocS(en: "Composite", ar: "المُركب (Composite)"),
    description: LocS(
      en: "Composes objects into tree structures and treats individual objects and compositions uniformly",
      ar: "يُركب الكائنات في بنى شجرية ويعامل الكائنات الفردية والتركيبات بشكل موحد",
    ),
    group: .design,
    type: .structural,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Composite pattern lets you compose objects into tree structures to represent part-whole hierarchies. It allows clients to treat individual objects and compositions of objects uniformly.",
        ),
        StrContent(
          "This pattern is perfect for representing hierarchies like file systems, UI component trees, organizational charts, or any recursive tree-like structure where containers and leaves should be treated the same way.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Component: Common interface for both simple and complex objects",
            "Leaf: Basic element that has no children",
            "Composite: Element that may have children",
            "Client: Works with all elements through the Component interface",
          ],
        ),
        StrContent(
          "Both Leaf and Composite implement the same interface, so the client code can work with them uniformly without knowing whether it's dealing with a simple or complex element.",
        ),
      ],
      ar: [
        StrContent(
          "نمط المُركب يتيح لك تركيب الكائنات في بنى شجرية لتمثيل تسلسلات هرمية جزء-كل. يسمح للعملاء بمعاملة الكائنات الفردية وتركيبات الكائنات بشكل موحد.",
        ),
        StrContent(
          "هذا النمط مثالي لتمثيل التسلسلات الهرمية مثل أنظمة الملفات، أشجار مكونات واجهة المستخدم، المخططات التنظيمية، أو أي بنية شجرية تكرارية حيث يجب معاملة الحاويات والأوراق بنفس الطريقة.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "المكون (Component): واجهة مشتركة للكائنات البسيطة والمعقدة",
            "الورقة (Leaf): عنصر أساسي ليس له أطفال",
            "المُركب (Composite): عنصر قد يكون له أطفال",
            "العميل (Client): يعمل مع جميع العناصر من خلال واجهة المكون",
          ],
        ),
        StrContent(
          "كل من Leaf وComposite ينفذان نفس الواجهة، لذا يمكن لكود العميل العمل معهما بشكل موحد دون معرفة ما إذا كان يتعامل مع عنصر بسيط أو معقد.",
        ),
      ],
    ),
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Composite when:"),
        ULContent(
          value: [
            "You have part-whole hierarchies of objects",
            "You want clients to treat individual and composite objects uniformly",
            "You're building tree structures (file systems, UI components, menus)",
            "Recursive composition makes sense for your domain",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المُركب عندما:"),
        ULContent(
          value: [
            "لديك تسلسلات هرمية جزء-كل للكائنات",
            "تريد أن يعامل العملاء الكائنات الفردية والمُركبة بشكل موحد",
            "تبني بنى شجرية (أنظمة ملفات، مكونات واجهة مستخدم، قوائم)",
            "التركيب التكراري منطقي لمجالك",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.iterator, PK.visitor, PK.decorator],
    oftenConfusedWith: [PK.decorator],
  ),
  PK.decorator: DesignPattern(
    id: PK.decorator,
    title: LocS(en: "Decorator", ar: "المُزخرف (Decorator)"),
    description: LocS(
      en: "Attaches additional responsibilities to objects dynamically without modifying their structure",
      ar: "يُلحق مسؤوليات إضافية بالكائنات ديناميكياً دون تعديل بنيتها",
    ),
    group: .design,
    type: .structural,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Decorator pattern allows you to attach new behaviors to objects by placing them inside wrapper objects that contain the behaviors. It provides a flexible alternative to subclassing for extending functionality.",
        ),
        StrContent(
          "Decorators wrap a component and add their own behavior before and/or after delegating to the component. Multiple decorators can be stacked to add multiple behaviors.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Component: Common interface for both wrappers and wrapped objects",
            "Concrete Component: Object being decorated",
            "Decorator: Base decorator maintaining reference to component",
            "Concrete Decorators: Add specific behaviors",
          ],
        ),
        StrContent(
          "Unlike inheritance which adds behavior at compile time, decorators add behavior at runtime and can be combined in various ways.",
        ),
      ],
      ar: [
        StrContent(
          "نمط المُزخرف يسمح لك بإلحاق سلوكيات جديدة بالكائنات من خلال وضعها داخل كائنات غلاف تحتوي على السلوكيات. يوفر بديلاً مرناً للفئات الفرعية لتوسيع الوظائف.",
        ),
        StrContent(
          "المُزخرفات تلف مكوناً وتضيف سلوكها الخاص قبل و/أو بعد التفويض للمكون. يمكن تكديس عدة مُزخرفات لإضافة سلوكيات متعددة.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "المكون (Component): واجهة مشتركة للأغلفة والكائنات الملفوفة",
            "المكون المحدد (Concrete Component): الكائن الذي يتم تزيينه",
            "المُزخرف (Decorator): مُزخرف أساسي يحتفظ بمرجع للمكون",
            "المُزخرفات المحددة (Concrete Decorators): تضيف سلوكيات محددة",
          ],
        ),
        StrContent(
          "على عكس الوراثة التي تضيف السلوك في وقت الترجمة، تضيف المُزخرفات السلوك في وقت التشغيل ويمكن دمجها بطرق مختلفة.",
        ),
      ],
    ),
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Decorator when:"),
        ULContent(
          value: [
            "You need to add responsibilities to individual objects dynamically",
            "Extension by subclassing is impractical",
            "You want to add features that can be combined in various ways",
            "You want to keep classes focused (SRP) with features in separate decorators",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المُزخرف عندما:"),
        ULContent(
          value: [
            "تحتاج لإضافة مسؤوليات لكائنات فردية ديناميكياً",
            "التوسع عبر الفئات الفرعية غير عملي",
            "تريد إضافة ميزات يمكن دمجها بطرق مختلفة",
            "تريد إبقاء الفئات مركزة (SRP) مع ميزات في مُزخرفات منفصلة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.adapter, PK.composite, PK.strategy],
    oftenConfusedWith: [PK.adapter, PK.proxy],
  ),
  PK.facade: DesignPattern(
    id: PK.facade,
    title: LocS(en: "Facade", ar: "الواجهة (Facade)"),
    description: LocS(
      en: "Provides a simplified interface to a complex subsystem",
      ar: "يوفر واجهة مبسطة لنظام فرعي معقد",
    ),
    group: .design,
    type: .structural,
    category: .GoF,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "The Facade pattern provides a simple, unified interface to a complex subsystem. It hides the complexities of the system and provides a single entry point to the client.",
        ),
        StrContent(
          "A facade doesn't prevent clients from accessing subsystem classes directly if they need to, but it offers a convenient high-level interface for common tasks.",
        ),
        ULContent(
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
        StrContent(
          "نمط الواجهة يوفر واجهة بسيطة وموحدة لنظام فرعي معقد. يخفي تعقيدات النظام ويوفر نقطة دخول واحدة للعميل.",
        ),
        StrContent(
          "الواجهة لا تمنع العملاء من الوصول المباشر لفئات النظام الفرعي إذا احتاجوا لذلك، لكنها تقدم واجهة عالية المستوى مريحة للمهام الشائعة.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Facade when:"),
        ULContent(
          value: [
            "You need a simple interface to a complex subsystem",
            "You want to layer your subsystems",
            "You want to reduce coupling between client and subsystem",
            "You're integrating legacy code or third-party libraries",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الواجهة عندما:"),
        ULContent(
          value: [
            "تحتاج واجهة بسيطة لنظام فرعي معقد",
            "تريد تطبيق طبقات على أنظمتك الفرعية",
            "تريد تقليل الاقتران بين العميل والنظام الفرعي",
            "تدمج كوداً قديماً أو مكتبات طرف ثالث",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.adapter, PK.singleton, PK.abstractFactory],
    oftenConfusedWith: [PK.adapter],
  ),
  PK.flyweight: DesignPattern(
    id: PK.flyweight,
    title: LocS(en: "Flyweight", ar: "وزن الريشة (Flyweight)"),
    description: LocS(
      en: "Shares common state among multiple objects to reduce memory usage",
      ar: "يشارك الحالة المشتركة بين عدة كائنات لتقليل استخدام الذاكرة",
    ),
    group: .design,
    type: .structural,
    category: .GoF,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "The Flyweight pattern minimizes memory usage by sharing as much data as possible with similar objects. It separates intrinsic state (shared) from extrinsic state (context-specific).",
        ),
        StrContent(
          "This pattern is particularly useful when you need to create a large number of similar objects. Instead of storing all data in every object, shared data is stored once and referenced.",
        ),
        ULContent(
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
        StrContent(
          "نمط وزن الريشة يقلل استخدام الذاكرة من خلال مشاركة أكبر قدر ممكن من البيانات مع كائنات مشابهة. يفصل الحالة الجوهرية (المشتركة) عن الحالة الخارجية (الخاصة بالسياق).",
        ),
        StrContent(
          "هذا النمط مفيد بشكل خاص عندما تحتاج لإنشاء عدد كبير من الكائنات المتشابهة. بدلاً من تخزين جميع البيانات في كل كائن، تُخزن البيانات المشتركة مرة واحدة ويُشار إليها.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Flyweight when:"),
        ULContent(
          value: [
            "Application uses large numbers of similar objects",
            "Memory usage is a concern",
            "Objects share significant amounts of state",
            "Object identity is not important",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم وزن الريشة عندما:"),
        ULContent(
          value: [
            "يستخدم التطبيق أعداداً كبيرة من الكائنات المتشابهة",
            "استخدام الذاكرة مصدر قلق",
            "الكائنات تشارك كميات كبيرة من الحالة",
            "هوية الكائن ليست مهمة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.singleton, PK.objectPool, PK.composite],
    oftenConfusedWith: [PK.objectPool],
  ),
  PK.proxy: DesignPattern(
    id: PK.proxy,
    title: LocS(en: "Proxy", ar: "الوكيل (Proxy)"),
    description: LocS(
      en: "Provides a surrogate or placeholder for another object to control access to it",
      ar: "يوفر بديلاً أو عنصراً نائباً لكائن آخر للتحكم في الوصول إليه",
    ),
    group: .design,
    type: .structural,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Proxy pattern provides a substitute or placeholder for another object. A proxy controls access to the original object, allowing you to perform something either before or after the request gets through to the original object.",
        ),
        ULContent(
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
        StrContent(
          "نمط الوكيل يوفر بديلاً أو عنصراً نائباً لكائن آخر. الوكيل يتحكم في الوصول للكائن الأصلي، مما يسمح لك بتنفيذ شيء ما قبل أو بعد وصول الطلب للكائن الأصلي.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Proxy when:"),
        ULContent(
          value: [
            "You need lazy initialization of expensive objects",
            "You want to add access control",
            "You need remote object access",
            "You want caching or logging without changing the object",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الوكيل عندما:"),
        ULContent(
          value: [
            "تحتاج لتهيئة كسولة للكائنات المكلفة",
            "تريد إضافة تحكم في الوصول",
            "تحتاج للوصول لكائن بعيد",
            "تريد التخزين المؤقت أو التسجيل دون تغيير الكائن",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.adapter, PK.decorator, PK.facade],
    oftenConfusedWith: [PK.adapter, PK.decorator],
  ),
  PK.wrapper: DesignPattern(
    id: PK.wrapper,
    title: LocS(en: "Wrapper", ar: "الغلاف (Wrapper)"),
    description: LocS(
      en: "A general term for patterns that wrap objects to extend or adapt their behavior",
      ar: "مصطلح عام للأنماط التي تلف الكائنات لتوسيع أو تكييف سلوكها",
    ),
    group: .design,
    type: .structural,
    category: .practical,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "Wrapper is a general term that encompasses patterns like Adapter and Decorator. It refers to any pattern where one object wraps another to modify or extend its interface or behavior.",
        ),
        StrContent(
          "While not a standalone GoF pattern, the wrapper concept is fundamental to understanding how objects can be enhanced or adapted through composition rather than inheritance.",
        ),
        ULContent(
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
        StrContent(
          "الغلاف مصطلح عام يشمل أنماطاً مثل المُحوّل والمُزخرف. يشير إلى أي نمط حيث يلف كائن آخر لتعديل أو توسيع واجهته أو سلوكه.",
        ),
        StrContent(
          "بينما ليس نمطاً منفصلاً من GoF، مفهوم الغلاف أساسي لفهم كيف يمكن تعزيز أو تكييف الكائنات من خلال التركيب بدلاً من الوراثة.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Wrapper concept when:"),
        ULContent(
          value: [
            "You need to extend functionality without inheritance",
            "You want to add cross-cutting concerns",
            "You need to adapt existing interfaces",
            "Runtime behavior modification is required",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم مفهوم الغلاف عندما:"),
        ULContent(
          value: [
            "تحتاج لتوسيع الوظائف دون وراثة",
            "تريد إضافة اهتمامات شاملة",
            "تحتاج لتكييف واجهات موجودة",
            "تعديل السلوك في وقت التشغيل مطلوب",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.adapter, PK.decorator, PK.proxy],
    oftenConfusedWith: [PK.decorator],
  ),
  PK.dataMapper: DesignPattern(
    id: PK.dataMapper,
    title: LocS(en: "Data Mapper", ar: "مُخطط البيانات (Data Mapper)"),
    description: LocS(
      en: "Separates domain objects from database access logic",
      ar: "يفصل كائنات المجال عن منطق الوصول لقاعدة البيانات",
    ),
    group: .design,
    type: .structural,
    category: .practical,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "Data Mapper is a layer that moves data between objects and a database while keeping them independent of each other. Domain objects have no knowledge of how they're persisted.",
        ),
        StrContent(
          "This pattern is essential for maintaining clean separation between your business logic and data access layers, allowing each to evolve independently.",
        ),
        ULContent(
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
        StrContent(
          "مُخطط البيانات هو طبقة تنقل البيانات بين الكائنات وقاعدة البيانات مع إبقائها مستقلة عن بعضها. كائنات المجال ليس لديها معرفة بكيفية حفظها.",
        ),
        StrContent(
          "هذا النمط أساسي للحفاظ على فصل نظيف بين منطق العمل وطبقات الوصول للبيانات، مما يسمح لكل منها بالتطور بشكل مستقل.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Data Mapper when:"),
        ULContent(
          value: [
            "You want rich domain models free of persistence logic",
            "Domain and database schemas differ significantly",
            "You need to support multiple data sources",
            "You want maximum testability of domain logic",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم مُخطط البيانات عندما:"),
        ULContent(
          value: [
            "تريد نماذج مجال غنية خالية من منطق الحفظ",
            "مخططات المجال وقاعدة البيانات تختلف بشكل كبير",
            "تحتاج لدعم مصادر بيانات متعددة",
            "تريد أقصى قابلية اختبار لمنطق المجال",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.repository, PK.unitOfWork, PK.dto],
  ),
  PK.dto: DesignPattern(
    id: PK.dto,
    title: LocS(
      en: "Data Transfer Object (DTO)",
      ar: "كائن نقل البيانات (DTO)",
    ),
    description: LocS(
      en: "Transfers data between software application subsystems",
      ar: "ينقل البيانات بين أنظمة فرعية للتطبيق البرمجي",
    ),
    group: .design,
    type: .structural,
    category: .practical,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "A DTO is a simple object that carries data between processes. It has no behavior except for storage and retrieval of its own data (accessors and mutators).",
        ),
        StrContent(
          "DTOs are commonly used to transfer data across network boundaries, between layers, or when you need to aggregate data from multiple sources into a single object.",
        ),
        ULContent(
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
        StrContent(
          "DTO هو كائن بسيط ينقل البيانات بين العمليات. ليس له سلوك إلا لتخزين واسترجاع بياناته الخاصة (الموصلات والمغيرات).",
        ),
        StrContent(
          "تُستخدم DTOs عادة لنقل البيانات عبر حدود الشبكة، بين الطبقات، أو عندما تحتاج لتجميع البيانات من مصادر متعددة في كائن واحد.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use DTO when:"),
        ULContent(
          value: [
            "Transferring data across network boundaries",
            "Aggregating data from multiple sources",
            "You need different representations for different consumers",
            "Separating API contracts from domain models",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم DTO عندما:"),
        ULContent(
          value: [
            "نقل البيانات عبر حدود الشبكة",
            "تجميع البيانات من مصادر متعددة",
            "تحتاج تمثيلات مختلفة لمستهلكين مختلفين",
            "فصل عقود API عن نماذج المجال",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.dataMapper, PK.adapter, PK.facade],
  ),
  PK.extensionObject: DesignPattern(
    id: PK.extensionObject,
    title: LocS(en: "Extension Object", ar: "كائن التوسيع (Extension Object)"),
    description: LocS(
      en: "Allows extending objects with new functionality at runtime",
      ar: "يسمح بتوسيع الكائنات بوظائف جديدة في وقت التشغيل",
    ),
    group: .design,
    type: .structural,
    category: .practical,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "The Extension Object pattern allows clients to add new functionality to objects without modifying their classes. It provides a way to anticipate future extensions.",
        ),
        StrContent(
          "This pattern is particularly useful in framework design where you want to allow plugins or extensions without knowing in advance what they'll be.",
        ),
        ULContent(
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
        StrContent(
          "نمط كائن التوسيع يسمح للعملاء بإضافة وظائف جديدة للكائنات دون تعديل فئاتها. يوفر طريقة لتوقع التوسعات المستقبلية.",
        ),
        StrContent(
          "هذا النمط مفيد بشكل خاص في تصميم الأطر حيث تريد السماح بالإضافات أو التوسعات دون معرفة مسبقة بما ستكون.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Extension Object when:"),
        ULContent(
          value: [
            "You need to add features to objects without subclassing",
            "Building a framework with plugin support",
            "Future extensions are anticipated but unknown",
            "You want to avoid heavy inheritance hierarchies",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم كائن التوسيع عندما:"),
        ULContent(
          value: [
            "تحتاج لإضافة ميزات للكائنات دون فئات فرعية",
            "بناء إطار مع دعم الإضافات",
            "التوسعات المستقبلية متوقعة لكن غير معروفة",
            "تريد تجنب التسلسلات الهرمية الثقيلة للوراثة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.visitor, PK.decorator, PK.plugin],
  ),
  PK.plugin: DesignPattern(
    id: PK.plugin,
    title: LocS(en: "Plugin", ar: "الإضافة (Plugin)"),
    description: LocS(
      en: "Allows adding functionality to an application at runtime through loadable modules",
      ar: "يسمح بإضافة وظائف للتطبيق في وقت التشغيل من خلال وحدات قابلة للتحميل",
    ),
    group: .design,
    type: .structural,
    category: .practical,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "The Plugin pattern enables extending application functionality without modifying the core code. Plugins are modules that can be added, removed, or updated independently.",
        ),
        StrContent(
          "This pattern is fundamental to creating extensible applications like IDEs, browsers, content management systems, and frameworks.",
        ),
        ULContent(
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
        StrContent(
          "نمط الإضافة يمكّن من توسيع وظائف التطبيق دون تعديل الكود الأساسي. الإضافات هي وحدات يمكن إضافتها أو إزالتها أو تحديثها بشكل مستقل.",
        ),
        StrContent(
          "هذا النمط أساسي لإنشاء تطبيقات قابلة للتوسيع مثل بيئات التطوير المتكاملة والمتصفحات وأنظمة إدارة المحتوى والأطر.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Plugin when:"),
        ULContent(
          value: [
            "Building extensible applications or frameworks",
            "You want to support third-party extensions",
            "Features should be added/removed dynamically",
            "Creating modular, component-based systems",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الإضافة عندما:"),
        ULContent(
          value: [
            "بناء تطبيقات أو أطر قابلة للتوسيع",
            "تريد دعم توسعات الطرف الثالث",
            "يجب إضافة/إزالة الميزات ديناميكياً",
            "إنشاء أنظمة معيارية قائمة على المكونات",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.extensionObject, PK.factoryKit, PK.abstractFactory],
  ),
};
