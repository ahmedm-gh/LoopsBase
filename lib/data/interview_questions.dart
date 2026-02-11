import 'package:tuts/core/models/code_block.dart';
import 'package:tuts/core/models/interview_question.dart';
import 'package:tuts/core/models/localized_text.dart';
import '../core/models/content.dart';

const List<InterviewQuestion> questionsData = [
  InterviewQuestion(
    id: "001",
    difficulty: .intermediate,
    categories: [.basic, .flutterBasics],
    type: .theoretical,
    tags: ["widgets", "dartBasics", "framework"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "What is Flutter and how does it differ from other mobile development frameworks?",
        answer: [
          StringContent(
            "Flutter is Google's open-source UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase using the Dart programming language.",
          ),
          OrderedListContent(
            title: "Key differences from other frameworks:",
            value: [
              "Uses Dart programming language instead of JavaScript",
              "Provides its own rendering engine (Skia/Impeller) rather than relying on platform widgets",
              "Widgets are not wrappers around native components - Flutter draws everything itself",
              "Hot reload for faster development cycles",
              "Single codebase for multiple platforms (mobile, web, desktop)",
              "Direct compilation to native ARM code for better performance",
            ],
          ),
        ],
        notes: [
          "Flutter's custom rendering approach gives consistent UI across platforms but requires bundling the rendering engine, which increases app size.",
        ],
        bestUse:
            "Cross-platform apps requiring consistent UI/UX, high-performance apps, apps with complex custom UI",
      ),
      ar: QuestionContent(
        question:
            "ما هو Flutter وكيف يختلف عن أطر تطوير التطبيقات المحمولة الأخرى؟",
        answer: [
          StringContent(
            "Flutter هو مجموعة أدوات واجهة المستخدم مفتوحة المصدر من Google لبناء تطبيقات مترجمة محليًا للهاتف المحمول والويب وسطح المكتب من قاعدة كود واحدة باستخدام لغة Dart.",
          ),
          OrderedListContent(
            title: "الاختلافات الرئيسية عن الأطر الأخرى:",
            value: [
              "يستخدم لغة البرمجة Dart بدلاً من JavaScript",
              "يوفر محرك العرض الخاص به (Skia/Impeller) بدلاً من الاعتماد على عناصر المنصة",
              "عناصر التصميم (Widgets) ليست أغلفة حول المكونات الأصلية - يرسم Flutter كل شيء بنفسه",
              "إعادة التحميل السريع لدورات تطوير أسرع",
              "قاعدة كود واحدة لمنصات متعددة (الهاتف، الويب، سطح المكتب)",
              "الترجمة المباشرة إلى كود ARM الأصلي لأداء أفضل",
            ],
          ),
        ],
        notes: [
          "نهج العرض المخصص في Flutter يوفر واجهة مستخدم متسقة عبر المنصات ولكنه يتطلب تضمين محرك العرض، مما يزيد من حجم التطبيق.",
        ],
        bestUse:
            "التطبيقات متعددة المنصات التي تتطلب واجهة مستخدم/تجربة مستخدم متسقة، التطبيقات عالية الأداء، التطبيقات ذات واجهة المستخدم المخصصة المعقدة",
      ),
    ),
    pros: LocalizedValue(
      en: [
        "Fast development with hot reload",
        "Single codebase for multiple platforms",
        "Excellent performance with native compilation",
        "Rich widget library with Material and Cupertino designs",
        "Strong and growing community support",
      ],
      ar: [
        "تطوير سريع مع إعادة التحميل السريع",
        "قاعدة كود واحدة لمنصات متعددة",
        "أداء ممتاز مع الترجمة الأصلية",
        "مكتبة غنية من عناصر التصميم (Widgets) مع تصميمات Material و Cupertino",
        "دعم قوي ومتنامي من المجتمع",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Larger app size due to engine inclusion (typically 4-8 MB overhead)",
        "Relatively newer compared to native development",
        "Fewer third-party libraries compared to native platforms",
        "Learning Dart is required (less familiar than JavaScript)",
      ],
      ar: [
        "حجم تطبيق أكبر بسبب تضمين المحرك (عادةً 4-8 ميجابايت)",
        "جديد نسبيًا مقارنة بالتطوير الأصلي",
        "مكتبات طرف ثالث أقل مقارنة بالمنصات الأصلية",
        "يتطلب تعلم Dart (أقل شهرة من JavaScript)",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Flutter when:",
          value: [
            "Building cross-platform apps with a single codebase",
            "Requiring a high-performance, consistent UI across iOS and Android",
            "Needing rapid development with features like Hot Reload",
            "Creating custom, complex UI designs that aren't easily achieved with native widgets",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Flutter عندما:",
          value: [
            "بناء تطبيقات متعددة المنصات بقاعدة كود واحدة",
            "الحاجة إلى واجهة مستخدم عالية الأداء ومتسقة عبر iOS و Android",
            "الحاجة لتطوير سريع باستخدام ميزات مثل Hot Reload",
            "إنشاء تصميمات واجهة مستخدم مخصصة ومعقدة لا يمكن تحقيقها بسهولة باستخدام الودجت الأصلية",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "002",
    difficulty: .basic,
    categories: [.basic, .flutterBasics],
    type: .theoretical,
    tags: ["widgets", "statelessWidget", "statefulWidget", "state"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "What is the difference between StatelessWidget and StatefulWidget?",
        answer: [
          StringContent(
            "StatelessWidget and StatefulWidget are the two fundamental widget types in Flutter, differing in how they handle state:",
          ),
          OrderedListContent(
            value: [
              "StatelessWidget: Immutable widget that doesn't maintain any internal state. It's built once and doesn't rebuild unless its parent rebuilds with different parameters. Use for static content that doesn't change.",
              "StatefulWidget: Mutable widget that maintains state through a separate State object. It can rebuild itself when setState() is called or when dependencies change. The State object persists between rebuilds. Use when widget needs to change based on user interaction or data changes.",
            ],
          ),
          CodeContent(
            '''// StatelessWidget Example
class MyText extends StatelessWidget {
  final String text;
  const MyText(this.text, {Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

// StatefulWidget Example
class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);
  
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: \$_count'),
        ElevatedButton(
          onPressed: () => setState(() => _count++),
          child: Text('Increment'),
        ),
      ],
    );
  }
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Choose StatelessWidget by default for better performance; only use StatefulWidget when state is needed.",
          "StatefulWidget has two classes: the widget itself (immutable) and the State object (mutable).",
        ],
        bestUse:
            "StatelessWidget for displaying static data; StatefulWidget for interactive UI, forms, animations",
      ),
      ar: QuestionContent(
        question: "ما الفرق بين StatelessWidget و StatefulWidget؟",
        answer: [
          StringContent(
            "StatelessWidget و StatefulWidget هما نوعان أساسيان من الودجتس في Flutter، يختلفان في كيفية التعامل مع الحالة:",
          ),
          OrderedListContent(
            value: [
              "StatelessWidget: ويدجت غير قابل للتغيير لا يحافظ على أي حالة داخلية. يُبنى مرة واحدة ولا يُعاد بناؤه إلا إذا أعاد الأب بناءه بمعاملات مختلفة. يُستخدم للمحتوى الثابت الذي لا يتغير.",
              "StatefulWidget: ويدجت قابل للتغيير يحافظ على الحالة من خلال كائن State منفصل. يمكنه إعادة بناء نفسه عند استدعاء ()setState أو عند تغيير التبعيات. كائن State يستمر بين عمليات إعادة البناء. يُستخدم عندما يحتاج الويدجت للتغيير بناءً على تفاعل المستخدم أو تغييرات البيانات.",
            ],
          ),
          CodeContent(
            '''// مثال StatelessWidget
class MyText extends StatelessWidget {
  final String text;
  const MyText(this.text, {Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

// مثال StatefulWidget
class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);
  
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('العدد: \$_count'),
        ElevatedButton(
          onPressed: () => setState(() => _count++),
          child: Text('زيادة'),
        ),
      ],
    );
  }
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "اختر StatelessWidget افتراضيًا لأداء أفضل؛ استخدم StatefulWidget فقط عندما تكون الحالة مطلوبة.",
          "StatefulWidget لديه فئتان: الويدجت نفسه (غير قابل للتغيير) وكائن State (قابل للتغيير).",
        ],
        bestUse:
            "StatelessWidget لعرض البيانات الثابتة؛ StatefulWidget لواجهة المستخدم التفاعلية والنماذج والرسوم المتحركة",
      ),
    ),
    pros: LocalizedValue(
      en: [
        "StatelessWidget: Better performance, simpler code, easier to understand",
        "StatefulWidget: Dynamic content, user interaction support, can maintain internal state",
      ],
      ar: [
        "StatelessWidget: أداء أفضل، كود أبسط، أسهل في الفهم",
        "StatefulWidget: محتوى ديناميكي، دعم التفاعل مع المستخدم، يمكنه الحفاظ على الحالة الداخلية",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "StatelessWidget: Cannot handle dynamic changes or user interactions",
        "StatefulWidget: More complex, potential performance overhead if misused, requires two classes",
      ],
      ar: [
        "StatelessWidget: لا يمكنه التعامل مع التغييرات الديناميكية أو تفاعلات المستخدم",
        "StatefulWidget: أكثر تعقيدًا، احتمال تكلفة أداء إذا أسيء استخدامه، يتطلب فئتين",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use StatelessWidget when:",
          value: [
            "Widget displays static content without internal state",
            "Appearance depends only on constructor parameters",
            "No user interactions that modify the widget's data",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم StatelessWidget عندما:",
          value: [
            "العنصر يعرض محتوى ثابت بدون حالة داخلية",
            "الشكل يعتمد فقط على المعاملات الأولية",
            "لا يوجد تفاعل يغير بيانات العنصر",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "003",
    difficulty: .intermediate,
    categories: [.basic, .flutterBasics],
    type: .theoretical,
    tags: ["buildContext", "widgets", "inheritedWidget"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is BuildContext and why is it important?",
        answer: [
          StringContent(
            "BuildContext is a handle to the location of a widget in the widget tree. It represents the relationship between a widget and its ancestors in the tree. Each widget has its own BuildContext that is passed to the build() method.",
          ),
          OrderedListContent(
            title: "Important uses of BuildContext:",
            value: [
              "Accessing inherited widgets like Theme.of(context), MediaQuery.of(context)",
              "Navigation using Navigator.of(context)",
              "Showing dialogs, snackbars, and bottom sheets",
              "Getting screen dimensions via MediaQuery.of(context).size",
              "Finding ancestor or descendant widgets in the tree",
              "Localizing text with Localizations.of(context)",
            ],
          ),
          CodeContent(
            '''// Common BuildContext uses
Widget build(BuildContext context) {
  // Access theme
  final primaryColor = Theme.of(context).primaryColor;
  
  // Navigate
  Navigator.of(context).push(MaterialPageRoute(
    builder: (_) => DetailScreen(),
  ));
  
  // Get screen size
  final screenSize = MediaQuery.of(context).size;
  
  // Show snackbar
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('Hello!')),
  );
  
  return Container();
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Context is only valid during the build phase and when the widget is mounted. Don't store it for later async use without proper handling.",
          "Each widget gets a unique BuildContext, even if they're the same type.",
        ],
        bestUse:
            "Accessing theme data, navigation, inherited widgets, responsive design, showing dialogs",
      ),
      ar: QuestionContent(
        question: "ما هو BuildContext ولماذا هو مهم؟",
        answer: [
          StringContent(
            "BuildContext هو مؤشر لموقع الويدجت في شجرة الويدجت. يمثل العلاقة بين الويدجت وأسلافه في الشجرة. كل ويدجت له BuildContext الخاص به يتم تمريره إلى طريقة ()build.",
          ),
          OrderedListContent(
            title: "الاستخدامات المهمة لـ BuildContext:",
            value: [
              "الوصول إلى الودجتس الموروثة مثل (Theme.of(context، (MediaQuery.of(context",
              "التنقل باستخدام (Navigator.of(context",
              "عرض الحوارات والإشعارات والأوراق السفلية",
              "الحصول على أبعاد الشاشة عبر (MediaQuery.of(context).size",
              "العثور على الودجتس الأسلاف أو الأحفاد في الشجرة",
              "ترجمة النص باستخدام (Localizations.of(context",
            ],
          ),
          CodeContent(
            '''// استخدامات BuildContext الشائعة
Widget build(BuildContext context) {
  // الوصول إلى السمة
  final primaryColor = Theme.of(context).primaryColor;
  
  // التنقل
  Navigator.of(context).push(MaterialPageRoute(
    builder: (_) => DetailScreen(),
  ));
  
  // الحصول على حجم الشاشة
  final screenSize = MediaQuery.of(context).size;
  
  // عرض إشعار
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('مرحباً!')),
  );
  
  return Container();
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "السياق صالح فقط أثناء مرحلة البناء وعندما يكون الويدجت مثبتًا. لا تخزنه للاستخدام غير المتزامن اللاحق بدون معالجة مناسبة.",
          "كل ويدجت يحصل على BuildContext فريد، حتى لو كانوا من نفس النوع.",
        ],
        bestUse:
            "الوصول إلى بيانات السمة، التنقل، الودجتس الموروثة، التصميم المستجيب، عرض الحوارات",
      ),
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use BuildContext when:",
          value: [
            "Accessing inherited widgets (Theme, MediaQuery, Provider)",
            "Navigating between screens",
            "Showing dialogs, snackbars, or modals",
            "Finding ancestor or descendant widgets",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم BuildContext عندما:",
          value: [
            "الوصول للعناصر الموروثة (الثيم، بيانات الشاشة، Provider)",
            "التنقل بين الشاشات",
            "عرض النوافذ المنبثقة والإشعارات",
            "البحث عن العناصر الأب أو الأبناء",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "004",
    difficulty: .intermediate,
    categories: [.oop, .dartBasics],
    type: .theoretical,
    tags: [
      "dartBasics",
      "encapsulation",
      "inheritance",
      "polymorphism",
      "abstraction",
      "oop",
    ],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "Explain the four pillars of Object-Oriented Programming with Dart examples.",
        answer: [
          StringContent(
            "The four pillars of OOP are fundamental concepts that help organize and structure code:",
          ),
          OrderedListContent(
            value: [
              "Encapsulation: Bundling data and methods together, hiding internal details using private members (underscore prefix in Dart). Protects data from unauthorized access.",
              "Inheritance: Creating new classes from existing ones using 'extends'. Promotes code reuse and establishes 'is-a' relationships.",
              "Polymorphism: Objects taking multiple forms through method overriding and interfaces. Allows treating different types uniformly.",
              "Abstraction: Hiding complex implementation details using abstract classes and interfaces. Shows only essential features.",
            ],
          ),
          CodeContent(
            '''// Encapsulation
class BankAccount {
  String _balance = '1000'; // Private field
  
  String get balance => _balance; // Getter
  
  void deposit(String amount) {
    // Controlled access to private data
    _balance = (int.parse(_balance) + int.parse(amount)).toString();
  }
}

// Inheritance
class SavingsAccount extends BankAccount {
  double interestRate = 0.05;
}

// Polymorphism
class Animal {
  void makeSound() => print('Some sound');
}

class Dog extends Animal {
  @override
  void makeSound() => print('Woof!');
}

// Abstraction
abstract class Shape {
  void draw(); // Abstract method
  double calculateArea();
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
  
  @override
  void draw() => print('Drawing circle');
  
  @override
  double calculateArea() => 3.14 * radius * radius;
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Dart supports single inheritance but multiple interface implementation. Use mixins for shared behavior across unrelated classes.",
        ],
        bestUse:
            "Encapsulation for data protection, inheritance for code reuse, polymorphism for flexibility, abstraction for clean APIs",
      ),
      ar: QuestionContent(
        question: "اشرح الأعمدة الأربعة للبرمجة كائنية التوجه مع أمثلة Dart.",
        answer: [
          StringContent(
            "الأعمدة الأربعة للبرمجة كائنية التوجه هي مفاهيم أساسية تساعد في تنظيم وهيكلة الكود:",
          ),
          OrderedListContent(
            value: [
              "التغليف: تجميع البيانات والطرق معًا، إخفاء التفاصيل الداخلية باستخدام الأعضاء الخاصة (بادئة الشرطة السفلية في Dart). يحمي البيانات من الوصول غير المصرح به.",
              "الوراثة: إنشاء فئات جديدة من الفئات الموجودة باستخدام 'extends'. يعزز إعادة استخدام الكود ويؤسس علاقات 'هو-نوع-من'.",
              "تعدد الأشكال: الكائنات تتخذ أشكالًا متعددة من خلال تجاوز الطرق والواجهات. يسمح بمعاملة الأنواع المختلفة بشكل موحد.",
              "التجريد: إخفاء تفاصيل التنفيذ المعقدة باستخدام الفئات والواجهات المجردة. يظهر فقط الميزات الأساسية.",
            ],
          ),
          CodeContent(
            '''// التغليف
class BankAccount {
  String _balance = '1000'; // حقل خاص
  
  String get balance => _balance; // Getter
  
  void deposit(String amount) {
    // وصول محكوم إلى البيانات الخاصة
    _balance = (int.parse(_balance) + int.parse(amount)).toString();
  }
}

// الوراثة
class SavingsAccount extends BankAccount {
  double interestRate = 0.05;
}

// تعدد الأشكال
class Animal {
  void makeSound() => print('صوت ما');
}

class Dog extends Animal {
  @override
  void makeSound() => print('نباح!');
}

// التجريد
abstract class Shape {
  void draw(); // طريقة مجردة
  double calculateArea();
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
  
  @override
  void draw() => print('رسم دائرة');
  
  @override
  double calculateArea() => 3.14 * radius * radius;
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Dart يدعم الوراثة الفردية ولكن تنفيذ واجهات متعددة. استخدم mixins للسلوك المشترك عبر فئات غير مرتبطة.",
        ],
        bestUse:
            "التغليف لحماية البيانات، الوراثة لإعادة استخدام الكود، تعدد الأشكال للمرونة، التجريد لواجهات برمجية نظيفة",
      ),
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Apply OOP Pillars when:",
          value: [
            "Encapsulation: Protecting internal data from unintended access",
            "Inheritance: Sharing common behavior and fields between related classes",
            "Polymorphism: Treating different objects uniformly through common interfaces",
            "Abstraction: Simplifying complex systems by hiding implementation details",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "طبق أعمدة البرمجة الكائنية عندما:",
          value: [
            "التغليف: حماية البيانات الداخلية من الوصول غير المقصود",
            "الوراثة: مشاركة السلوك والحقول المشتركة بين الفئات ذات الصلة",
            "تعدد الأشكال: معاملة كائنات مختلفة بشكل موحد من خلال واجهات مشتركة",
            "التجريد: تبسيط الأنظمة المعقدة عن طريق إخفاء تفاصيل التنفيذ",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "005",
    difficulty: .advanced,
    categories: [.solid, .architecture],
    type: .theoretical,
    tags: [
      "singleResponsibility",
      "openClosed",
      "liskovSubstitution",
      "interfaceSegregation",
      "dependencyInversion",
      "solid",
      "cleanCode",
    ],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "Explain all five SOLID principles with Flutter/Dart examples.",
        answer: [
          StringContent(
            "SOLID principles are five design principles that make software designs more understandable, flexible, and maintainable:",
          ),
          OrderedListContent(
            value: [
              "S - Single Responsibility Principle: A class should have one, and only one, reason to change. Each class should handle a single part of functionality. Example: Separate UserRepository from UserValidator.",
              "O - Open/Closed Principle: Classes should be open for extension but closed for modification. Use abstract classes and interfaces to allow new functionality without changing existing code.",
              "L - Liskov Substitution Principle: Subclasses should be substitutable for their base classes without breaking functionality. Child classes must honor the contract of parent classes.",
              "I - Interface Segregation Principle: Don't force classes to implement interfaces they don't use. Create specific, focused interfaces rather than one large interface.",
              "D - Dependency Inversion Principle: Depend on abstractions, not on concretions. High-level modules should not depend on low-level modules; both should depend on abstractions.",
            ],
          ),
          CodeContent(
            '''// Single Responsibility Principle
class UserRepository {
  Future<User> getUser(String id) async {
    // Only responsible for data access
  }
}

class UserValidator {
  bool isValid(User user) {
    // Only responsible for validation
    return user.email.isNotEmpty && user.age > 0;
  }
}

// Open/Closed Principle
abstract class PaymentProcessor {
  void processPayment(double amount);
}

class CreditCardProcessor extends PaymentProcessor {
  @override
  void processPayment(double amount) {
    // Credit card implementation
  }
}

class PayPalProcessor extends PaymentProcessor {
  @override
  void processPayment(double amount) {
    // PayPal implementation
  }
}

// Dependency Inversion Principle
abstract class IUserRepository {
  Future<User> getUser(String id);
}

class UserService {
  final IUserRepository repository;
  
  UserService(this.repository); // Inject abstraction, not concrete class
  
  Future<User> fetchUser(String id) => repository.getUser(id);
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "SOLID principles improve code maintainability, testability, and scalability. Essential for large Flutter applications.",
          "Don't over-apply SOLID in simple apps - use judgment to balance simplicity and design principles.",
        ],
        bestUse:
            "Apply in service layers, repositories, and business logic. Essential for clean architecture and enterprise apps.",
      ),
      ar: QuestionContent(
        question: "اشرح جميع مبادئ SOLID الخمسة مع أمثلة Flutter/Dart.",
        answer: [
          StringContent(
            "مبادئ SOLID هي خمسة مبادئ تصميم تجعل تصاميم البرمجيات أكثر قابلية للفهم والمرونة والصيانة:",
          ),
          OrderedListContent(
            value: [
              "S - مبدأ المسؤولية الواحدة: يجب أن يكون للفئة سبب واحد فقط للتغيير. كل فئة يجب أن تتعامل مع جزء واحد من الوظائف. مثال: فصل UserRepository عن UserValidator.",
              "O - مبدأ المفتوح/المغلق: يجب أن تكون الفئات مفتوحة للتوسع ولكن مغلقة للتعديل. استخدم الفئات المجردة والواجهات للسماح بوظائف جديدة دون تغيير الكود الموجود.",
              "L - مبدأ استبدال ليسكوف: يجب أن تكون الفئات الفرعية قابلة للاستبدال بفئاتها الأساسية دون كسر الوظائف. يجب أن تحترم الفئات الفرعية عقد الفئات الأبوية.",
              "I - مبدأ فصل الواجهة: لا تجبر الفئات على تنفيذ واجهات لا تستخدمها. أنشئ واجهات محددة ومركزة بدلاً من واجهة كبيرة واحدة.",
              "D - مبدأ عكس التبعية: اعتمد على التجريدات، وليس على التفاصيل الملموسة. الوحدات عالية المستوى لا يجب أن تعتمد على وحدات منخفضة المستوى؛ كلاهما يجب أن يعتمد على التجريدات.",
            ],
          ),
          CodeContent(
            '''// مبدأ المسؤولية الواحدة
class UserRepository {
  Future<User> getUser(String id) async {
    // مسؤول فقط عن الوصول للبيانات
  }
}

class UserValidator {
  bool isValid(User user) {
    // مسؤول فقط عن التحقق
    return user.email.isNotEmpty && user.age > 0;
  }
}

// مبدأ المفتوح/المغلق
abstract class PaymentProcessor {
  void processPayment(double amount);
}

class CreditCardProcessor extends PaymentProcessor {
  @override
  void processPayment(double amount) {
    // تنفيذ بطاقة الائتمان
  }
}

// مبدأ عكس التبعية
abstract class IUserRepository {
  Future<User> getUser(String id);
}

class UserService {
  final IUserRepository repository;
  
  UserService(this.repository); // حقن التجريد، وليس الفئة الملموسة
  
  Future<User> fetchUser(String id) => repository.getUser(id);
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "مبادئ SOLID تحسن قابلية الصيانة والاختبار وقابلية التوسع للكود. ضرورية للتطبيقات الكبيرة في Flutter.",
          "لا تبالغ في تطبيق SOLID في التطبيقات البسيطة - استخدم التقدير لتوازن البساطة ومبادئ التصميم.",
        ],
        bestUse:
            "طبقها في طبقات الخدمة والمستودعات ومنطق الأعمال. ضرورية للبنية النظيفة والتطبيقات المؤسسية.",
      ),
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Apply SOLID when:",
          value: [
            "Developing large-scale, enterprise-level applications",
            "Working in a team where code clarity and maintainability are critical",
            "Designing systems that need to be easily extensible and testable",
            "Reducing tight coupling between different modules of the app",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "طبق SOLID عندما:",
          value: [
            "تطوير تطبيقات واسعة النطاق على مستوى مؤسسي",
            "العمل في فريق حيث وضوح الكود وقابليته للصيانة أمر بالغ الأهمية",
            "تصميم أنظمة تحتاج إلى أن تكون قابلة للتوسيع والاختبار بسهولة",
            "تقليل الارتباط الوثيق بين الوحدات المختلفة للتطبيق",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "006",
    difficulty: .intermediate,
    categories: [.designPatterns],
    type: .practical,
    tags: ["singleton", "factory", "repository", "designPatterns"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "Implement Singleton, Factory, and Repository patterns in Flutter.",
        answer: [
          StringContent(
            "These three design patterns are commonly used in Flutter applications:",
          ),
          OrderedListContent(
            value: [
              "Singleton: Ensures only one instance of a class exists throughout the app lifecycle. Use for app-wide services like API clients, database instances, or configuration managers.",
              "Factory: Creates objects without exposing the creation logic to the client. Use factory constructors in Dart to return instances based on parameters or cached objects.",
              "Repository: Abstracts data sources and provides a clean API for data access. Acts as a mediator between data sources (API, local DB) and business logic.",
            ],
          ),
          CodeContent(
            '''// Singleton Pattern
class ApiService {
  static final ApiService _instance = ApiService._internal();
  
  factory ApiService() => _instance;
  
  ApiService._internal() {
    // Initialize API client, interceptors, etc.
  }
  
  Future<Response> get(String endpoint) async {
    // API call implementation
  }
}

// Factory Pattern
abstract class Animal {
  void makeSound();
  
  factory Animal.fromType(String type) {
    switch (type) {
      case 'dog':
        return Dog();
      case 'cat':
        return Cat();
      default:
        throw ArgumentError('Unknown animal type: \$type');
    }
  }
}

class Dog implements Animal {
  @override
  void makeSound() => print('Woof!');
}

class Cat implements Animal {
  @override
  void makeSound() => print('Meow!');
}

// Repository Pattern
abstract class IUserRepository {
  Future<User> getUser(String id);
  Future<List<User>> getAllUsers();
  Future<void> saveUser(User user);
}

class UserRepository implements IUserRepository {
  final ApiService _api;
  final LocalDatabase _db;
  
  UserRepository(this._api, this._db);
  
  @override
  Future<User> getUser(String id) async {
    try {
      // Try to fetch from API first
      return await _api.getUser(id);
    } catch (e) {
      // Fallback to local database
      return await _db.getUser(id);
    }
  }
  
  @override
  Future<void> saveUser(User user) async {
    await _db.saveUser(user);
    await _api.updateUser(user);
  }
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Singleton can cause testing issues; consider using dependency injection instead for better testability.",
          "Repository pattern is crucial for testable code as it allows mocking data sources.",
        ],
        bestUse:
            "Singleton for global services, Factory for object creation flexibility, Repository for data layer abstraction and testability",
      ),
      ar: QuestionContent(
        question: "نفذ أنماط Singleton و Factory و Repository في Flutter.",
        answer: [
          StringContent(
            "هذه الأنماط الثلاثة للتصميم شائعة الاستخدام في تطبيقات Flutter:",
          ),
          OrderedListContent(
            value: [
              "Singleton: يضمن وجود نسخة واحدة فقط من الفئة خلال دورة حياة التطبيق. استخدمه للخدمات على مستوى التطبيق مثل عملاء API أو مثيلات قاعدة البيانات أو مديري التكوين.",
              "Factory: ينشئ كائنات دون كشف منطق الإنشاء للعميل. استخدم منشئات factory في Dart لإرجاع مثيلات بناءً على المعاملات أو الكائنات المخزنة مؤقتًا.",
              "Repository: يجرد مصادر البيانات ويوفر واجهة برمجية نظيفة للوصول إلى البيانات. يعمل كوسيط بين مصادر البيانات (API، قاعدة البيانات المحلية) ومنطق الأعمال.",
            ],
          ),
          StringContent(
            "تطبيق هذه الأنماط يسهل اختبار الكود وفصله عن بعضه البعض.",
          ),
          CodeContent(
            '''// نمط Singleton
class ApiService {
  static final ApiService _instance = ApiService._internal();
  
  factory ApiService() => _instance;
  
  ApiService._internal() {
    // تهيئة عميل API، المعترضات، إلخ.
  }
  
  Future<Response> get(String endpoint) async {
    // تنفيذ استدعاء API
  }
}

// نمط Factory
abstract class Animal {
  void makeSound();
  
  factory Animal.fromType(String type) {
    switch (type) {
      case 'dog':
        return Dog();
      case 'cat':
        return Cat();
      default:
        throw ArgumentError('نوع حيوان غير معروف: \$type');
    }
  }
}

class Dog implements Animal {
  @override
  void makeSound() => print('نباح!');
}

class Cat implements Animal {
  @override
  void makeSound() => print('مواء!');
}

// نمط Repository
abstract class IUserRepository {
  Future<User> getUser(String id);
  Future<List<User>> getAllUsers();
  Future<void> saveUser(User user);
}

class UserRepository implements IUserRepository {
  final ApiService _api;
  final LocalDatabase _db;
  
  UserRepository(this._api, this._db);
  
  @override
  Future<User> getUser(String id) async {
    try {
      // حاول الجلب من API أولاً
      return await _api.getUser(id);
    } catch (e) {
      // الرجوع إلى قاعدة البيانات المحلية
      return await _db.getUser(id);
    }
  }
  
  @override
  Future<void> saveUser(User user) async {
    await _db.saveUser(user);
    await _api.updateUser(user);
  }
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Singleton يمكن أن يسبب مشاكل في الاختبار؛ فكر في استخدام حقن التبعية بدلاً من ذلك لقابلية اختبار أفضل.",
          "نمط Repository حاسم للكود القابل للاختبار لأنه يسمح بمحاكاة مصادر البيانات.",
        ],
        bestUse:
            "Singleton للخدمات العامة، Factory لمرونة إنشاء الكائنات، Repository لتجريد طبقة البيانات وقابلية الاختبار",
      ),
    ),
    pros: LocalizedValue(
      en: [
        "Singleton: Global access point, memory efficient (one instance)",
        "Factory: Flexible object creation, encapsulates instantiation logic",
        "Repository: Testable, separates concerns, easily switch data sources",
      ],
      ar: [
        "Singleton: نقطة وصول عالمية، كفاءة الذاكرة (مثيل واحد)",
        "Factory: إنشاء كائنات مرنة، يغلف منطق التهيئة",
        "Repository: قابل للاختبار، يفصل الاهتمامات، تبديل مصادر البيانات بسهولة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Singleton: Hard to test, global state issues, can hide dependencies",
        "Factory: Can become complex with many types",
        "Repository: Additional abstraction layer, more code to maintain",
      ],
      ar: [
        "Singleton: صعب الاختبار، مشاكل حالة عالمية، قد يخفي التبعيات",
        "Factory: يمكن أن يصبح معقدًا مع أنواع كثيرة",
        "Repository: طبقة تجريد إضافية، المزيد من الكود للصيانة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Design Pattern Usage:",
          value: [
            "Singleton: Global services, configuration managers, database instances",
            "Factory: Flexible object creation, complex initialization logic",
            "Repository: Data layer abstraction, offline-first support, testability",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدام أنماط التصميم:",
          value: [
            "Singleton: الخدمات العالمية، مديرو التكوين، مثيلات قاعدة البيانات",
            "Factory: إنشاء كائنات مرنة، منطق تهيئة معقد",
            "Repository: تجريد طبقة البيانات، دعم العمل بدون اتصال، قابلية الاختبار",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "007",
    difficulty: .basic,
    categories: [.dataStructures, .dartBasics],
    type: .theoretical,
    tags: ["dartBasics", "dataStructures", "list", "set", "map"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "What are the main data structures available in Dart and when to use each?",
        answer: [
          StringContent(
            "Dart provides several built-in collection types, each optimized for specific use cases:",
          ),
          OrderedListContent(
            value: [
              "List: Ordered collection with indexed access, allows duplicates. Use when order matters and you may have repeated elements. Supports both fixed and growable length.",
              "Set: Unordered collection of unique elements only. Use when uniqueness is required and order doesn't matter (e.g., set of tags, unique IDs).",
              "Map: Key-value pairs with fast O(1) lookup by key. Use for associative data where you need to quickly find values by their keys.",
              "Queue: FIFO (First In First Out) operations. Use for task scheduling or breadth-first traversals.",
              "LinkedHashSet: Set that maintains insertion order. Combines uniqueness of Set with ordering.",
              "HashMap/LinkedHashMap: Different iteration order guarantees for Maps.",
            ],
          ),
          CodeContent(
            '''// List - Ordered, allows duplicates
List<String> items = ['a', 'b', 'c', 'a'];
print(items[0]); // 'a'

// Set - Unique items only
Set<int> uniqueIds = {1, 2, 3, 1}; // {1, 2, 3}
uniqueIds.add(4);

// Map - Key-value pairs
Map<String, User> userMap = {
  'id1': User(name: 'Alice'),
  'id2': User(name: 'Bob'),
};
User? alice = userMap['id1']; // Fast O(1) lookup

// Queue - FIFO operations
import 'dart:collection';
Queue<Task> taskQueue = Queue();
taskQueue.add(Task('First'));
taskQueue.add(Task('Second'));
Task next = taskQueue.removeFirst(); // 'First'

// LinkedHashSet - Unique and ordered
LinkedHashSet<String> orderedSet = LinkedHashSet();
orderedSet.addAll(['c', 'a', 'b']);
// Maintains insertion order: c, a, b''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Choose based on requirements: order, uniqueness, lookup speed.",
          "List for most cases, Set for uniqueness, Map for key-based access.",
          "Use const for immutable collections when possible for better performance.",
        ],
        bestUse:
            "List for ordered collections, Set for unique items, Map for fast key lookups, Queue for task scheduling",
      ),
      ar: QuestionContent(
        question:
            "ما هي هياكل البيانات الرئيسية المتاحة في Dart ومتى تستخدم كل منها؟",
        answer: [
          StringContent(
            "توفر Dart عدة أنواع مجموعات مدمجة، كل منها محسّن لحالات استخدام محددة:",
          ),
          OrderedListContent(
            value: [
              "List: مجموعة مرتبة مع وصول مفهرس، تسمح بالتكرار. استخدمها عندما يهم الترتيب وقد تكون هناك عناصر متكررة. تدعم الطول الثابت والقابل للنمو.",
              "Set: مجموعة غير مرتبة من العناصر الفريدة فقط. استخدمها عندما يكون التفرد مطلوبًا والترتيب غير مهم (مثل مجموعة من الوسوم، معرفات فريدة).",
              "Map: أزواج مفتاح-قيمة مع بحث سريع O(1) بالمفتاح. استخدمها للبيانات الترابطية حيث تحتاج للعثور بسرعة على القيم بمفاتيحها.",
              "Queue: عمليات FIFO (الأول يدخل الأول يخرج). استخدمها لجدولة المهام أو الاجتياز بالعرض أولاً.",
              "LinkedHashSet: Set يحافظ على ترتيب الإدراج. يجمع تفرد Set مع الترتيب.",
              "HashMap/LinkedHashMap: ضمانات ترتيب تكرار مختلفة للـ Maps.",
            ],
          ),
          CodeContent(
            '''// List - مرتبة، تسمح بالتكرار
List<String> items = ['a', 'b', 'c', 'a'];
print(items[0]); // 'a'

// Set - عناصر فريدة فقط
Set<int> uniqueIds = {1, 2, 3, 1}; // {1, 2, 3}
uniqueIds.add(4);

// Map - أزواج مفتاح-قيمة
Map<String, User> userMap = {
  'id1': User(name: 'علي'),
  'id2': User(name: 'فاطمة'),
};
User? ali = userMap['id1']; // بحث سريع O(1)

// Queue - عمليات FIFO
import 'dart:collection';
Queue<Task> taskQueue = Queue();
taskQueue.add(Task('الأول'));
taskQueue.add(Task('الثاني'));
Task next = taskQueue.removeFirst(); // 'الأول'

// LinkedHashSet - فريد ومرتب
LinkedHashSet<String> orderedSet = LinkedHashSet();
orderedSet.addAll(['ج', 'أ', 'ب']);
// يحافظ على ترتيب الإدراج: ج، أ، ب''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "اختر بناءً على المتطلبات: الترتيب، التفرد، سرعة البحث.",
          "List لمعظم الحالات، Set للتفرد، Map للوصول القائم على المفتاح.",
          "استخدم const للمجموعات غير القابلة للتغيير عندما يكون ذلك ممكنًا لأداء أفضل.",
        ],
        bestUse:
            "List للمجموعات المرتبة، Set للعناصر الفريدة، Map للبحث السريع بالمفاتيح، Queue لجدولة المهام",
      ),
    ),
    pros: LocalizedValue(
      en: [
        "List: Fast indexed access O(1), maintains order, versatile",
        "Set: Ensures uniqueness, fast membership check O(1)",
        "Map: Fast key-based lookup O(1), flexible key-value storage",
      ],
      ar: [
        "List: وصول مفهرس سريع O(1)، يحافظ على الترتيب، متعدد الاستخدامات",
        "Set: يضمن التفرد، فحص عضوية سريع O(1)",
        "Map: بحث سريع بالمفتاح O(1)، تخزين مفتاح-قيمة مرن",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "List: Slow search O(n) without index, inefficient for uniqueness checks",
        "Set: No index access, doesn't maintain insertion order (unless LinkedHashSet)",
        "Map: Uses more memory than List, no guaranteed iteration order (unless LinkedHashMap)",
      ],
      ar: [
        "List: بحث بطيء O(n) بدون فهرس، غير فعال لفحوصات التفرد",
        "Set: لا يوجد وصول بالفهرس، لا يحافظ على ترتيب الإدراج (ما لم يكن LinkedHashSet)",
        "Map: يستخدم ذاكرة أكثر من List، لا ضمان لترتيب التكرار (ما لم يكن LinkedHashMap)",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Data Structure Usage:",
          value: [
            "List: Ordered collection, allows duplicates, access by index",
            "Set: Unique elements only, no duplicates, fast lookup",
            "Map: Key-value pairs, quick access by key",
            "Queue: FIFO operations, Stack: LIFO operations",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدام هياكل البيانات:",
          value: [
            "List: مجموعة مرتبة، تسمح بالتكرار، الوصول بالفهرس",
            "Set: عناصر فريدة فقط، بحث سريع",
            "Map: أزواج مفتاح-قيمة، وصول سريع بالمفتاح",
            "Queue: عمليات FIFO، Stack: عمليات LIFO",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "008",
    difficulty: .advanced,
    categories: [.stateManagement],
    type: .practical,
    tags: ["provider", "bloc", "riverpod", "setState", "stateManagement"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "Compare setState, Provider, BLoC, and Riverpod for state management.",
        answer: [
          StringContent(
            "Flutter offers multiple state management solutions, each suited for different app complexities:",
          ),
          OrderedListContent(
            value: [
              "setState: Built-in, simple, local state only. Causes the widget and its subtree to rebuild. Best for simple, isolated widget state.",
              "Provider: InheritedWidget wrapper, easy to learn, supports dependency injection. Less boilerplate than BLoC. Good for sharing state across the widget tree.",
              "BLoC (Business Logic Component): Stream-based, separates business logic from UI completely. More boilerplate but great for complex apps with heavy business logic.",
              "Riverpod: Provider 2.0, compile-time safety, no BuildContext needed for reading state. Better testing support, modern approach with no runtime errors.",
            ],
          ),
          CodeContent(
            '''// setState - Local state
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;
  
  void _increment() {
    setState(() => _count++);
  }
}

// Provider - Shared state
class CounterModel with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  
  void increment() {
    _count++;
    notifyListeners();
  }
}

// Usage
Provider.of<CounterModel>(context).increment();

// BLoC - Stream-based
class CounterBloc {
  final _counterController = StreamController<int>();
  Stream<int> get counterStream => _counterController.stream;
  
  void increment() => _counterController.sink.add(_count++);
  
  void dispose() => _counterController.close();
}

// Riverpod - Modern approach
final counterProvider = StateNotifierProvider<CounterNotifier, int>(
  (ref) => CounterNotifier(),
);

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);
  void increment() => state++;
}

// Usage
ref.read(counterProvider.notifier).increment();''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Choose based on app complexity: setState for simple local state, Provider for medium apps, BLoC for complex enterprise apps, Riverpod for modern type-safe approach.",
        ],
        bestUse:
            "setState for local widget state, Provider for simple global state, BLoC for complex business logic separation, Riverpod for new projects wanting type safety",
      ),
      ar: QuestionContent(
        question:
            "قارن بين setState و Provider و BLoC و Riverpod لإدارة الحالة.",
        answer: [
          StringContent(
            "يوفر Flutter حلول إدارة حالة متعددة، كل منها مناسب لتعقيدات تطبيق مختلفة:",
          ),
          OrderedListContent(
            value: [
              "setState: مدمج، بسيط، حالة محلية فقط. يسبب إعادة بناء الويدجت وشجرته الفرعية. الأفضل للحالة البسيطة والمعزولة للودجت.",
              "Provider: غلاف InheritedWidget، سهل التعلم، يدعم حقن التبعية. كود نمطي أقل من BLoC. جيد لمشاركة الحالة عبر شجرة الودجتس.",
              "BLoC (مكون منطق الأعمال): قائم على التدفقات، يفصل منطق الأعمال عن واجهة المستخدم بالكامل. المزيد من الكود النمطي لكنه رائع للتطبيقات المعقدة ذات منطق الأعمال الثقيل.",
              "Riverpod: Provider 2.0، أمان وقت الترجمة، لا حاجة لـ BuildContext لقراءة الحالة. دعم اختبار أفضل، نهج حديث بدون أخطاء وقت التشغيل.",
            ],
          ),
          CodeContent(
            '''// setState - حالة محلية
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;
  
  void _increment() {
    setState(() => _count++);
  }
}

// Provider - حالة مشتركة
class CounterModel with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  
  void increment() {
    _count++;
    notifyListeners();
  }
}

// الاستخدام
Provider.of<CounterModel>(context).increment();

// BLoC - قائم على التدفقات
class CounterBloc {
  final _counterController = StreamController<int>();
  Stream<int> get counterStream => _counterController.stream;
  
  void increment() => _counterController.sink.add(_count++);
  
  void dispose() => _counterController.close();
}

// Riverpod - نهج حديث
final counterProvider = StateNotifierProvider<CounterNotifier, int>(
  (ref) => CounterNotifier(),
);

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);
  void increment() => state++;
}

// الاستخدام
ref.read(counterProvider.notifier).increment();''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "اختر بناءً على تعقيد التطبيق: setState للحالة المحلية البسيطة، Provider للتطبيقات المتوسطة، BLoC للتطبيقات المؤسسية المعقدة، Riverpod للنهج الحديث الآمن من حيث النوع.",
        ],
        bestUse:
            "setState للحالة المحلية للودجت، Provider للحالة العامة البسيطة، BLoC لفصل منطق الأعمال المعقد، Riverpod للمشاريع الجديدة التي تريد أمان النوع",
      ),
    ),
    pros: LocalizedValue(
      en: [
        "setState: Simple, no dependencies, built-in",
        "Provider: Easy learning curve, good community, less boilerplate",
        "BLoC: Testable, scalable, clear separation of concerns",
        "Riverpod: Type-safe, no context dependency, excellent testing, compile-time errors",
      ],
      ar: [
        "setState: بسيط، بدون اعتمادات، مدمج",
        "Provider: منحنى تعلم سهل، مجتمع جيد، كود نمطي أقل",
        "BLoC: قابل للاختبار، قابل للتوسع، فصل واضح للاهتمامات",
        "Riverpod: آمن من حيث النوع، لا يعتمد على السياق، اختبار ممتاز، أخطاء وقت الترجمة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "setState: Doesn't scale well, hard to manage in large apps, tight coupling",
        "Provider: Can get verbose, runtime errors possible, context dependency",
        "BLoC: Steep learning curve, more boilerplate code, overkill for simple apps",
        "Riverpod: Newer (smaller ecosystem), different syntax from Provider, learning curve",
      ],
      ar: [
        "setState: لا يتوسع بشكل جيد، صعب الإدارة في التطبيقات الكبيرة، ربط محكم",
        "Provider: يمكن أن يصبح مطولاً، أخطاء وقت التشغيل ممكنة، يعتمد على السياق",
        "BLoC: منحنى تعلم أعلى، المزيد من الكود النمطي، مبالغة للتطبيقات البسيطة",
        "Riverpod: أحدث (نظام بيئي أصغر)، صيغة مختلفة عن Provider، منحنى تعلم",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "State Management Selection:",
          value: [
            "setState: Simple local state in single widget",
            "Provider: Shared state across widget tree, medium apps",
            "BLoC: Large apps, strict separation, reactive streams",
            "Riverpod: Modern apps, compile-time safety, better Provider",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار إدارة الحالة:",
          value: [
            "setState: حالة محلية بسيطة في عنصر واحد",
            "Provider: مشاركة الحالة عبر الشجرة، تطبيقات متوسطة",
            "BLoC: تطبيقات كبيرة، فصل صارم، تدفقات تفاعلية",
            "Riverpod: تطبيقات حديثة، أمان أفضل من Provider",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "009",
    difficulty: .intermediate,
    categories: [.dartBasics],
    type: .practical,
    tags: ["asyncAwait", "futures", "streams", "asynchronous"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "Explain Future, async/await, and Streams in Dart with examples.",
        answer: [
          StringContent(
            "Dart provides powerful asynchronous programming features to handle operations that take time without blocking the main thread:",
          ),
          OrderedListContent(
            value: [
              "Future: Represents a potential value or error that will be available at some time in the future. Used for single asynchronous operations that complete once.",
              "async/await: Syntactic sugar for working with Futures that makes asynchronous code look and behave like synchronous code, improving readability.",
              "Streams: Sequence of asynchronous events that can emit multiple values over time. Can be single-subscription (one listener) or broadcast (multiple listeners).",
            ],
          ),
          CodeContent(
            '''// Future - Single async result
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data loaded';
}

// async/await - Clean async syntax
void loadData() async {
  try {
    final data = await fetchData();
    print(data); // Prints after 2 seconds
  } catch (e) {
    print('Error: \$e');
  }
}

// Stream - Multiple values over time
Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // Emit value
  }
}

// Listening to streams
void main() {
  // Single subscription stream
  countStream().listen(
    (value) => print('Received: \$value'),
    onError: (e) => print('Error: \$e'),
    onDone: () => print('Stream closed'),
  );
  
  // Broadcast stream (multiple listeners)
  final broadcastStream = countStream().asBroadcastStream();
  broadcastStream.listen((v) => print('Listener 1: \$v'));
  broadcastStream.listen((v) => print('Listener 2: \$v'));
}

// Combining futures
Future<void> loadAll() async {
  final results = await Future.wait([
    fetchData(),
    fetchData(),
    fetchData(),
  ]);
  print('All loaded: \$results');
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Use Future for single async operations (API calls, database queries). Use Streams for continuous data (WebSocket, user events, sensors).",
          "Always handle errors with try-catch or catchError/onError.",
          "Streams must be closed when no longer needed to prevent memory leaks.",
        ],
        bestUse:
            "Future for HTTP requests and database queries; Streams for real-time data, event handling, and continuous user input",
      ),
      ar: QuestionContent(
        question: "اشرح Future و async/await و Streams في Dart مع أمثلة.",
        answer: [
          StringContent(
            "توفر Dart ميزات برمجة غير متزامنة قوية للتعامل مع العمليات التي تستغرق وقتًا دون حظر الخيط الرئيسي:",
          ),
          OrderedListContent(
            value: [
              "Future: يمثل قيمة محتملة أو خطأ سيكون متاحًا في وقت ما في المستقبل. يُستخدم للعمليات غير المتزامنة الواحدة التي تكتمل مرة واحدة.",
              "async/await: سكر نحوي للعمل مع Futures يجعل الكود غير المتزامن يبدو ويتصرف مثل الكود المتزامن، مما يحسن قابلية القراءة.",
              "Streams: تسلسل من الأحداث غير المتزامنة يمكن أن يصدر قيمًا متعددة مع مرور الوقت. يمكن أن يكون اشتراك واحد (مستمع واحد) أو بث (مستمعون متعددون).",
            ],
          ),
          CodeContent(
            '''// Future - نتيجة واحدة غير متزامنة
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'تم تحميل البيانات';
}

// async/await - صيغة غير متزامنة نظيفة
void loadData() async {
  try {
    final data = await fetchData();
    print(data); // يطبع بعد ثانيتين
  } catch (e) {
    print('خطأ: \$e');
  }
}

// Stream - قيم متعددة مع الوقت
Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // إصدار قيمة
  }
}

// الاستماع للتدفقات
void main() {
  // تدفق اشتراك واحد
  countStream().listen(
    (value) => print('استلام: \$value'),
    onError: (e) => print('خطأ: \$e'),
    onDone: () => print('أُغلق التدفق'),
  );
  
  // تدفق بث (مستمعون متعددون)
  final broadcastStream = countStream().asBroadcastStream();
  broadcastStream.listen((v) => print('مستمع 1: \$v'));
  broadcastStream.listen((v) => print('مستمع 2: \$v'));
}

// دمج Futures
Future<void> loadAll() async {
  final results = await Future.wait([
    fetchData(),
    fetchData(),
    fetchData(),
  ]);
  print('تم التحميل جميعًا: \$results');
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "استخدم Future للعمليات غير المتزامنة الواحدة (استدعاءات API، استعلامات قاعدة البيانات). استخدم Streams للبيانات المستمرة (WebSocket، أحداث المستخدم، المستشعرات).",
          "تعامل دائمًا مع الأخطاء باستخدام try-catch أو catchError/onError.",
          "يجب إغلاق التدفقات عندما لا تكون هناك حاجة إليها لمنع تسريبات الذاكرة.",
        ],
        bestUse:
            "Future لطلبات HTTP واستعلامات قاعدة البيانات؛ Streams للبيانات في الوقت الفعلي ومعالجة الأحداث وإدخال المستخدم المستمر",
      ),
    ),
    pros: LocalizedValue(
      en: [
        "Future: Clean syntax with async/await, easy error handling, composable",
        "Streams: Handle multiple values, reactive programming, powerful transformations",
      ],
      ar: [
        "Future: صيغة نظيفة مع async/await، معالجة أخطاء سهلة، قابل للتركيب",
        "Streams: معالجة قيم متعددة، برمجة تفاعلية، تحويلات قوية",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Future: Only one value, can't cancel once started (without extensions)",
        "Streams: More complex, need proper cleanup, memory leaks if not closed",
      ],
      ar: [
        "Future: قيمة واحدة فقط، لا يمكن الإلغاء بعد البدء (بدون إضافات)",
        "Streams: أكثر تعقيدًا، تحتاج تنظيف مناسب، تسريبات ذاكرة إذا لم تُغلق",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Async Operations:",
          value: [
            "Future: Single async operation (API call, file read)",
            "async/await: Cleaner async code syntax",
            "Stream: Multiple async events over time (real-time data)",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "العمليات غير المتزامنة:",
          value: [
            "Future: عملية واحدة غير متزامنة (استدعاء API، قراءة ملف)",
            "async/await: كتابة كود غير متزامن بشكل أوضح",
            "Stream: أحداث متعددة مع الوقت (بيانات فورية)",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "010",
    difficulty: .advanced,
    categories: [.performance],
    type: .practical,
    tags: ["optimization", "lazyLoading", "memoryManagement", "performance"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "What are the best practices for optimizing Flutter app performance?",
        answer: [
          StringContent(
            "Flutter performance optimization involves multiple strategies across widget building, rendering, and resource management:",
          ),
          OrderedListContent(
            value: [
              "Use const constructors for immutable widgets to prevent unnecessary rebuilds",
              "Implement ListView.builder for long lists (lazy loading) instead of ListView with all items",
              "Avoid unnecessary rebuilds with proper use of keys, const widgets, and RepaintBoundary",
              "Use cached_network_image package for efficient image loading and caching",
              "Minimize expensive operations in build() method - move them to initState or separate methods",
              "Profile with Flutter DevTools to identify performance bottlenecks",
              "Use compute() function for CPU-intensive tasks to run them in isolates",
              "Implement pagination for large data sets",
              "Optimize images (compress, resize, use appropriate formats like WebP)",
              "Use Impeller rendering engine (Flutter 3.10+) for better graphics performance",
              "Avoid deep widget trees - split into smaller widgets",
              "Use SliverList for complex scrollable layouts",
            ],
          ),
          CodeContent(
            '''// Use const constructors
const Text('Static text'); // Won't rebuild

// ListView.builder for performance
ListView.builder(
  itemCount: 10000,
  itemBuilder: (context, index) {
    return ListTile(title: Text('Item \$index'));
  },
);

// Avoid this (loads all items at once)
ListView(
  children: List.generate(10000, (i) => ListTile(title: Text('Item \$i'))),
);

// Use compute for heavy work
Future<List<Photo>> fetchPhotos() async {
  final response = await http.get(Uri.parse('...'));
  return await compute(parsePhotos, response.body);
}

List<Photo> parsePhotos(String responseBody) {
  // Heavy JSON parsing in isolate
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

// RepaintBoundary for complex widgets
RepaintBoundary(
  child: ComplexAnimatedWidget(),
);

// Avoid rebuilding entire tree
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Header(), // Won't rebuild
        DynamicContent(), // Only this rebuilds
      ],
    );
  }
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Always profile before optimizing - measure, don't guess. Use Flutter DevTools to identify bottlenecks.",
          "Premature optimization can harm code readability and maintainability.",
          "Target 60fps (16ms per frame) for smooth animations.",
        ],
        bestUse:
            "Apply these techniques in production apps with performance issues, especially with large lists or complex UI",
      ),
      ar: QuestionContent(
        question: "ما هي أفضل الممارسات لتحسين أداء تطبيق Flutter؟",
        answer: [
          StringContent(
            "يتضمن تحسين أداء Flutter استراتيجيات متعددة عبر بناء الودجتس والعرض وإدارة الموارد:",
          ),
          OrderedListContent(
            value: [
              "استخدم منشئات const للودجتس غير القابلة للتغيير لمنع عمليات إعادة البناء غير الضرورية",
              "نفذ ListView.builder للقوائم الطويلة (التحميل الكسول) بدلاً من ListView مع جميع العناصر",
              "تجنب عمليات إعادة البناء غير الضرورية باستخدام المفاتيح المناسبة وconst widgets وRepaintBoundary",
              "استخدم حزمة cached_network_image لتحميل وتخزين الصور بكفاءة",
              "قلل العمليات المكلفة في طريقة ()build - انقلها إلى initState أو طرق منفصلة",
              "راقب الأداء باستخدام Flutter DevTools لتحديد الاختناقات",
              "استخدم دالة ()compute للمهام المكثفة للمعالج لتشغيلها في عزلات",
              "نفذ الترقيم لمجموعات البيانات الكبيرة",
              "حسّن الصور (ضغط، تغيير الحجم، استخدم صيغ مناسبة مثل WebP)",
              "استخدم محرك العرض Impeller (Flutter 3.10+) لأداء رسومي أفضل",
              "تجنب أشجار الودجتس العميقة - قسمها إلى ودجتس أصغر",
              "استخدم SliverList للتخطيطات القابلة للتمرير المعقدة",
            ],
          ),
          CodeContent(
            '''// استخدم منشئات const
const Text('نص ثابت'); // لن يُعاد بناؤه

// ListView.builder للأداء
ListView.builder(
  itemCount: 10000,
  itemBuilder: (context, index) {
    return ListTile(title: Text('عنصر \$index'));
  },
);

// تجنب هذا (يحمل جميع العناصر مرة واحدة)
ListView(
  children: List.generate(10000, (i) => ListTile(title: Text('عنصر \$i'))),
);

// استخدم compute للعمل الثقيل
Future<List<Photo>> fetchPhotos() async {
  final response = await http.get(Uri.parse('...'));
  return await compute(parsePhotos, response.body);
}

List<Photo> parsePhotos(String responseBody) {
  // تحليل JSON ثقيل في عزلة
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

// RepaintBoundary للودجتس المعقدة
RepaintBoundary(
  child: ComplexAnimatedWidget(),
);

// تجنب إعادة بناء الشجرة بالكامل
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Header(), // لن يُعاد بناؤه
        DynamicContent(), // فقط هذا يُعاد بناؤه
      ],
    );
  }
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "راقب الأداء دائمًا قبل التحسين - قِس، لا تخمن. استخدم Flutter DevTools لتحديد الاختناقات.",
          "التحسين المبكر يمكن أن يضر بقابلية قراءة الكود وصيانته.",
          "استهدف 60fps (16ms لكل إطار) للرسوم المتحركة السلسة.",
        ],
        bestUse:
            "طبق هذه التقنيات في تطبيقات الإنتاج مع مشاكل الأداء، خاصة مع القوائم الكبيرة أو واجهة المستخدم المعقدة",
      ),
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Performance Optimization Usage:",
          value: [
            "ListView.builder: For long or infinite lists to enable lazy loading",
            "compute(): For heavy CPU tasks like large JSON parsing to keep UI responsive",
            "const Constructors: To minimize widget rebuilds and CPU cycles",
            "cached_network_image: For efficient image loading and persistence",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدام تحسين الأداء:",
          value: [
            "ListView.builder: للقوائم الطويلة أو اللانهائية لتمكين التحميل الكسول",
            "compute(): للمهام البرمجية الثقيلة مثل معالجة JSON الكبير للحفاظ على استجابة واجهة المستخدم",
            "منشئات const: لتقليل عمليات إعادة بناء العناصر ودورات المعالج",
            "cached_network_image: لتحميل الصور وتخزينها بكفاءة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "011",
    difficulty: .intermediate,
    categories: [.performance, .flutterBasics],
    type: .practical,
    tags: ["keys", "widgets", "optimization", "state"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What are Keys in Flutter and when should you use them?",
        answer: [
          StringContent(
            "Keys control how widgets are identified and replaced in the widget tree. They preserve widget state when widgets move around or when the tree structure changes.",
          ),
          OrderedListContent(
            title: "Types of Keys:",
            value: [
              "ValueKey: Uses a simple value (String, int) to identify widgets. Good for primitive identifiers.",
              "ObjectKey: Uses object identity/equality. Good when you have complex objects.",
              "UniqueKey: Creates a unique key every time. Forces widget to rebuild completely.",
              "GlobalKey: Allows accessing widget state from anywhere. Expensive - use sparingly.",
              "PageStorageKey: Preserves scroll position across page navigation.",
            ],
          ),
          OrderedListContent(
            title: "When to use Keys:",
            value: [
              "When preserving state in a list of StatefulWidgets that changes order (e.g., reorderable lists)",
              "To access a widget's state from a parent (GlobalKey with currentState)",
              "To force a widget to rebuild from scratch (UniqueKey)",
              "When widgets of the same type are swapped in the tree",
            ],
          ),
          CodeContent(
            '''// Problem: Swapping widgets without keys
class _MyState extends State<MyWidget> {
  List<Widget> items = [
    StatefulTile('A'),
    StatefulTile('B'),
  ];
  
  void swap() {
    setState(() {
      items = items.reversed.toList(); // State gets confused!
    });
  }
}

// Solution: Use keys to preserve state
class _MyState extends State<MyWidget> {
  List<Widget> items = [
    StatefulTile('A', key: ValueKey('A')),
    StatefulTile('B', key: ValueKey('B')),
  ];
  
  void swap() {
    setState(() {
      items = items.reversed.toList(); // State correctly preserved
    });
  }
}

// GlobalKey to access state
final key = GlobalKey<FormState>();

Form(
  key: key,
  child: TextFormField(...),
);

// Later, validate form
if (key.currentState?.validate() ?? false) {
  // Form is valid
}

// Force rebuild with UniqueKey
Widget build(BuildContext context) {
  return MyWidget(key: UniqueKey()); // New instance every build
}

// PageStorageKey for scroll position
ListView.builder(
  key: PageStorageKey<String>('myList'),
  itemBuilder: (context, index) => ...,
);''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Don't use keys unless necessary, especially GlobalKey as it's expensive.",
          "Most StatelessWidgets don't need keys.",
          "Keys are compared by type and value - same type and value means same widget.",
        ],
        bestUse:
            "Lists of stateful items that reorder, Form validation with GlobalKey, preserving scroll position",
      ),
      ar: QuestionContent(
        question: "ما هي المفاتيح (Keys) في Flutter ومتى يجب استخدامها؟",
        answer: [
          StringContent(
            "تتحكم المفاتيح في كيفية تحديد واستبدال الودجتس في شجرة الودجتس. تحافظ على حالة الودجت عندما تتحرك الودجتس أو عندما يتغير هيكل الشجرة.",
          ),
          OrderedListContent(
            title: "أنواع المفاتيح:",
            value: [
              "ValueKey: يستخدم قيمة بسيطة (String، int) لتحديد الودجتس. جيد للمعرفات البدائية.",
              "ObjectKey: يستخدم هوية/مساواة الكائن. جيد عندما يكون لديك كائنات معقدة.",
              "UniqueKey: ينشئ مفتاحًا فريدًا في كل مرة. يجبر الودجت على إعادة البناء بالكامل.",
              "GlobalKey: يسمح بالوصول إلى حالة الودجت من أي مكان. مكلف - استخدم بحذر.",
              "PageStorageKey: يحافظ على موضع التمرير عبر التنقل بين الصفحات.",
            ],
          ),
          OrderedListContent(
            title: "متى تستخدم المفاتيح:",
            value: [
              "عند الحفاظ على الحالة في قائمة من StatefulWidgets التي يتغير ترتيبها (مثل القوائم القابلة لإعادة الترتيب)",
              "للوصول إلى حالة الودجت من الأصل (GlobalKey مع currentState)",
              "لإجبار الودجت على إعادة البناء من الصفر (UniqueKey)",
              "عندما يتم تبديل الودجتس من نفس النوع في الشجرة",
            ],
          ),
          CodeContent(
            '''// مشكلة: تبديل الودجتس بدون مفاتيح
class _MyState extends State<MyWidget> {
  List<Widget> items = [
    StatefulTile('أ'),
    StatefulTile('ب'),
  ];
  
  void swap() {
    setState(() {
      items = items.reversed.toList(); // تتشوش الحالة!
    });
  }
}

// الحل: استخدم المفاتيح للحفاظ على الحالة
class _MyState extends State<MyWidget> {
  List<Widget> items = [
    StatefulTile('أ', key: ValueKey('أ')),
    StatefulTile('ب', key: ValueKey('ب')),
  ];
  
  void swap() {
    setState(() {
      items = items.reversed.toList(); // تُحفظ الحالة بشكل صحيح
    });
  }
}

// GlobalKey للوصول إلى الحالة
final key = GlobalKey<FormState>();

Form(
  key: key,
  child: TextFormField(...),
);

// لاحقًا، التحقق من صحة النموذج
if (key.currentState?.validate() ?? false) {
  // النموذج صالح
}

// إجبار إعادة البناء مع UniqueKey
Widget build(BuildContext context) {
  return MyWidget(key: UniqueKey()); // مثيل جديد في كل بناء
}

// PageStorageKey لموضع التمرير
ListView.builder(
  key: PageStorageKey<String>('قائمتي'),
  itemBuilder: (context, index) => ...,
);''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "لا تستخدم المفاتيح إلا إذا لزم الأمر، خاصة GlobalKey لأنه مكلف.",
          "معظم StatelessWidgets لا تحتاج إلى مفاتيح.",
          "تتم مقارنة المفاتيح حسب النوع والقيمة - نفس النوع والقيمة يعني نفس الودجت.",
        ],
        bestUse:
            "قوائم العناصر ذات الحالة التي يُعاد ترتيبها، التحقق من النموذج مع GlobalKey، الحفاظ على موضع التمرير",
      ),
    ),
    pros: LocalizedValue(
      en: [
        "Preserves widget state correctly during reordering",
        "Prevents unexpected UI behavior in dynamic lists",
        "GlobalKey allows parent-to-child state access",
      ],
      ar: [
        "يحافظ على حالة الودجت بشكل صحيح أثناء إعادة الترتيب",
        "يمنع سلوك واجهة المستخدم غير المتوقع في القوائم الديناميكية",
        "GlobalKey يسمح بالوصول من الأب إلى حالة الابن",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Often unnecessary - adds complexity if overused",
        "GlobalKey is expensive - impacts performance",
        "Can complicate code readability if used excessively",
      ],
      ar: [
        "غالبًا غير ضروري - يضيف تعقيدًا إذا تم الإفراط في الاستخدام",
        "GlobalKey مكلف - يؤثر على الأداء",
        "يمكن أن يعقد قابلية قراءة الكود إذا استُخدم بشكل مفرط",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Keys when:",
          value: [
            "Preserving state in lists with reordering/removal",
            "Distinguishing widgets of same type at same level",
            "Maintaining state across widget rebuilds",
            "Working with animated lists or complex collections",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Keys عندما:",
          value: [
            "الحفاظ على الحالة في القوائم عند إعادة الترتيب",
            "التمييز بين عناصر من نفس النوع",
            "الحفاظ على الحالة عند إعادة البناء",
            "العمل مع القوائم المتحركة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "012",
    difficulty: .intermediate,
    categories: [.flutterBasics],
    type: .theoretical,
    tags: ["lifecycle", "appLifecycle", "widgetsBinding", "state"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "Explain the Flutter Application Lifecycle.",
        answer: [
          StringContent(
            "The Flutter app lifecycle tracks the app's state as a whole (not individual widgets). Monitor it using WidgetsBindingObserver and didChangeAppLifecycleState callback.",
          ),
          OrderedListContent(
            title: "App Lifecycle States:",
            value: [
              "detached: App is not hosted by any Flutter engine view. Either starting up or shutting down completely.",
              "inactive: App is in foreground but not receiving user input. Occurs during phone calls, when showing system overlays, or in split-screen transitions.",
              "paused (was 'paused'): App is in background and not visible to user. User navigated to home screen or another app.",
              "resumed: App is visible and responding to user input. This is the normal running state.",
              "hidden: App is hidden from user view but running in background (iOS/macOS specific).",
            ],
          ),
          CodeContent(
            '''class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }
  
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
  
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    
    switch (state) {
      case AppLifecycleState.resumed:
        print('App resumed - refresh data');
        // Refresh data, resume animations
        break;
      case AppLifecycleState.inactive:
        print('App inactive - pause animations');
        // Pause animations, timers
        break;
      case AppLifecycleState.paused:
        print('App paused - save state');
        // Save user data, stop expensive operations
        _saveUserProgress();
        break;
      case AppLifecycleState.detached:
        print('App detached - cleanup');
        // Final cleanup
        break;
      case AppLifecycleState.hidden:
        print('App hidden');
        break;
    }
  }
  
  void _saveUserProgress() {
    // Save important data to persistent storage
  }
  
  @override
  Widget build(BuildContext context) => MaterialApp(home: HomeScreen());
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Crucial for handling resources like camera, location services, or saving progress when user leaves the app.",
          "Don't forget to remove the observer in dispose() to prevent memory leaks.",
        ],
        bestUse:
            "Saving data when app pauses, stopping animations/timers in background, releasing resources when app is not visible",
      ),
      ar: QuestionContent(
        question: "اشرح دورة حياة تطبيق Flutter.",
        answer: [
          StringContent(
            "تتتبع دورة حياة تطبيق Flutter حالة التطبيق ككل (وليس الودجتس الفردية). راقبها باستخدام WidgetsBindingObserver ودالة رد الاتصال didChangeAppLifecycleState.",
          ),
          OrderedListContent(
            title: "حالات دورة حياة التطبيق:",
            value: [
              "detached: التطبيق غير مستضاف بواسطة أي عرض لمحرك Flutter. إما يبدأ أو يُغلق بالكامل.",
              "inactive: التطبيق في المقدمة ولكنه لا يتلقى إدخال المستخدم. يحدث أثناء المكالمات الهاتفية، عند عرض تراكبات النظام، أو في انتقالات الشاشة المقسمة.",
              "paused (كان 'paused'): التطبيق في الخلفية وغير مرئي للمستخدم. انتقل المستخدم إلى الشاشة الرئيسية أو تطبيق آخر.",
              "resumed: التطبيق مرئي ويستجيب لإدخال المستخدم. هذه هي حالة التشغيل العادية.",
              "hidden: التطبيق مخفي عن عرض المستخدم ولكنه يعمل في الخلفية (خاص بـ iOS/macOS).",
            ],
          ),
          CodeContent(
            '''class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }
  
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
  
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    
    switch (state) {
      case AppLifecycleState.resumed:
        print('استؤنف التطبيق - تحديث البيانات');
        // تحديث البيانات، استئناف الرسوم المتحركة
        break;
      case AppLifecycleState.inactive:
        print('التطبيق غير نشط - إيقاف الرسوم المتحركة');
        // إيقاف الرسوم المتحركة، المؤقتات
        break;
      case AppLifecycleState.paused:
        print('التطبيق متوقف - حفظ الحالة');
        // حفظ بيانات المستخدم، إيقاف العمليات المكلفة
        _saveUserProgress();
        break;
      case AppLifecycleState.detached:
        print('التطبيق منفصل - التنظيف');
        // تنظيف نهائي
        break;
      case AppLifecycleState.hidden:
        print('التطبيق مخفي');
        break;
    }
  }
  
  void _saveUserProgress() {
    // حفظ البيانات المهمة في التخزين الدائم
  }
  
  @override
  Widget build(BuildContext context) => MaterialApp(home: HomeScreen());
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "حاسم للتعامل مع الموارد مثل الكاميرا، خدمات الموقع، أو حفظ التقدم عند مغادرة المستخدم للتطبيق.",
          "لا تنسى إزالة المراقب في ()dispose لمنع تسريبات الذاكرة.",
        ],
        bestUse:
            "حفظ البيانات عند توقف التطبيق، إيقاف الرسوم المتحركة/المؤقتات في الخلفية، تحرير الموارد عندما لا يكون التطبيق مرئيًا",
      ),
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "App Lifecycle Usage:",
          value: [
            "paused: Save user progress or sensitive data before app is backgrounded",
            "resumed: Refresh real-time data or restart paused animations/timers",
            "inactive: Pause animations or heavy visual effects during overlays",
            "detached: Final cleanup of non-persistent resources",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدام دورة حياة التطبيق:",
          value: [
            "paused: حفظ تقدم المستخدم أو البيانات الحساسة قبل ذهاب التطبيق للخلفية",
            "resumed: تحديث البيانات في الوقت الفعلي أو إعادة تشغيل الحركات المتوقفة",
            "inactive: إيقاف الرسوم المتحركة مؤقتًا أثناء ظهور تراكبات النظام",
            "detached: التنظيف النهائي للموارد غير الدائمة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "013",
    difficulty: .intermediate,
    categories: [.testing],
    type: .practical,
    tags: ["unitTesting", "widgetTesting", "integrationTesting", "testing"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "What are the three types of tests in Flutter and how do they differ?",
        answer: [
          StringContent(
            "Flutter provides three types of tests, each serving different purposes in ensuring app quality:",
          ),
          OrderedListContent(
            value: [
              "Unit Tests: Test individual functions, methods, or classes in isolation. Very fast (milliseconds). No UI involved. Focus on business logic and data models. Run using 'flutter test'.",
              "Widget Tests: Test individual widgets or widget trees. Verify UI layout, rendering, and user interactions. Use WidgetTester for simulated interactions. Medium speed (seconds). Run in a simulated environment.",
              "Integration Tests: Test complete app or large feature flows end-to-end. Run on real devices or emulators. Verify entire user journeys (e.g., login → home → details). Slowest (minutes). Most comprehensive but expensive to maintain.",
            ],
          ),
          CodeContent(
            '''// UNIT TEST - Testing business logic
import 'package:test/test.dart';

void main() {
  test('Calculator add function', () {
    final calculator = Calculator();
    expect(calculator.add(2, 3), equals(5));
    expect(calculator.add(-1, 1), equals(0));
  });
  
  test('User model validation', () {
    final user = User(email: '', age: -1);
    expect(user.isValid(), isFalse);
    
    final validUser = User(email: 'test@test.com', age: 25);
    expect(validUser.isValid(), isTrue);
  });
}

// WIDGET TEST - Testing UI
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    
    // Verify initial state
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    
    // Tap increment button and trigger rebuild
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    
    // Verify updated state
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

// INTEGRATION TEST - Testing full flow
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  
  testWidgets('Complete login flow', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    
    // Navigate to login
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();
    
    // Enter credentials
    await tester.enterText(find.byKey(Key('email')), 'test@test.com');
    await tester.enterText(find.byKey(Key('password')), 'password123');
    
    // Submit login
    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle(Duration(seconds: 3));
    
    // Verify navigation to home screen
    expect(find.text('Welcome'), findsOneWidget);
  });
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Follow the testing pyramid: Many unit tests (70%), fewer widget tests (20%), very few integration tests (10%).",
          "Unit tests are fastest to write and run - start here.",
          "Integration tests are most realistic but slowest and most brittle.",
        ],
        bestUse:
            "Unit tests for all business logic, Widget tests for critical UI components, Integration tests for essential user flows (login, checkout)",
      ),
      ar: QuestionContent(
        question: "ما هي أنواع الاختبارات الثلاثة في Flutter وكيف تختلف؟",
        answer: [
          StringContent(
            "يوفر Flutter ثلاثة أنواع من الاختبارات، كل منها يخدم أغراضًا مختلفة في ضمان جودة التطبيق:",
          ),
          OrderedListContent(
            value: [
              "اختبارات الوحدة: اختبار الدوال أو الطرق أو الفئات الفردية بمعزل. سريعة جدًا (ميلي ثانية). لا واجهة مستخدم. التركيز على منطق الأعمال ونماذج البيانات. التشغيل باستخدام 'flutter test'.",
              "اختبارات الودجت: اختبار ودجتس فردية أو أشجار ودجتس. التحقق من تخطيط واجهة المستخدم، العرض، والتفاعلات. استخدام WidgetTester للتفاعلات المحاكاة. سرعة متوسطة (ثواني). التشغيل في بيئة محاكاة.",
              "اختبارات التكامل: اختبار التطبيق الكامل أو تدفقات الميزات الكبيرة من البداية إلى النهاية. التشغيل على أجهزة حقيقية أو محاكيات. التحقق من رحلات المستخدم الكاملة (مثل تسجيل الدخول → الصفحة الرئيسية → التفاصيل). الأبطأ (دقائق). الأكثر شمولية ولكن مكلفة للصيانة.",
            ],
          ),
          CodeContent(
            '''// اختبار الوحدة - اختبار منطق الأعمال
import 'package:test/test.dart';

void main() {
  test('دالة جمع الآلة الحاسبة', () {
    final calculator = Calculator();
    expect(calculator.add(2, 3), equals(5));
    expect(calculator.add(-1, 1), equals(0));
  });
  
  test('التحقق من نموذج المستخدم', () {
    final user = User(email: '', age: -1);
    expect(user.isValid(), isFalse);
    
    final validUser = User(email: 'test@test.com', age: 25);
    expect(validUser.isValid(), isTrue);
  });
}

// اختبار الودجت - اختبار واجهة المستخدم
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('اختبار زيادة العداد', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    
    // التحقق من الحالة الأولية
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
    
    // النقر على زر الزيادة وتفعيل إعادة البناء
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    
    // التحقق من الحالة المحدثة
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

// اختبار التكامل - اختبار التدفق الكامل
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  
  testWidgets('تدفق تسجيل الدخول الكامل', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    
    // الانتقال إلى تسجيل الدخول
    await tester.tap(find.text('تسجيل الدخول'));
    await tester.pumpAndSettle();
    
    // إدخال بيانات الاعتماد
    await tester.enterText(find.byKey(Key('email')), 'test@test.com');
    await tester.enterText(find.byKey(Key('password')), 'password123');
    
    // إرسال تسجيل الدخول
    await tester.tap(find.text('إرسال'));
    await tester.pumpAndSettle(Duration(seconds: 3));
    
    // التحقق من الانتقال إلى الشاشة الرئيسية
    expect(find.text('مرحبًا'), findsOneWidget);
  });
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "اتبع هرم الاختبار: العديد من اختبارات الوحدة (70%)، عدد أقل من اختبارات الودجت (20%)، عدد قليل جدًا من اختبارات التكامل (10%).",
          "اختبارات الوحدة هي الأسرع في الكتابة والتشغيل - ابدأ من هنا.",
          "اختبارات التكامل هي الأكثر واقعية ولكنها الأبطأ والأكثر هشاشة.",
        ],
        bestUse:
            "اختبارات الوحدة لجميع منطق الأعمال، اختبارات الودجت لمكونات واجهة المستخدم الحرجة، اختبارات التكامل لتدفقات المستخدم الأساسية (تسجيل الدخول، الدفع)",
      ),
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Testing Selection:",
          value: [
            "Unit Tests: Critical business logic, value calculations, utility functions",
            "Widget Tests: Reusable components, specific UI layouts, form interactions",
            "Integration Tests: Critical user journeys, third-party service integration",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار الاختبارات:",
          value: [
            "اختبارات الوحدة: منطق الأعمال الحرج، حسابات القيم، الدوال المساعدة",
            "اختبارات الودجت: المكونات القابلة لإعادة الاستخدام، تخطيطات واجهة المستخدم، تفاعلات النماذج",
            "اختبارات التكامل: رحلات المستخدم الحرجة، تكامل خدمات الطرف الثالث",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "014",
    difficulty: .intermediate,
    categories: [.performance, .modernFeatures],
    type: .theoretical,
    tags: ["rendering", "impeller", "skia", "performance"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "What is Impeller and how does it improve Flutter performance?",
        answer: [
          StringContent(
            "Impeller is Flutter's new rendering engine designed to replace Skia. It eliminates shader compilation jank by pre-compiling shaders at build time (AOT) instead of runtime.",
          ),
          OrderedListContent(
            title: "Key improvements:",
            value: [
              "Pre-compiled shaders: No more first-frame jank from runtime shader compilation",
              "Platform-optimized: Uses Metal on iOS/macOS and Vulkan on Android for better GPU utilization",
              "Predictable performance: Consistent frame times from the first frame",
              "Modern graphics APIs: Built specifically for modern GPU architectures",
              "Reduced dropped frames: Smoother animations, especially on first run",
            ],
          ),
          OrderedListContent(
            title: "Status:",
            value: [
              "iOS/macOS: Default since Flutter 3.10 (stable)",
              "Android: Preview/opt-in (becoming default in future releases)",
              "Windows/Linux: In development",
            ],
          ),
          CodeContent(
            '''// No code changes needed - Impeller is enabled by default on iOS

// To explicitly enable on Android (in android/app/src/main/AndroidManifest.xml):
<application>
  <meta-data
    android:name="io.flutter.embedding.android.EnableImpeller"
    android:value="true" />
</application>

// To disable Impeller (if needed for compatibility):
<meta-data
  android:name="io.flutter.embedding.android.EnableImpeller"
  android:value="false" />

// Check if Impeller is running (for debugging):
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint('Impeller enabled: \${WidgetsBinding.instance.renderView != null}');
  runApp(MyApp());
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Impeller is a major performance milestone for Flutter, especially for complex animations and graphics.",
          "Some advanced features may not yet be fully supported - check compatibility for custom shaders.",
        ],
        bestUse:
            "Default on iOS now, opt-in for Android when you need high-performance graphics and smooth animations",
      ),
      ar: QuestionContent(
        question: "ما هو Impeller وكيف يحسن أداء Flutter؟",
        answer: [
          StringContent(
            "Impeller هو محرك العرض الجديد لـ Flutter المصمم ليحل محل Skia. يلغي تقطع تجميع التظليل عن طريق التجميع المسبق للتظليل في وقت البناء (AOT) بدلاً من وقت التشغيل.",
          ),
          OrderedListContent(
            title: "التحسينات الرئيسية:",
            value: [
              "تظليلات مجمعة مسبقًا: لا مزيد من تقطع الإطار الأول من تجميع التظليل في وقت التشغيل",
              "محسّن للمنصة: يستخدم Metal على iOS/macOS و Vulkan على Android لاستخدام أفضل لـ GPU",
              "أداء يمكن التنبؤ به: أوقات إطار متسقة من الإطار الأول",
              "واجهات برمجة رسومية حديثة: مبني خصيصًا لبنيات GPU الحديثة",
              "تقليل الإطارات المسقطة: رسوم متحركة أكثر سلاسة، خاصة في التشغيل الأول",
            ],
          ),
          OrderedListContent(
            title: "الحالة:",
            value: [
              "iOS/macOS: افتراضي منذ Flutter 3.10 (مستقر)",
              "Android: معاينة/اختياري (سيصبح افتراضيًا في الإصدارات المستقبلية)",
              "Windows/Linux: قيد التطوير",
            ],
          ),
          CodeContent(
            '''// لا حاجة لتغييرات في الكود - Impeller مفعل افتراضيًا على iOS

// للتفعيل صراحةً على Android (في android/app/src/main/AndroidManifest.xml):
<application>
  <meta-data
    android:name="io.flutter.embedding.android.EnableImpeller"
    android:value="true" />
</application>

// لتعطيل Impeller (إذا لزم الأمر للتوافق):
<meta-data
  android:name="io.flutter.embedding.android.EnableImpeller"
  android:value="false" />

// التحقق من تشغيل Impeller (لتصحيح الأخطاء):
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  debugPrint('Impeller مفعّل: \${WidgetsBinding.instance.renderView != null}');
  runApp(MyApp());
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Impeller هو معلم أداء رئيسي لـ Flutter، خاصة للرسوم المتحركة والرسومات المعقدة.",
          "بعض الميزات المتقدمة قد لا تكون مدعومة بالكامل بعد - تحقق من التوافق للتظليلات المخصصة.",
        ],
        bestUse:
            "افتراضي على iOS الآن، اختياري لـ Android عندما تحتاج إلى رسومات عالية الأداء ورسوم متحركة سلسة",
      ),
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent(
          "Use Impeller when targeting iOS or newer Android versions for better performance, reduced jank, and consistent rendering. It's the default rendering engine replacing Skia in newer Flutter versions.",
        ),
      ],
      ar: [
        StringContent(
          "استخدم Impeller عند استهداف iOS أو إصدارات Android الحديثة للحصول على أداء أفضل وسلاسة أكثر. إنه محرك العرض الافتراضي الذي يحل محل Skia.",
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "015",
    difficulty: .basic,
    categories: [.networking],
    type: .practical,
    tags: ["http", "dio", "restApi", "networking"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "How to handle networking in Flutter? Difference between http and dio packages?",
        answer: [
          StringContent(
            "Flutter provides multiple options for making HTTP requests. The two most popular packages are:",
          ),
          OrderedListContent(
            value: [
              "'http' package: Official, lightweight, simple API. Good for straightforward HTTP requests. Minimal features - just the basics.",
              "'dio' package: Powerful third-party package with advanced features. Includes interceptors for global configuration, automatic request/response transformation, file uploads/downloads, request cancellation, and comprehensive error handling.",
            ],
          ),
          OrderedListContent(
            title: "When to use each:",
            value: [
              "Use 'http' for: Simple apps, prototypes, basic REST API calls, when you want minimal dependencies",
              "Use 'dio' for: Production apps, apps needing authentication token management, file uploads, request retries, logging, or apps with complex networking requirements",
            ],
          ),
          CodeContent(
            '''// Using HTTP package (simple)
import 'package:http/http.dart' as http;

Future<User> fetchUser() async {
  final response = await http.get(
    Uri.parse('https://api.example.com/user/1'),
  );
  
  if (response.statusCode == 200) {
    return User.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load user');
  }
}

// Using Dio package (advanced)
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.example.com',
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 3),
    ),
  );
  
  ApiService() {
    // Add interceptors for logging
    _dio.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      error: true,
    ));
    
    // Add auth token to all requests
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] = 'Bearer \$token';
        return handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          // Refresh token and retry
          await refreshToken();
          return handler.resolve(await _retry(error.requestOptions));
        }
        return handler.next(error);
      },
    ));
  }
  
  Future<User> fetchUser(String id) async {
    try {
      final response = await _dio.get('/user/\$id');
      return User.fromJson(response.data);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        throw Exception('Connection timeout');
      } else if (e.type == DioExceptionType.badResponse) {
        throw Exception('Server error: \${e.response?.statusCode}');
      }
      rethrow;
    }
  }
  
  // File upload with progress
  Future<void> uploadFile(String path) async {
    await _dio.post(
      '/upload',
      data: FormData.fromMap({
        'file': await MultipartFile.fromFile(path),
      }),
      onSendProgress: (sent, total) {
        print('Upload progress: \${(sent / total * 100).toStringAsFixed(0)}%');
      },
    );
  }
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Always handle network errors properly - consider connectivity issues, timeouts, and server errors.",
          "Use try-catch blocks or .catchError() for error handling.",
          "For production apps, Dio's interceptors are invaluable for token refresh and logging.",
        ],
        bestUse:
            "Use Dio for enterprise apps needing auth token refresh, automatic retries, logging, and file uploads. Use http for simple prototypes.",
      ),
      ar: QuestionContent(
        question:
            "كيفية التعامل مع الشبكات في Flutter؟ الفرق بين حزمتي http و dio؟",
        answer: [
          StringContent(
            "يوفر Flutter خيارات متعددة لإجراء طلبات HTTP. الحزمتان الأكثر شعبية هما:",
          ),
          OrderedListContent(
            value: [
              "حزمة 'http': رسمية، خفيفة الوزن، واجهة برمجة بسيطة. جيدة لطلبات HTTP المباشرة. ميزات قليلة - فقط الأساسيات.",
              "حزمة 'dio': حزمة طرف ثالث قوية مع ميزات متقدمة. تشمل معترضات للتكوين العالمي، تحويل تلقائي للطلب/الاستجابة، تحميل/تنزيل الملفات، إلغاء الطلبات، ومعالجة أخطاء شاملة.",
            ],
          ),
          OrderedListContent(
            title: "متى تستخدم كل منهما:",
            value: [
              "استخدم 'http' لـ: التطبيقات البسيطة، النماذج الأولية، استدعاءات REST API الأساسية، عندما تريد الحد الأدنى من التبعيات",
              "استخدم 'dio' لـ: تطبيقات الإنتاج، التطبيقات التي تحتاج إدارة رمز المصادقة، تحميل الملفات، إعادة محاولة الطلبات، التسجيل، أو التطبيقات ذات متطلبات الشبكات المعقدة",
            ],
          ),
          CodeContent(
            '''// استخدام حزمة HTTP (بسيط)
import 'package:http/http.dart' as http;

Future<User> fetchUser() async {
  final response = await http.get(
    Uri.parse('https://api.example.com/user/1'),
  );
  
  if (response.statusCode == 200) {
    return User.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('فشل تحميل المستخدم');
  }
}

// استخدام حزمة Dio (متقدم)
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.example.com',
      connectTimeout: Duration(seconds: 5),
      receiveTimeout: Duration(seconds: 3),
    ),
  );
  
  ApiService() {
    // إضافة معترضات للتسجيل
    _dio.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      error: true,
    ));
    
    // إضافة رمز المصادقة لجميع الطلبات
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] = 'Bearer \$token';
        return handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          // تحديث الرمز وإعادة المحاولة
          await refreshToken();
          return handler.resolve(await _retry(error.requestOptions));
        }
        return handler.next(error);
      },
    ));
  }
  
  Future<User> fetchUser(String id) async {
    try {
      final response = await _dio.get('/user/\$id');
      return User.fromJson(response.data);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        throw Exception('انتهت مهلة الاتصال');
      } else if (e.type == DioExceptionType.badResponse) {
        throw Exception('خطأ في الخادم: \${e.response?.statusCode}');
      }
      rethrow;
    }
  }
  
  // تحميل ملف مع التقدم
  Future<void> uploadFile(String path) async {
    await _dio.post(
      '/upload',
      data: FormData.fromMap({
        'file': await MultipartFile.fromFile(path),
      }),
      onSendProgress: (sent, total) {
        print('تقدم التحميل: \${(sent / total * 100).toStringAsFixed(0)}%');
      },
    );
  }
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "تعامل دائمًا مع أخطاء الشبكة بشكل صحيح - ضع في اعتبارك مشاكل الاتصال، انتهاء المهلة، وأخطاء الخادم.",
          "استخدم كتل try-catch أو ()catchError. لمعالجة الأخطاء.",
          "لتطبيقات الإنتاج، معترضات Dio لا تقدر بثمن لتحديث الرمز والتسجيل.",
        ],
        bestUse:
            "استخدم Dio لتطبيقات المؤسسات التي تحتاج تحديث رمز المصادقة، إعادة المحاولة التلقائية، التسجيل، وتحميل الملفات. استخدم http للنماذج الأولية البسيطة.",
      ),
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Networking Package Selection:",
          value: [
            "http: Simple requests, basic GET/POST, small projects",
            "dio: Advanced features (interceptors, file upload, retries), production apps",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار مكتبة الشبكة:",
          value: [
            "http: طلبات بسيطة، مشاريع صغيرة",
            "dio: ميزات متقدمة (معترضات، رفع ملفات)، تطبيقات إنتاجية",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "016",
    difficulty: .basic,
    categories: [.database],
    type: .practical,
    tags: ["sqlite", "hive", "sharedPreferences", "persistence", "database"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "Comparison of local database options: SharedPreferences vs SQLite vs Hive.",
        answer: [
          StringContent(
            "Flutter offers several local storage solutions, each optimized for different use cases:",
          ),
          OrderedListContent(
            value: [
              "SharedPreferences: Simple key-value storage backed by platform-specific implementations (UserDefaults on iOS, SharedPreferences on Android). Best for small amounts of primitive data like settings, flags, and simple app state. NOT suitable for large data or complex queries.",
              "SQLite (via sqflite): Full-featured relational database with SQL support. Excellent for structured data with relationships, complex queries, and large datasets. Industry-standard, reliable, and well-tested.",
              "Hive: NoSQL key-value database written in pure Dart. Extremely fast, supports encryption, and works across all platforms without native dependencies. Great for storing Dart objects directly. Easy setup and excellent performance.",
            ],
          ),
          CodeContent(
            '''// SharedPreferences - Simple key-value
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveSettings() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isDarkMode', true);
  await prefs.setString('username', 'john_doe');
  await prefs.setInt('loginCount', 5);
}

Future<bool> loadDarkMode() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isDarkMode') ?? false;
}

// SQLite - Relational database
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;
  
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }
  
  Future<Database> initDB() async {
    return await openDatabase(
      'app_database.db',
      version: 1,
      onCreate: (db, version) async {
        await db.execute(\'''
          CREATE TABLE users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            email TEXT UNIQUE NOT NULL,
            age INTEGER
          )
        \''');
      },
    );
  }
  
  Future<User> getUser(int id) async {
    final db = await database;
    final results = await db.query(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );
    return User.fromMap(results.first);
  }
  
  Future<List<User>> getUsersOver18() async {
    final db = await database;
    final results = await db.query(
      'users',
      where: 'age > ?',
      whereArgs: [18],
    );
    return results.map((m) => User.fromMap(m)).toList();
  }
}

// Hive - Fast NoSQL
import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(0)
  String name;
  
  @HiveField(1)
  String email;
  
  @HiveField(2)
  int age;
  
  User({required this.name, required this.email, required this.age});
}

// Initialize Hive
await Hive.initFlutter();
Hive.registerAdapter(UserAdapter());

// Open box
final box = await Hive.openBox<User>('users');

// Store
final user = User(name: 'Alice', email: 'alice@test.com', age: 25);
await box.put('user1', user);

// Retrieve
final retrievedUser = box.get('user1');

// Query
final adults = box.values.where((user) => user.age >= 18).toList();''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Isar is a newer, faster alternative to Hive (by same author) with full query support and better performance. Consider it for new projects.",
          "For encrypted local storage, use flutter_secure_storage for sensitive data like tokens.",
        ],
        bestUse:
            "SharedPreferences for app settings and flags, SQLite for complex relational data and queries, Hive/Isar for fast object storage and offline-first apps",
      ),
      ar: QuestionContent(
        question:
            "مقارنة خيارات قواعد البيانات المحلية: SharedPreferences vs SQLite vs Hive.",
        answer: [
          StringContent(
            "يوفر Flutter عدة حلول تخزين محلي، كل منها محسّن لحالات استخدام مختلفة:",
          ),
          OrderedListContent(
            value: [
              "SharedPreferences: تخزين بسيط مفتاح-قيمة مدعوم بتنفيذات خاصة بالمنصة (UserDefaults على iOS، SharedPreferences على Android). الأفضل لكميات صغيرة من البيانات البدائية مثل الإعدادات والأعلام وحالة التطبيق البسيطة. غير مناسب للبيانات الكبيرة أو الاستعلامات المعقدة.",
              "SQLite (عبر sqflite): قاعدة بيانات علائقية كاملة الميزات مع دعم SQL. ممتازة للبيانات المنظمة ذات العلاقات، الاستعلامات المعقدة، ومجموعات البيانات الكبيرة. معيار الصناعة، موثوقة، ومختبرة جيدًا.",
              "Hive: قاعدة بيانات NoSQL مفتاح-قيمة مكتوبة بلغة Dart النقية. سريعة للغاية، تدعم التشفير، وتعمل عبر جميع المنصات دون تبعيات أصلية. رائعة لتخزين كائنات Dart مباشرة. إعداد سهل وأداء ممتاز.",
            ],
          ),
          CodeContent(
            '''// SharedPreferences - مفتاح-قيمة بسيط
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveSettings() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isDarkMode', true);
  await prefs.setString('username', 'علي');
  await prefs.setInt('loginCount', 5);
}

Future<bool> loadDarkMode() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('isDarkMode') ?? false;
}

// SQLite - قاعدة بيانات علائقية
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;
  
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }
  
  Future<Database> initDB() async {
    return await openDatabase(
      'app_database.db',
      version: 1,
      onCreate: (db, version) async {
        await db.execute(\'''
          CREATE TABLE users (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            email TEXT UNIQUE NOT NULL,
            age INTEGER
          )
        \''');
      },
    );
  }
  
  Future<User> getUser(int id) async {
    final db = await database;
    final results = await db.query(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );
    return User.fromMap(results.first);
  }
  
  Future<List<User>> getUsersOver18() async {
    final db = await database;
    final results = await db.query(
      'users',
      where: 'age > ?',
      whereArgs: [18],
    );
    return results.map((m) => User.fromMap(m)).toList();
  }
}

// Hive - NoSQL سريع
import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(0)
  String name;
  
  @HiveField(1)
  String email;
  
  @HiveField(2)
  int age;
  
  User({required this.name, required this.email, required this.age});
}

// تهيئة Hive
await Hive.initFlutter();
Hive.registerAdapter(UserAdapter());

// فتح الصندوق
final box = await Hive.openBox<User>('users');

// التخزين
final user = User(name: 'علي', email: 'ali@test.com', age: 25);
await box.put('user1', user);

// الاسترجاع
final retrievedUser = box.get('user1');

// الاستعلام
final adults = box.values.where((user) => user.age >= 18).toList();''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Isar هو بديل أحدث وأسرع لـ Hive (من نفس المؤلف) مع دعم استعلام كامل وأداء أفضل. فكر فيه للمشاريع الجديدة.",
          "للتخزين المحلي المشفر، استخدم flutter_secure_storage للبيانات الحساسة مثل الرموز.",
        ],
        bestUse:
            "SharedPreferences لإعدادات التطبيق والأعلام، SQLite للبيانات العلائقية المعقدة والاستعلامات، Hive/Isar لتخزين الكائنات السريع والتطبيقات التي تعمل دون اتصال أولاً",
      ),
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Local Storage Selection:",
          value: [
            "SharedPreferences: Simple key-value (settings, flags)",
            "SQLite: Relational data, complex queries, large datasets",
            "Hive: Fast NoSQL, objects storage, offline-first apps",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار التخزين المحلي:",
          value: [
            "SharedPreferences: إعدادات بسيطة مفتاح-قيمة",
            "SQLite: بيانات علائقية، استعلامات معقدة، بيانات كبيرة",
            "Hive: NoSQL سريع، تخزين كائنات، تطبيقات أوفلاين",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "017",
    difficulty: .advanced,
    categories: [.architecture],
    type: .theoretical,
    tags: ["cleanArchitecture", "mvc", "mvvm", "architecture"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "Common Architectural Patterns in Flutter? (MVC, MVVM, Clean Architecture)",
        answer: [
          StringContent(
            "Architecture patterns organize code for better maintainability, testability, and scalability. Flutter supports multiple patterns:",
          ),
          OrderedListContent(
            value: [
              "MVC (Model-View-Controller): Classic pattern separating data (Model), UI (View), and logic (Controller). Often the Controller manages UI state. Simple but can lead to bloated controllers in complex apps.",
              "MVVM (Model-View-ViewModel): View binds to ViewModel, which holds state and logic. ViewModel is unaware of View. Very popular in Flutter - Provider and Riverpod act as ViewModel. Better separation than MVC.",
              "Clean Architecture: Layered approach with three main layers: Presentation (UI, widgets, state management), Domain (business logic, use cases, entities), and Data (repositories, data sources, models). Dependency rule: inner layers don't know about outer layers. Highly testable and scalable.",
              "Feature-First: Organize code by features rather than layers. Each feature folder contains its own presentation, domain, and data. Good for large apps with many features.",
            ],
          ),
          CodeContent(
            '''// Clean Architecture Structure
/lib
  /core
    /error
    /usecases
    /network
  /features
    /authentication
      /data
        /models
        /repositories
        /datasources
      /domain
        /entities
        /repositories (interfaces)
        /usecases
      /presentation
        /bloc or /providers
        /pages
        /widgets
    /home
      /data
      /domain
      /presentation

// Example: Use Case (Domain layer)
class GetUserUseCase {
  final IUserRepository repository;
  
  GetUserUseCase(this.repository);
  
  Future<Either<Failure, User>> call(String userId) async {
    return await repository.getUser(userId);
  }
}

// Repository Interface (Domain layer)
abstract class IUserRepository {
  Future<Either<Failure, User>> getUser(String id);
}

// Repository Implementation (Data layer)
class UserRepository implements IUserRepository {
  final UserRemoteDataSource remoteDataSource;
  final UserLocalDataSource localDataSource;
  
  UserRepository({
    required this.remoteDataSource,
    required this.localDataSource,
  });
  
  @override
  Future<Either<Failure, User>> getUser(String id) async {
    try {
      final userModel = await remoteDataSource.getUser(id);
      await localDataSource.cacheUser(userModel);
      return Right(userModel.toEntity());
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}

// Presentation (BLoC/State Management)
class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserUseCase getUserUseCase;
  
  UserBloc({required this.getUserUseCase}) : super(UserInitial()) {
    on<LoadUser>(_onLoadUser);
  }
  
  Future<void> _onLoadUser(LoadUser event, Emitter<UserState> emit) async {
    emit(UserLoading());
    final result = await getUserUseCase(event.userId);
    result.fold(
      (failure) => emit(UserError(failure.message)),
      (user) => emit(UserLoaded(user)),
    );
  }
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Don't over-engineer small apps - start simple and add architecture as needed.",
          "Clean Architecture has initial overhead but pays off in large, long-term projects.",
          "Feature-first approach is recommended by Flutter team for scalability.",
        ],
        bestUse:
            "MVVM/Provider for small-medium apps, Clean Architecture for large enterprise apps with complex business logic, Feature-first for apps with many distinct features",
      ),
      ar: QuestionContent(
        question:
            "الأنماط المعمارية الشائعة في Flutter؟ (MVC، MVVM، Clean Architecture)",
        answer: [
          StringContent(
            "أنماط البنية تنظم الكود لقابلية صيانة واختبار وتوسع أفضل. يدعم Flutter أنماطًا متعددة:",
          ),
          OrderedListContent(
            value: [
              "MVC (Model-View-Controller): نمط كلاسيكي يفصل البيانات (Model)، واجهة المستخدم (View)، والمنطق (Controller). غالبًا ما يدير Controller حالة واجهة المستخدم. بسيط لكن يمكن أن يؤدي إلى متحكمات منتفخة في التطبيقات المعقدة.",
              "MVVM (Model-View-ViewModel): تربط View بـ ViewModel، الذي يحمل الحالة والمنطق. ViewModel غير مدرك لـ View. شائع جدًا في Flutter - Provider و Riverpod يعملان كـ ViewModel. فصل أفضل من MVC.",
              "Clean Architecture: نهج طبقي مع ثلاث طبقات رئيسية: العرض (واجهة المستخدم، الودجتس، إدارة الحالة)، المجال (منطق الأعمال، حالات الاستخدام، الكيانات)، والبيانات (المستودعات، مصادر البيانات، النماذج). قاعدة التبعية: الطبقات الداخلية لا تعرف عن الطبقات الخارجية. قابلة للاختبار والتوسع بشكل كبير.",
              "Feature-First: تنظيم الكود حسب الميزات بدلاً من الطبقات. كل مجلد ميزة يحتوي على العرض والمجال والبيانات الخاصة به. جيد للتطبيقات الكبيرة ذات الميزات العديدة.",
            ],
          ),
          CodeContent(
            '''// هيكل البنية النظيفة
/lib
  /core
    /error
    /usecases
    /network
  /features
    /authentication
      /data
        /models
        /repositories
        /datasources
      /domain
        /entities
        /repositories (واجهات)
        /usecases
      /presentation
        /bloc أو /providers
        /pages
        /widgets
    /home
      /data
      /domain
      /presentation

// مثال: حالة استخدام (طبقة المجال)
class GetUserUseCase {
  final IUserRepository repository;
  
  GetUserUseCase(this.repository);
  
  Future<Either<Failure, User>> call(String userId) async {
    return await repository.getUser(userId);
  }
}

// واجهة المستودع (طبقة المجال)
abstract class IUserRepository {
  Future<Either<Failure, User>> getUser(String id);
}

// تنفيذ المستودع (طبقة البيانات)
class UserRepository implements IUserRepository {
  final UserRemoteDataSource remoteDataSource;
  final UserLocalDataSource localDataSource;
  
  UserRepository({
    required this.remoteDataSource,
    required this.localDataSource,
  });
  
  @override
  Future<Either<Failure, User>> getUser(String id) async {
    try {
      final userModel = await remoteDataSource.getUser(id);
      await localDataSource.cacheUser(userModel);
      return Right(userModel.toEntity());
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}

// العرض (BLoC/إدارة الحالة)
class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserUseCase getUserUseCase;
  
  UserBloc({required this.getUserUseCase}) : super(UserInitial()) {
    on<LoadUser>(_onLoadUser);
  }
  
  Future<void> _onLoadUser(LoadUser event, Emitter<UserState> emit) async {
    emit(UserLoading());
    final result = await getUserUseCase(event.userId);
    result.fold(
      (failure) => emit(UserError(failure.message)),
      (user) => emit(UserLoaded(user)),
    );
  }
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "لا تبالغ في هندسة التطبيقات الصغيرة - ابدأ بسيطًا وأضف البنية حسب الحاجة.",
          "للبنية النظيفة عبء أولي لكنها تؤتي ثمارها في المشاريع الكبيرة طويلة الأمد.",
          "نهج Feature-first موصى به من قبل فريق Flutter لقابلية التوسع.",
        ],
        bestUse:
            "MVVM/Provider للتطبيقات الصغيرة-المتوسطة، البنية النظيفة للتطبيقات المؤسسية الكبيرة ذات منطق الأعمال المعقد، Feature-first للتطبيقات ذات الميزات المتعددة المتميزة",
      ),
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Architecture Selection:",
          value: [
            "MVC: Simple apps, quick prototypes",
            "MVVM: Medium apps, better testability than MVC",
            "Clean Architecture: Large enterprise apps, maximum separation",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار البنية:",
          value: [
            "MVC: تطبيقات بسيطة، نماذج سريعة",
            "MVVM: تطبيقات متوسطة، اختبار أفضل من MVC",
            "Clean Architecture: تطبيقات كبيرة، فصل كامل للطبقات",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "018",
    difficulty: .basic,
    categories: [.dartBasics],
    type: .practical,
    tags: ["nullSafety", "soundness", "dart"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is Null Safety and how does it help?",
        answer: [
          StringContent(
            "Null Safety is a Dart language feature that helps prevent null reference errors by distinguishing between nullable and non-nullable types at compile time.",
          ),
          OrderedListContent(
            title: "Key concepts:",
            value: [
              "Non-nullable by default: Types without '?' cannot be null (e.g., String, int)",
              "Nullable types: Add '?' to allow null (e.g., String?, int?)",
              "late keyword: For variables initialized later but guaranteed non-null when accessed",
              "Null-aware operators: ?., ??, ??=, ... for safe null handling",
            ],
          ),
          OrderedListContent(
            title: "Benefits:",
            value: [
              "Compile-time error detection: Null errors caught before runtime",
              "Smaller, faster code: Compiler optimizations knowing what can't be null",
              "Cleaner code: Fewer explicit null checks needed",
              "Better tooling: IDE can provide better code completion and warnings",
            ],
          ),
          CodeContent(
            '''// Null Safety basics
String name = 'John'; // Cannot be null
// name = null; // Compile error!

String? nickname; // Can be null
nickname = null; // OK
nickname = 'Johnny'; // OK

// late keyword - initialized later
late String userId;

void initializeUser() {
  userId = 'user123'; // Must be set before access
}

// Accessing nullable values safely
String? getName() => null;

void example() {
  // Null-aware access (?.)
  String? name = getName();
  int? length = name?.length; // Safe: null if name is null
  
  // Null coalescing (??)
  String displayName = name ?? 'Guest'; // Use 'Guest' if name is null
  
  // Null assertion (!)
  // Only use when 100% sure value is not null!
  String name2 = getName()!; // Crash if null!
  
  // Null-aware assignment (??=)
  String? username;
  username ??= 'default'; // Assign only if null
  
  // Type promotion
  String? nullable = 'value';
  if (nullable != null) {
    // Inside this block, nullable is promoted to non-nullable String
    print(nullable.length); // No need for ?.
  }
}

// Collections with null safety
List<String> names = ['Alice', 'Bob']; // Cannot contain null
List<String?> nullableNames = ['Alice', null, 'Bob']; // Can contain null
List<String>? maybeList; // The list itself can be null

// Function parameters
void greet(String name, {String? nickname}) {
  print('Hello \$name');
  if (nickname != null) {
    print('Also known as \$nickname');
  }
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "Migrate older apps to null safety using 'dart migrate' command.",
          "Use '!' assertion operator sparingly - only when 100% sure value is not null, otherwise it will crash.",
          "Null safety is mandatory since Dart 2.12 and Flutter 2.0.",
        ],
        bestUse:
            "Essential for all modern Dart/Flutter projects. Prevents entire category of runtime errors.",
      ),
      ar: QuestionContent(
        question: "ما هو أمان العدم (Null Safety) وكيف يساعد؟",
        answer: [
          StringContent(
            "أمان العدم هو ميزة في لغة Dart تساعد على منع أخطاء مرجع العدم عن طريق التمييز بين الأنواع القابلة للعدم وغير القابلة للعدم في وقت الترجمة.",
          ),
          OrderedListContent(
            title: "المفاهيم الرئيسية:",
            value: [
              "غير قابل للعدم افتراضيًا: الأنواع بدون '?' لا يمكن أن تكون null (مثل String، int)",
              "الأنواع القابلة للعدم: أضف '?' للسماح بـ null (مثل String?، int?)",
              "الكلمة المحجوزة late: للمتغيرات التي تُهيأ لاحقًا لكنها مضمونة غير null عند الوصول",
              "عوامل الوعي بالعدم: ?.، ??، ??=، ... للتعامل الآمن مع null",
            ],
          ),
          OrderedListContent(
            title: "الفوائد:",
            value: [
              "اكتشاف الأخطاء في وقت الترجمة: يتم اكتشاف أخطاء null قبل وقت التشغيل",
              "كود أصغر وأسرع: تحسينات المترجم مع معرفة ما لا يمكن أن يكون null",
              "كود أنظف: فحوصات null صريحة أقل",
              "أدوات أفضل: IDE يمكنه توفير إكمال كود وتحذيرات أفضل",
            ],
          ),
          CodeContent(
            '''// أساسيات أمان العدم
String name = 'علي'; // لا يمكن أن يكون null
// name = null; // خطأ في الترجمة!

String? nickname; // يمكن أن يكون null
nickname = null; // موافق
nickname = 'علاوي'; // موافق

// الكلمة المحجوزة late - تُهيأ لاحقًا
late String userId;

void initializeUser() {
  userId = 'user123'; // يجب تعيينها قبل الوصول
}

// الوصول إلى القيم القابلة للعدم بأمان
String? getName() => null;

void example() {
  // الوصول الواعي بالعدم (?.)
  String? name = getName();
  int? length = name?.length; // آمن: null إذا كان name هو null
  
  // دمج العدم (??)
  String displayName = name ?? 'ضيف'; // استخدم 'ضيف' إذا كان name هو null
  
  // تأكيد العدم (!)
  // استخدم فقط عندما تكون متأكدًا 100% أن القيمة ليست null!
  String name2 = getName()!; // تعطل إذا كان null!
  
  // التعيين الواعي بالعدم (??=)
  String? username;
  username ??= 'افتراضي'; // عيّن فقط إذا كان null
  
  // ترقية النوع
  String? nullable = 'قيمة';
  if (nullable != null) {
    // داخل هذه الكتلة، يُرقى nullable إلى String غير قابل للعدم
    print(nullable.length); // لا حاجة لـ ?.
  }
}

// المجموعات مع أمان العدم
List<String> names = ['علي', 'فاطمة']; // لا يمكن أن تحتوي على null
List<String?> nullableNames = ['علي', null, 'فاطمة']; // يمكن أن تحتوي على null
List<String>? maybeList; // القائمة نفسها يمكن أن تكون null

// معاملات الدالة
void greet(String name, {String? nickname}) {
  print('مرحبًا \$name');
  if (nickname != null) {
    print('يُعرف أيضًا بـ \$nickname');
  }
}''',
            codeLanguage: .dart,
            codeQuality: .good,
          ),
        ],
        notes: [
          "رحّل التطبيقات القديمة إلى أمان العدم باستخدام أمر 'dart migrate'.",
          "استخدم عامل التأكيد '!' بحذر - فقط عندما تكون متأكدًا 100% أن القيمة ليست null، وإلا سيحدث تعطل.",
          "أمان العدم إلزامي منذ Dart 2.12 و Flutter 2.0.",
        ],
        bestUse:
            "أساسي لجميع مشاريع Dart/Flutter الحديثة. يمنع فئة كاملة من أخطاء وقت التشغيل.",
      ),
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Null Safety Usage:",
          value: [
            "Everywhere: Mandatory for modern Dart/Flutter apps to prevent runtime crashes",
            "Types: Use non-nullable types by default to ensure data integrity",
            "Migration: Migrate legacy apps to improve security and performance",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدام أمان العدم:",
          value: [
            "في كل مكان: إلزامي لتطبيقات Dart/Flutter الحديثة لمنع تعطل وقت التشغيل",
            "الأنواع: استخدم الأنواع غير القابلة للعدم افتراضيًا لضمان سلامة البيانات",
            "الهجرة: رحّل التطبيقات القديمة لتحسين الأمان والأداء",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "019",
    difficulty: .advanced,
    categories: [.performance, .dartBasics],
    type: .practical,
    tags: ["isolates", "concurrency", "eventLoop", "multithreading"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What are Isolates and how do they differ from threads?",
        answer: [
          StringContent(
            "Dart is single-threaded and uses an Event Loop for asynchronous operations. To perform heavy parallel work without blocking the UI, we use Isolates.",
          ),
          OrderedListContent(
            title: "Key differences vs Threads:",
            value: [
              "Isolates DO NOT share memory (no shared state concurrency).",
              "Each Isolate has its own memory heap and event loop.",
              "Communication happens via message passing using SendPort and ReceivePort.",
              "This prevents race conditions and eliminates the need for locks.",
              "Spawning an Isolate has overhead, so use for CPU-intensive tasks only.",
            ],
          ),
          StringContent(
            "The 'compute()' function is a convenient helper that spawns an isolate for a single task and handles the message passing automatically.",
          ),
        ],
        notes: [
          "Use Isolates for JSON parsing of large files (>1MB), image processing, encryption, or heavy calculations that take >16ms.",
          "Don't use Isolates for simple I/O operations like network requests - async/await is sufficient for those.",
          "Isolates cannot access Flutter widgets or BuildContext directly.",
        ],
        bestUse:
            "CPU-intensive tasks that would block the UI thread for more than 16ms (one frame)",
      ),
      ar: QuestionContent(
        question: "ما هي العزلات (Isolates) وكيف تختلف عن الخيوط (Threads)؟",
        answer: [
          StringContent(
            "Dart أحادي الخيط ويستخدم حلقة الحدث (Event Loop) للعمليات غير المتزامنة. لأداء عمل متوازٍ ثقيل دون حجب واجهة المستخدم، نستخدم العزلات.",
          ),
          OrderedListContent(
            title: "الاختلافات الرئيسية عن الخيوط:",
            value: [
              "العزلات لا تشترك في الذاكرة (لا توجد حالة مشتركة للتزامن).",
              "لكل عزلة مساحة ذاكرة خاصة بها وحلقة حدث مستقلة.",
              "يحدث الاتصال عبر تمرير الرسائل باستخدام SendPort و ReceivePort.",
              "هذا يمنع ظروف السباق ويلغي الحاجة للأقفال.",
              "إنشاء Isolate له عبء إضافي، لذا استخدمه فقط للمهام الحسابية المكثفة.",
            ],
          ),
          StringContent(
            "دالة 'compute()' هي مساعد ملائم ينشئ عزلة لمهمة واحدة ويتعامل مع تمرير الرسائل تلقائيًا.",
          ),
        ],
        notes: [
          "استخدم العزلات لتحليل JSON للملفات الكبيرة (>1MB)، معالجة الصور، التشفير، أو الحسابات الثقيلة التي تستغرق >16ms.",
          "لا تستخدم Isolates للعمليات البسيطة مثل طلبات الشبكة - async/await كافٍ لها.",
          "لا يمكن للعزلات الوصول إلى ودجتس Flutter أو BuildContext مباشرة.",
        ],
        bestUse:
            "المهام الحسابية المكثفة التي تحجب خيط واجهة المستخدم لأكثر من 16ms (إطار واحد)",
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// Using compute helper\nimport 'package:flutter/foundation.dart';\n\nFuture<List<Photo>> fetchPhotos(http.Response response) async {\n  return compute(parsePhotos, response.body);\n}\n\nList<Photo> parsePhotos(String responseBody) {\n  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();\n  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();\n}",
      ),
      StrCodeBlock(
        "// Manual isolate spawn\nimport 'dart:isolate';\n\nvoid main() async {\n  final receivePort = ReceivePort();\n  await Isolate.spawn(heavyTask, receivePort.sendPort);\n  \n  receivePort.listen((message) {\n    print('Received: \$message');\n  });\n}\n\nvoid heavyTask(SendPort sendPort) {\n  // Perform heavy computation\n  final result = expensiveCalculation();\n  sendPort.send(result);\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Enables true parallel execution without blocking the main thread",
        "Eliminates race conditions and memory corruption issues",
        "Each isolate crashes independently without affecting others",
      ],
      ar: [
        "يمكّن من التنفيذ المتوازي الحقيقي دون حجب الخيط الرئيسي",
        "يلغي ظروف السباق ومشاكل فساد الذاكرة",
        "كل عزلة تتعطل بشكل مستقل دون التأثير على الأخرى",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Higher memory overhead due to separate memory heaps",
        "Message passing is slower than shared memory access",
        "Cannot directly access Flutter widgets or UI state",
      ],
      ar: [
        "عبء ذاكرة أعلى بسبب مساحات الذاكرة المنفصلة",
        "تمرير الرسائل أبطأ من الوصول للذاكرة المشتركة",
        "لا يمكن الوصول مباشرة إلى ودجتس Flutter أو حالة الواجهة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Isolates when:",
          value: [
            "Heavy computations (JSON parsing, image processing)",
            "Operations blocking UI thread (>16ms)",
            "CPU-intensive tasks requiring parallel execution",
            "Processing large files or datasets",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Isolates عندما:",
          value: [
            "حسابات ثقيلة (تحليل JSON، معالجة صور)",
            "عمليات تعطل واجهة المستخدم",
            "مهام تحتاج معالجة متوازية",
            "معالجة ملفات أو بيانات ضخمة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "020",
    difficulty: .intermediate,
    categories: [.nativePlatform, .architecture],
    type: .practical,
    tags: ["methodChannel", "platformChannels", "nativeCode", "eventChannel"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "How to communicate with native platform code (Android/iOS)?",
        answer: [
          StringContent(
            "Flutter provides Platform Channels to communicate with native code. There are three types: MethodChannel (for method invocation), EventChannel (for event streams), and BasicMessageChannel (for basic messaging).",
          ),
          OrderedListContent(
            title: "MethodChannel workflow:",
            value: [
              "Flutter: Create MethodChannel with unique name, call invokeMethod() with method name and arguments.",
              "Android (Kotlin/Java): Register MethodCallHandler, override onMethodCall(), check method name, execute native code, return result via Result object.",
              "iOS (Swift/Objective-C): Create FlutterMethodChannel, set setMethodCallHandler, handle method calls, return result via FlutterResult.",
              "Data is automatically serialized/deserialized using StandardMessageCodec (supports: null, bool, int, double, String, Uint8List, List, Map).",
            ],
          ),
          StringContent(
            "EventChannel is used for streaming data from native to Flutter (like sensor updates or location changes).",
          ),
        ],
        notes: [
          "Always check pub.dev for existing plugins before writing custom platform channels.",
          "Platform channels run on the platform's main thread - avoid blocking operations.",
          "Method calls are asynchronous in Flutter but may be synchronous in native code.",
          "Handle platform-specific errors gracefully using PlatformException.",
        ],
        bestUse:
            "Accessing native APIs unavailable in Flutter plugins, integrating native SDKs (payment gateways, AR frameworks)",
      ),
      ar: QuestionContent(
        question: "كيف تتواصل مع كود النظام الأساسي الأصلي (Android/iOS)؟",
        answer: [
          StringContent(
            "يوفر Flutter قنوات المنصة (Platform Channels) للتواصل مع الكود الأصلي. هناك ثلاثة أنواع: MethodChannel (لاستدعاء الدوال)، EventChannel (لتدفق الأحداث)، و BasicMessageChannel (للرسائل الأساسية).",
          ),
          OrderedListContent(
            title: "سير عمل MethodChannel:",
            value: [
              "Flutter: إنشاء MethodChannel باسم فريد، استدعاء invokeMethod() مع اسم الدالة والمعاملات.",
              "Android (Kotlin/Java): تسجيل MethodCallHandler، تجاوز onMethodCall()، التحقق من اسم الدالة، تنفيذ الكود الأصلي، إرجاع النتيجة عبر كائن Result.",
              "iOS (Swift/Objective-C): إنشاء FlutterMethodChannel، تعيين setMethodCallHandler، معالجة استدعاءات الدوال، إرجاع النتيجة عبر FlutterResult.",
              "يتم تسلسل البيانات/إلغاء تسلسلها تلقائيًا باستخدام StandardMessageCodec (يدعم: null, bool, int, double, String, Uint8List, List, Map).",
            ],
          ),
          StringContent(
            "يُستخدم EventChannel لبث البيانات من الكود الأصلي إلى Flutter (مثل تحديثات المستشعرات أو تغييرات الموقع).",
          ),
        ],
        notes: [
          "تحقق دائمًا من pub.dev للملحقات الموجودة قبل كتابة قنوات منصة مخصصة.",
          "تعمل قنوات المنصة على الخيط الرئيسي للمنصة - تجنب العمليات المحجوبة.",
          "استدعاءات الدوال غير متزامنة في Flutter لكن قد تكون متزامنة في الكود الأصلي.",
          "تعامل مع أخطاء المنصة بشكل رشيق باستخدام PlatformException.",
        ],
        bestUse:
            "الوصول إلى واجهات برمجة التطبيقات الأصلية غير المتوفرة في ملحقات Flutter، دمج حزم SDK الأصلية (بوابات الدفع، أطر الواقع المعزز)",
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// Flutter side\nclass BatteryLevel {\n  static const platform = MethodChannel('com.example/battery');\n\n  Future<int> getBatteryLevel() async {\n    try {\n      final int result = await platform.invokeMethod('getBatteryLevel');\n      return result;\n    } on PlatformException catch (e) {\n      print('Failed to get battery level: \${e.message}');\n      return -1;\n    }\n  }\n}",
      ),
      StrCodeBlock(
        "// Android (Kotlin)\nclass MainActivity: FlutterActivity() {\n  private val CHANNEL = \"com.example/battery\"\n\n  override fun configureFlutterEngine(flutterEngine: FlutterEngine) {\n    MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)\n      .setMethodCallHandler { call, result ->\n        if (call.method == \"getBatteryLevel\") {\n          val batteryLevel = getBatteryLevel()\n          if (batteryLevel != -1) {\n            result.success(batteryLevel)\n          } else {\n            result.error(\"UNAVAILABLE\", \"Battery level not available.\", null)\n          }\n        } else {\n          result.notImplemented()\n        }\n      }\n  }\n\n  private fun getBatteryLevel(): Int {\n    val batteryManager = getSystemService(BATTERY_SERVICE) as BatteryManager\n    return batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)\n  }\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Access to full native platform capabilities and APIs",
        "Can integrate any native SDK or library",
        "Performance-critical operations can run in native code",
      ],
      ar: [
        "الوصول الكامل لقدرات وواجهات برمجة التطبيقات الأصلية",
        "يمكن دمج أي SDK أو مكتبة أصلية",
        "العمليات الحرجة للأداء يمكن تشغيلها في الكود الأصلي",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Requires platform-specific code for each platform",
        "Increases maintenance complexity",
        "Type safety limited to standard message codec types",
      ],
      ar: [
        "يتطلب كود خاص بكل منصة",
        "يزيد من تعقيد الصيانة",
        "أمان الأنواع محدود بأنواع codec الرسائل القياسية",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        StringContent(
          "Use Platform Channels when accessing native device features not available in Flutter (camera, sensors, bluetooth), integrating existing native code, or using platform-specific APIs.",
        ),
      ],
      ar: [
        StringContent(
          "استخدم Platform Channels عند الوصول لميزات أصلية غير متوفرة in Flutter (كاميرا، مستشعرات)، أو دمج كود أصلي موجود، أو استخدام APIs خاصة بالمنصة.",
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "021",
    difficulty: .intermediate,
    categories: [.animations, .ui],
    type: .practical,
    tags: [
      "implicitAnimations",
      "explicitAnimations",
      "animationController",
      "tween",
    ],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "What is the difference between Implicit and Explicit Animations?",
        answer: [
          StringContent(
            "Flutter provides two animation approaches with different complexity levels and control capabilities.",
          ),
          UnorderedListContent(
            title: "Implicit Animations:",
            value: [
              "Simple, built-in widgets that automatically animate property changes",
              "No AnimationController needed - just change the property value",
              "Examples: AnimatedContainer, AnimatedOpacity, AnimatedAlign, AnimatedPadding",
              "Best for simple transitions like hover effects, show/hide, color changes",
            ],
          ),
          UnorderedListContent(
            title: "Explicit Animations:",
            value: [
              "Require manual control using AnimationController and Animation objects",
              "Full control: play, pause, reverse, repeat, coordinate multiple animations",
              "Examples: FadeTransition, RotationTransition, SlideTransition, ScaleTransition",
              "Use Tween to define start and end values",
              "Best for complex, coordinated, or custom animations",
            ],
          ),
        ],
        notes: [
          "Start with Implicit Animations for simplicity. Switch to Explicit when you need to control timing, direction, or coordinate animations.",
          "Explicit animations require disposing the AnimationController in dispose() to prevent memory leaks.",
          "Use AnimatedBuilder for custom explicit animations to rebuild only necessary widgets.",
        ],
        bestUse:
            "Implicit: simple UI transitions (hover, visibility). Explicit: complex effects, staggered animations, custom timing",
      ),
      ar: QuestionContent(
        question: "ما الفرق بين الرسوم المتحركة الضمنية والصريحة؟",
        answer: [
          StringContent(
            "يوفر Flutter نهجين للرسوم المتحركة بمستويات مختلفة من التعقيد والتحكم.",
          ),
          UnorderedListContent(
            title: "الرسوم المتحركة الضمنية:",
            value: [
              "ودجتس بسيطة مدمجة تحرك التغييرات في الخصائص تلقائيًا",
              "لا حاجة لـ AnimationController - فقط غيّر قيمة الخاصية",
              "أمثلة: AnimatedContainer, AnimatedOpacity, AnimatedAlign, AnimatedPadding",
              "الأفضل للانتقالات البسيطة مثل تأثيرات التحويم، الإظهار/الإخفاء، تغييرات اللون",
            ],
          ),
          UnorderedListContent(
            title: "الرسوم المتحركة الصريحة:",
            value: [
              "تتطلب تحكمًا يدويًا باستخدام AnimationController وكائنات Animation",
              "تحكم كامل: تشغيل، إيقاف مؤقت، عكس، تكرار، تنسيق رسوم متحركة متعددة",
              "أمثلة: FadeTransition, RotationTransition, SlideTransition, ScaleTransition",
              "استخدم Tween لتحديد القيم الابتدائية والنهائية",
              "الأفضل للرسوم المتحركة المعقدة أو المنسقة أو المخصصة",
            ],
          ),
        ],
        notes: [
          "ابدأ بالرسوم المتحركة الضمنية للبساطة. انتقل للصريحة عند الحاجة للتحكم في التوقيت أو الاتجاه أو تنسيق الرسوم المتحركة.",
          "تتطلب الرسوم المتحركة الصريحة التخلص من AnimationController في dispose() لمنع تسرب الذاكرة.",
          "استخدم AnimatedBuilder للرسوم المتحركة الصريحة المخصصة لإعادة بناء الودجتس الضرورية فقط.",
        ],
        bestUse:
            "الضمنية: انتقالات واجهة المستخدم البسيطة (التحويم، الرؤية). الصريحة: التأثيرات المعقدة، الرسوم المتحركة المتدرجة، التوقيت المخصص",
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// Implicit Animation\nclass MyWidget extends StatefulWidget {\n  @override\n  State<MyWidget> createState() => _MyWidgetState();\n}\n\nclass _MyWidgetState extends State<MyWidget> {\n  bool _visible = true;\n\n  @override\n  Widget build(BuildContext context) {\n    return AnimatedOpacity(\n      opacity: _visible ? 1.0 : 0.0,\n      duration: Duration(seconds: 1),\n      curve: Curves.easeInOut,\n      child: Text('Hello'),\n    );\n  }\n}",
      ),
      StrCodeBlock.good(
        "// Explicit Animation\nclass MyWidget extends StatefulWidget {\n  @override\n  State<MyWidget> createState() => _MyWidgetState();\n}\n\nclass _MyWidgetState extends State<MyWidget>\n    with SingleTickerProviderStateMixin {\n  late AnimationController _controller;\n  late Animation<double> _animation;\n\n  @override\n  void initState() {\n    super.initState();\n    _controller = AnimationController(\n      duration: Duration(seconds: 1),\n      vsync: this,\n    );\n    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);\n    _controller.forward();\n  }\n\n  @override\n  void dispose() {\n    _controller.dispose();\n    super.dispose();\n  }\n\n  @override\n  Widget build(BuildContext context) {\n    return FadeTransition(\n      opacity: _animation,\n      child: Text('Hello'),\n    );\n  }\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Implicit: Easy to use, minimal code, automatic transitions",
        "Explicit: Full control over animation behavior, can coordinate complex sequences",
      ],
      ar: [
        "الضمنية: سهلة الاستخدام، كود أقل، انتقالات تلقائية",
        "الصريحة: تحكم كامل في سلوك الرسوم المتحركة، يمكن تنسيق تسلسلات معقدة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Implicit: Limited control, cannot pause or reverse mid-animation",
        "Explicit: More boilerplate code, requires manual controller management",
      ],
      ar: [
        "الضمنية: تحكم محدود، لا يمكن الإيقاف أو العكس في منتصف الرسوم المتحركة",
        "الصريحة: كود إضافي أكثر، تتطلب إدارة يدوية للمتحكم",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Animation Type Selection:",
          value: [
            "Implicit: Simple property animations, automatic transitions",
            "Explicit: Full control, complex coordinated animations, custom timing",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار نوع الحركة:",
          value: [
            "Implicit: حركات بسيطة، انتقالات تلقائية",
            "Explicit: تحكم كامل، حركات معقدة، توقيت مخصص",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "022",
    difficulty: .advanced,
    categories: [.animations, .ui, .performance],
    type: .practical,
    tags: ["customPaint", "canvas", "drawing", "customPainter"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "How to use CustomPaint in Flutter?",
        answer: [
          StringContent(
            "CustomPaint is a widget that provides a Canvas for low-level 2D drawing operations. It delegates to a CustomPainter subclass for actual rendering.",
          ),
          OrderedListContent(
            title: "Implementation steps:",
            value: [
              "Create a class extending CustomPainter",
              "Override paint(Canvas canvas, Size size) to draw shapes, paths, text, images",
              "Override shouldRepaint(CustomPainter oldDelegate) to optimize rebuilds",
              "Use Canvas methods: drawCircle(), drawRect(), drawPath(), drawLine(), etc.",
              "Create Paint objects to define color, stroke width, style (fill/stroke)",
            ],
          ),
          StringContent(
            "The Canvas API provides low-level drawing primitives similar to HTML Canvas or Android Canvas. Use Path for complex shapes and bezier curves.",
          ),
        ],
        notes: [
          "CustomPaint is powerful but expensive - avoid heavy calculations in paint(). Cache computed paths or values.",
          "shouldRepaint() should return true only when visual changes are needed to avoid unnecessary redraws.",
          "Use RepaintBoundary to isolate CustomPaint repaints from the rest of the widget tree.",
          "For simple shapes, prefer existing widgets (Container, DecoratedBox) for better performance.",
        ],
        bestUse:
            "Custom charts/graphs, complex vector graphics, interactive drawing apps, custom progress indicators",
      ),
      ar: QuestionContent(
        question: "كيفية استخدام CustomPaint في Flutter؟",
        answer: [
          StringContent(
            "CustomPaint هو ودجت يوفر لوحة (Canvas) لعمليات الرسم ثنائية الأبعاد منخفضة المستوى. يفوض إلى فئة فرعية من CustomPainter للعرض الفعلي.",
          ),
          OrderedListContent(
            title: "خطوات التنفيذ:",
            value: [
              "إنشاء فئة ترث من CustomPainter",
              "تجاوز paint(Canvas canvas, Size size) لرسم الأشكال والمسارات والنصوص والصور",
              "تجاوز shouldRepaint(CustomPainter oldDelegate) لتحسين إعادة البناء",
              "استخدم دوال Canvas: drawCircle(), drawRect(), drawPath(), drawLine(), إلخ.",
              "إنشاء كائنات Paint لتحديد اللون وعرض الحد والنمط (تعبئة/حد)",
            ],
          ),
          StringContent(
            "يوفر Canvas API عناصر رسم منخفضة المستوى مشابهة لـ HTML Canvas أو Android Canvas. استخدم Path للأشكال المعقدة ومنحنيات بيزيه.",
          ),
        ],
        notes: [
          "CustomPaint قوي لكنه مكلف - تجنب الحسابات الثقيلة في paint(). خزّن المسارات أو القيم المحسوبة مؤقتًا.",
          "يجب أن يعيد shouldRepaint() قيمة true فقط عندما تكون التغييرات المرئية مطلوبة لتجنب إعادة الرسم غير الضرورية.",
          "استخدم RepaintBoundary لعزل إعادة رسم CustomPaint عن بقية شجرة الودجتس.",
          "للأشكال البسيطة، فضّل الودجتس الموجودة (Container, DecoratedBox) لأداء أفضل.",
        ],
        bestUse:
            "المخططات/الرسوم البيانية المخصصة، الرسومات المتجهة المعقدة، تطبيقات الرسم التفاعلية، مؤشرات التقدم المخصصة",
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "class CirclePainter extends CustomPainter {\n  @override\n  void paint(Canvas canvas, Size size) {\n    final paint = Paint()\n      ..color = Colors.blue\n      ..style = PaintingStyle.fill;\n    \n    final center = Offset(size.width / 2, size.height / 2);\n    final radius = size.width / 4;\n    \n    canvas.drawCircle(center, radius, paint);\n  }\n\n  @override\n  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;\n}\n\n// Usage\nCustomPaint(\n  size: Size(200, 200),\n  painter: CirclePainter(),\n)",
      ),
      StrCodeBlock(
        "class ComplexShapePainter extends CustomPainter {\n  @override\n  void paint(Canvas canvas, Size size) {\n    final paint = Paint()\n      ..color = Colors.red\n      ..strokeWidth = 2\n      ..style = PaintingStyle.stroke;\n    \n    final path = Path()\n      ..moveTo(0, size.height / 2)\n      ..quadraticBezierTo(\n        size.width / 2, 0,\n        size.width, size.height / 2,\n      )\n      ..lineTo(size.width, size.height)\n      ..lineTo(0, size.height)\n      ..close();\n    \n    canvas.drawPath(path, paint);\n  }\n\n  @override\n  bool shouldRepaint(ComplexShapePainter oldDelegate) => false;\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Full control over rendering with pixel-level precision",
        "Can create any custom visual effect not possible with standard widgets",
        "Efficient for complex vector graphics",
      ],
      ar: [
        "تحكم كامل في العرض بدقة على مستوى البكسل",
        "يمكن إنشاء أي تأثير مرئي مخصص غير ممكن مع الودجتس القياسية",
        "فعال للرسومات المتجهة المعقدة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Performance-intensive if paint() is complex or called frequently",
        "Requires understanding of graphics programming concepts",
        "No built-in hit testing - must implement manually for interactions",
      ],
      ar: [
        "مكثف الأداء إذا كانت paint() معقدة أو تُستدعى بشكل متكرر",
        "يتطلب فهم مفاهيم برمجة الرسومات",
        "لا يوجد اختبار نقرات مدمج - يجب التنفيذ يدويًا للتفاعلات",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use CustomPaint when:",
          value: [
            "Drawing custom shapes and graphics",
            "Creating charts, graphs, or data visualizations",
            "Building unique UI elements not available in widgets",
            "Performance-critical custom rendering",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم CustomPaint عندما:",
          value: [
            "رسم أشكال ورسومات مخصصة",
            "إنشاء مخططات وتصورات بيانات",
            "بناء عناصر واجهة فريدة",
            "عرض مخصص يحتاج أداء عالي",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "023",
    difficulty: .basic,
    categories: [.flutterBasics, .ui],
    type: .practical,
    tags: ["streamBuilder", "futureBuilder", "asyncWidgets", "reactive"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What are StreamBuilder and FutureBuilder?",
        answer: [
          StringContent(
            "These are widgets that build themselves based on the latest interaction with asynchronous data sources, eliminating the need for manual state management.",
          ),
          UnorderedListContent(
            title: "FutureBuilder:",
            value: [
              "Rebuilds when a Future completes (one-time asynchronous operation)",
              "Perfect for API calls, file reading, database queries",
              "Exposes ConnectionState: none, waiting, active, done",
              "Provides snapshot with data, error, or loading state",
            ],
          ),
          UnorderedListContent(
            title: "StreamBuilder:",
            value: [
              "Rebuilds every time a Stream emits a new event (continuous data)",
              "Perfect for real-time data: WebSockets, Firebase, sensor data",
              "Automatically subscribes/unsubscribes to prevent memory leaks",
              "Provides the same snapshot interface as FutureBuilder",
            ],
          ),
        ],
        notes: [
          "Always handle all ConnectionState cases and check for errors in the builder.",
          "CRITICAL: Create Future/Stream OUTSIDE the build method. Creating inside build causes restart on every rebuild.",
          "For multiple Futures, use Future.wait() or consider state management solutions.",
          "StreamBuilder automatically cancels subscription when widget is disposed.",
        ],
        bestUse:
            "Displaying async data directly in UI without manual state variables or setState calls",
      ),
      ar: QuestionContent(
        question: "ما هما StreamBuilder و FutureBuilder؟",
        answer: [
          StringContent(
            "هذه ودجتس تبني نفسها بناءً على أحدث تفاعل مع مصادر البيانات غير المتزامنة، مما يلغي الحاجة لإدارة الحالة يدويًا.",
          ),
          UnorderedListContent(
            title: "FutureBuilder:",
            value: [
              "يعيد البناء عند اكتمال Future (عملية غير متزامنة لمرة واحدة)",
              "مثالي لاستدعاءات API، قراءة الملفات، استعلامات قاعدة البيانات",
              "يعرض ConnectionState: none, waiting, active, done",
              "يوفر snapshot مع البيانات أو الخطأ أو حالة التحميل",
            ],
          ),
          UnorderedListContent(
            title: "StreamBuilder:",
            value: [
              "يعيد البناء في كل مرة يصدر Stream حدثًا جديدًا (بيانات مستمرة)",
              "مثالي للبيانات في الوقت الفعلي: WebSockets, Firebase, بيانات المستشعرات",
              "يشترك/يلغي الاشتراك تلقائيًا لمنع تسرب الذاكرة",
              "يوفر نفس واجهة snapshot مثل FutureBuilder",
            ],
          ),
        ],
        notes: [
          "تعامل دائمًا مع جميع حالات ConnectionState وتحقق من الأخطاء في builder.",
          "مهم جدًا: أنشئ Future/Stream خارج دالة build. الإنشاء داخل build يسبب إعادة التشغيل عند كل إعادة بناء.",
          "لعدة Futures، استخدم Future.wait() أو فكر في حلول إدارة الحالة.",
          "يلغي StreamBuilder الاشتراك تلقائيًا عند التخلص من الودجت.",
        ],
        bestUse:
            "عرض البيانات غير المتزامنة مباشرة في الواجهة دون متغيرات حالة يدوية أو استدعاءات setState",
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "class UserProfile extends StatefulWidget {\n  @override\n  State<UserProfile> createState() => _UserProfileState();\n}\n\nclass _UserProfileState extends State<UserProfile> {\n  late Future<User> _userFuture;\n\n  @override\n  void initState() {\n    super.initState();\n    _userFuture = fetchUser(); // Create ONCE outside build\n  }\n\n  @override\n  Widget build(BuildContext context) {\n    return FutureBuilder<User>(\n      future: _userFuture,\n      builder: (context, snapshot) {\n        if (snapshot.hasError) {\n          return Text('Error: \${snapshot.error}');\n        }\n        \n        if (snapshot.connectionState == ConnectionState.waiting) {\n          return CircularProgressIndicator();\n        }\n        \n        return Text('User: \${snapshot.data!.name}');\n      },\n    );\n  }\n}",
      ),
      StrCodeBlock.good(
        "class MessageList extends StatelessWidget {\n  final Stream<List<Message>> messageStream;\n\n  MessageList({required this.messageStream});\n\n  @override\n  Widget build(BuildContext context) {\n    return StreamBuilder<List<Message>>(\n      stream: messageStream,\n      builder: (context, snapshot) {\n        if (snapshot.hasError) {\n          return Text('Error: \${snapshot.error}');\n        }\n        \n        if (!snapshot.hasData) {\n          return CircularProgressIndicator();\n        }\n        \n        final messages = snapshot.data!;\n        return ListView.builder(\n          itemCount: messages.length,\n          itemBuilder: (context, index) => Text(messages[index].text),\n        );\n      },\n    );\n  }\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Eliminates manual state management for async data",
        "Automatic lifecycle management (subscription/disposal)",
        "Clean declarative syntax",
      ],
      ar: [
        "يلغي إدارة الحالة اليدوية للبيانات غير المتزامنة",
        "إدارة تلقائية لدورة الحياة (الاشتراك/التخلص)",
        "صياغة إعلانية واضحة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can cause unnecessary rebuilds if not implemented correctly",
        "Limited error handling compared to try-catch blocks",
        "May be overkill for simple one-time async operations",
      ],
      ar: [
        "يمكن أن يسبب إعادة بناء غير ضرورية إذا لم يتم التنفيذ بشكل صحيح",
        "معالجة أخطاء محدودة مقارنة بكتل try-catch",
        "قد يكون مفرطًا للعمليات غير المتزامنة البسيطة لمرة واحدة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Builder Selection:",
          value: [
            "FutureBuilder: One-time async operations (API call, database query)",
            "StreamBuilder: Continuous data updates (real-time chat, live scores)",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار Builder:",
          value: [
            "FutureBuilder: عمليات لمرة واحدة (استدعاء API)",
            "StreamBuilder: تحديثات مستمرة (دردشة فورية، نتائج مباشرة)",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "024",
    difficulty: .intermediate,
    categories: [.modernFeatures, .ui],
    type: .theoretical,
    tags: ["accessibility", "semantics", "screenReader", "a11y"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "How do you make a Flutter app accessible?",
        answer: [
          StringContent(
            "Flutter provides the Semantics widget and related APIs to make apps accessible to users with disabilities, particularly for screen readers like TalkBack (Android) and VoiceOver (iOS).",
          ),
          OrderedListContent(
            title: "Key accessibility widgets and practices:",
            value: [
              "Semantics: Wrap widgets to provide label, hint, value, and other properties for screen readers",
              "ExcludeSemantics: Hide decorative elements from assistive technologies",
              "MergeSemantics: Group related widgets to be read as a single unit",
              "Use semantic properties: label (what it is), hint (how to use), value (current state)",
              "Standard widgets (TextField, Checkbox, Radio) have built-in semantics",
              "Ensure sufficient color contrast (WCAG AA: 4.5:1 for normal text)",
              "Make touch targets at least 48x48 dp",
              "Support dynamic font scaling (use MediaQuery.textScaleFactor)",
            ],
          ),
        ],
        notes: [
          "Test with real devices using TalkBack/VoiceOver enabled, not just in development.",
          "Use Flutter's Accessibility Scanner in DevTools to identify issues.",
          "Provide alternative text for images using Semantics(label: 'description').",
          "Ensure navigation works with keyboard and assistive technologies.",
          "Required for government apps and recommended for all public-facing applications.",
        ],
        bestUse:
            "All applications should implement basic accessibility; mandatory for government, healthcare, and education apps",
      ),
      ar: QuestionContent(
        question: "كيف تجعل تطبيق Flutter قابلاً للوصول؟",
        answer: [
          StringContent(
            "يوفر Flutter ودجت Semantics وواجهات برمجة التطبيقات ذات الصلة لجعل التطبيقات قابلة للوصول للمستخدمين ذوي الإعاقة، خاصةً لقارئات الشاشة مثل TalkBack (Android) و VoiceOver (iOS).",
          ),
          OrderedListContent(
            title: "الودجتس والممارسات الرئيسية لإمكانية الوصول:",
            value: [
              "Semantics: لف الودجتس لتوفير تسمية وتلميح وقيمة وخصائص أخرى لقارئات الشاشة",
              "ExcludeSemantics: إخفاء العناصر الزخرفية عن التقنيات المساعدة",
              "MergeSemantics: تجميع الودجتس ذات الصلة ليتم قراءتها كوحدة واحدة",
              "استخدم خصائص الدلالات: label (ما هو)، hint (كيفية الاستخدام)، value (الحالة الحالية)",
              "الودجتس القياسية (TextField, Checkbox, Radio) لها دلالات مدمجة",
              "تأكد من تباين الألوان الكافي (WCAG AA: 4.5:1 للنص العادي)",
              "اجعل أهداف اللمس 48x48 dp على الأقل",
              "دعم قياس الخط الديناميكي (استخدم MediaQuery.textScaleFactor)",
            ],
          ),
        ],
        notes: [
          "اختبر مع أجهزة حقيقية مع تمكين TalkBack/VoiceOver، ليس فقط في التطوير.",
          "استخدم Accessibility Scanner في DevTools لتحديد المشاكل.",
          "وفر نصًا بديلاً للصور باستخدام Semantics(label: 'الوصف').",
          "تأكد من أن التنقل يعمل مع لوحة المفاتيح والتقنيات المساعدة.",
          "مطلوب للتطبيقات الحكومية وموصى به لجميع التطبيقات العامة.",
        ],
        bestUse:
            "يجب أن تنفذ جميع التطبيقات إمكانية الوصول الأساسية؛ إلزامي لتطبيقات الحكومة والرعاية الصحية والتعليم",
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "Semantics(\n  label: 'Profile Picture',\n  hint: 'Double tap to edit profile picture',\n  button: true,\n  child: GestureDetector(\n    onTap: () => editProfilePicture(),\n    child: CircleAvatar(\n      backgroundImage: NetworkImage(user.photoUrl),\n    ),\n  ),\n)",
      ),
      StrCodeBlock.good(
        "// Merge semantics for card\nMergeSemantics(\n  child: Card(\n    child: Column(\n      children: [\n        Text('John Doe'),\n        Text('Software Engineer'),\n        // Screen reader announces: \"John Doe, Software Engineer\"\n      ],\n    ),\n  ),\n)",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Makes apps usable by millions of users with disabilities",
        "Improves overall UX for all users (larger touch targets, better contrast)",
        "Required for compliance with accessibility regulations (ADA, Section 508)",
      ],
      ar: [
        "يجعل التطبيقات قابلة للاستخدام من قبل ملايين المستخدمين ذوي الإعاقة",
        "يحسن تجربة المستخدم الإجمالية لجميع المستخدمين (أهداف لمس أكبر، تباين أفضل)",
        "مطلوب للامتثال للوائح إمكانية الوصول (ADA, Section 508)",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Requires additional development time and testing",
        "May increase widget tree complexity",
        "Needs continuous testing with assistive technologies",
      ],
      ar: [
        "يتطلب وقت تطوير واختبار إضافي",
        "قد يزيد من تعقيد شجرة الودجتس",
        "يحتاج إلى اختبار مستمر مع التقنيات المساعدة",
      ],
    ),
  ),
  InterviewQuestion(
    id: "025",
    difficulty: .intermediate,
    categories: [.security],
    type: .practical,
    tags: ["obfuscation", "flutterSecureStorage", "sslPinning", "encryption"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What are key security best practices in Flutter?",
        answer: [
          OrderedListContent(
            title: "Essential security practices:",
            value: [
              "Code Obfuscation: Use '--obfuscate --split-debug-info' flags when building releases to make reverse engineering harder",
              "Secure Storage: Use 'flutter_secure_storage' package for sensitive data (tokens, passwords) - NOT SharedPreferences",
              "SSL Pinning: Implement certificate pinning to prevent Man-in-the-Middle attacks using packages like 'http_certificate_pinning'",
              "API Keys: Never hardcode API keys - use environment variables or secure backend proxy",
              "Local Authentication: Use 'local_auth' package for biometric authentication",
              "App Signatures: Verify app integrity using platform-specific signature checks",
              "ProGuard/R8: Enable for Android builds to shrink and obfuscate native code",
              "Background Snapshots: Secure sensitive content in app switcher using WidgetsBindingObserver",
            ],
          ),
        ],
        notes: [
          "Code obfuscation is NOT encryption - determined attackers can still reverse engineer Flutter apps.",
          "NEVER store secrets, API keys, or passwords in code or assets - they're easily extractable.",
          "Use HTTPS for all network requests and validate SSL certificates.",
          "Implement proper session management and token refresh mechanisms.",
          "Regularly update dependencies to patch security vulnerabilities.",
          "Use --dart-define for build-time environment variables instead of hardcoding.",
        ],
        bestUse:
            "Banking apps, healthcare apps, any app handling PII, payment processing, authentication systems",
      ),
      ar: QuestionContent(
        question: "ما هي أفضل ممارسات الأمان الرئيسية في Flutter؟",
        answer: [
          OrderedListContent(
            title: "الممارسات الأمنية الأساسية:",
            value: [
              "تعتيم الكود: استخدم علامات '--obfuscate --split-debug-info' عند بناء الإصدارات لجعل الهندسة العكسية أصعب",
              "التخزين الآمن: استخدم حزمة 'flutter_secure_storage' للبيانات الحساسة (الرموز، كلمات المرور) - وليس SharedPreferences",
              "تثبيت SSL: نفذ تثبيت الشهادات لمنع هجمات الوسيط باستخدام حزم مثل 'http_certificate_pinning'",
              "مفاتيح API: لا تضع مفاتيح API في الكود مباشرة - استخدم متغيرات البيئة أو وكيل خلفي آمن",
              "المصادقة المحلية: استخدم حزمة 'local_auth' للمصادقة البيومترية",
              "توقيعات التطبيق: تحقق من سلامة التطبيق باستخدام فحوصات التوقيع الخاصة بالمنصة",
              "ProGuard/R8: فعّل لبنيات Android لتقليص وتعتيم الكود الأصلي",
              "لقطات الخلفية: أمّن المحتوى الحساس في مبدل التطبيقات باستخدام WidgetsBindingObserver",
            ],
          ),
        ],
        notes: [
          "تعتيم الكود ليس تشفيرًا - المهاجمون المصممون يمكنهم إجراء هندسة عكسية لتطبيقات Flutter.",
          "لا تخزن أبدًا الأسرار أو مفاتيح API أو كلمات المرور في الكود أو الأصول - يسهل استخراجها.",
          "استخدم HTTPS لجميع طلبات الشبكة وتحقق من شهادات SSL.",
          "نفذ إدارة جلسات مناسبة وآليات تحديث الرموز.",
          "حدّث التبعيات بانتظام لإصلاح الثغرات الأمنية.",
          "استخدم --dart-define لمتغيرات البيئة في وقت البناء بدلاً من الترميز المباشر.",
        ],
        bestUse:
            "تطبيقات البنوك، تطبيقات الرعاية الصحية، أي تطبيق يتعامل مع معلومات شخصية، معالجة المدفوعات، أنظمة المصادقة",
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// Build with obfuscation\n// Run: flutter build apk --obfuscate --split-debug-info=build/app/outputs/symbols\n\n// Secure Storage\nimport 'package:flutter_secure_storage/flutter_secure_storage.dart';\n\nfinal storage = FlutterSecureStorage();\n\n// Write\nawait storage.write(key: 'jwt_token', value: token);\n\n// Read\nString? token = await storage.read(key: 'jwt_token');\n\n// Delete\nawait storage.delete(key: 'jwt_token');",
      ),
      StrCodeBlock.good(
        "// SSL Pinning with Dio\nimport 'package:dio/dio.dart';\nimport 'package:dio/adapter.dart';\n\nfinal dio = Dio();\n(dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = \n  (client) {\n    client.badCertificateCallback = \n      (X509Certificate cert, String host, int port) {\n        // Verify certificate fingerprint\n        return cert.sha1.toString() == 'expected_sha1_fingerprint';\n      };\n    return client;\n  };",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Protects user data and app integrity",
        "Reduces risk of data breaches and unauthorized access",
        "Builds user trust and complies with regulations (GDPR, HIPAA)",
      ],
      ar: [
        "يحمي بيانات المستخدم وسلامة التطبيق",
        "يقلل من خطر خرق البيانات والوصول غير المصرح به",
        "يبني ثقة المستخدم ويتوافق مع اللوائح (GDPR, HIPAA)",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Adds development complexity and testing requirements",
        "Obfuscation increases build time",
        "May impact debugging and crash reporting",
      ],
      ar: [
        "يضيف تعقيدًا في التطوير ومتطلبات الاختبار",
        "التعتيم يزيد من وقت البناء",
        "قد يؤثر على التصحيح والإبلاغ عن الأعطال",
      ],
    ),
  ),
  InterviewQuestion(
    id: "026",
    difficulty: .intermediate,
    categories: [.deployment],
    type: .theoretical,
    tags: ["ciCd", "codemagic", "githubActions", "fastlane", "automation"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "How do you implement CI/CD for a Flutter application?",
        answer: [
          StringContent(
            "CI/CD (Continuous Integration/Continuous Deployment) automates building, testing, and deploying Flutter apps, ensuring code quality and faster releases.",
          ),
          OrderedListContent(
            title: "Implementation steps:",
            value: [
              "Choose a CI/CD platform: Codemagic (Flutter-specific), GitHub Actions, GitLab CI, Bitrise, or CircleCI",
              "Configure triggers: Push to branches (main/develop), pull requests, tags",
              "Static Analysis: Run 'flutter analyze' to check for code issues",
              "Testing: Run 'flutter test' for unit and widget tests",
              "Build: Generate platform-specific artifacts (APK, AAB for Android; IPA for iOS)",
              "Code Signing: Configure certificates and provisioning profiles for iOS",
              "Deployment: Upload to stores (Google Play Console, App Store Connect) or distribute via Firebase App Distribution",
              "Notifications: Send build status to Slack/Discord/Email",
            ],
          ),
          StringContent(
            "Fastlane is commonly used to script deployment workflows, especially for iOS App Store submission.",
          ),
        ],
        notes: [
          "Store secrets (API keys, certificates) in CI platform's secure environment variables, never in code.",
          "Use versioning strategies (semantic versioning) and automate version bumping.",
          "Configure different workflows for development, staging, and production builds.",
          "Enable caching (dependencies, build artifacts) to speed up builds.",
          "Codemagic offers built-in Flutter support with easy configuration.",
        ],
        bestUse:
            "Professional development teams, open-source projects, apps requiring frequent releases and quality assurance",
      ),
      ar: QuestionContent(
        question: "كيف تنفذ CI/CD لتطبيق Flutter؟",
        answer: [
          StringContent(
            "CI/CD (التكامل المستمر/النشر المستمر) يؤتمت بناء واختبار ونشر تطبيقات Flutter، مما يضمن جودة الكود وإصدارات أسرع.",
          ),
          OrderedListContent(
            title: "خطوات التنفيذ:",
            value: [
              "اختر منصة CI/CD: Codemagic (خاص بـ Flutter)، GitHub Actions، GitLab CI، Bitrise، أو CircleCI",
              "قم بتكوين المحفزات: الدفع إلى الفروع (main/develop)، طلبات السحب، العلامات",
              "التحليل الثابت: قم بتشغيل 'flutter analyze' للتحقق من مشاكل الكود",
              "الاختبار: قم بتشغيل 'flutter test' لاختبارات الوحدة والودجتس",
              "البناء: قم بإنشاء تحف خاصة بالمنصة (APK, AAB لـ Android؛ IPA لـ iOS)",
              "توقيع الكود: قم بتكوين الشهادات وملفات التوفير لـ iOS",
              "النشر: الرفع إلى المتاجر (Google Play Console, App Store Connect) أو التوزيع عبر Firebase App Distribution",
              "الإشعارات: إرسال حالة البناء إلى Slack/Discord/البريد الإلكتروني",
            ],
          ),
          StringContent(
            "يُستخدم Fastlane بشكل شائع لبرمجة سير عمل النشر، خاصةً لإرسال App Store لـ iOS.",
          ),
        ],
        notes: [
          "احفظ الأسرار (مفاتيح API، الشهادات) في متغيرات البيئة الآمنة لمنصة CI، وليس في الكود.",
          "استخدم استراتيجيات الإصدار (الإصدار الدلالي) وأتمت زيادة الإصدار.",
          "قم بتكوين سير عمل مختلفة للتطوير والتدريج وبنيات الإنتاج.",
          "فعّل التخزين المؤقت (التبعيات، تحف البناء) لتسريع البنيات.",
          "يوفر Codemagic دعمًا مدمجًا لـ Flutter مع تكوين سهل.",
        ],
        bestUse:
            "فرق التطوير المحترفة، المشاريع مفتوحة المصدر، التطبيقات التي تتطلب إصدارات متكررة وضمان الجودة",
      ),
    ),
    examples: [
      StrCodeBlock(
        "# GitHub Actions Example (.github/workflows/flutter.yml)\nname: Flutter CI\n\non:\n  push:\n    branches: [ main, develop ]\n  pull_request:\n    branches: [ main ]\n\njobs:\n  build:\n    runs-on: ubuntu-latest\n    \n    steps:\n      - uses: actions/checkout@v3\n      \n      - uses: subosito/flutter-action@v2\n        with:\n          flutter-version: '3.16.0'\n          channel: 'stable'\n      \n      - name: Get dependencies\n        run: flutter pub get\n      \n      - name: Analyze code\n        run: flutter analyze\n      \n      - name: Run tests\n        run: flutter test\n      \n      - name: Build APK\n        run: flutter build apk --release\n      \n      - name: Upload artifact\n        uses: actions/upload-artifact@v3\n        with:\n          name: release-apk\n          path: build/app/outputs/flutter-apk/app-release.apk",
        codeLanguage: .yaml,
      ),
      StrCodeBlock(
        "# Codemagic configuration (codemagic.yaml)\nworkflows:\n  flutter-workflow:\n    name: Flutter Build\n    environment:\n      flutter: stable\n      xcode: latest\n    scripts:\n      - name: Install dependencies\n        script: flutter pub get\n      - name: Run tests\n        script: flutter test\n      - name: Build Android\n        script: flutter build appbundle --release\n      - name: Build iOS\n        script: flutter build ipa --release --export-options-plist=/path/to/ExportOptions.plist\n    artifacts:\n      - build/**/outputs/**/*.aab\n      - build/**/outputs/**/*.apk\n      - build/ios/ipa/*.ipa\n    publishing:\n      google_play:\n        credentials: \$GCLOUD_SERVICE_ACCOUNT_CREDENTIALS\n        track: internal",
        codeLanguage: .yaml,
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Catches bugs early before production",
        "Automates repetitive tasks, saving hours of manual work",
        "Ensures consistent build and deployment process",
        "Faster time-to-market with automated releases",
      ],
      ar: [
        "يكتشف الأخطاء مبكرًا قبل الإنتاج",
        "يؤتمت المهام المتكررة، مما يوفر ساعات من العمل اليدوي",
        "يضمن عملية بناء ونشر متسقة",
        "وقت أسرع للوصول إلى السوق مع الإصدارات الآلية",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Initial setup complexity and learning curve",
        "CI/CD platform costs for advanced features",
        "Requires maintaining pipeline configuration",
      ],
      ar: [
        "تعقيد الإعداد الأولي ومنحنى التعلم",
        "تكاليف منصة CI/CD للميزات المتقدمة",
        "يتطلب صيانة تكوين خط الأنابيب",
      ],
    ),
  ),
  InterviewQuestion(
    id: "027",
    difficulty: .basic,
    categories: [.flutterBasics, .ui],
    type: .practical,
    tags: ["column", "row", "stack", "expanded", "flex", "layout"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "Explain common layout widgets used in Flutter.",
        answer: [
          StringContent(
            "Flutter uses a composition-based layout system. Understanding these core widgets is fundamental to building any UI.",
          ),
          UnorderedListContent(
            title: "Essential layout widgets:",
            value: [
              "Column: Arranges children vertically. Use mainAxisAlignment (vertical) and crossAxisAlignment (horizontal).",
              "Row: Arranges children horizontally. Similar axis alignment properties.",
              "Stack: Layers widgets on top of each other (like CSS position: absolute). Use Positioned to place children.",
              "Expanded: Inside Row/Column, forces child to fill available space with flex factor.",
              "Flexible: Like Expanded but allows child to be smaller than available space.",
              "Container: All-purpose widget for padding, margins, decoration, sizing.",
              "SizedBox: Fixed-size box, useful for spacing or constraining dimensions.",
              "Padding: Adds padding around a child widget.",
              "Align/Center: Positions child within available space.",
            ],
          ),
        ],
        notes: [
          "Understanding Flutter's constraint system is crucial: 'Constraints go down. Sizes go up. Parent sets position.'",
          "Use MainAxisAlignment.spaceBetween/spaceAround for distributing space in Row/Column.",
          "Expanded with flex parameter controls how space is distributed: flex: 2 takes twice the space of flex: 1.",
          "Avoid nested Column/Row when possible - use ListView or CustomMultiChildLayout for better performance.",
        ],
        bestUse:
            "Building almost any UI layout - these are fundamental building blocks of Flutter interfaces",
      ),
      ar: QuestionContent(
        question: "اشرح ودجتس التخطيط الشائعة المستخدمة في Flutter.",
        answer: [
          StringContent(
            "يستخدم Flutter نظام تخطيط قائم على التركيب. فهم هذه الودجتس الأساسية ضروري لبناء أي واجهة مستخدم.",
          ),
          UnorderedListContent(
            title: "ودجتس التخطيط الأساسية:",
            value: [
              "Column: يرتب الأطفال عموديًا. استخدم mainAxisAlignment (عمودي) و crossAxisAlignment (أفقي).",
              "Row: يرتب الأطفال أفقيًا. خصائص محاذاة المحور المشابهة.",
              "Stack: يضع الودجتس فوق بعضها البعض (مثل CSS position: absolute). استخدم Positioned لوضع الأطفال.",
              "Expanded: داخل Row/Column، يجبر الطفل على ملء المساحة المتاحة مع عامل flex.",
              "Flexible: مثل Expanded لكن يسمح للطفل بأن يكون أصغر من المساحة المتاحة.",
              "Container: ودجت متعدد الأغراض للحشو والهوامش والزخرفة والحجم.",
              "SizedBox: صندوق بحجم ثابت، مفيد للتباعد أو تقييد الأبعاد.",
              "Padding: يضيف حشوًا حول ودجت طفل.",
              "Align/Center: يضع الطفل داخل المساحة المتاحة.",
            ],
          ),
        ],
        notes: [
          "فهم نظام القيود في Flutter ضروري: 'القيود تنزل لأسفل. الأحجام تصعد لأعلى. الأب يحدد الموضع.'",
          "استخدم MainAxisAlignment.spaceBetween/spaceAround لتوزيع المساحة في Row/Column.",
          "Expanded مع معامل flex يتحكم في كيفية توزيع المساحة: flex: 2 يأخذ ضعف مساحة flex: 1.",
          "تجنب Column/Row المتداخلة عندما يكون ذلك ممكنًا - استخدم ListView أو CustomMultiChildLayout لأداء أفضل.",
        ],
        bestUse:
            "بناء أي تخطيط واجهة مستخدم تقريبًا - هذه هي اللبنات الأساسية لواجهات Flutter",
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// Row with Expanded\nRow(\n  mainAxisAlignment: MainAxisAlignment.spaceBetween,\n  crossAxisAlignment: CrossAxisAlignment.center,\n  children: [\n    Icon(Icons.star, size: 40),\n    Expanded(\n      flex: 2,\n      child: Text('This takes 2/3 of space'),\n    ),\n    Expanded(\n      flex: 1,\n      child: Text('This takes 1/3'),\n    ),\n  ],\n)",
      ),
      StrCodeBlock.good(
        "// Stack with Positioned\nStack(\n  children: [\n    Container(color: Colors.blue, width: 200, height: 200),\n    Positioned(\n      top: 20,\n      left: 20,\n      child: Icon(Icons.favorite, color: Colors.red),\n    ),\n    Positioned(\n      bottom: 0,\n      right: 0,\n      child: Text('Bottom Right'),\n    ),\n  ],\n)",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Flexible and composable - can build any layout",
        "Predictable behavior following constraint system",
        "Hot reload-friendly for rapid UI iteration",
      ],
      ar: [
        "مرنة وقابلة للتركيب - يمكن بناء أي تخطيط",
        "سلوك قابل للتنبؤ يتبع نظام القيود",
        "متوافقة مع Hot Reload للتكرار السريع للواجهة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Deep nesting can become complex and hard to read",
        "Understanding constraints takes practice",
        "Performance issues with excessive nested layouts",
      ],
      ar: [
        "التداخل العميق قد يصبح معقدًا وصعب القراءة",
        "فهم القيود يتطلب ممارسة",
        "مشاكل الأداء مع التخطيطات المتداخلة المفرطة",
      ],
    ),
  ),
  InterviewQuestion(
    id: "028",
    difficulty: .advanced,
    categories: [.architecture, .flutterBasics],
    type: .practical,
    tags: ["navigator2", "router", "goRouter", "navigation", "deepLinking"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is Navigator 2.0 (Router API)?",
        answer: [
          StringContent(
            "Navigator 2.0 is a declarative navigation API that treats navigation as a function of app state, enabling advanced features like deep linking and programmatic URL control.",
          ),
          UnorderedListContent(
            title: "Key concepts:",
            value: [
              "Declarative vs Imperative: Navigator 1.0 uses push/pop (imperative). Navigator 2.0 rebuilds route stack based on state (declarative).",
              "Router: Top-level widget managing route information",
              "RouterDelegate: Builds Navigator with current route stack",
              "RouteInformationParser: Converts URLs to app state and vice versa",
              "BackButtonDispatcher: Handles system back button",
            ],
          ),
          UnorderedListContent(
            title: "Capabilities enabled:",
            value: [
              "Deep linking: Direct navigation to any app screen via URL",
              "Browser URL syncing for web apps",
              "Proper OS back button handling in complex flows",
              "Nested navigation (tabs with independent navigation stacks)",
              "State restoration after app restart",
            ],
          ),
          StringContent(
            "Most developers use packages like 'go_router' or 'auto_route' which simplify Navigator 2.0 implementation significantly.",
          ),
        ],
        notes: [
          "Navigator 2.0 is complex to implement from scratch - use established packages unless you have specific requirements.",
          "go_router is the recommended package by the Flutter team - it's declarative and type-safe.",
          "Essential for web apps where URL navigation is expected.",
          "Overkill for simple apps with linear navigation - Navigator 1.0 is sufficient.",
        ],
        bestUse:
            "Web apps (URL handling), complex deep linking, apps with nested navigation (tabs), state restoration requirements",
      ),
      ar: QuestionContent(
        question: "ما هو Navigator 2.0 (Router API)؟",
        answer: [
          StringContent(
            "Navigator 2.0 هو واجهة برمجة تطبيقات تنقل إعلانية تعامل التنقل كدالة لحالة التطبيق، مما يمكّن ميزات متقدمة مثل الروابط العميقة والتحكم البرمجي في عناوين URL.",
          ),
          UnorderedListContent(
            title: "المفاهيم الرئيسية:",
            value: [
              "إعلاني مقابل أمري: يستخدم Navigator 1.0 push/pop (أمري). يعيد Navigator 2.0 بناء مجموعة المسارات بناءً على الحالة (إعلاني).",
              "Router: ودجت على المستوى الأعلى يدير معلومات المسار",
              "RouterDelegate: يبني Navigator مع مجموعة المسارات الحالية",
              "RouteInformationParser: يحول عناوين URL إلى حالة التطبيق والعكس",
              "BackButtonDispatcher: يتعامل مع زر الرجوع للنظام",
            ],
          ),
          UnorderedListContent(
            title: "القدرات الممكّنة:",
            value: [
              "الروابط العميقة: التنقل المباشر إلى أي شاشة تطبيق عبر URL",
              "مزامنة عنوان URL للمتصفح لتطبيقات الويب",
              "التعامل الصحيح مع زر الرجوع لنظام التشغيل في التدفقات المعقدة",
              "التنقل المتداخل (علامات التبويب مع مجموعات تنقل مستقلة)",
              "استعادة الحالة بعد إعادة تشغيل التطبيق",
            ],
          ),
          StringContent(
            "يستخدم معظم المطورين حزمًا مثل 'go_router' أو 'auto_route' التي تبسط تنفيذ Navigator 2.0 بشكل كبير.",
          ),
        ],
        notes: [
          "Navigator 2.0 معقد للتنفيذ من الصفر - استخدم الحزم المعتمدة ما لم تكن لديك متطلبات محددة.",
          "go_router هي الحزمة الموصى بها من فريق Flutter - إنها إعلانية وآمنة الأنواع.",
          "ضروري لتطبيقات الويب حيث يُتوقع التنقل عبر URL.",
          "مبالغ فيه للتطبيقات البسيطة ذات التنقل الخطي - Navigator 1.0 كافٍ.",
        ],
        bestUse:
            "تطبيقات الويب (معالجة URL)، الروابط العميقة المعقدة، التطبيقات ذات التنقل المتداخل (علامات التبويب)، متطلبات استعادة الحالة",
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// Using go_router (Simple Nav 2.0 wrapper)\nimport 'package:go_router/go_router.dart';\n\nfinal router = GoRouter(\n  routes: [\n    GoRoute(\n      path: '/',\n      builder: (context, state) => HomePage(),\n    ),\n    GoRoute(\n      path: '/details/:id',\n      builder: (context, state) {\n        final id = state.pathParameters['id']!;\n        return DetailsPage(id: id);\n      },\n    ),\n    GoRoute(\n      path: '/profile',\n      builder: (context, state) => ProfilePage(),\n      routes: [\n        GoRoute(\n          path: 'settings',\n          builder: (context, state) => SettingsPage(),\n        ),\n      ],\n    ),\n  ],\n);\n\n// Navigation\ncontext.go('/details/123');\ncontext.push('/profile/settings');",
      ),
      StrCodeBlock(
        "// Manual Navigator 2.0 (RouterDelegate example)\nclass MyRouterDelegate extends RouterDelegate<MyRoutePath>\n    with ChangeNotifier, PopNavigatorRouterDelegateMixin<MyRoutePath> {\n  @override\n  final GlobalKey<NavigatorState> navigatorKey;\n\n  MyRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();\n\n  String? selectedId;\n  bool show404 = false;\n\n  @override\n  MyRoutePath get currentConfiguration {\n    if (show404) return MyRoutePath.unknown();\n    return selectedId == null\n        ? MyRoutePath.home()\n        : MyRoutePath.details(selectedId!);\n  }\n\n  @override\n  Widget build(BuildContext context) {\n    return Navigator(\n      key: navigatorKey,\n      pages: [\n        MaterialPage(child: HomePage()),\n        if (selectedId != null)\n          MaterialPage(child: DetailsPage(id: selectedId!)),\n        if (show404) MaterialPage(child: NotFoundPage()),\n      ],\n      onPopPage: (route, result) {\n        if (!route.didPop(result)) return false;\n        selectedId = null;\n        notifyListeners();\n        return true;\n      },\n    );\n  }\n\n  @override\n  Future<void> setNewRoutePath(MyRoutePath path) async {\n    if (path.isUnknown) {\n      show404 = true;\n      return;\n    }\n    selectedId = path.id;\n    show404 = false;\n  }\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Full control over navigation state",
        "Deep linking and URL synchronization for web",
        "Better handling of complex navigation scenarios",
        "State restoration support",
      ],
      ar: [
        "تحكم كامل في حالة التنقل",
        "الروابط العميقة ومزامنة URL للويب",
        "معالجة أفضل لسيناريوهات التنقل المعقدة",
        "دعم استعادة الحالة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Steep learning curve and significant boilerplate",
        "Overkill for simple navigation needs",
        "Requires careful state management",
      ],
      ar: [
        "منحنى تعلم حاد وكود إضافي كبير",
        "مبالغ فيه لاحتياجات التنقل البسيطة",
        "يتطلب إدارة حالة دقيقة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Navigator 2.0 when:",
          value: [
            "Need declarative routing and deep linking",
            "Web app with URL-based navigation",
            "Complex navigation requirements with state restoration",
            "Multiple navigation stacks or nested routing",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Navigator 2.0 عندما:",
          value: [
            "تحتاج توجيه تصريحي وروابط عميقة",
            "تطبيق ويب مع تنقل بناءً على URLs",
            "متطلبات تنقل معقدة مع استعادة الحالة",
            "عدة أكوام تنقل أو توجيه متداخل",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "029",
    difficulty: .expert,
    categories: [.performance, .architecture],
    type: .theoretical,
    tags: ["renderObject", "elements", "widgets", "rendering", "internals"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "Explain the Widgets, Elements, and RenderObjects trees in Flutter.",
        answer: [
          StringContent(
            "Flutter's rendering architecture consists of three trees working together to efficiently display UI. Understanding this is key to performance optimization.",
          ),
          OrderedListContent(
            title: "The three trees:",
            value: [
              "Widget Tree: Immutable configuration describing what UI should look like. Cheap to create and destroy. Rebuilt frequently.",
              "Element Tree: Mutable instances managing widget lifecycle. Links Widget to RenderObject. Holds state. Reused across rebuilds when possible.",
              "RenderObject Tree: Handles layout (computing sizes) and painting (drawing pixels). Expensive to create. Updated in-place when possible.",
            ],
          ),
          StringContent(
            "The reconciliation process: When a widget rebuilds, Flutter compares new widget with old. If type and key match, it updates the existing Element and RenderObject instead of recreating them. This is why 'const' constructors are so important - they allow Flutter to skip updates entirely.",
          ),
        ],
        notes: [
          "Use 'const' constructors wherever possible - allows Flutter to reuse widgets without checking if they changed.",
          "Keys help Flutter match widgets during reconciliation - use when reordering or conditionally showing widgets of the same type.",
          "Understanding this architecture explains why setState() only rebuilds affected subtrees.",
          "RenderObjects are rarely created directly - StatelessWidget/StatefulWidget handle this for you.",
        ],
        bestUse:
            "Performance optimization, understanding rebuild behavior, creating custom low-level layout widgets",
      ),
      ar: QuestionContent(
        question: "اشرح أشجار الودجتس والعناصر وكائنات العرض في Flutter.",
        answer: [
          StringContent(
            "تتكون بنية العرض في Flutter من ثلاث أشجار تعمل معًا لعرض واجهة المستخدم بكفاءة. فهم هذا هو مفتاح تحسين الأداء.",
          ),
          OrderedListContent(
            title: "الأشجار الثلاث:",
            value: [
              "شجرة الودجتس: تكوين غير قابل للتغيير يصف كيف يجب أن تبدو الواجهة. رخيصة الإنشاء والتدمير. تُعاد بناؤها بشكل متكرر.",
              "شجرة العناصر: مثيلات قابلة للتغيير تدير دورة حياة الودجتس. تربط الودجت بـ RenderObject. تحتفظ بالحالة. تُعاد استخدامها عبر إعادة البناء عندما يكون ذلك ممكنًا.",
              "شجرة كائنات العرض: تتعامل مع التخطيط (حساب الأحجام) والرسم (رسم البكسلات). مكلفة الإنشاء. تُحدّث في مكانها عندما يكون ذلك ممكنًا.",
            ],
          ),
          StringContent(
            "عملية المصالحة: عندما يُعاد بناء ودجت، يقارن Flutter الودجت الجديد بالقديم. إذا تطابق النوع والمفتاح، فإنه يحدّث العنصر و RenderObject الموجودين بدلاً من إعادة إنشائهما. هذا هو سبب أهمية البانيات 'const' - فهي تسمح لـ Flutter بتخطي التحديثات تمامًا.",
          ),
        ],
        notes: [
          "استخدم البانيات 'const' حيثما كان ذلك ممكنًا - تسمح لـ Flutter بإعادة استخدام الودجتس دون التحقق مما إذا كانت قد تغيرت.",
          "المفاتيح تساعد Flutter في مطابقة الودجتس أثناء المصالحة - استخدمها عند إعادة الترتيب أو إظهار الودجتس من نفس النوع بشكل مشروط.",
          "فهم هذه البنية يفسر لماذا setState() تعيد بناء الأشجار الفرعية المتأثرة فقط.",
          "نادرًا ما يتم إنشاء RenderObjects مباشرة - StatelessWidget/StatefulWidget تتعامل مع هذا من أجلك.",
        ],
        bestUse:
            "تحسين الأداء، فهم سلوك إعادة البناء، إنشاء ودجتس تخطيط منخفضة المستوى مخصصة",
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// Using const to prevent rebuilds\nclass MyWidget extends StatelessWidget {\n  @override\n  Widget build(BuildContext context) {\n    return Column(\n      children: [\n        const Text('This never rebuilds'), // const widget\n        Text('This rebuilds'), // non-const\n        const Icon(Icons.star), // const widget\n      ],\n    );\n  }\n}",
      ),
      StrCodeBlock(
        "// How reconciliation works\n// Frame 1:\nColumn(\n  children: [\n    Text('A'), // Creates Element and RenderObject\n    Text('B'), // Creates Element and RenderObject\n  ],\n)\n\n// Frame 2 (after rebuild):\nColumn(\n  children: [\n    Text('A'), // Reuses Element and RenderObject (type matches)\n    Text('C'), // Updates Element's widget, updates RenderObject\n  ],\n)\n\n// With keys:\nColumn(\n  children: [\n    Text('A', key: ValueKey('a')),\n    Text('B', key: ValueKey('b')),\n  ],\n)\n// If widgets are reordered, keys ensure correct Elements are matched",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Efficient updates - only changed parts are recomputed",
        "Separation of concerns: configuration (Widget), lifecycle (Element), rendering (RenderObject)",
        "Enables powerful optimizations like const widgets",
      ],
      ar: [
        "تحديثات فعالة - يتم إعادة حساب الأجزاء المتغيرة فقط",
        "فصل الاهتمامات: التكوين (Widget)، دورة الحياة (Element)، العرض (RenderObject)",
        "يمكّن من تحسينات قوية مثل الودجتس const",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Complex architecture with steep learning curve",
        "Can be confusing for beginners",
        "Debugging can be challenging without understanding the tree structure",
      ],
      ar: [
        "بنية معقدة مع منحنى تعلم حاد",
        "يمكن أن تكون مربكة للمبتدئين",
        "يمكن أن يكون التصحيح صعبًا بدون فهم بنية الشجرة",
      ],
    ),
  ),
  InterviewQuestion(
    id: "030",
    difficulty: .advanced,
    categories: [.performance, .flutterBasics],
    type: .practical,
    tags: ["memoryLeak", "dispose", "devtools", "optimization"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "How to detect and fix Memory Leaks in Flutter?",
        answer: [
          StringContent(
            "Memory leaks occur when objects remain referenced after they're no longer needed, preventing Dart's Garbage Collector from reclaiming memory. This leads to increased memory consumption and potential app crashes.",
          ),
          OrderedListContent(
            title: "Common causes of memory leaks:",
            value: [
              "Not disposing controllers (AnimationController, TextEditingController, ScrollController)",
              "Not cancelling Stream subscriptions or Timer instances",
              "Storing BuildContext in class fields and using it in async gaps",
              "Holding references to widgets or State objects in global variables",
              "Using listeners without removing them in dispose()",
            ],
          ),
          StringContent(
            "Detection: Use Flutter DevTools Memory view to monitor heap size growth over time. Look for objects that persist after navigating away from screens. Enable the LeakTracker package for automated detection.",
          ),
          OrderedListContent(
            title: "How to fix memory leaks:",
            value: [
              "Always override dispose() in StatefulWidget's State class",
              "Call dispose() on all controllers and cancel all subscriptions",
              "Remove listeners before disposing",
              "Avoid storing BuildContext in instance variables for async operations",
              "Use weak references when necessary",
            ],
          ),
        ],
        notes: [
          "Always implement dispose() logic for stateful resources",
          "Use the 'leak_tracker' package for automated detection in debug mode",
          "Profile your app regularly using DevTools Memory tab",
          "Pay special attention to screens with animations, timers, or streams",
        ],
        bestUse:
            "Essential for maintaining long-running apps and ensuring stability on low-memory devices. Critical for production apps with complex state management.",
      ),
      ar: QuestionContent(
        question: "كيف تكتشف وتعالج تسرب الذاكرة في Flutter؟",
        answer: [
          StringContent(
            "يحدث تسرب الذاكرة عندما تظل الكائنات مشارًا إليها بعد عدم الحاجة إليها، مما يمنع جامع النفايات في Dart من استعادة الذاكرة. يؤدي هذا إلى زيادة استهلاك الذاكرة وانهيار التطبيق المحتمل.",
          ),
          OrderedListContent(
            title: "الأسباب الشائعة لتسرب الذاكرة:",
            value: [
              "عدم التخلص من المتحكمات (AnimationController، TextEditingController، ScrollController)",
              "عدم إلغاء اشتراكات Stream أو مثيلات Timer",
              "تخزين BuildContext في حقول الفئة واستخدامه في عمليات غير متزامنة",
              "الاحتفاظ بمراجع للودجتس أو كائنات State في متغيرات عامة",
              "استخدام المستمعات دون إزالتها في dispose()",
            ],
          ),
          StringContent(
            "الاكتشاف: استخدم عرض الذاكرة في Flutter DevTools لمراقبة نمو حجم الكومة بمرور الوقت. ابحث عن الكائنات التي تستمر بعد الخروج من الشاشات. فعّل حزمة LeakTracker للكشف التلقائي.",
          ),
          OrderedListContent(
            title: "كيفية إصلاح تسريبات الذاكرة:",
            value: [
              "استبدل دائمًا dispose() في فئة State الخاصة بـ StatefulWidget",
              "استدعِ dispose() على جميع المتحكمات وألغِ جميع الاشتراكات",
              "أزل المستمعات قبل التخلص من الموارد",
              "تجنب تخزين BuildContext في متغيرات المثيل للعمليات غير المتزامنة",
              "استخدم المراجع الضعيفة عند الضرورة",
            ],
          ),
        ],
        notes: [
          "نفذ دائمًا منطق dispose() للموارد ذات الحالة",
          "استخدم حزمة 'leak_tracker' للكشف التلقائي في وضع التصحيح",
          "راقب تطبيقك بانتظام باستخدام علامة تبويب الذاكرة في DevTools",
          "انتبه بشكل خاص للشاشات التي تحتوي على رسوم متحركة أو مؤقتات أو تدفقات",
        ],
        bestUse:
            "ضروري للحفاظ على التطبيقات طويلة التشغيل وضمان الاستقرار على الأجهزة ذات الذاكرة المنخفضة. حرج لتطبيقات الإنتاج مع إدارة الحالة المعقدة.",
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "@override\nvoid dispose() {\n  // Dispose controllers\n  _animationController.dispose();\n  _textController.dispose();\n  \n  // Cancel subscriptions\n  _streamSubscription?.cancel();\n  _timer?.cancel();\n  \n  // Remove listeners\n  _scrollController.removeListener(_onScroll);\n  \n  super.dispose();\n}",
      ),
      StrCodeBlock.bad(
        "@override\nvoid dispose() {\n  // Missing dispose calls - memory leak!\n  super.dispose();\n  // Controllers not disposed\n  // Subscriptions not cancelled\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Proper disposal prevents memory leaks and improves app performance",
        "DevTools provides excellent visualization of memory usage",
        "LeakTracker automates detection in development",
      ],
      ar: [
        "التخلص الصحيح يمنع تسريبات الذاكرة ويحسن أداء التطبيق",
        "توفر DevTools تصورًا ممتازًا لاستخدام الذاكرة",
        "يُؤتمت LeakTracker الكشف في التطوير",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Easy to forget dispose() calls during development",
        "Can be challenging to track down the source of leaks in complex apps",
        "Requires discipline and code review to maintain",
      ],
      ar: [
        "من السهل نسيان استدعاءات dispose() أثناء التطوير",
        "قد يكون من الصعب تتبع مصدر التسريبات في التطبيقات المعقدة",
        "يتطلب الانضباط ومراجعة الكود للحفاظ عليه",
      ],
    ),
  ),
  InterviewQuestion(
    id: "031",
    difficulty: .basic,
    categories: [.basic, .flutterBasics],
    type: .theoretical,
    tags: ["basic", "flutter", "crossplatform", "framework"],
    content: LocalizedValue(
      en: QuestionContent(
        question: 'What is Flutter?',
        answer: [
          StringContent(
            'Flutter is an open-source UI framework created by Google for building natively compiled applications for mobile (iOS & Android), web, desktop (Windows, macOS, Linux), and embedded devices from a single codebase.',
          ),
          UnorderedListContent(
            title: "Key characteristics:",
            value: [
              "Uses Dart programming language",
              "Provides a rich set of customizable widgets",
              "Renders UI using its own graphics engine (Skia/Impeller)",
              "Offers hot reload for fast development cycles",
              "Compiles to native ARM code for high performance",
            ],
          ),
          StringContent(
            "Flutter follows a declarative UI paradigm where you describe what the UI should look like, and the framework handles the updates efficiently.",
          ),
        ],
        bestUse:
            'Ideal for building cross-platform applications with custom, beautiful UI and consistent behavior across platforms. Best for MVPs, startups, and projects requiring rapid development.',
      ),
      ar: QuestionContent(
        question: 'ما هو Flutter؟',
        answer: [
          StringContent(
            'Flutter هو إطار عمل واجهة مستخدم مفتوح المصدر أنشأته Google لبناء تطبيقات مُترجمة بشكل أصلي للهواتف المحمولة (iOS و Android)، والويب، وسطح المكتب (Windows و macOS و Linux)، والأجهزة المدمجة من قاعدة كود واحدة.',
          ),
          UnorderedListContent(
            title: "الخصائص الرئيسية:",
            value: [
              "يستخدم لغة البرمجة Dart",
              "يوفر مجموعة غنية من الودجتس القابلة للتخصيص",
              "يعرض الواجهة باستخدام محرك الرسومات الخاص به (Skia/Impeller)",
              "يوفر إعادة التحميل السريع لدورات تطوير سريعة",
              "يترجم إلى كود ARM أصلي لأداء عالي",
            ],
          ),
          StringContent(
            "يتبع Flutter نموذج واجهة مستخدم إعلاني حيث تصف كيف يجب أن تبدو الواجهة، ويتعامل الإطار مع التحديثات بكفاءة.",
          ),
        ],
        bestUse:
            'مثالي لبناء تطبيقات عبر المنصات مع واجهة مستخدم مخصصة وجميلة وسلوك متسق عبر المنصات. الأفضل لـ MVP والشركات الناشئة والمشاريع التي تتطلب تطويرًا سريعًا.',
      ),
    ),
    pros: LocalizedValue(
      en: [
        "Single codebase for multiple platforms reduces development time and cost",
        "High performance due to native compilation",
        "Hot reload enables instant feedback during development",
        "Rich widget library with Material and Cupertino designs",
        "Strong community and growing ecosystem",
      ],
      ar: [
        "قاعدة كود واحدة لمنصات متعددة تقلل وقت التطوير والتكلفة",
        "أداء عالي بفضل الترجمة الأصلية",
        "إعادة التحميل السريع تمكن من ردود فعل فورية أثناء التطوير",
        "مكتبة ودجتس غنية بتصاميم Material و Cupertino",
        "مجتمع قوي ونظام بيئي متنامٍ",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Larger app size compared to native apps",
        "Fewer third-party libraries compared to mature platforms like iOS/Android native",
        "Learning Dart may add initial learning curve",
        "Platform-specific features require platform channels",
      ],
      ar: [
        "حجم تطبيق أكبر مقارنة بالتطبيقات الأصلية",
        "مكتبات طرف ثالث أقل مقارنة بالمنصات الناضجة مثل iOS/Android الأصلية",
        "تعلم Dart قد يضيف منحنى تعلم أولي",
        "الميزات الخاصة بالمنصة تتطلب قنوات المنصة",
      ],
    ),
  ),
  InterviewQuestion(
    id: "032",
    difficulty: .basic,
    categories: [.basic, .dartBasics],
    type: .theoretical,
    tags: ["basic", "dart", "language", "programming"],
    content: LocalizedValue(
      en: QuestionContent(
        question: 'What is Dart, and why is it used in Flutter?',
        answer: [
          StringContent(
            'Dart is a modern, object-oriented programming language developed by Google. It is optimized for building user interfaces and is the sole programming language used for Flutter development.',
          ),
          UnorderedListContent(
            title: "Key features of Dart:",
            value: [
              "Sound null safety prevents null reference errors at compile time",
              "Supports both AOT (Ahead-of-Time) and JIT (Just-in-Time) compilation",
              "Rich standard library and async/await for asynchronous programming",
              "Strongly typed with type inference",
              "Supports modern programming paradigms (functional, reactive)",
            ],
          ),
          StringContent(
            "Dart compiles to native machine code for iOS and Android, JavaScript for web, and native code for desktop platforms, enabling Flutter's cross-platform capabilities with high performance.",
          ),
        ],
        bestUse:
            'Best used for Flutter app development. Also suitable for backend development with frameworks like Shelf and server-side applications where performance matters.',
      ),
      ar: QuestionContent(
        question: 'ما هي لغة Dart ولماذا تُستخدم في Flutter؟',
        answer: [
          StringContent(
            'Dart هي لغة برمجة حديثة موجهة للكائنات طورتها Google. وهي محسّنة لبناء واجهات المستخدم وهي اللغة الوحيدة المستخدمة لتطوير Flutter.',
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية لـ Dart:",
            value: [
              "السلامة من القيمة الخالية تمنع أخطاء المرجع الخالي في وقت الترجمة",
              "تدعم كلاً من الترجمة المسبقة (AOT) والترجمة في وقت التشغيل (JIT)",
              "مكتبة قياسية غنية و async/await للبرمجة غير المتزامنة",
              "مكتوبة بقوة مع استنتاج النوع",
              "تدعم نماذج البرمجة الحديثة (الوظيفية، التفاعلية)",
            ],
          ),
          StringContent(
            "تترجم Dart إلى كود آلة أصلي لـ iOS و Android، و JavaScript للويب، وكود أصلي لمنصات سطح المكتب، مما يمكّن قدرات Flutter عبر المنصات بأداء عالٍ.",
          ),
        ],
        bestUse:
            'الأفضل استخدامًا لتطوير تطبيقات Flutter. مناسبة أيضًا لتطوير الواجهة الخلفية مع أطر عمل مثل Shelf والتطبيقات من جانب الخادم حيث يهم الأداء.',
      ),
    ),
    pros: LocalizedValue(
      en: [
        "Easy to learn for developers familiar with C-style syntax (Java, C#, JavaScript)",
        "Excellent tooling and IDE support (VS Code, Android Studio)",
        "Fast development with hot reload (JIT) and high performance in production (AOT)",
        "Null safety eliminates entire class of runtime errors",
      ],
      ar: [
        "سهلة التعلم للمطورين المعتادين على صيغة C (Java، C#، JavaScript)",
        "أدوات ودعم IDE ممتازان (VS Code، Android Studio)",
        "تطوير سريع مع إعادة التحميل السريع (JIT) وأداء عالٍ في الإنتاج (AOT)",
        "السلامة من القيمة الخالية تلغي فئة كاملة من أخطاء وقت التشغيل",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Smaller ecosystem compared to JavaScript or Python",
        "Primarily used for Flutter, limiting server-side adoption",
        "Less mature for backend development compared to Node.js or Python",
        "Smaller developer community than mainstream languages",
      ],
      ar: [
        "نظام بيئي أصغر مقارنة بـ JavaScript أو Python",
        "تُستخدم بشكل أساسي لـ Flutter، مما يحد من التبني من جانب الخادم",
        "أقل نضجًا لتطوير الواجهة الخلفية مقارنة بـ Node.js أو Python",
        "مجتمع مطورين أصغر من اللغات السائدة",
      ],
    ),
  ),
  InterviewQuestion(
    id: "033",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .theoretical,
    tags: ["basic", "flutter", "widgets", "ui"],
    content: LocalizedValue(
      en: QuestionContent(
        question: 'What are Widgets in Flutter?',
        answer: [
          StringContent(
            'Widgets are the fundamental building blocks of a Flutter app\'s user interface. In Flutter, everything is a widget - from structural elements like buttons and text to layout models like rows and columns, and even invisible elements like padding and themes.',
          ),
          UnorderedListContent(
            title: "Types of widgets:",
            value: [
              "StatelessWidget: Immutable widgets that don't change over time",
              "StatefulWidget: Mutable widgets that maintain state and can rebuild",
              "InheritedWidget: Propagates data down the widget tree efficiently",
              "RenderObjectWidget: Directly handles layout and painting",
            ],
          ),
          StringContent(
            "Widgets describe the UI declaratively based on current configuration and state. Flutter rebuilds the widget tree when state changes, using an efficient diffing algorithm to update only what's necessary.",
          ),
        ],
        bestUse:
            'Use widgets to compose UIs from simple, reusable components. Leverage StatelessWidget for static content and StatefulWidget for dynamic, interactive elements.',
      ),
      ar: QuestionContent(
        question: 'ما هي الودجتس (Widgets) في Flutter؟',
        answer: [
          StringContent(
            'الودجتس هي اللبنات الأساسية لواجهة مستخدم تطبيق Flutter. في Flutter، كل شيء ودجت - من العناصر الهيكلية مثل الأزرار والنصوص إلى نماذج التخطيط مثل الصفوف والأعمدة، وحتى العناصر غير المرئية مثل الحشو والسمات.',
          ),
          UnorderedListContent(
            title: "أنواع الودجتس:",
            value: [
              "StatelessWidget: ودجتس ثابتة لا تتغير مع الوقت",
              "StatefulWidget: ودجتس قابلة للتغيير تحافظ على الحالة ويمكن إعادة بنائها",
              "InheritedWidget: تنشر البيانات أسفل شجرة الودجت بكفاءة",
              "RenderObjectWidget: تتعامل مباشرة مع التخطيط والرسم",
            ],
          ),
          StringContent(
            "تصف الودجتس الواجهة بشكل إعلاني بناءً على التكوين والحالة الحالية. يعيد Flutter بناء شجرة الودجت عند تغيير الحالة، باستخدام خوارزمية فرق فعالة لتحديث ما هو ضروري فقط.",
          ),
        ],
        bestUse:
            'استخدم الودجتس لتكوين واجهات المستخدم من مكونات بسيطة قابلة لإعادة الاستخدام. استفد من StatelessWidget للمحتوى الثابت و StatefulWidget للعناصر الديناميكية التفاعلية.',
      ),
    ),
    pros: LocalizedValue(
      en: [
        "Highly composable - build complex UIs from simple widgets",
        "Declarative approach makes code easier to understand and maintain",
        "Hot reload works seamlessly with widget tree updates",
        "Extensive widget catalog for Material and Cupertino designs",
      ],
      ar: [
        "قابلة للتركيب بدرجة عالية - بناء واجهات مستخدم معقدة من ودجتس بسيطة",
        "النهج الإعلاني يجعل الكود أسهل للفهم والصيانة",
        "إعادة التحميل السريع تعمل بسلاسة مع تحديثات شجرة الودجت",
        "كتالوج ودجت واسع لتصاميم Material و Cupertino",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Deep widget trees can become complex and hard to navigate",
        "Requires understanding widget lifecycle for effective state management",
        "Performance issues if widget rebuilds are not optimized",
        "Learning curve for widget composition patterns",
      ],
      ar: [
        "أشجار الودجت العميقة يمكن أن تصبح معقدة ويصعب التنقل فيها",
        "يتطلب فهم دورة حياة الودجت لإدارة الحالة الفعالة",
        "مشاكل الأداء إذا لم يتم تحسين إعادة بناء الودجت",
        "منحنى تعلم لأنماط تكوين الودجت",
      ],
    ),
  ),
  InterviewQuestion(
    id: "034",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .stateManagement],
    type: .theoretical,
    tags: ["basic", "flutter", "widgets", "performance", "state"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'What is the difference between StatelessWidget and StatefulWidget?',
        answer: [
          StringContent(
            'StatelessWidget and StatefulWidget are the two fundamental widget types in Flutter, differing in how they handle state and rebuilds.',
          ),
          UnorderedListContent(
            title: "StatelessWidget:",
            value: [
              "Immutable - cannot change after being built",
              "Has no mutable state",
              "Rebuilds only when parent provides new configuration",
              "More performant - less overhead",
              "Example: Text, Icon, Container with fixed properties",
            ],
          ),
          UnorderedListContent(
            title: "StatefulWidget:",
            value: [
              "Has mutable state managed by a State object",
              "Can rebuild itself using setState()",
              "State persists across rebuilds",
              "Suitable for interactive and dynamic content",
              "Example: Checkbox, TextField, animations",
            ],
          ),
          StringContent(
            "Choose StatelessWidget for static content that depends only on constructor parameters. Choose StatefulWidget when the UI needs to change in response to user interaction or data updates.",
          ),
        ],
        bestUse:
            'Use StatelessWidget for static UI (icons, labels, layouts). Use StatefulWidget for interactive elements (forms, animations, counters) that change over time.',
      ),
      ar: QuestionContent(
        question: 'ما الفرق بين StatelessWidget و StatefulWidget؟',
        answer: [
          StringContent(
            'StatelessWidget و StatefulWidget هما نوعا الودجت الأساسيان في Flutter، يختلفان في كيفية التعامل مع الحالة وإعادة البناء.',
          ),
          UnorderedListContent(
            title: "StatelessWidget:",
            value: [
              "ثابتة - لا يمكن تغييرها بعد البناء",
              "ليس لها حالة قابلة للتغيير",
              "تُعاد بناؤها فقط عندما يوفر الأصل تكوينًا جديدًا",
              "أكثر كفاءة في الأداء - عبء أقل",
              "مثال: Text، Icon، Container بخصائص ثابتة",
            ],
          ),
          UnorderedListContent(
            title: "StatefulWidget:",
            value: [
              "لها حالة قابلة للتغيير تُدار بواسطة كائن State",
              "يمكن إعادة بناء نفسها باستخدام setState()",
              "تستمر الحالة عبر عمليات إعادة البناء",
              "مناسبة للمحتوى التفاعلي والديناميكي",
              "مثال: Checkbox، TextField، الرسوم المتحركة",
            ],
          ),
          StringContent(
            "اختر StatelessWidget للمحتوى الثابت الذي يعتمد فقط على معاملات المُنشئ. اختر StatefulWidget عندما تحتاج الواجهة إلى التغيير استجابةً لتفاعل المستخدم أو تحديثات البيانات.",
          ),
        ],
        bestUse:
            'استخدم StatelessWidget لواجهة المستخدم الثابتة (الرموز، التسميات، التخطيطات). استخدم StatefulWidget للعناصر التفاعلية (النماذج، الرسوم المتحركة، العدادات) التي تتغير مع الوقت.',
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// StatelessWidget example\nclass GreetingText extends StatelessWidget {\n  final String name;\n  \n  const GreetingText({required this.name});\n  \n  @override\n  Widget build(BuildContext context) {\n    return Text('Hello, \$name!');\n  }\n}",
      ),
      StrCodeBlock.good(
        "// StatefulWidget example\nclass Counter extends StatefulWidget {\n  @override\n  State<Counter> createState() => _CounterState();\n}\n\nclass _CounterState extends State<Counter> {\n  int _count = 0;\n\n  void _increment() {\n    setState(() {\n      _count++;\n    });\n  }\n\n  @override\n  Widget build(BuildContext context) {\n    return Column(\n      children: [\n        Text('Count: \$_count'),\n        ElevatedButton(\n          onPressed: _increment,\n          child: Text('Increment'),\n        ),\n      ],\n    );\n  }\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "StatelessWidget is simpler, faster, and easier to test",
        "StatefulWidget enables dynamic UI with lifecycle hooks",
        "Clear separation encourages good architecture",
        "Both work seamlessly with Flutter's reactive model",
      ],
      ar: [
        "StatelessWidget أبسط وأسرع وأسهل في الاختبار",
        "StatefulWidget تمكّن واجهة المستخدم الديناميكية مع خطافات دورة الحياة",
        "الفصل الواضح يشجع على بنية جيدة",
        "كلاهما يعمل بسلاسة مع نموذج Flutter التفاعلي",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "StatelessWidget cannot respond to state changes directly",
        "StatefulWidget adds complexity and memory overhead",
        "Easy to misuse setState() leading to performance issues",
        "Requires understanding when to use each type",
      ],
      ar: [
        "StatelessWidget لا يمكنها الاستجابة لتغييرات الحالة مباشرة",
        "StatefulWidget تضيف تعقيدًا وعبء ذاكرة",
        "من السهل إساءة استخدام setState() مما يؤدي إلى مشاكل الأداء",
        "يتطلب فهمًا لمتى يتم استخدام كل نوع",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Widget Type Selection:",
          value: [
            "StatelessWidget: Static content, no internal state changes",
            "StatefulWidget: Dynamic content, responds to user input, has lifecycle",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار نوع الويدجت:",
          value: [
            "StatelessWidget: محتوى ثابت، لا تغييرات داخلية",
            "StatefulWidget: محتوى ديناميكي، يستجيب للمدخلات",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "035",
    difficulty: .intermediate,
    categories: [.flutterBasics, .ui, .performance],
    type: .theoretical,
    tags: ["intermediate", "flutter", "widgets", "keys", "state"],
    content: LocalizedValue(
      en: QuestionContent(
        question: 'What is a Key in Flutter and why is it used?',
        answer: [
          StringContent(
            'A Key is an identifier for Widgets, Elements, and SemanticsNodes in Flutter. Keys help the framework identify which widgets have changed, been added, or removed when the widget tree is rebuilt.',
          ),
          UnorderedListContent(
            title: "Types of Keys:",
            value: [
              "ValueKey: Uses a value to identify widgets (e.g., ValueKey(id))",
              "ObjectKey: Uses object identity for comparison",
              "UniqueKey: Creates a unique key for each widget instance",
              "GlobalKey: Provides access to widget state across the tree",
              "PageStorageKey: Preserves scroll position and form state",
            ],
          ),
          StringContent(
            "Keys are particularly important when reordering lists, removing items, or maintaining state across rebuilds. Without keys, Flutter might reuse widgets incorrectly, leading to state bugs or lost data.",
          ),
        ],
        notes: [
          "Use keys sparingly - only when you need to preserve state or control widget identity",
          "GlobalKey is expensive - use it only when you need to access widget state from outside",
          "For lists, prefer ValueKey over UniqueKey for better performance",
        ],
        bestUse:
            'Use Keys when reordering or dynamically adding/removing widgets in lists, when you need to preserve widget state during parent rebuilds, or when accessing widget state globally.',
      ),
      ar: QuestionContent(
        question: 'ما هو المفتاح (Key) في Flutter ولماذا يُستخدم؟',
        answer: [
          StringContent(
            'المفتاح (Key) هو معرّف للودجتس والعناصر (Elements) وعقد الدلالات في Flutter. تساعد المفاتيح الإطار على تحديد الودجتس التي تغيرت أو أُضيفت أو أُزيلت عند إعادة بناء شجرة الودجت.',
          ),
          UnorderedListContent(
            title: "أنواع المفاتيح:",
            value: [
              "ValueKey: يستخدم قيمة لتحديد الودجتس (مثل ValueKey(id))",
              "ObjectKey: يستخدم هوية الكائن للمقارنة",
              "UniqueKey: ينشئ مفتاحًا فريدًا لكل مثيل ودجت",
              "GlobalKey: يوفر الوصول إلى حالة الودجت عبر الشجرة",
              "PageStorageKey: يحفظ موضع التمرير وحالة النموذج",
            ],
          ),
          StringContent(
            "المفاتيح مهمة بشكل خاص عند إعادة ترتيب القوائم أو إزالة العناصر أو الحفاظ على الحالة عبر عمليات إعادة البناء. بدون مفاتيح، قد يعيد Flutter استخدام الودجتس بشكل غير صحيح، مما يؤدي إلى أخطاء الحالة أو فقدان البيانات.",
          ),
        ],
        notes: [
          "استخدم المفاتيح بحذر - فقط عندما تحتاج للحفاظ على الحالة أو التحكم في هوية الودجت",
          "GlobalKey مكلف - استخدمه فقط عندما تحتاج للوصول إلى حالة الودجت من الخارج",
          "للقوائم، فضّل ValueKey على UniqueKey لأداء أفضل",
        ],
        bestUse:
            'استخدم المفاتيح عند إعادة ترتيب أو إضافة/إزالة الودجتس ديناميكيًا في القوائم، أو عندما تحتاج للحفاظ على حالة الودجت أثناء إعادة بناء الأصل، أو عند الوصول إلى حالة الودجت عالميًا.',
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// Using ValueKey for list items\nListView.builder(\n  itemCount: items.length,\n  itemBuilder: (context, index) {\n    final item = items[index];\n    return ListTile(\n      key: ValueKey(item.id),\n      title: Text(item.name),\n    );\n  },\n)",
      ),
      StrCodeBlock.bad(
        "// No keys - state might be lost on reorder\nListView.builder(\n  itemCount: items.length,\n  itemBuilder: (context, index) {\n    return ListTile(\n      // Missing key!\n      title: Text(items[index].name),\n    );\n  },\n)",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Prevents unexpected behavior when reordering widgets",
        "Preserves widget state during rebuilds",
        "GlobalKey enables accessing state from anywhere in the tree",
        "Essential for animations and list manipulations",
      ],
      ar: [
        "يمنع السلوك غير المتوقع عند إعادة ترتيب الودجتس",
        "يحفظ حالة الودجت أثناء إعادة البناء",
        "GlobalKey يمكّن من الوصول إلى الحالة من أي مكان في الشجرة",
        "ضروري للرسوم المتحركة ومعالجات القوائم",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Overusing keys can complicate code unnecessarily",
        "GlobalKey has performance overhead",
        "Not needed for most simple use cases",
        "Can cause confusion if misused",
      ],
      ar: [
        "الاستخدام المفرط للمفاتيح قد يعقد الكود دون داعٍ",
        "GlobalKey له عبء أداء",
        "غير مطلوب لمعظم حالات الاستخدام البسيطة",
        "يمكن أن يسبب الارتباك إذا أُسيء استخدامه",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Keys when:",
          value: [
            "Maintaining state in dynamic lists",
            "Preserving widget state during reordering",
            "Distinguishing similar widgets in the tree",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Keys عندما:",
          value: [
            "الحفاظ على الحالة في القوائم الديناميكية",
            "الحفاظ على حالة العنصر عند إعادة الترتيب",
            "التمييز بين عناصر متشابهة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "036",
    difficulty: .basic,
    categories: [.flutterBasics, .performance],
    type: .theoretical,
    tags: ["intermediate", "flutter", "development", "hotreload"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'Explain the difference between Hot Reload and Hot Restart in Flutter.',
        answer: [
          StringContent(
            'Hot Reload and Hot Restart are two development features in Flutter that speed up the development cycle, but they work differently.',
          ),
          UnorderedListContent(
            title: "Hot Reload:",
            value: [
              "Injects updated source code into the running Dart VM",
              "Preserves app state (variables, navigation stack, etc.)",
              "Rebuilds the widget tree with new code",
              "Takes ~1 second typically",
              "Uses JIT (Just-In-Time) compilation",
              "Keyboard shortcut: r in terminal, or Ctrl/Cmd+S in IDE",
            ],
          ),
          UnorderedListContent(
            title: "Hot Restart:",
            value: [
              "Completely restarts the application",
              "Resets all app state to initial values",
              "Rebuilds widget tree from scratch",
              "Takes ~5-10 seconds",
              "Re-runs main() function",
              "Keyboard shortcut: Shift+r in terminal",
            ],
          ),
          StringContent(
            "Use Hot Reload for UI changes and logic updates. Use Hot Restart when changing app initialization, global variables, main() function, or when Hot Reload doesn't work correctly.",
          ),
        ],
        notes: [
          "Hot Reload doesn't work for native code changes (platform channels)",
          "Some changes require Hot Restart: changing initState, modifying app-level configurations",
          "Hot Reload is one of Flutter's biggest productivity advantages",
        ],
        bestUse:
            'Use Hot Reload for rapid UI iteration and most code changes. Use Hot Restart when state needs to be reset or major structural changes are made.',
      ),
      ar: QuestionContent(
        question: 'اشرح الفرق بين Hot Reload و Hot Restart في Flutter.',
        answer: [
          StringContent(
            'Hot Reload و Hot Restart هما ميزتان للتطوير في Flutter تسرّعان دورة التطوير، لكنهما يعملان بشكل مختلف.',
          ),
          UnorderedListContent(
            title: "Hot Reload:",
            value: [
              "يحقن الكود المصدري المحدث في Dart VM قيد التشغيل",
              "يحافظ على حالة التطبيق (المتغيرات، مكدس التنقل، إلخ)",
              "يعيد بناء شجرة الودجت بالكود الجديد",
              "يستغرق عادةً ~1 ثانية",
              "يستخدم ترجمة JIT (Just-In-Time)",
              "اختصار لوحة المفاتيح: r في الطرفية، أو Ctrl/Cmd+S في IDE",
            ],
          ),
          UnorderedListContent(
            title: "Hot Restart:",
            value: [
              "يعيد تشغيل التطبيق بالكامل",
              "يعيد تعيين جميع حالات التطبيق إلى القيم الأولية",
              "يعيد بناء شجرة الودجت من الصفر",
              "يستغرق ~5-10 ثوانٍ",
              "يعيد تشغيل دالة main()",
              "اختصار لوحة المفاتيح: Shift+r في الطرفية",
            ],
          ),
          StringContent(
            "استخدم Hot Reload لتغييرات الواجهة وتحديثات المنطق. استخدم Hot Restart عند تغيير تهيئة التطبيق أو المتغيرات العامة أو دالة main()، أو عندما لا يعمل Hot Reload بشكل صحيح.",
          ),
        ],
        notes: [
          "Hot Reload لا يعمل لتغييرات الكود الأصلي (قنوات المنصة)",
          "بعض التغييرات تتطلب Hot Restart: تغيير initState، تعديل إعدادات مستوى التطبيق",
          "Hot Reload هي واحدة من أكبر مزايا الإنتاجية في Flutter",
        ],
        bestUse:
            'استخدم Hot Reload للتكرار السريع للواجهة ومعظم تغييرات الكود. استخدم Hot Restart عندما تحتاج الحالة إلى إعادة التعيين أو عند إجراء تغييرات هيكلية كبيرة.',
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// Changes that work with Hot Reload:\n// - UI modifications\nWidget build(BuildContext context) {\n  return Text('Updated text'); // Hot Reload works\n}\n\n// - Method implementations\nvoid _handleTap() {\n  print('New implementation'); // Hot Reload works\n}",
      ),
      StrCodeBlock.bad(
        "// Changes that need Hot Restart:\n// - Changing main()\nvoid main() {\n  runApp(MyNewApp()); // Needs Hot Restart\n}\n\n// - Modifying global variables\nfinal String appTitle = 'New Title'; // Needs Hot Restart\n\n// - Changing initState\n@override\nvoid initState() {\n  super.initState();\n  _newInitialization(); // Needs Hot Restart\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Hot Reload dramatically speeds up development with instant feedback",
        "Preserves navigation state and temporary data during reload",
        "Hot Restart ensures clean state for testing from scratch",
        "Both features work reliably with Flutter's architecture",
      ],
      ar: [
        "Hot Reload يسرّع التطوير بشكل كبير مع ردود فعل فورية",
        "يحافظ على حالة التنقل والبيانات المؤقتة أثناء إعادة التحميل",
        "Hot Restart يضمن حالة نظيفة للاختبار من الصفر",
        "كلتا الميزتين تعملان بشكل موثوق مع بنية Flutter",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Hot Reload doesn't work for all code changes (native code, app initialization)",
        "Hot Restart is slower and loses current state",
        "Can be confusing to know when to use which",
        "Hot Reload can occasionally lead to inconsistent state",
      ],
      ar: [
        "Hot Reload لا يعمل لجميع تغييرات الكود (الكود الأصلي، تهيئة التطبيق)",
        "Hot Restart أبطأ ويفقد الحالة الحالية",
        "قد يكون محيرًا معرفة متى تستخدم أيهما",
        "Hot Reload يمكن أن يؤدي أحيانًا إلى حالة غير متسقة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Development Feature Usage:",
          value: [
            "Hot Reload: Quick UI changes, preserves app state",
            "Hot Restart: Reset app state, rebuild from scratch",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدام ميزات التطوير:",
          value: [
            "Hot Reload: تغييرات سريعة، يحفظ حالة التطبيق",
            "Hot Restart: إعادة تعيين الحالة، بناء من الصفر",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "037",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .theoretical,
    tags: ["basic", "flutter", "ui", "material"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'What is the purpose of the MaterialApp and Scaffold widgets?',
        answer: [
          StringContent(
            'MaterialApp and Scaffold are foundational widgets that provide structure and Material Design components for Flutter applications.',
          ),
          UnorderedListContent(
            title: "MaterialApp provides:",
            value: [
              "Theme configuration (colors, typography, shapes)",
              "Navigation and routing management",
              "Localization and internationalization support",
              "Title and app-wide settings",
              "Wrapper for Material Design requirements",
            ],
          ),
          UnorderedListContent(
            title: "Scaffold provides:",
            value: [
              "AppBar at the top of the screen",
              "Drawer for side navigation",
              "BottomNavigationBar and BottomSheet",
              "FloatingActionButton positioning",
              "SnackBar for temporary messages",
              "Basic Material Design layout structure",
            ],
          ),
          StringContent(
            "MaterialApp is typically the root widget of your app, while Scaffold is used for individual screens to provide consistent layout structure.",
          ),
        ],
        bestUse:
            'Use MaterialApp as your app root for Material Design apps. Use Scaffold for each screen that needs standard Material Design layout elements (app bar, drawer, FAB, etc.).',
      ),
      ar: QuestionContent(
        question: 'ما هو غرض ودجت MaterialApp و Scaffold؟',
        answer: [
          StringContent(
            'MaterialApp و Scaffold هما ودجتان أساسيتان توفران البنية ومكونات Material Design لتطبيقات Flutter.',
          ),
          UnorderedListContent(
            title: "توفر MaterialApp:",
            value: [
              "تكوين السمة (الألوان، الطباعة، الأشكال)",
              "إدارة التنقل والتوجيه",
              "دعم الترجمة والعولمة",
              "العنوان والإعدادات على مستوى التطبيق",
              "غلاف لمتطلبات Material Design",
            ],
          ),
          UnorderedListContent(
            title: "توفر Scaffold:",
            value: [
              "AppBar في أعلى الشاشة",
              "Drawer للتنقل الجانبي",
              "BottomNavigationBar و BottomSheet",
              "موضع FloatingActionButton",
              "SnackBar للرسائل المؤقتة",
              "بنية تخطيط Material Design الأساسية",
            ],
          ),
          StringContent(
            "MaterialApp عادةً هي الودجت الجذر لتطبيقك، بينما تُستخدم Scaffold للشاشات الفردية لتوفير بنية تخطيط متسقة.",
          ),
        ],
        bestUse:
            'استخدم MaterialApp كجذر لتطبيقك لتطبيقات Material Design. استخدم Scaffold لكل شاشة تحتاج عناصر تخطيط Material Design القياسية (شريط التطبيق، الدرج، FAB، إلخ).',
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "import 'package:flutter/material.dart';\n\nvoid main() {\n  runApp(MyApp());\n}\n\nclass MyApp extends StatelessWidget {\n  @override\n  Widget build(BuildContext context) {\n    return MaterialApp(\n      title: 'My App',\n      theme: ThemeData(\n        primarySwatch: Colors.blue,\n      ),\n      home: HomeScreen(),\n    );\n  }\n}\n\nclass HomeScreen extends StatelessWidget {\n  @override\n  Widget build(BuildContext context) {\n    return Scaffold(\n      appBar: AppBar(\n        title: Text('Home'),\n      ),\n      body: Center(\n        child: Text('Hello, Flutter!'),\n      ),\n      floatingActionButton: FloatingActionButton(\n        onPressed: () {},\n        child: Icon(Icons.add),\n      ),\n    );\n  }\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "MaterialApp handles theme, navigation, and localization in one place",
        "Scaffold provides pre-built Material Design components",
        "Saves significant development time with ready-to-use layouts",
        "Ensures consistent Material Design across the app",
      ],
      ar: [
        "MaterialApp تتعامل مع السمة والتنقل والترجمة في مكان واحد",
        "Scaffold توفر مكونات Material Design جاهزة",
        "توفر وقت تطوير كبير مع تخطيطات جاهزة للاستخدام",
        "تضمن Material Design متسق عبر التطبيق",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Enforces Material Design - not suitable for custom designs",
        "For iOS-style apps, use CupertinoApp and CupertinoPageScaffold instead",
        "Can add overhead if you don't need Material components",
        "Learning curve for all available Scaffold properties",
      ],
      ar: [
        "تفرض Material Design - غير مناسبة للتصاميم المخصصة",
        "لتطبيقات بنمط iOS، استخدم CupertinoApp و CupertinoPageScaffold بدلاً من ذلك",
        "يمكن أن تضيف عبئًا إذا لم تكن بحاجة إلى مكونات Material",
        "منحنى تعلم لجميع خصائص Scaffold المتاحة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Core Widgets Usage:",
          value: [
            "MaterialApp: Root widget, Material Design theme, routing",
            "Scaffold: Basic screen structure (AppBar, Body, FAB, Drawer)",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدام العناصر الأساسية:",
          value: [
            "MaterialApp: العنصر الجذر، ثيم Material، التوجيه",
            "Scaffold: هيكل الشاشة الأساسي (شريط علوي، محتوى، زر عائم)",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "038",
    difficulty: .intermediate,
    categories: [.flutterBasics, .stateManagement],
    type: .theoretical,
    tags: ["intermediate", "flutter", "widgets", "lifecycle"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'What is a Flutter Widget\'s lifecycle (StatefulWidget lifecycle)?',
        answer: [
          StringContent(
            'A StatefulWidget has a State object with a well-defined lifecycle consisting of several methods called at different stages.',
          ),
          OrderedListContent(
            title: "Lifecycle methods in order:",
            value: [
              "createState(): Creates the mutable state for the widget",
              "initState(): Called once when State is inserted into the tree",
              "didChangeDependencies(): Called after initState and when inherited widgets change",
              "build(): Called to construct the widget (can be called multiple times)",
              "didUpdateWidget(): Called when widget configuration changes",
              "setState(): Triggers a rebuild of the widget",
              "deactivate(): Called when State is removed from tree temporarily",
              "dispose(): Called when State is removed permanently",
              "reassemble(): Called during hot reload (debug mode only)",
            ],
          ),
          StringContent(
            "Understanding this lifecycle is crucial for proper resource management, such as initializing controllers in initState() and cleaning them up in dispose().",
          ),
        ],
        notes: [
          "initState() is called only once - use it for one-time initialization",
          "dispose() is the mirror of initState() - always clean up resources here",
          "build() can be called many times - keep it pure and fast",
          "Avoid async operations in initState() - use didChangeDependencies() instead",
        ],
        bestUse:
            'Use initState() for one-time setup, build() to construct UI, setState() to trigger rebuilds, and dispose() to clean up resources like controllers and subscriptions.',
      ),
      ar: QuestionContent(
        question:
            'ما هي دورة حياة الودجت في Flutter (دورة حياة StatefulWidget)؟',
        answer: [
          StringContent(
            'StatefulWidget لها كائن State بدورة حياة محددة جيدًا تتكون من عدة دوال يتم استدعاؤها في مراحل مختلفة.',
          ),
          OrderedListContent(
            title: "دوال دورة الحياة بالترتيب:",
            value: [
              "createState(): تنشئ الحالة القابلة للتغيير للودجت",
              "initState(): تُستدعى مرة واحدة عند إدراج State في الشجرة",
              "didChangeDependencies(): تُستدعى بعد initState وعندما تتغير الودجتس الموروثة",
              "build(): تُستدعى لبناء الودجت (يمكن استدعاؤها عدة مرات)",
              "didUpdateWidget(): تُستدعى عندما يتغير تكوين الودجت",
              "setState(): تُطلق إعادة بناء الودجت",
              "deactivate(): تُستدعى عند إزالة State من الشجرة مؤقتًا",
              "dispose(): تُستدعى عند إزالة State بشكل دائم",
              "reassemble(): تُستدعى أثناء Hot Reload (وضع التصحيح فقط)",
            ],
          ),
          StringContent(
            "فهم دورة الحياة هذه ضروري للإدارة الصحيحة للموارد، مثل تهيئة المتحكمات في initState() وتنظيفها في dispose().",
          ),
        ],
        notes: [
          "initState() تُستدعى مرة واحدة فقط - استخدمها للتهيئة لمرة واحدة",
          "dispose() هي المرآة لـ initState() - نظف الموارد دائمًا هنا",
          "build() يمكن استدعاؤها عدة مرات - اجعلها نقية وسريعة",
          "تجنب العمليات غير المتزامنة في initState() - استخدم didChangeDependencies() بدلاً من ذلك",
        ],
        bestUse:
            'استخدم initState() للإعداد لمرة واحدة، وbuild() لبناء الواجهة، وsetState() لتحفيز إعادة البناء، وdispose() لتنظيف الموارد مثل المتحكمات والاشتراكات.',
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "class MyWidget extends StatefulWidget {\n  @override\n  _MyWidgetState createState() => _MyWidgetState();\n}\n\nclass _MyWidgetState extends State<MyWidget> {\n  late AnimationController _controller;\n  StreamSubscription? _subscription;\n\n  @override\n  void initState() {\n    super.initState();\n    // One-time initialization\n    _controller = AnimationController(\n      vsync: this,\n      duration: Duration(seconds: 1),\n    );\n    _setupStream();\n  }\n\n  @override\n  void didChangeDependencies() {\n    super.didChangeDependencies();\n    // Called when inherited widgets change\n  }\n\n  @override\n  Widget build(BuildContext context) {\n    // Build UI - can be called many times\n    return Container();\n  }\n\n  @override\n  void dispose() {\n    // Clean up resources\n    _controller.dispose();\n    _subscription?.cancel();\n    super.dispose();\n  }\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Well-defined lifecycle enables proper resource management",
        "Separation of concerns with different lifecycle methods",
        "initState/dispose pattern prevents memory leaks",
        "Hooks available for different stages of widget life",
      ],
      ar: [
        "دورة الحياة المحددة جيدًا تمكن من الإدارة الصحيحة للموارد",
        "فصل الاهتمامات مع دوال دورة الحياة المختلفة",
        "نمط initState/dispose يمنع تسريبات الذاكرة",
        "خطافات متاحة لمراحل مختلفة من حياة الودجت",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Complex lifecycle can be confusing for beginners",
        "Easy to forget dispose() calls leading to leaks",
        "Misusing lifecycle methods can cause bugs",
        "Requires understanding order of execution",
      ],
      ar: [
        "دورة الحياة المعقدة يمكن أن تكون محيرة للمبتدئين",
        "من السهل نسيان استدعاءات dispose() مما يؤدي إلى تسريبات",
        "إساءة استخدام دوال دورة الحياة يمكن أن تسبب أخطاء",
        "يتطلب فهم ترتيب التنفيذ",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Lifecycle methods when:",
          value: [
            "initState: Initializing controllers or fetching initial data",
            "didChangeDependencies: Handling layout changes based on MediaQuery or Theme",
            "build: Defining the widget structure based on current state",
            "dispose: Cleaning up listeners, timers, and controllers to avoid memory leaks",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم طرق دورة الحياة عندما:",
          value: [
            "initState: تهيئة المتحكمات أو جلب البيانات الأولية",
            "didChangeDependencies: التعامل مع تغييرات التخطيط بناءً على البيانات المستوحاة",
            "build: تحديد هيكل الودجت بناءً على الحالة الحالية",
            "dispose: تنظيف المستمعين، المؤقتات، والمتحكمات لتجنب تسرب الذاكرة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "039",
    difficulty: .intermediate,
    categories: [.dartBasics, .oop],
    type: .theoretical,
    tags: ["intermediate", "dart", "oop", "mixins"],
    content: LocalizedValue(
      en: QuestionContent(
        question: 'What are mixins in Dart and how are they used?',
        answer: [
          StringContent(
            'Mixins are a way to reuse code in multiple class hierarchies. They allow you to add functionality to classes without using inheritance, solving the diamond problem of multiple inheritance.',
          ),
          UnorderedListContent(
            title: "Key characteristics of mixins:",
            value: [
              "Declared using the 'mixin' keyword",
              "Applied to classes using the 'with' keyword",
              "Can have methods, getters, setters, and fields",
              "Cannot have constructors",
              "Multiple mixins can be applied to a single class",
              "Applied in left-to-right order",
            ],
          ),
          StringContent(
            "Mixins are particularly useful for adding common functionality (like logging, serialization, or validation) across unrelated classes without creating a deep inheritance hierarchy.",
          ),
        ],
        notes: [
          "Mixins are applied in order - later mixins can override earlier ones",
          "Use 'on' keyword to restrict which classes can use a mixin",
          "Prefer composition over inheritance, and mixins over deep class hierarchies",
        ],
        bestUse:
            'Use mixins to share functionality across different class hierarchies, for cross-cutting concerns like logging or validation, and to avoid deep inheritance trees.',
      ),
      ar: QuestionContent(
        question: 'ما هي الـ mixins في Dart وكيف تُستخدم؟',
        answer: [
          StringContent(
            'الـ mixins هي طريقة لإعادة استخدام الكود في تسلسلات هرمية متعددة للفئات. تسمح لك بإضافة وظائف إلى الفئات دون استخدام الميراث، مما يحل مشكلة الماس في الميراث المتعدد.',
          ),
          UnorderedListContent(
            title: "الخصائص الرئيسية للـ mixins:",
            value: [
              "تُعلن باستخدام الكلمة المحجوزة 'mixin'",
              "تُطبق على الفئات باستخدام الكلمة المحجوزة 'with'",
              "يمكن أن تحتوي على دوال، وgetters، وsetters، وحقول",
              "لا يمكن أن تحتوي على منشئات",
              "يمكن تطبيق mixins متعددة على فئة واحدة",
              "تُطبق بترتيب من اليسار إلى اليمين",
            ],
          ),
          StringContent(
            "الـ mixins مفيدة بشكل خاص لإضافة وظائف شائعة (مثل التسجيل أو التسلسل أو التحقق) عبر فئات غير مرتبطة دون إنشاء تسلسل هرمي عميق للميراث.",
          ),
        ],
        notes: [
          "تُطبق الـ mixins بالترتيب - يمكن للـ mixins اللاحقة تجاوز السابقة",
          "استخدم الكلمة المحجوزة 'on' لتقييد الفئات التي يمكنها استخدام mixin",
          "فضّل التكوين على الميراث، والـ mixins على التسلسلات الهرمية العميقة للفئات",
        ],
        bestUse:
            'استخدم الـ mixins لمشاركة الوظائف عبر تسلسلات هرمية مختلفة للفئات، للاهتمامات المتقاطعة مثل التسجيل أو التحقق، ولتجنب أشجار الميراث العميقة.',
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// Define a mixin\nmixin LoggerMixin {\n  void log(String message) {\n    print('[LOG] \${DateTime.now()}: \$message');\n  }\n}\n\nmixin ValidationMixin {\n  bool validateEmail(String email) {\n    return email.contains('@');\n  }\n}\n\n// Use mixins with 'with'\nclass UserService with LoggerMixin, ValidationMixin {\n  void createUser(String email) {\n    if (validateEmail(email)) {\n      log('Creating user with email: \$email');\n      // Create user logic\n    }\n  }\n}\n\n// Restricted mixin using 'on'\nmixin DatabaseMixin on UserService {\n  void saveToDb() {\n    log('Saving to database');\n  }\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Enables code reuse without inheritance constraints",
        "Avoids deep class hierarchies and diamond problem",
        "Multiple mixins can be combined flexibly",
        "Clear separation of concerns",
      ],
      ar: [
        "تمكّن من إعادة استخدام الكود دون قيود الميراث",
        "تتجنب التسلسلات الهرمية العميقة للفئات ومشكلة الماس",
        "يمكن دمج mixins متعددة بمرونة",
        "فصل واضح للاهتمامات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Overusing mixins can make code hard to understand",
        "Order of mixins matters - can lead to unexpected behavior",
        "Can cause naming conflicts if not careful",
        "More complex than simple inheritance",
      ],
      ar: [
        "الاستخدام المفرط للـ mixins يمكن أن يجعل الكود صعب الفهم",
        "ترتيب الـ mixins مهم - يمكن أن يؤدي إلى سلوك غير متوقع",
        "يمكن أن يسبب تعارضات في التسمية إذا لم تكن حذرًا",
        "أكثر تعقيدًا من الميراث البسيط",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Mixins when:",
          value: [
            "Reusing code across multiple independent class hierarchies",
            "Adding optional capabilities to classes (e.g., logging, validation)",
            "Avoiding the limitations of single inheritance",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Mixins عندما:",
          value: [
            "إعادة استخدام الكود عبر فئات غير مترابطة",
            "إضافة قدرات اختيارية للفئات (مثل السجلات، التحقق)",
            "تجنب قيود الوراثة الفردية",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "040",
    difficulty: .basic,
    categories: [.dartBasics, .modernFeatures],
    type: .theoretical,
    tags: ["intermediate", "dart", "extensions"],
    content: LocalizedValue(
      en: QuestionContent(
        question: 'What are extension methods in Dart?',
        answer: [
          StringContent(
            'Extension methods allow you to add new functionality to existing classes without modifying their source code or creating subclasses. They provide a clean way to extend libraries and built-in types.',
          ),
          UnorderedListContent(
            title: "Key features of extensions:",
            value: [
              "Declared using the 'extension' keyword",
              "Can add methods, getters, setters, and operators",
              "Work on any type including built-in types",
              "Statically resolved at compile time",
              "Cannot add instance fields or override existing members",
              "Can be named or anonymous",
            ],
          ),
          StringContent(
            "Extensions are particularly useful for adding utility methods to core types like String, List, or DateTime without polluting the global namespace.",
          ),
        ],
        notes: [
          "Extensions are resolved statically - the type must be known at compile time",
          "Named extensions can be imported selectively with 'show' or 'hide'",
          "Cannot override existing instance methods",
          "Great for adding domain-specific helpers",
        ],
        bestUse:
            'Use extensions to add utility methods to existing types, create domain-specific helpers, and improve code readability without creating wrapper classes.',
      ),
      ar: QuestionContent(
        question: 'ما هي طرق الامتداد (extension methods) في Dart؟',
        answer: [
          StringContent(
            'طرق الامتداد تسمح لك بإضافة وظائف جديدة إلى الفئات الموجودة دون تعديل كودها المصدري أو إنشاء فئات فرعية. توفر طريقة نظيفة لتوسيع المكتبات والأنواع المدمجة.',
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية للامتدادات:",
            value: [
              "تُعلن باستخدام الكلمة المحجوزة 'extension'",
              "يمكن إضافة دوال، وgetters، وsetters، ومعاملات",
              "تعمل على أي نوع بما في ذلك الأنواع المدمجة",
              "يتم حلها بشكل ثابت في وقت الترجمة",
              "لا يمكن إضافة حقول مثيل أو تجاوز الأعضاء الموجودين",
              "يمكن أن تكون مسماة أو مجهولة",
            ],
          ),
          StringContent(
            "الامتدادات مفيدة بشكل خاص لإضافة طرق مساعدة إلى الأنواع الأساسية مثل String أو List أو DateTime دون تلويث مساحة الأسماء العامة.",
          ),
        ],
        notes: [
          "يتم حل الامتدادات بشكل ثابت - يجب معرفة النوع في وقت الترجمة",
          "يمكن استيراد الامتدادات المسماة بشكل انتقائي باستخدام 'show' أو 'hide'",
          "لا يمكن تجاوز دوال المثيل الموجودة",
          "رائعة لإضافة مساعدين خاصين بالمجال",
        ],
        bestUse:
            'استخدم الامتدادات لإضافة طرق مساعدة إلى الأنواع الموجودة، وإنشاء مساعدين خاصين بالمجال، وتحسين قابلية قراءة الكود دون إنشاء فئات غلاف.',
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// Extension on String\nextension StringExtensions on String {\n  // Convert to title case\n  String toTitleCase() {\n    if (isEmpty) return this;\n    return split(' ')\n        .map((word) => word[0].toUpperCase() + word.substring(1))\n        .join(' ');\n  }\n  \n  // Check if valid email\n  bool get isValidEmail {\n    return RegExp(r'^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}\$').hasMatch(this);\n  }\n}\n\n// Extension on int\nextension IntExtensions on int {\n  // Convert to duration\n  Duration get seconds => Duration(seconds: this);\n  Duration get minutes => Duration(minutes: this);\n  \n  // Check if even\n  bool get isEven => this % 2 == 0;\n}\n\n// Usage\nvoid main() {\n  print('hello world'.toTitleCase()); // 'Hello World'\n  print('test@email.com'.isValidEmail); // true\n  await Future.delayed(5.seconds);\n  print(4.isEven); // true\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Adds functionality without modifying original code",
        "Cleaner than creating utility classes",
        "Can extend built-in types like String, int, List",
        "Improves code readability and expressiveness",
      ],
      ar: [
        "يضيف وظائف دون تعديل الكود الأصلي",
        "أنظف من إنشاء فئات مساعدة",
        "يمكن توسيع الأنواع المدمجة مثل String وint وList",
        "يحسن قابلية قراءة الكود والتعبير",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can make code harder to discover - methods not visible in class definition",
        "Cannot add instance fields",
        "Potential for naming conflicts with future library updates",
        "Resolved statically - doesn't work with dynamic types",
      ],
      ar: [
        "يمكن أن يجعل الكود أصعب في الاكتشاف - الطرق غير مرئية في تعريف الفئة",
        "لا يمكن إضافة حقول مثيل",
        "احتمال حدوث تعارضات في التسمية مع تحديثات المكتبة المستقبلية",
        "يتم حلها بشكل ثابت - لا تعمل مع الأنواع الديناميكية",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use extension methods when:",
          value: [
            "Adding utility methods to existing classes (built-in or library)",
            "Improving code readability and maintainability",
            "Creating domain-specific helpers for existing types",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم طرق الامتداد عندما:",
          value: [
            "إضافة طرق مساعدة إلى الفئات الموجودة (مدمجة أو مكتبة)",
            "تحسين قابلية قراءة الكود وصيانته",
            "إنشاء مساعدين خاصين بالمجال للأنواع الموجودة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "041",
    difficulty: .basic,
    categories: [.basic, .dartBasics, .dataStructures],
    type: .theoretical,
    tags: ["basic", "dart", "datastructures", "collections"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'What are Lists, Sets, and Maps in Dart and when to use each?',
        answer: [
          StringContent(
            'Dart provides three primary collection types for storing multiple values: List, Set, and Map. Each has distinct characteristics and use cases.',
          ),
          UnorderedListContent(
            title: "List:",
            value: [
              "Ordered collection with indexed access (0-based)",
              "Allows duplicate elements",
              "Growable or fixed-length",
              "Use when: order matters, need indexed access, duplicates allowed",
              "Example: [1, 2, 3, 2]",
            ],
          ),
          UnorderedListContent(
            title: "Set:",
            value: [
              "Unordered collection of unique elements",
              "No duplicates allowed",
              "Fast membership testing (contains)",
              "Use when: uniqueness required, order doesn't matter",
              "Example: {1, 2, 3} (duplicate 2 removed)",
            ],
          ),
          UnorderedListContent(
            title: "Map:",
            value: [
              "Key-value pairs collection",
              "Keys must be unique",
              "Fast lookup by key",
              "Use when: need key-value associations, dictionary-like data",
              "Example: {'name': 'John', 'age': 30}",
            ],
          ),
        ],
        bestUse:
            'Use List for ordered sequences, Set for unique elements, and Map for key-value associations. Choose based on whether you need order, uniqueness, or key-based lookup.',
      ),
      ar: QuestionContent(
        question:
            'ما هي القوائم (Lists) والمجموعات (Sets) والخرائط (Maps) في Dart، ومتى تستخدم كل منها؟',
        answer: [
          StringContent(
            'توفر Dart ثلاثة أنواع رئيسية من المجموعات لتخزين قيم متعددة: List وSet وMap. كل منها له خصائص وحالات استخدام مميزة.',
          ),
          UnorderedListContent(
            title: "List:",
            value: [
              "مجموعة مرتبة مع وصول مفهرس (بدءًا من 0)",
              "تسمح بالعناصر المكررة",
              "قابلة للنمو أو ذات طول ثابت",
              "استخدمها عندما: يهم الترتيب، تحتاج وصول مفهرس، التكرارات مسموحة",
              "مثال: [1, 2, 3, 2]",
            ],
          ),
          UnorderedListContent(
            title: "Set:",
            value: [
              "مجموعة غير مرتبة من العناصر الفريدة",
              "لا تسمح بالتكرارات",
              "اختبار العضوية السريع (contains)",
              "استخدمها عندما: التفرد مطلوب، الترتيب لا يهم",
              "مثال: {1, 2, 3} (تمت إزالة 2 المكررة)",
            ],
          ),
          UnorderedListContent(
            title: "Map:",
            value: [
              "مجموعة من أزواج المفتاح-القيمة",
              "يجب أن تكون المفاتيح فريدة",
              "بحث سريع بالمفتاح",
              "استخدمها عندما: تحتاج ارتباطات مفتاح-قيمة، بيانات شبيهة بالقاموس",
              "مثال: {'name': 'John', 'age': 30}",
            ],
          ),
        ],
        bestUse:
            'استخدم List للتسلسلات المرتبة، وSet للعناصر الفريدة، وMap لارتباطات المفتاح-القيمة. اختر بناءً على ما إذا كنت بحاجة إلى ترتيب أو تفرد أو بحث بالمفتاح.',
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// List - ordered, allows duplicates\nList<int> numbers = [1, 2, 3, 2, 4];\nprint(numbers[0]); // 1 (indexed access)\nprint(numbers.length); // 5\n\n// Set - unique elements only\nSet<int> uniqueNumbers = {1, 2, 3, 2, 4};\nprint(uniqueNumbers); // {1, 2, 3, 4}\nprint(uniqueNumbers.contains(2)); // true (fast)\n\n// Map - key-value pairs\nMap<String, dynamic> user = {\n  'name': 'Alice',\n  'age': 25,\n  'email': 'alice@example.com',\n};\nprint(user['name']); // 'Alice'\nuser['age'] = 26; // Update value\n\n// Converting between types\nList<int> list = [1, 2, 2, 3];\nSet<int> set = list.toSet(); // {1, 2, 3}\nList<int> backToList = set.toList(); // [1, 2, 3]",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "List: Fast indexed access O(1), maintains insertion order",
        "Set: O(1) membership testing, ensures uniqueness",
        "Map: O(1) key lookup, flexible key-value storage",
        "All support rich manipulation methods",
      ],
      ar: [
        "List: وصول مفهرس سريع O(1)، يحافظ على ترتيب الإدراج",
        "Set: اختبار العضوية O(1)، يضمن التفرد",
        "Map: بحث بالمفتاح O(1)، تخزين مفتاح-قيمة مرن",
        "جميعها تدعم طرق معالجة غنية",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "List: O(n) for searching, no automatic uniqueness",
        "Set: No indexed access, unordered (LinkedHashSet for order)",
        "Map: Higher memory usage per entry than List",
        "Need to understand which type fits your use case",
      ],
      ar: [
        "List: O(n) للبحث، لا تفرد تلقائي",
        "Set: لا وصول مفهرس، غير مرتبة (LinkedHashSet للترتيب)",
        "Map: استخدام ذاكرة أعلى لكل إدخال من List",
        "تحتاج لفهم أي نوع يناسب حالة الاستخدام",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Collection Type Selection:",
          value: [
            "List: Ordered, indexed access, allows duplicates",
            "Set: Unique elements, no duplicates, fast membership test",
            "Map: Key-value pairs, quick lookup by key",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار نوع المجموعة:",
          value: [
            "List: مرتبة، وصول بالفهرس، تسمح بالتكرار",
            "Set: عناصر فريدة، اختبار انتماء سريع",
            "Map: أزواج مفتاح-قيمة، بحث سريع",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "042",
    difficulty: .advanced,
    categories: [.solid, .architecture],
    type: .theoretical,
    tags: ["intermediate", "flutter", "architecture", "solid", "principles"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'What are the SOLID principles and how do they apply in Flutter?',
        answer: [
          StringContent(
            'SOLID is an acronym for five object-oriented design principles that help create maintainable, scalable, and testable code.',
          ),
          OrderedListContent(
            title: "SOLID Principles:",
            value: [
              "Single Responsibility: Each class should have one reason to change (e.g., separate UI from business logic)",
              "Open/Closed: Open for extension, closed for modification (use abstract classes, interfaces)",
              "Liskov Substitution: Derived classes must be substitutable for base classes",
              "Interface Segregation: Many specific interfaces better than one general-purpose interface",
              "Dependency Inversion: Depend on abstractions, not concretions (use dependency injection)",
            ],
          ),
          StringContent(
            "In Flutter: Keep widgets focused on UI, extract business logic to separate classes, use abstract classes for dependencies, and inject dependencies rather than creating them directly.",
          ),
        ],
        notes: [
          "Don't over-engineer - apply SOLID pragmatically as complexity grows",
          "Use Provider, GetIt, or Riverpod for dependency injection",
          "Separate UI (widgets) from business logic (services, repositories)",
        ],
        bestUse:
            'Apply SOLID principles in medium to large Flutter apps to improve maintainability. Start simple, refactor towards SOLID as complexity increases.',
      ),
      ar: QuestionContent(
        question: 'ما هي مبادئ SOLID وكيف تُطبق في Flutter؟',
        answer: [
          StringContent(
            'SOLID هو اختصار لخمسة مبادئ تصميم موجهة للكائنات تساعد في إنشاء كود قابل للصيانة وقابل للتوسع وقابل للاختبار.',
          ),
          OrderedListContent(
            title: "مبادئ SOLID:",
            value: [
              "المسؤولية الوحيدة: يجب أن يكون لكل فئة سبب واحد للتغيير (مثل فصل الواجهة عن منطق العمل)",
              "الانفتاح/الإغلاق: مفتوحة للتوسيع، مغلقة للتعديل (استخدم الفئات المجردة، الواجهات)",
              "استبدال ليسكوف: يجب أن تكون الفئات المشتقة قابلة للاستبدال بالفئات الأساسية",
              "تقسيم الواجهات: واجهات محددة متعددة أفضل من واجهة واحدة عامة",
              "عكس التبعية: اعتمد على التجريدات، وليس على التطبيقات (استخدم حقن التبعية)",
            ],
          ),
          StringContent(
            "في Flutter: اجعل الودجتس تركز على الواجهة، واستخرج منطق العمل إلى فئات منفصلة، واستخدم الفئات المجردة للتبعيات، واحقن التبعيات بدلاً من إنشائها مباشرة.",
          ),
        ],
        notes: [
          "لا تبالغ في الهندسة - طبق SOLID بشكل عملي مع نمو التعقيد",
          "استخدم Provider أو GetIt أو Riverpod لحقن التبعية",
          "افصل الواجهة (الودجتس) عن منطق العمل (الخدمات، المستودعات)",
        ],
        bestUse:
            'طبق مبادئ SOLID في تطبيقات Flutter متوسطة إلى كبيرة لتحسين قابلية الصيانة. ابدأ بسيطًا، وأعد الهيكلة نحو SOLID مع زيادة التعقيد.',
      ),
    ),
    examples: [
      StrCodeBlock.good(
        "// Single Responsibility - Separate concerns\nclass UserRepository {\n  Future<User> getUser(String id) async {\n    // Data fetching logic only\n  }\n}\n\nclass UserService {\n  final UserRepository _repository;\n  \n  UserService(this._repository); // Dependency Injection\n  \n  Future<void> updateUserProfile(User user) async {\n    // Business logic only\n  }\n}\n\n// Open/Closed - Use abstractions\nabstract class PaymentMethod {\n  Future<void> processPayment(double amount);\n}\n\nclass CreditCardPayment implements PaymentMethod {\n  @override\n  Future<void> processPayment(double amount) async {\n    // Credit card logic\n  }\n}\n\nclass PayPalPayment implements PaymentMethod {\n  @override\n  Future<void> processPayment(double amount) async {\n    // PayPal logic\n  }\n}",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Makes code more maintainable and testable",
        "Reduces coupling between components",
        "Easier to extend without modifying existing code",
        "Improves code organization and clarity",
      ],
      ar: [
        "يجعل الكود أكثر قابلية للصيانة والاختبار",
        "يقلل الارتباط بين المكونات",
        "أسهل للتوسيع دون تعديل الكود الموجود",
        "يحسن تنظيم الكود والوضوح",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can lead to over-engineering in simple projects",
        "Increases number of files and abstractions",
        "Steeper learning curve for beginners",
        "May add boilerplate code",
      ],
      ar: [
        "يمكن أن يؤدي إلى الإفراط في الهندسة في المشاريع البسيطة",
        "يزيد عدد الملفات والتجريدات",
        "منحنى تعلم أصعب للمبتدئين",
        "قد يضيف كود نموذجي زائد",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Apply SOLID when:",
          value: [
            "Building scalable and maintainable Flutter applications",
            "Working in teams where code consistency is vital",
            "Simplifying testing and future code updates",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "طبق SOLID عندما:",
          value: [
            "بناء تطبيقات فلاتر قابلة للتوسع والصيانة",
            "العمل في فرق حيث اتساق الكود أمر حيوي",
            "تبسيط الاختبار وتحديثات الكود المستقبلية",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "043",
    difficulty: .advanced,
    categories: [.designPatterns, .stateManagement],
    type: .theoretical,
    tags: [
      "intermediate",
      "flutter",
      "designpattern",
      "statemanagement",
      "bloc",
    ],
    content: LocalizedValue(
      en: QuestionContent(
        question: 'What is the BLoC pattern in Flutter?',
        answer: [
          StringContent(
            'BLoC (Business Logic Component) is an architectural pattern that separates business logic from UI by using Streams. It promotes a reactive programming approach where UI widgets listen to data streams and rebuild accordingly.',
          ),
          UnorderedListContent(
            title: 'Key Characteristics:',
            value: [
              'Uses Dart Streams for data flow',
              'Separates presentation layer from business logic',
              'Makes code highly testable and reusable',
              'Supports both single and broadcast streams',
            ],
          ),
          StringContent(
            'The pattern consists of three main components: Events (user actions), BLoC (processes events and emits states), and States (UI representations).',
          ),
        ],
        bestUse:
            'Use BLoC for medium to large apps where strict separation of logic is beneficial, or when you need predictable state management with clear data flow. For smaller apps, simpler methods like Provider may suffice.',
      ),
      ar: QuestionContent(
        question: 'ما هو نمط BLoC في فلاتر؟',
        answer: [
          StringContent(
            'BLoC (مكون منطق الأعمال) هو نمط معماري يفصل منطق العمل عن واجهة المستخدم باستخدام التدفقات (Streams). يعزز نهج البرمجة التفاعلية حيث تستمع ودجتس الواجهة إلى تدفقات البيانات وتعيد البناء وفقًا لذلك.',
          ),
          UnorderedListContent(
            title: 'الخصائص الرئيسية:',
            value: [
              'يستخدم تدفقات دارت (Streams) لتدفق البيانات',
              'يفصل طبقة العرض عن منطق الأعمال',
              'يجعل الكود قابلاً للاختبار وإعادة الاستخدام بشكل كبير',
              'يدعم التدفقات الأحادية والمتعددة',
            ],
          ),
          StringContent(
            'يتكون النمط من ثلاثة مكونات رئيسية: الأحداث (إجراءات المستخدم)، BLoC (يعالج الأحداث ويُصدر الحالات)، والحالات (تمثيلات الواجهة).',
          ),
        ],
        bestUse:
            'استخدم BLoC للتطبيقات متوسطة إلى كبيرة الحجم حيث يفيد الفصل الصارم للمنطق، أو عندما تحتاج إلى إدارة حالة يمكن التنبؤ بها مع تدفق بيانات واضح. للتطبيقات الأصغر، قد تكفي طرق أبسط مثل Provider.',
      ),
    ),
    examples: [
      StrCodeBlock.good(r'''
// Event
abstract class CounterEvent {}
class IncrementEvent extends CounterEvent {}

// State
class CounterState {
  final int count;
  const CounterState(this.count);
}

// BLoC
class CounterBloc {
  int _count = 0;
  final _stateController = StreamController<CounterState>();
  final _eventController = StreamController<CounterEvent>();

  Stream<CounterState> get state => _stateController.stream;
  Sink<CounterEvent> get event => _eventController.sink;

  CounterBloc() {
    _eventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CounterEvent event) {
    if (event is IncrementEvent) {
      _count++;
      _stateController.add(CounterState(_count));
    }
  }

  void dispose() {
    _stateController.close();
    _eventController.close();
  }
}
'''),
    ],
    pros: LocalizedValue(
      en: [
        "Strong separation of concerns - business logic is completely isolated from UI",
        "Highly testable - BLoCs can be unit tested without widgets",
        "Reusable across different platforms (mobile, web, desktop)",
        "Works excellently with reactive programming paradigms",
        "Simplifies complex state management scenarios",
      ],
      ar: [
        "فصل قوي للاهتمامات - منطق الأعمال معزول تمامًا عن الواجهة",
        "قابل للاختبار بشكل كبير - يمكن اختبار BLoCs دون الحاجة للودجتس",
        "قابل لإعادة الاستخدام عبر منصات مختلفة (الهاتف، الويب، سطح المكتب)",
        "يعمل بشكل ممتاز مع نماذج البرمجة التفاعلية",
        "يبسط سيناريوهات إدارة الحالة المعقدة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Requires significant boilerplate code (stream controllers, sinks, events, states)",
        "Steeper learning curve compared to setState or Provider",
        "Can be overkill for simple applications",
        "Manual memory management required (disposing controllers)",
        "More files and classes to manage",
      ],
      ar: [
        "يتطلب كمية كبيرة من الكود التكراري (متحكمات التدفق، المستقبلات، الأحداث، الحالات)",
        "منحنى تعلم أعلى مقارنة بـ setState أو Provider",
        "قد يكون مفرطًا للتطبيقات البسيطة",
        "يتطلب إدارة يدوية للذاكرة (التخلص من المتحكمات)",
        "المزيد من الملفات والفئات للإدارة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use BLoC when:",
          value: [
            "Strict separation of UI and business logic is required",
            "State needs to be predictable and traceable",
            "Large apps with complex state dependencies",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم BLoC عندما:",
          value: [
            "يكون الفصل الصارم بين الواجهة ومنطق العمل مطلوبًا",
            "تحتاج الحالة إلى أن تكون قابلة للتنبؤ والتتبع",
            "تطبيقات كبيرة ذات تبعيات حالة معقدة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "044",
    difficulty: .intermediate,
    categories: [.designPatterns, .stateManagement],
    type: .theoretical,
    tags: [
      "intermediate",
      "flutter",
      "designpattern",
      "statemanagement",
      "provider",
    ],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'What is Provider in Flutter and how does it differ from BLoC?',
        answer: [
          StringContent(
            'Provider is a wrapper around InheritedWidget that simplifies state management by providing and accessing state objects throughout the widget tree. Unlike BLoC which is Stream-based, Provider typically uses ChangeNotifier or simple value objects.',
          ),
          UnorderedListContent(
            title: 'Key Differences from BLoC:',
            value: [
              'Provider uses ChangeNotifier pattern instead of Streams',
              'Less boilerplate and simpler API',
              'Direct widget tree integration without manual setup',
              'More flexible - supports multiple state management approaches',
              'Does not enforce strict architectural patterns',
            ],
          ),
          StringContent(
            'Provider offers multiple variants: Provider, ChangeNotifierProvider, FutureProvider, StreamProvider, and more, each suited for different scenarios.',
          ),
        ],
        bestUse:
            'Use Provider for simpler state management needs, small to medium apps, or when you want flexibility without enforcing strict patterns. It integrates seamlessly with Flutter and is easier to learn than BLoC.',
      ),
      ar: QuestionContent(
        question: 'ما هو Provider في فلاتر وكيف يختلف عن BLoC؟',
        answer: [
          StringContent(
            'Provider هو طبقة تغليف حول InheritedWidget تبسط إدارة الحالة من خلال توفير والوصول إلى كائنات الحالة في جميع أنحاء شجرة الودجتس. على عكس BLoC المستند إلى التدفقات، يستخدم Provider عادةً ChangeNotifier أو كائنات قيم بسيطة.',
          ),
          UnorderedListContent(
            title: 'الفروقات الرئيسية عن BLoC:',
            value: [
              'Provider يستخدم نمط ChangeNotifier بدلاً من التدفقات',
              'كود تكراري أقل وواجهة برمجية أبسط',
              'تكامل مباشر مع شجرة الودجتس دون إعداد يدوي',
              'أكثر مرونة - يدعم أساليب متعددة لإدارة الحالة',
              'لا يفرض أنماط معمارية صارمة',
            ],
          ),
          StringContent(
            'يوفر Provider متغيرات متعددة: Provider، ChangeNotifierProvider، FutureProvider، StreamProvider، وغيرها، كل منها مناسب لسيناريوهات مختلفة.',
          ),
        ],
        bestUse:
            'استخدم Provider لاحتياجات إدارة الحالة الأبسط، والتطبيقات الصغيرة إلى المتوسطة، أو عندما تريد مرونة دون فرض أنماط صارمة. يتكامل بسلاسة مع فلاتر وأسهل في التعلم من BLoC.',
      ),
    ),
    examples: [
      StrCodeBlock.good(r'''
// State Model
class Counter with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

// Provide the state
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Counter(),
      child: MyApp(),
    ),
  );
}

// Consume the state
class CounterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = context.watch<Counter>();
    return Text('${counter.count}');
  }
}
'''),
    ],
    pros: LocalizedValue(
      en: [
        "Lightweight with minimal boilerplate",
        "Easy to learn and implement",
        "Well-integrated with Flutter framework",
        "Flexible - supports multiple patterns (ChangeNotifier, values, streams)",
        "Good performance with selective rebuilds using context.select",
        "Officially recommended by Flutter team",
      ],
      ar: [
        "خفيف الوزن مع الحد الأدنى من التكرار",
        "سهل التعلم والتنفيذ",
        "متكامل جيدًا مع إطار فلاتر",
        "مرن - يدعم أنماط متعددة (ChangeNotifier، القيم، التدفقات)",
        "أداء جيد مع إعادة البناء الانتقائية باستخدام context.select",
        "موصى به رسميًا من فريق فلاتر",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Does not enforce strict architectural patterns - can lead to scattered logic",
        "Less formal separation than BLoC if not disciplined",
        "ChangeNotifier can cause unnecessary rebuilds if not used carefully",
        "Harder to debug complex state flows compared to stream-based approaches",
        "Manual dispose management for ChangeNotifiers",
      ],
      ar: [
        "لا يفرض أنماط معمارية صارمة - قد يؤدي إلى منطق مبعثر",
        "فصل أقل رسمية من BLoC إذا لم يتم الانضباط",
        "ChangeNotifier قد يسبب إعادة بناء غير ضرورية إذا لم يُستخدم بحذر",
        "أصعب في تصحيح تدفقات الحالة المعقدة مقارنة بالأساليب المعتمدة على التدفقات",
        "إدارة يدوية للتخلص من ChangeNotifiers",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Provider when:",
          value: [
            "Building small to medium-sized applications",
            "Flexibility is preferred over strict architectural enforcement",
            "Needing a simple, boilerplate-free state management solution",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Provider عندما:",
          value: [
            "بناء تطبيقات صغيرة إلى متوسطة الحجم",
            "تفضل المرونة على فرض الأنماط المعمارية الصارمة",
            "تحتاج حلًا بسيطًا لإدارة الحالة بدون كود تكراري",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "045",
    difficulty: .intermediate,
    categories: [.dartBasics],
    type: .theoretical,
    tags: ["intermediate", "dart", "async", "future", "stream"],
    content: LocalizedValue(
      en: QuestionContent(
        question: 'What is the difference between Future and Stream in Dart?',
        answer: [
          StringContent(
            'Both Future and Stream handle asynchronous operations in Dart, but they differ fundamentally in how they deliver results.',
          ),
          UnorderedListContent(
            title: 'Future:',
            value: [
              'Represents a single asynchronous computation',
              'Completes exactly once with either a value or an error',
              'Used with async/await or .then() callbacks',
              'Best for one-time operations like HTTP requests',
            ],
          ),
          UnorderedListContent(
            title: 'Stream:',
            value: [
              'Represents a sequence of asynchronous events over time',
              'Can emit zero, one, or many values',
              'Supports both single and broadcast subscriptions',
              'Used with await for or listen() methods',
              'Best for continuous data like WebSocket messages or sensor data',
            ],
          ),
          StringContent(
            'Use FutureBuilder for single async results and StreamBuilder for ongoing data streams in Flutter widgets.',
          ),
        ],
        bestUse:
            'Use Future when expecting a single result (e.g., API call, file read). Use Stream when listening for multiple events or continuous data over time (e.g., WebSocket, real-time updates, user input events).',
      ),
      ar: QuestionContent(
        question: 'ما الفرق بين Future و Stream في دارت؟',
        answer: [
          StringContent(
            'كلاً من Future و Stream يتعاملان مع العمليات غير المتزامنة في دارت، لكنهما يختلفان جوهريًا في كيفية تسليم النتائج.',
          ),
          UnorderedListContent(
            title: 'Future:',
            value: [
              'يمثل عملية غير متزامنة واحدة',
              'ينتهي مرة واحدة بالضبط بقيمة أو خطأ',
              'يُستخدم مع async/await أو استدعاءات .then()',
              'الأفضل للعمليات الأحادية مثل طلبات HTTP',
            ],
          ),
          UnorderedListContent(
            title: 'Stream:',
            value: [
              'يمثل سلسلة من الأحداث غير المتزامنة على مدار الوقت',
              'يمكن أن يُصدر صفر أو قيمة واحدة أو قيم متعددة',
              'يدعم الاشتراكات الأحادية والمتعددة',
              'يُستخدم مع await for أو طرائق listen()',
              'الأفضل للبيانات المستمرة مثل رسائل WebSocket أو بيانات المستشعرات',
            ],
          ),
          StringContent(
            'استخدم FutureBuilder للنتائج غير المتزامنة الأحادية و StreamBuilder لتدفقات البيانات المستمرة في ودجتس فلاتر.',
          ),
        ],
        bestUse:
            'استخدم Future عندما تتوقع نتيجة واحدة (مثل استدعاء API، قراءة ملف). استخدم Stream عند الاستماع إلى أحداث متعددة أو بيانات مستمرة على مدار الوقت (مثل WebSocket، التحديثات الفورية، أحداث إدخال المستخدم).',
      ),
    ),
    examples: [
      StrCodeBlock.good(r'''
// Future example - single result
Future<String> fetchUserOrder() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Large Latte';
}

void main() async {
  print('Fetching user order...');
  final order = await fetchUserOrder();
  print('Your order: $order');
}
'''),
      StrCodeBlock.good(r'''
// Stream example - multiple results
Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  await for (final count in countStream(5)) {
    print('Count: $count');
  }
}
'''),
    ],
    pros: LocalizedValue(
      en: [
        "Future: Simple API, easy to understand, built-in error handling",
        "Stream: Handles continuous data, supports backpressure, can be paused/resumed",
        "Both integrate seamlessly with Flutter widgets (FutureBuilder, StreamBuilder)",
      ],
      ar: [
        "Future: واجهة برمجية بسيطة، سهل الفهم، معالجة أخطاء مدمجة",
        "Stream: يتعامل مع البيانات المستمرة، يدعم الضغط العكسي، يمكن إيقافه مؤقتًا/استئنافه",
        "كلاهما يتكامل بسلاسة مع ودجتس فلاتر (FutureBuilder، StreamBuilder)",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Future: Cannot handle multiple values or continuous updates, must create new Future each time",
        "Stream: More complex API with listeners and subscriptions, requires manual cleanup",
        "Stream: Can cause memory leaks if subscriptions are not cancelled",
      ],
      ar: [
        "Future: لا يمكنه التعامل مع قيم متعددة أو تحديثات مستمرة، يجب إنشاء Future جديد في كل مرة",
        "Stream: واجهة برمجية أكثر تعقيدًا مع المستمعين والاشتراكات، يتطلب تنظيفًا يدويًا",
        "Stream: قد يسبب تسرب في الذاكرة إذا لم يتم إلغاء الاشتراكات",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Future vs Stream Selection:",
          value: [
            "Future: Single asynchronous result (API call, shared preferences)",
            "Stream: Continuous sequence of events (sensor data, real-time sync)",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار Future مقابل Stream:",
          value: [
            "Future: نتيجة غير متزامنة واحدة (استدعاء API، الإعدادات المفضلة)",
            "Stream: سلسلة مستمرة من الأحداث (بيانات المستشعرات، المزامنة الفورية)",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "046",
    difficulty: .basic,
    categories: [.flutterBasics],
    type: .theoretical,
    tags: ["intermediate", "flutter", "navigation", "navigator"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'How do you navigate between screens in Flutter? (push, pushReplacement)',
        answer: [
          StringContent(
            'Navigation in Flutter uses the Navigator widget, which manages a stack of Route objects. The two most common navigation methods are push and pushReplacement.',
          ),
          UnorderedListContent(
            title: 'Navigator.push:',
            value: [
              'Adds a new route to the navigation stack',
              'Previous screen remains in memory',
              'User can navigate back using the back button',
              'Suitable for standard forward navigation',
            ],
          ),
          UnorderedListContent(
            title: 'Navigator.pushReplacement:',
            value: [
              'Replaces the current route with a new one',
              'Previous screen is removed from the stack',
              'User cannot navigate back to the replaced screen',
              'Suitable for login flows, splash screens, or permanent transitions',
            ],
          ),
          StringContent(
            'Both methods accept a Route object, commonly created using MaterialPageRoute or CupertinoPageRoute.',
          ),
        ],
        bestUse:
            'Use push for normal forward navigation where users should be able to go back. Use pushReplacement when replacing screens permanently (e.g., after login, after completing onboarding, or when the previous screen should not be accessible).',
      ),
      ar: QuestionContent(
        question: 'كيف تتنقل بين الشاشات في فلاتر؟ (push، pushReplacement)',
        answer: [
          StringContent(
            'التنقل في فلاتر يستخدم ودجت Navigator الذي يدير مكدسًا من كائنات Route. الطريقتان الأكثر شيوعًا للتنقل هما push و pushReplacement.',
          ),
          UnorderedListContent(
            title: 'Navigator.push:',
            value: [
              'يضيف مسارًا جديدًا إلى مكدس التنقل',
              'الشاشة السابقة تبقى في الذاكرة',
              'يمكن للمستخدم الرجوع باستخدام زر الرجوع',
              'مناسب للتنقل الأمامي القياسي',
            ],
          ),
          UnorderedListContent(
            title: 'Navigator.pushReplacement:',
            value: [
              'يستبدل المسار الحالي بآخر جديد',
              'الشاشة السابقة تُزال من المكدس',
              'لا يمكن للمستخدم الرجوع إلى الشاشة المستبدلة',
              'مناسب لتدفقات تسجيل الدخول، شاشات البداية، أو الانتقالات الدائمة',
            ],
          ),
          StringContent(
            'كلتا الطريقتين تقبلان كائن Route، يُنشأ عادة باستخدام MaterialPageRoute أو CupertinoPageRoute.',
          ),
        ],
        bestUse:
            'استخدم push للتنقل الأمامي العادي حيث يجب أن يتمكن المستخدمون من العودة. استخدم pushReplacement عند استبدال الشاشات بشكل دائم (مثل بعد تسجيل الدخول، بعد إكمال التعريف بالتطبيق، أو عندما لا يجب أن تكون الشاشة السابقة قابلة للوصول).',
      ),
    ),
    examples: [
      StrCodeBlock.good(r'''
// Navigator.push - standard navigation
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondScreen()),
);
'''),
      StrCodeBlock.good(r'''
// Navigator.pushReplacement - replace screen
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HomeScreen()),
);
'''),
    ],
    pros: LocalizedValue(
      en: [
        "push: Preserves navigation history, allows easy back navigation, maintains screen state",
        "pushReplacement: Prevents unwanted back navigation, cleans up memory by removing previous route",
        "Both support animations and transitions",
        "Simple and intuitive API",
      ],
      ar: [
        "push: يحفظ سجل التنقل، يسمح بالعودة السهلة، يحافظ على حالة الشاشة",
        "pushReplacement: يمنع التنقل العكسي غير المرغوب فيه، ينظف الذاكرة بإزالة المسار السابق",
        "كلاهما يدعم الرسوم المتحركة والانتقالات",
        "واجهة برمجية بسيطة وبديهية",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "push: Can accumulate many routes consuming memory if not managed properly",
        "pushReplacement: Loses previous screen state permanently, cannot navigate back",
        "Need to manually handle complex navigation stacks (consider popUntil or pushNamedAndRemoveUntil)",
      ],
      ar: [
        "push: يمكن أن يجمع العديد من المسارات مستهلكًا الذاكرة إذا لم تتم الإدارة بشكل صحيح",
        "pushReplacement: يفقد حالة الشاشة السابقة بشكل دائم، لا يمكن العودة",
        "يحتاج إلى معالجة يدوية لمكدسات التنقل المعقدة (فكر في popUntil أو pushNamedAndRemoveUntil)",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Push vs PushReplacement Selection:",
          value: [
            "Push: Forward navigation where returning to the previous screen is meaningful",
            "PushReplacement: Transitional screens where the previous state should be discarded",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار Push مقابل PushReplacement:",
          value: [
            "Push: التنقل الأمامي حيث تكون العودة للشاشة السابقة ذات معنى",
            "PushReplacement: الشاشات الانتقالية حيث يجب التخلص من الحالة السابقة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "047",
    difficulty: .advanced,
    categories: [.flutterBasics, .architecture],
    type: .theoretical,
    tags: ["advanced", "flutter", "navigation", "navigator2.0", "router"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'What is the difference between Navigator 1.0 and Navigator 2.0?',
        answer: [
          StringContent(
            'Navigator 1.0 (imperative) and Navigator 2.0 (declarative) represent two different approaches to navigation in Flutter.',
          ),
          UnorderedListContent(
            title: 'Navigator 1.0 (Classic):',
            value: [
              'Imperative API - push/pop methods',
              'Simple and straightforward for basic navigation',
              'Limited control over browser URL and deep linking',
              'Navigation stack is not declarative',
              'Harder to sync UI state with navigation state',
            ],
          ),
          UnorderedListContent(
            title: 'Navigator 2.0 (Modern):',
            value: [
              'Declarative API using Router, RouteInformationParser, and RouterDelegate',
              'Full control over navigation stack as app state',
              'Complete browser URL and deep linking support',
              'Navigation state can be rebuilt from app state',
              'Better for web apps and complex navigation patterns',
              'Integrates with browser back/forward buttons',
            ],
          ),
          StringContent(
            'Navigator 2.0 treats navigation as part of app state, making it predictable and testable.',
          ),
        ],
        bestUse:
            'Use Navigator 2.0 for web apps, complex navigation requirements, deep linking, or when you need full control over the navigation stack. For simple mobile apps with basic navigation, Navigator 1.0 is sufficient and much simpler.',
      ),
      ar: QuestionContent(
        question: 'ما الفرق بين Navigator 1.0 و Navigator 2.0؟',
        answer: [
          StringContent(
            'Navigator 1.0 (الإمبريالي) و Navigator 2.0 (الإعلاني) يمثلان نهجين مختلفين للتنقل في فلاتر.',
          ),
          UnorderedListContent(
            title: 'Navigator 1.0 (الكلاسيكي):',
            value: [
              'واجهة برمجية إمبريالية - طرائق push/pop',
              'بسيط ومباشر للتنقل الأساسي',
              'تحكم محدود في عنوان URL للمتصفح والروابط العميقة',
              'مكدس التنقل ليس إعلانيًا',
              'أصعب في مزامنة حالة الواجهة مع حالة التنقل',
            ],
          ),
          UnorderedListContent(
            title: 'Navigator 2.0 (الحديث):',
            value: [
              'واجهة برمجية إعلانية باستخدام Router و RouteInformationParser و RouterDelegate',
              'تحكم كامل في مكدس التنقل كحالة للتطبيق',
              'دعم كامل لعنوان URL للمتصفح والروابط العميقة',
              'يمكن إعادة بناء حالة التنقل من حالة التطبيق',
              'أفضل لتطبيقات الويب وأنماط التنقل المعقدة',
              'يتكامل مع أزرار الرجوع/التقدم في المتصفح',
            ],
          ),
          StringContent(
            'Navigator 2.0 يعامل التنقل كجزء من حالة التطبيق، مما يجعله قابلاً للتنبؤ والاختبار.',
          ),
        ],
        bestUse:
            'استخدم Navigator 2.0 لتطبيقات الويب، متطلبات التنقل المعقدة، الروابط العميقة، أو عندما تحتاج إلى تحكم كامل في مكدس التنقل. للتطبيقات المحمولة البسيطة مع التنقل الأساسي، يكفي Navigator 1.0 وهو أبسط بكثير.',
      ),
    ),
    examples: [
      StrCodeBlock(r'''
// Navigator 1.0 - Imperative
Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => DetailsScreen()),
);
'''),
      StrCodeBlock(r'''
// Navigator 2.0 - Declarative
class AppRouterDelegate extends RouterDelegate<AppRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoutePath> {
  
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(child: HomeScreen()),
        if (selectedBook != null)
          MaterialPage(child: BookDetailsScreen(book: selectedBook)),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) return false;
        selectedBook = null;
        notifyListeners();
        return true;
      },
    );
  }
  
  // ... implement other required methods
}
'''),
    ],
    pros: LocalizedValue(
      en: [
        "Navigator 2.0: Full URL control for web, deep linking support, predictable state management",
        "Navigator 2.0: Navigation as app state enables better testing and debugging",
        "Navigator 1.0: Much simpler to implement and understand",
        "Navigator 1.0: Less boilerplate for simple apps",
      ],
      ar: [
        "Navigator 2.0: تحكم كامل بـ URL للويب، دعم الروابط العميقة، إدارة حالة قابلة للتنبؤ",
        "Navigator 2.0: التنقل كحالة للتطبيق يمكّن من اختبار وتصحيح أخطاء أفضل",
        "Navigator 1.0: أبسط بكثير في التنفيذ والفهم",
        "Navigator 1.0: كود تكراري أقل للتطبيقات البسيطة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Navigator 2.0: Steep learning curve with significant boilerplate",
        "Navigator 2.0: Complex API with multiple components to implement",
        "Navigator 1.0: Limited web support and deep linking capabilities",
        "Navigator 1.0: Harder to manage complex navigation flows",
      ],
      ar: [
        "Navigator 2.0: منحنى تعلم حاد مع كود تكراري كبير",
        "Navigator 2.0: واجهة برمجية معقدة مع مكونات متعددة للتنفيذ",
        "Navigator 1.0: دعم محدود للويب وقدرات الروابط العميقة",
        "Navigator 1.0: أصعب في إدارة تدفقات التنقل المعقدة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Navigator 1.0 vs 2.0 Selection:",
          value: [
            "Navigator 1.0: Small mobile apps, simple linear navigation",
            "Navigator 2.0: Web apps, deep linking, complex state-driven navigation",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار Navigator 1.0 مقابل 2.0:",
          value: [
            "Navigator 1.0: تطبيقات المحمول الصغيرة، التنقل الخطي البسيط",
            "Navigator 2.0: تطبيقات الويب، الروابط العميقة، التنقل المعقد القائم على الحالة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "048",
    difficulty: .intermediate,
    categories: [.basic, .flutterBasics],
    type: .theoretical,
    tags: ["basic", "flutter", "widgets", "buildcontext"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is Flutter's build() method context parameter?",
        answer: [
          StringContent(
            'BuildContext is a handle to the location of a widget in the widget tree. It is passed to the build() method and represents the position where the widget is being built.',
          ),
          UnorderedListContent(
            title: 'BuildContext enables:',
            value: [
              'Accessing InheritedWidgets like Theme, MediaQuery, or Provider',
              'Finding ancestor widgets using .findAncestorWidgetOfExactType()',
              'Navigation using Navigator.of(context)',
              'Showing dialogs and snackbars',
              'Accessing localization data',
            ],
          ),
          StringContent(
            'Each widget has its own context. The context passed to build() represents that specific widget\'s location in the tree.',
          ),
        ],
        notes: [
          'Never use context after the widget is disposed',
          'Context from initState() may not have all inherited widgets yet',
          'Use context carefully in async operations - check mounted property',
        ],
        bestUse:
            'Use context inside build() or lifecycle methods to access theme data, localization, navigation, or inherited widgets. Be cautious when using context in async callbacks.',
      ),
      ar: QuestionContent(
        question: 'ما هو معامل BuildContext في دالة build() في فلاتر؟',
        answer: [
          StringContent(
            'BuildContext هو مقبض لموقع ودجت في شجرة الودجتس. يُمرر إلى دالة build() ويمثل الموقع الذي يتم فيه بناء الودجت.',
          ),
          UnorderedListContent(
            title: 'BuildContext يمكّن من:',
            value: [
              'الوصول إلى InheritedWidgets مثل Theme و MediaQuery أو Provider',
              'إيجاد ودجتس الأجداد باستخدام .findAncestorWidgetOfExactType()',
              'التنقل باستخدام Navigator.of(context)',
              'عرض مربعات الحوار وشرائط الإشعارات',
              'الوصول إلى بيانات العولمة',
            ],
          ),
          StringContent(
            'كل ودجت لديه سياقه الخاص. السياق الممرر إلى build() يمثل موقع ذلك الودجت المحدد في الشجرة.',
          ),
        ],
        notes: [
          'لا تستخدم context أبدًا بعد التخلص من الودجت',
          'السياق من initState() قد لا يحتوي على جميع الودجتس الموروثة بعد',
          'استخدم context بحذر في العمليات غير المتزامنة - تحقق من خاصية mounted',
        ],
        bestUse:
            'استخدم context داخل build() أو طرائق دورة الحياة للوصول إلى بيانات السمة، العولمة، التنقل، أو الودجتس الموروثة. كن حذرًا عند استخدام context في استدعاءات async.',
      ),
    ),
    examples: [
      StrCodeBlock.good(r'''
@override
Widget build(BuildContext context) {
  // Access theme
  final theme = Theme.of(context);
  
  // Access screen size
  final size = MediaQuery.of(context).size;
  
  // Access localization
  final localizations = AppLocalizations.of(context);
  
  return Container(
    color: theme.primaryColor,
    child: Text(localizations.title),
  );
}
'''),
      StrCodeBlock.bad(r'''
// WRONG - using context after async operation
void loadData() async {
  await Future.delayed(Duration(seconds: 2));
  // Widget might be disposed by now!
  Navigator.pop(context); // Potential error
}

// CORRECT - check mounted
void loadData() async {
  await Future.delayed(Duration(seconds: 2));
  if (mounted) {
    Navigator.pop(context); // Safe
  }
}
'''),
    ],
    pros: LocalizedValue(
      en: [
        "Provides access to inherited widgets and app-wide data",
        "Essential for navigation and showing UI overlays",
        "Enables theme-aware and responsive UI",
        "Foundation of Flutter's widget communication",
      ],
      ar: [
        "يوفر الوصول إلى الودجتس الموروثة والبيانات على مستوى التطبيق",
        "ضروري للتنقل وعرض تراكبات الواجهة",
        "يمكّن من واجهة مستخدم واعية بالسمة ومتجاوبة",
        "أساس تواصل الودجتس في فلاتر",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Misusing context (e.g., after dispose or in async without checks) causes errors",
        "Context from different widget may not have expected inherited widgets",
        "Can lead to confusion for beginners about widget tree structure",
      ],
      ar: [
        "سوء استخدام context (مثل بعد dispose أو في async بدون فحوصات) يسبب أخطاء",
        "السياق من ودجت مختلف قد لا يحتوي على الودجتس الموروثة المتوقعة",
        "قد يؤدي إلى ارتباك للمبتدئين حول بنية شجرة الودجتس",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Using BuildContext when:",
          value: [
            "Accessing Theme/MediaQuery/Localizations",
            "Performing Navigation or showing SnackBars",
            "Looking up ancestors in the widget tree",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدام BuildContext عندما:",
          value: [
            "الوصول للسمات/بيانات الشاشة/العولمة",
            "إجراء التنقل أو عرض شرائط الإشعارات",
            "البحث عن الأسلاف في شجرة الودجتس",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "049",
    difficulty: .advanced,
    categories: [.dartBasics, .performance],
    type: .theoretical,
    tags: ["advanced", "dart", "concurrency", "isolate", "parallelism"],
    content: LocalizedValue(
      en: QuestionContent(
        question: 'What is an Isolate in Dart and how is it used?',
        answer: [
          StringContent(
            'An Isolate is an independent worker with its own memory heap and event loop. Unlike threads in other languages, Dart isolates do not share memory - they communicate exclusively through message passing.',
          ),
          UnorderedListContent(
            title: 'Key Characteristics:',
            value: [
              'Each isolate has its own memory heap - no shared state',
              'Communication via SendPort and ReceivePort',
              'Enables true parallel execution on multi-core devices',
              'No race conditions or locks needed',
              'Cannot access UI directly - must send results back to main isolate',
            ],
          ),
          OrderedListContent(
            title: 'Creating an Isolate:',
            value: [
              'Define an entry point function (must be top-level or static)',
              'Spawn the isolate using Isolate.spawn()',
              'Set up bidirectional communication with ports',
              'Send messages between isolates',
              'Clean up when done',
            ],
          ),
          StringContent(
            'Isolates are essential for CPU-intensive tasks that would otherwise block the UI thread, such as parsing large JSON, image processing, or complex calculations.',
          ),
        ],
        bestUse:
            'Use isolates for CPU-intensive operations like image processing, large JSON parsing, encryption, complex calculations, or any long-running computation that would freeze the UI. For I/O operations or simple async tasks, use Future/async-await instead.',
      ),
      ar: QuestionContent(
        question: 'ما هو Isolate في دارت وكيف يُستخدم؟',
        answer: [
          StringContent(
            'الـ Isolate هو عامل مستقل له مساحة ذاكرة وحلقة أحداث خاصة به. على عكس الخيوط في اللغات الأخرى، عوازل دارت لا تشارك الذاكرة - تتواصل حصريًا عبر تمرير الرسائل.',
          ),
          UnorderedListContent(
            title: 'الخصائص الرئيسية:',
            value: [
              'كل عازل له مساحة ذاكرة خاصة به - لا حالة مشتركة',
              'التواصل عبر SendPort و ReceivePort',
              'يمكّن من التنفيذ المتوازي الحقيقي على الأجهزة متعددة النوى',
              'لا حاجة لشروط السباق أو الأقفال',
              'لا يمكن الوصول إلى الواجهة مباشرة - يجب إرسال النتائج للعازل الرئيسي',
            ],
          ),
          OrderedListContent(
            title: 'إنشاء Isolate:',
            value: [
              'حدد دالة نقطة دخول (يجب أن تكون على المستوى الأعلى أو ثابتة)',
              'قم بإنشاء العازل باستخدام Isolate.spawn()',
              'أنشئ تواصلاً ثنائي الاتجاه مع المنافذ',
              'أرسل الرسائل بين العوازل',
              'نظف عند الانتهاء',
            ],
          ),
          StringContent(
            'العوازل ضرورية للمهام المكثفة للمعالج والتي قد تحجب خيط الواجهة، مثل تحليل JSON الكبير، معالجة الصور، أو الحسابات المعقدة.',
          ),
        ],
        bestUse:
            'استخدم العوازل للعمليات المكثفة للمعالج مثل معالجة الصور، تحليل JSON الكبير، التشفير، الحسابات المعقدة، أو أي عملية حسابية طويلة قد تجمد الواجهة. لعمليات الإدخال/الإخراج أو المهام البسيطة غير المتزامنة، استخدم Future/async-await بدلاً من ذلك.',
      ),
    ),
    examples: [
      StrCodeBlock.good(r'''
// Top-level or static function required
Future<void> heavyComputation(SendPort sendPort) async {
  // Perform heavy work
  int result = 0;
  for (int i = 0; i < 1000000000; i++) {
    result += i;
  }
  
  // Send result back
  sendPort.send(result);
}

// Using the isolate
Future<int> runHeavyTask() async {
  final receivePort = ReceivePort();
  
  await Isolate.spawn(
    heavyComputation,
    receivePort.sendPort,
  );
  
  final result = await receivePort.first as int;
  return result;
}
'''),
      StrCodeBlock.good(r'''
// Using compute() helper (Flutter)
import 'package:flutter/foundation.dart';

int parseJson(String json) {
  // Heavy JSON parsing
  return jsonDecode(json).length;
}

Future<int> loadData() async {
  final data = await fetchLargeJson();
  
  // Runs in separate isolate automatically
  final count = await compute(parseJson, data);
  
  return count;
}
'''),
    ],
    pros: LocalizedValue(
      en: [
        "True parallel execution utilizing multiple CPU cores",
        "No shared memory = no race conditions or complex locking",
        "Prevents UI freezing for heavy computations",
        "Memory-safe by design - isolates cannot corrupt each other's memory",
        "Excellent for image processing, encryption, large data parsing",
      ],
      ar: [
        "تنفيذ متوازي حقيقي يستخدم نوى معالج متعددة",
        "لا ذاكرة مشتركة = لا شروط سباق أو أقفال معقدة",
        "يمنع تجميد الواجهة للحسابات الثقيلة",
        "آمن للذاكرة بالتصميم - العوازل لا يمكنها إفساد ذاكرة بعضها البعض",
        "ممتاز لمعالجة الصور، التشفير، تحليل البيانات الكبيرة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Message passing overhead - not suitable for frequent small communications",
        "Higher memory footprint (each isolate has its own heap)",
        "Startup overhead - spawning isolates takes time",
        "Cannot share objects - must serialize/deserialize data",
        "Complex setup for bidirectional communication",
        "Not suitable for simple async operations",
      ],
      ar: [
        "عبء تمرير الرسائل - غير مناسب للاتصالات الصغيرة المتكررة",
        "بصمة ذاكرة أعلى (كل عازل له مساحة خاصة)",
        "عبء بدء التشغيل - إنشاء العوازل يستغرق وقتًا",
        "لا يمكن مشاركة الكائنات - يجب تسلسل/إلغاء تسلسل البيانات",
        "إعداد معقد للتواصل ثنائي الاتجاه",
        "غير مناسب للعمليات البسيطة غير المتزامنة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Isolates when:",
          value: [
            "Handling CPU-intensive tasks (image processing, large data parsing)",
            "Preventing UI jank in performance-critical apps",
            "Maintaining 60/120 FPS during heavy calculations",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Isolates عندما:",
          value: [
            "معالجة المهام المكثفة للمعالج (معالجة الصور، تحليل بيانات ضخمة)",
            "منع تعثر الواجهة في التطبيقات ذات الأداء الحرج",
            "الحفاظ على 60/120 إطار في الثانية أثناء الحسابات الثقيلة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "050",
    difficulty: .basic,
    categories: [.flutterBasics, .ui],
    type: .theoretical,
    tags: [
      "intermediate",
      "flutter",
      "widgets",
      "async",
      "futurebuilder",
      "streambuilder",
    ],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'What are FutureBuilder and StreamBuilder used for in Flutter?',
        answer: [
          StringContent(
            'FutureBuilder and StreamBuilder are widgets that rebuild based on the latest snapshot of asynchronous data. They handle connection states, loading indicators, errors, and data display automatically.',
          ),
          UnorderedListContent(
            title: 'FutureBuilder:',
            value: [
              'Builds UI based on a single Future result',
              'Handles waiting, active, and done states',
              'Perfect for one-time async operations like API calls',
              'Automatically manages loading and error states',
            ],
          ),
          UnorderedListContent(
            title: 'StreamBuilder:',
            value: [
              'Rebuilds UI whenever new Stream events arrive',
              'Handles continuous data flows',
              'Automatically subscribes and unsubscribes',
              'Perfect for real-time updates, WebSockets, or reactive data',
            ],
          ),
          StringContent(
            'Both builders expose an AsyncSnapshot that contains connection state, data, and error information, simplifying async UI rendering.',
          ),
        ],
        bestUse:
            'Use FutureBuilder for one-time async operations like HTTP requests or database queries. Use StreamBuilder for continuous data streams like real-time updates, WebSocket messages, or reactive state changes.',
      ),
      ar: QuestionContent(
        question: 'ما الغرض من FutureBuilder و StreamBuilder في فلاتر؟',
        answer: [
          StringContent(
            'FutureBuilder و StreamBuilder هما ودجتس تعيد البناء بناءً على أحدث لقطة من البيانات غير المتزامنة. يتعاملان مع حالات الاتصال، مؤشرات التحميل، الأخطاء، وعرض البيانات تلقائيًا.',
          ),
          UnorderedListContent(
            title: 'FutureBuilder:',
            value: [
              'يبني الواجهة بناءً على نتيجة Future واحدة',
              'يتعامل مع حالات الانتظار، النشط، والمنتهي',
              'مثالي للعمليات غير المتزامنة الأحادية مثل استدعاءات API',
              'يدير حالات التحميل والأخطاء تلقائيًا',
            ],
          ),
          UnorderedListContent(
            title: 'StreamBuilder:',
            value: [
              'يعيد بناء الواجهة كلما وصلت أحداث Stream جديدة',
              'يتعامل مع تدفقات البيانات المستمرة',
              'يشترك ويلغي الاشتراك تلقائيًا',
              'مثالي للتحديثات الفورية، WebSockets، أو البيانات التفاعلية',
            ],
          ),
          StringContent(
            'كلا الباني يعرضان AsyncSnapshot يحتوي على حالة الاتصال، البيانات، ومعلومات الأخطاء، مما يبسط عرض الواجهة غير المتزامنة.',
          ),
        ],
        bestUse:
            'استخدم FutureBuilder للعمليات غير المتزامنة الأحادية مثل طلبات HTTP أو استعلامات قاعدة البيانات. استخدم StreamBuilder لتدفقات البيانات المستمرة مثل التحديثات الفورية، رسائل WebSocket، أو تغيرات الحالة التفاعلية.',
      ),
    ),
    examples: [
      StrCodeBlock.good(r'''
// FutureBuilder example
FutureBuilder<User>(
  future: fetchUser(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return CircularProgressIndicator();
    }
    
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    }
    
    if (snapshot.hasData) {
      return Text('User: ${snapshot.data!.name}');
    }
    
    return Text('No data');
  },
)
'''),
      StrCodeBlock.good(r'''
// StreamBuilder example
StreamBuilder<int>(
  stream: counterStream(),
  initialData: 0,
  builder: (context, snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    }
    
    return Text('Count: ${snapshot.data}');
  },
)
'''),
    ],
    pros: LocalizedValue(
      en: [
        "Automatically handles loading, error, and success states",
        "Eliminates boilerplate for async UI rendering",
        "StreamBuilder automatically manages subscriptions",
        "Clean separation between async logic and UI",
        "Built-in connection state tracking",
      ],
      ar: [
        "يتعامل تلقائيًا مع حالات التحميل، الأخطاء، والنجاح",
        "يلغي الكود التكراري لعرض الواجهة غير المتزامنة",
        "StreamBuilder يدير الاشتراكات تلقائيًا",
        "فصل نظيف بين المنطق غير المتزامن والواجهة",
        "تتبع مدمج لحالة الاتصال",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "StreamBuilder rebuilds on every event - can impact performance with frequent updates",
        "Creating Future inside build() causes unnecessary rebuilds",
        "Limited control over subscription lifecycle in StreamBuilder",
        "Can lead to memory leaks if streams are not properly closed",
        "May require additional logic for complex error handling",
      ],
      ar: [
        "StreamBuilder يعيد البناء عند كل حدث - قد يؤثر على الأداء مع التحديثات المتكررة",
        "إنشاء Future داخل build() يسبب إعادة بناء غير ضرورية",
        "تحكم محدود في دورة حياة الاشتراك في StreamBuilder",
        "قد يؤدي إلى تسرب في الذاكرة إذا لم تُغلق التدفقات بشكل صحيح",
        "قد يتطلب منطقًا إضافيًا لمعالجة الأخطاء المعقدة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Future vs Stream Builder Usage:",
          value: [
            "FutureBuilder: For single async results (fetching user data)",
            "StreamBuilder: For continuous updates (chat messages, real-time prices)",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدام FutureBuilder مقابل StreamBuilder:",
          value: [
            "FutureBuilder: للنتائج غير المتزامنة الأحادية (جلب بيانات المستخدم)",
            "StreamBuilder: للتحديثات المستمرة (رسائل الدردشة، الأسعار الفورية)",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "051",
    difficulty: .basic,
    categories: [.oop, .dartBasics],
    type: .theoretical,
    tags: ["intermediate", "dart", "oop", "constructor", "factory"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'What is a Constructor in Dart and what are factory constructors?',
        answer: [
          StringContent(
            'A constructor is a special method used to initialize objects of a class. Dart supports multiple constructor types: default, named, factory, and redirecting constructors.',
          ),
          UnorderedListContent(
            title: 'Regular Constructors:',
            value: [
              'Always create a new instance',
              'Can use initializer lists',
              'Support const constructors for compile-time constants',
              'Have access to instance members via "this"',
            ],
          ),
          UnorderedListContent(
            title: 'Factory Constructors:',
            value: [
              'Declared with "factory" keyword',
              'Can return existing instances (singleton pattern)',
              'Can return subtypes or different implementations',
              'Cannot access "this" - not bound to an instance',
              'Must explicitly return an object',
            ],
          ),
          StringContent(
            'Factory constructors enable design patterns like singleton, caching, or returning different implementations based on parameters.',
          ),
        ],
        bestUse:
            'Use factory constructors for implementing singletons, caching objects, or when you need custom logic to decide which instance to return. Use regular constructors for standard object creation.',
      ),
      ar: QuestionContent(
        question: 'ما هو الباني (Constructor) في دارت وما هي البانيات factory؟',
        answer: [
          StringContent(
            'الباني هو دالة خاصة تُستخدم لتهيئة كائنات من فئة. تدعم دارت أنواع متعددة من البانيات: الافتراضي، المسمى، factory، والموجه.',
          ),
          UnorderedListContent(
            title: 'البانيات العادية:',
            value: [
              'تنشئ دائمًا مثيلاً جديدًا',
              'يمكن استخدام قوائم التهيئة',
              'تدعم البانيات const للثوابت في وقت الترجمة',
              'لديها وصول إلى أعضاء المثيل عبر "this"',
            ],
          ),
          UnorderedListContent(
            title: 'بانيات Factory:',
            value: [
              'تُعلن بالكلمة المحجوزة "factory"',
              'يمكنها إعادة مثيلات موجودة (نمط المفرد)',
              'يمكنها إعادة أنواع فرعية أو تنفيذات مختلفة',
              'لا يمكنها الوصول إلى "this" - غير مربوطة بمثيل',
              'يجب إعادة كائن بشكل صريح',
            ],
          ),
          StringContent(
            'بانيات Factory تمكّن من أنماط التصميم مثل المفرد، التخزين المؤقت، أو إعادة تنفيذات مختلفة بناءً على المعاملات.',
          ),
        ],
        bestUse:
            'استخدم بانيات factory لتنفيذ المفرد، تخزين الكائنات مؤقتًا، أو عندما تحتاج إلى منطق مخصص لتحديد المثيل الذي سيتم إعادته. استخدم البانيات العادية لإنشاء الكائنات القياسية.',
      ),
    ),
    examples: [
      StrCodeBlock.good(r'''
// Regular constructor
class Point {
  final double x, y;
  
  Point(this.x, this.y);
  
  // Named constructor
  Point.origin() : x = 0, y = 0;
  
  // Const constructor
  const Point.zero() : x = 0, y = 0;
}
'''),
      StrCodeBlock.good(r'''
// Factory constructor - Singleton pattern
class Logger {
  static final Logger _instance = Logger._internal();
  
  factory Logger() {
    return _instance;
  }
  
  Logger._internal();
  
  void log(String message) => print(message);
}

// Usage
final logger1 = Logger();
final logger2 = Logger();
print(identical(logger1, logger2)); // true - same instance
'''),
    ],
    pros: LocalizedValue(
      en: [
        "Factory constructors enable singleton pattern easily",
        "Can implement caching and object pooling",
        "Allows returning different implementations based on parameters",
        "Useful for parsing or converting data (e.g., factory User.fromJson)",
        "Better control over object creation logic",
      ],
      ar: [
        "بانيات Factory تمكّن من نمط المفرد بسهولة",
        "يمكنها تنفيذ التخزين المؤقت وتجميع الكائنات",
        "تسمح بإعادة تنفيذات مختلفة بناءً على المعاملات",
        "مفيدة لتحليل أو تحويل البيانات (مثل factory User.fromJson)",
        "تحكم أفضل في منطق إنشاء الكائنات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Cannot access 'this' in factory constructors",
        "Must explicitly return an object (more verbose)",
        "Slightly more complex than regular constructors",
        "Cannot be const constructors",
        "May hide the actual type being returned",
      ],
      ar: [
        "لا يمكن الوصول إلى 'this' في بانيات factory",
        "يجب إعادة كائن بشكل صريح (أكثر تفصيلاً)",
        "أكثر تعقيدًا قليلاً من البانيات العادية",
        "لا يمكن أن تكون بانيات const",
        "قد تخفي النوع الفعلي المُعاد",
      ],
    ),
  ),
  InterviewQuestion(
    id: "052",
    difficulty: .intermediate,
    categories: [.designPatterns, .oop],
    type: .theoretical,
    tags: ["intermediate", "designpattern", "dart", "singleton"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'What is a Singleton pattern and how can you implement it in Dart?',
        answer: [
          StringContent(
            'The Singleton pattern ensures a class has only one instance throughout the application lifetime and provides a global access point to it. This is useful for shared resources like database connections, network clients, or configuration managers.',
          ),
          UnorderedListContent(
            title: 'Singleton Characteristics:',
            value: [
              'Only one instance exists globally',
              'Lazy or eager initialization options',
              'Thread-safe in Dart (single-threaded event loop)',
              'Global access point to the instance',
            ],
          ),
          OrderedListContent(
            title: 'Implementation Steps:',
            value: [
              'Create a private static instance variable',
              'Make the constructor private (named _internal or _private)',
              'Create a factory constructor that returns the static instance',
              'Optionally add initialization logic',
            ],
          ),
        ],
        bestUse:
            'Use singleton for classes that manage global state or shared resources (e.g., API client, database, settings manager, analytics service). Avoid for objects that should have independent state or need to be tested with different instances.',
      ),
      ar: QuestionContent(
        question: 'ما هو نمط Singleton وكيف يمكنك تنفيذه في دارت؟',
        answer: [
          StringContent(
            'نمط Singleton يضمن أن فئة معينة لها مثيل واحد فقط طوال عمر التطبيق ويوفر نقطة وصول عالمية إليه. هذا مفيد للموارد المشتركة مثل اتصالات قاعدة البيانات، عملاء الشبكة، أو مديري التكوين.',
          ),
          UnorderedListContent(
            title: 'خصائص Singleton:',
            value: [
              'يوجد مثيل واحد فقط عالميًا',
              'خيارات التهيئة الكسولة أو المبكرة',
              'آمن للخيوط في دارت (حلقة أحداث أحادية الخيط)',
              'نقطة وصول عالمية إلى المثيل',
            ],
          ),
          OrderedListContent(
            title: 'خطوات التنفيذ:',
            value: [
              'إنشاء متغير مثيل ثابت خاص',
              'جعل الباني خاصًا (مسمى _internal أو _private)',
              'إنشاء باني factory يعيد المثيل الثابت',
              'إضافة منطق التهيئة اختياريًا',
            ],
          ),
        ],
        bestUse:
            'استخدم singleton للفئات التي تدير الحالة العالمية أو الموارد المشتركة (مثل عميل API، قاعدة البيانات، مدير الإعدادات، خدمة التحليلات). تجنبه للكائنات التي يجب أن يكون لها حالة مستقلة أو تحتاج إلى الاختبار بمثيلات مختلفة.',
      ),
    ),
    examples: [
      StrCodeBlock.good(r'''
// Eager initialization singleton
class DatabaseService {
  static final DatabaseService _instance = DatabaseService._internal();
  
  factory DatabaseService() => _instance;
  
  DatabaseService._internal() {
    // Initialization logic
    print('Database initialized');
  }
  
  void query(String sql) {
    print('Executing: $sql');
  }
}

// Usage
final db1 = DatabaseService();
final db2 = DatabaseService();
print(identical(db1, db2)); // true
'''),
      StrCodeBlock.good(r'''
// Lazy initialization singleton
class ApiClient {
  static ApiClient? _instance;
  
  factory ApiClient() {
    _instance ??= ApiClient._internal();
    return _instance!;
  }
  
  ApiClient._internal();
  
  Future<void> fetchData() async {
    // API call logic
  }
}
'''),
    ],
    pros: LocalizedValue(
      en: [
        "Ensures single instance for shared resources",
        "Global access point simplifies usage",
        "Lazy initialization possible (saves memory)",
        "Thread-safe by default in Dart",
        "Useful for caches, configuration, and services",
      ],
      ar: [
        "يضمن مثيلاً واحدًا للموارد المشتركة",
        "نقطة الوصول العالمية تبسط الاستخدام",
        "التهيئة الكسولة ممكنة (توفر الذاكرة)",
        "آمن للخيوط افتراضيًا في دارت",
        "مفيد للتخزين المؤقت، التكوين، والخدمات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Global state makes unit testing harder",
        "Creates hidden dependencies between classes",
        "Can lead to tight coupling",
        "Difficult to mock in tests",
        "Violates single responsibility if overused",
        "Can cause issues in multi-isolate scenarios",
      ],
      ar: [
        "الحالة العالمية تجعل اختبار الوحدة أصعب",
        "تنشئ تبعيات مخفية بين الفئات",
        "قد تؤدي إلى ربط وثيق",
        "صعب التزييف في الاختبارات",
        "ينتهك مبدأ المسؤولية الواحدة إذا استُخدم بإفراط",
        "قد يسبب مشاكل في سيناريوهات العوازل المتعددة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Singleton when:",
          value: [
            "A single instance is required for a shared resource (Database/API client)",
            "Managing global configuration or state",
            "Coordinating access to a shared peripheral",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Singleton عندما:",
          value: [
            "يكون مثيل واحد مطلوبًا لمورد مشترك (قاعدة بيانات/عميل API)",
            "إدارة التكوين أو الحالة العالمية",
            "تنسيق الوصول إلى طرفية مشتركة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "053",
    difficulty: .advanced,
    categories: [.performance],
    type: .theoretical,
    tags: ["advanced", "flutter", "performance", "optimization"],
    content: LocalizedValue(
      en: QuestionContent(
        question: 'How do you optimize Flutter application performance?',
        answer: [
          StringContent(
            'Flutter performance optimization involves multiple strategies across widget building, rendering, memory management, and asset handling.',
          ),
          UnorderedListContent(
            title: 'Widget Optimization:',
            value: [
              'Use const constructors wherever possible to avoid rebuilds',
              'Split large widgets into smaller components',
              'Use RepaintBoundary to isolate expensive repaints',
              'Prefer stateless widgets when state is not needed',
              'Avoid rebuilding entire widget trees unnecessarily',
            ],
          ),
          UnorderedListContent(
            title: 'List & Scrolling Performance:',
            value: [
              'Use ListView.builder for long lists (lazy loading)',
              'Implement itemExtent for uniform list items',
              'Use AutomaticKeepAliveClientMixin for expensive list items',
              'Limit list item complexity and depth',
            ],
          ),
          UnorderedListContent(
            title: 'Memory & Assets:',
            value: [
              'Optimize image sizes and use appropriate formats',
              'Use cached_network_image for network images',
              'Dispose controllers, streams, and animations',
              'Use efficient data structures (Set for lookups, List for ordered data)',
            ],
          ),
          UnorderedListContent(
            title: 'Advanced Techniques:',
            value: [
              'Offload heavy computations to isolates',
              'Use DevTools to profile and find bottlenecks',
              'Enable tree-shaking for reduced bundle size',
              'Use Flutter Performance overlay to monitor frame rates',
            ],
          ),
        ],
        bestUse:
            'Profile your app using DevTools first to identify actual bottlenecks. Apply optimizations like const constructors and efficient layouts as baseline practices. Use isolates for CPU-intensive work and RepaintBoundary for expensive widgets.',
      ),
      ar: QuestionContent(
        question: 'كيف تحسن أداء تطبيق فلاتر؟',
        answer: [
          StringContent(
            'تحسين أداء فلاتر يتضمن استراتيجيات متعددة عبر بناء الودجتس، العرض، إدارة الذاكرة، ومعالجة الأصول.',
          ),
          UnorderedListContent(
            title: 'تحسين الودجتس:',
            value: [
              'استخدام البانيات const حيثما أمكن لتجنب إعادة البناء',
              'تقسيم الودجتس الكبيرة إلى مكونات أصغر',
              'استخدام RepaintBoundary لعزل إعادة الرسم المكلفة',
              'تفضيل الودجتس عديمة الحالة عندما لا تكون الحالة ضرورية',
              'تجنب إعادة بناء أشجار الودجتس الكاملة دون داعٍ',
            ],
          ),
          UnorderedListContent(
            title: 'أداء القوائم والتمرير:',
            value: [
              'استخدام ListView.builder للقوائم الطويلة (التحميل الكسول)',
              'تنفيذ itemExtent لعناصر القائمة الموحدة',
              'استخدام AutomaticKeepAliveClientMixin لعناصر القائمة المكلفة',
              'تحديد تعقيد وعمق عناصر القائمة',
            ],
          ),
          UnorderedListContent(
            title: 'الذاكرة والأصول:',
            value: [
              'تحسين أحجام الصور واستخدام التنسيقات المناسبة',
              'استخدام cached_network_image لصور الشبكة',
              'التخلص من المتحكمات، التدفقات، والرسوم المتحركة',
              'استخدام هياكل بيانات فعالة (Set للبحث، List للبيانات المرتبة)',
            ],
          ),
          UnorderedListContent(
            title: 'التقنيات المتقدمة:',
            value: [
              'نقل الحسابات الثقيلة إلى العوازل',
              'استخدام DevTools لتحليل وإيجاد الاختناقات',
              'تمكين tree-shaking لتقليل حجم الحزمة',
              'استخدام Flutter Performance overlay لمراقبة معدلات الإطارات',
            ],
          ),
        ],
        bestUse:
            'حلل تطبيقك باستخدام DevTools أولاً لتحديد الاختناقات الفعلية. طبق تحسينات مثل البانيات const والتخطيطات الفعالة كممارسات أساسية. استخدم العوازل للعمل المكثف للمعالج و RepaintBoundary للودجتس المكلفة.',
      ),
    ),
    examples: [
      StrCodeBlock.good(r'''
// GOOD - Using const constructors
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Hello'),
        Icon(Icons.star),
      ],
    );
  }
}
'''),
      StrCodeBlock.bad(r'''
// BAD - Rebuilding unnecessarily
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Hello'), // Rebuilt every time
        Icon(Icons.star), // Rebuilt every time
      ],
    );
  }
}
'''),
    ],
    pros: LocalizedValue(
      en: [
        "const constructors significantly reduce rebuilds and improve performance",
        "ListView.builder with itemExtent dramatically improves scroll performance",
        "Isolates enable smooth UI during heavy computations",
        "RepaintBoundary prevents cascade repaints",
        "Proper profiling identifies real bottlenecks vs premature optimization",
      ],
      ar: [
        "البانيات const تقلل بشكل كبير من إعادة البناء وتحسن الأداء",
        "ListView.builder مع itemExtent تحسن بشكل كبير أداء التمرير",
        "العوازل تمكن من واجهة سلسة أثناء الحسابات الثقيلة",
        "RepaintBoundary يمنع إعادة الرسم المتسلسلة",
        "التحليل الصحيح يحدد الاختناقات الحقيقية مقابل التحسين المبكر",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Over-optimizing early can complicate code unnecessarily",
        "Some optimizations add complexity (isolates, RepaintBoundary)",
        "Must balance optimization with code readability",
        "Not all optimizations work in every scenario",
        "Profiling requires time and understanding of tools",
      ],
      ar: [
        "التحسين المفرط المبكر يمكن أن يعقد الكود دون داعٍ",
        "بعض التحسينات تضيف تعقيدًا (العوازل، RepaintBoundary)",
        "يجب الموازنة بين التحسين وقابلية قراءة الكود",
        "ليست كل التحسينات تعمل في كل سيناريو",
        "التحليل يتطلب وقتًا وفهمًا للأدوات",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Apply Performance Optimization when:",
          value: [
            "Experiencing frame drops (jank) during animations or scrolling",
            "App startup is slow or uses excessive battery/memory",
            "Targeting lower-end devices with limited resources",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "طبق تحسين الأداء عندما:",
          value: [
            "ملاحظة تساقط الإطارات (تقطيع) أثناء الرسوم المتحركة أو التمرير",
            "يكون بدء تشغيل التطبيق بطيئًا أو يستهلك الكثير من البطارية/الذاكرة",
            "استهداف أجهزة منخفضة المواصفات ذات موارد محدودة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "054",
    difficulty: .advanced,
    categories: [.flutterBasics, .ui],
    type: .theoretical,
    tags: ["advanced", "flutter", "rendering", "skia", "impeller"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "What is Flutter's rendering engine and how does it work (e.g., Skia, Impeller)?",
        answer: [
          StringContent(
            'Flutter uses rendering engines to draw UI to the screen. The engine compiles Flutter widgets into low-level graphics commands that run on the device GPU.',
          ),
          UnorderedListContent(
            title: 'Skia (Traditional Engine):',
            value: [
              'C++-based 2D graphics library',
              'Default engine in Flutter since the beginning',
              'High-quality, cross-platform rendering',
              'CPU-based rasterization with GPU acceleration',
              'Mature and stable on all platforms',
            ],
          ),
          UnorderedListContent(
            title: 'Impeller (New Engine):',
            value: [
              'Next-generation rendering engine for Flutter',
              'Designed for predictable performance',
              'Pre-compiled shaders eliminate runtime shader compilation',
              'Currently default on iOS, opt-in on Android',
              'Better GPU utilization and reduced jank',
            ],
          ),
          UnorderedListContent(
            title: 'How Rendering Works:',
            value: [
              'Widgets define UI structure',
              'Framework builds a Render Tree',
              'Engine compiles to native graphics commands',
              'GPU executes commands and displays pixels',
            ],
          ),
        ],
        bestUse:
            'For most apps, use the default engine (Impeller on iOS, Skia on Android). Enable Impeller on Android for better performance if needed. For custom graphics or shaders, understand which engine is active to optimize accordingly.',
      ),
      ar: QuestionContent(
        question: 'ما هو محرك العرض في فلاتر وكيف يعمل (مثل Skia و Impeller)؟',
        answer: [
          StringContent(
            'يستخدم فلاتر محركات عرض لرسم الواجهة على الشاشة. يقوم المحرك بتحويل ودجتس فلاتر إلى أوامر رسومية منخفضة المستوى تعمل على معالج الرسوميات للجهاز.',
          ),
          UnorderedListContent(
            title: 'Skia (المحرك التقليدي):',
            value: [
              'مكتبة رسوميات ثنائية الأبعاد بلغة C++',
              'المحرك الافتراضي في فلاتر منذ البداية',
              'عرض عالي الجودة ومتعدد المنصات',
              'تحويل نقطي معتمد على المعالج مع تسريع GPU',
              'ناضج ومستقر على جميع المنصات',
            ],
          ),
          UnorderedListContent(
            title: 'Impeller (المحرك الجديد):',
            value: [
              'محرك عرض الجيل التالي لفلاتر',
              'مصمم لأداء يمكن التنبؤ به',
              'Shaders مترجمة مسبقًا تلغي ترجمة shader في وقت التشغيل',
              'افتراضي حاليًا على iOS، اختياري على Android',
              'استخدام أفضل لـ GPU وتقليل التقطيع',
            ],
          ),
          UnorderedListContent(
            title: 'كيف يعمل العرض:',
            value: [
              'الودجتس تحدد بنية الواجهة',
              'الإطار يبني شجرة العرض (Render Tree)',
              'المحرك يحول إلى أوامر رسومية أصلية',
              'GPU ينفذ الأوامر ويعرض البكسلات',
            ],
          ),
        ],
        bestUse:
            'لمعظم التطبيقات، استخدم المحرك الافتراضي (Impeller على iOS، Skia على Android). فعّل Impeller على Android للحصول على أداء أفضل إذا لزم الأمر. للرسوميات المخصصة أو shaders، افهم أي محرك نشط للتحسين وفقًا لذلك.',
      ),
    ),
    examples: [
      StrCodeBlock(r'''
// Enable Impeller on Android in android/app/src/main/AndroidManifest.xml
<application>
  <meta-data
    android:name="io.flutter.embedding.android.EnableImpeller"
    android:value="true" />
  ...
</application>
'''),
      StrCodeBlock(r'''
// Check which rendering engine is being used (for debugging)
import 'dart:ui' as ui;

void main() {
  print('Renderer: ${ui.window.defaultRouteName}');
  // Use Flutter DevTools to check rendering engine
}
'''),
    ],
    pros: LocalizedValue(
      en: [
        "Skia: Mature, stable, proven across all platforms",
        "Skia: Excellent rendering quality and broad compatibility",
        "Impeller: Eliminates shader compilation jank",
        "Impeller: More predictable performance and better GPU utilization",
        "Both engines are hardware-accelerated",
      ],
      ar: [
        "Skia: ناضج، مستقر، مثبت عبر جميع المنصات",
        "Skia: جودة عرض ممتازة وتوافق واسع",
        "Impeller: يلغي تقطيع ترجمة shader",
        "Impeller: أداء أكثر قابلية للتنبؤ واستخدام أفضل لـ GPU",
        "كلا المحركين مسرّعان بالعتاد",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Skia: Shader compilation can cause jank on first run",
        "Impeller: Still maturing on Android, may have edge cases",
        "Impeller: Larger app size due to pre-compiled shaders",
        "Engine details mostly abstracted - developers need awareness only for debugging",
        "Custom shaders may need adjustments when switching engines",
      ],
      ar: [
        "Skia: ترجمة shader قد تسبب تقطيعًا في أول تشغيل",
        "Impeller: لا يزال في طور النضج على Android، قد يكون له حالات حافة",
        "Impeller: حجم تطبيق أكبر بسبب shaders المترجمة مسبقًا",
        "تفاصيل المحرك مجردة في الغالب - يحتاج المطورون للوعي فقط للتصحيح",
        "Shaders المخصصة قد تحتاج إلى تعديلات عند تبديل المحركات",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Engine Considerations:",
          value: [
            "Impeller: Recommended for iOS to eliminate shader jank",
            "Skia: Proven stability for wide Android device range",
            "Switching: When specific rendering performance issues are identified",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اعتبارات المحرك:",
          value: [
            "Impeller: يوصى به لـ iOS للتخلص من تقطيع الـ shader",
            "Skia: استقرار مثبت لمجموعة واسعة من أجهزة Android",
            "التبديل: عند تحديد مشاكل أداء عرض معينة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "055",
    difficulty: .intermediate,
    categories: [.flutterBasics, .ui],
    type: .theoretical,
    tags: [
      "advanced",
      "flutter",
      "comparison",
      "reactnative",
      "cross-platform",
    ],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'Compare Flutter with React Native: what are the pros and cons?',
        answer: [
          StringContent(
            'Flutter and React Native are the two leading cross-platform mobile development frameworks, each with distinct architectural approaches and trade-offs.',
          ),
          UnorderedListContent(
            title: 'Architecture Differences:',
            value: [
              'Flutter compiles to native ARM code and uses Skia rendering engine for complete UI control',
              'React Native uses JavaScript bridge to communicate with native components, relying on platform-specific UI widgets',
              'Flutter\'s rendering is consistent across platforms; React Native\'s appearance varies by OS',
            ],
          ),
          UnorderedListContent(
            title: 'Performance Characteristics:',
            value: [
              'Flutter: Near-native performance with direct compilation, 60/120 FPS animations',
              'React Native: Bridge communication overhead can cause lag in complex UIs',
              'Both support hot reload, but Flutter\'s is typically faster and more reliable',
            ],
          ),
          UnorderedListContent(
            title: 'Development Experience:',
            value: [
              'Flutter uses Dart (less common but modern, type-safe)',
              'React Native uses JavaScript/TypeScript (massive developer pool)',
              'Flutter has comprehensive widget library; React Native relies more on third-party packages',
            ],
          ),
        ],
        bestUse:
            'Use Flutter when performance, UI consistency, and custom design are critical. Use React Native when leveraging existing JavaScript ecosystem, web development skills, or native module integration is prioritized.',
        notes: [
          'Flutter app sizes are typically larger (5-10MB extra)',
          'React Native has better integration with existing native codebases',
          'Flutter is catching up in ecosystem maturity but React Native still leads in package availability',
        ],
      ),
      ar: QuestionContent(
        question: 'قارن بين Flutter و React Native: ما هي المزايا والعيوب؟',
        answer: [
          StringContent(
            'Flutter و React Native هما أبرز إطارات العمل للتطوير عبر المنصات، ولكل منهما نهج معماري مميز ومقايضات مختلفة.',
          ),
          UnorderedListContent(
            title: 'الفروقات المعمارية:',
            value: [
              'Flutter يُترجم إلى كود ARM أصلي ويستخدم محرك Skia للرسم مع تحكم كامل بالواجهة',
              'React Native يستخدم جسر JavaScript للتواصل مع المكونات الأصلية معتمداً على عناصر واجهة خاصة بكل منصة',
              'رسم Flutter متسق عبر المنصات؛ مظهر React Native يختلف حسب نظام التشغيل',
            ],
          ),
          UnorderedListContent(
            title: 'خصائص الأداء:',
            value: [
              'Flutter: أداء قريب من الأصلي مع ترجمة مباشرة، رسوم متحركة بمعدل 60/120 إطار في الثانية',
              'React Native: التواصل عبر الجسر يسبب تأخير في الواجهات المعقدة',
              'كلاهما يدعم التحديث الفوري، لكن Flutter عادةً أسرع وأكثر استقراراً',
            ],
          ),
          UnorderedListContent(
            title: 'تجربة التطوير:',
            value: [
              'Flutter يستخدم Dart (أقل شيوعاً لكن حديثة وآمنة نوعياً)',
              'React Native يستخدم JavaScript/TypeScript (مجتمع مطورين ضخم)',
              'Flutter لديه مكتبة widgets شاملة؛ React Native يعتمد أكثر على الحزم الخارجية',
            ],
          ),
        ],
        bestUse:
            'استخدم Flutter عندما يكون الأداء واتساق الواجهة والتصميم المخصص أولوية. استخدم React Native عند الاستفادة من نظام JavaScript البيئي أو مهارات تطوير الويب أو دمج الوحدات الأصلية.',
        notes: [
          'حجم تطبيقات Flutter عادةً أكبر (5-10 ميجابايت إضافية)',
          'React Native يتكامل بشكل أفضل مع قواعد الكود الأصلية الموجودة',
          'Flutter يلحق بالنضج البيئي لكن React Native لا يزال يتقدم في توفر الحزم',
        ],
      ),
    ),
    pros: LocalizedValue(
      en: [
        "Flutter: Consistent 60/120 FPS performance, predictable UI across platforms",
        "Flutter: Complete UI customization with rich widget library",
        "Flutter: Single codebase for iOS, Android, Web, Desktop",
        "Flutter: Fast hot reload and excellent DevTools",
        "React Native: Massive JavaScript/TypeScript ecosystem",
        "React Native: Leverage web development skills and libraries",
        "React Native: Better third-party native module availability",
        "React Native: Easier integration with existing native apps",
      ],
      ar: [
        "Flutter: أداء ثابت 60/120 إطار في الثانية، واجهة متوقعة عبر المنصات",
        "Flutter: تخصيص كامل للواجهة مع مكتبة widgets غنية",
        "Flutter: قاعدة كود واحدة لـ iOS و Android و الويب وسطح المكتب",
        "Flutter: تحديث فوري سريع وأدوات تطوير ممتازة",
        "React Native: نظام JavaScript/TypeScript البيئي الضخم",
        "React Native: الاستفادة من مهارات ومكتبات تطوير الويب",
        "React Native: توفر أفضل للوحدات الأصلية من طرف ثالث",
        "React Native: دمج أسهل مع التطبيقات الأصلية الموجودة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Flutter: Larger app size (typically 5-10MB overhead)",
        "Flutter: Dart language has smaller developer community",
        "Flutter: Fewer mature third-party packages compared to npm",
        "Flutter: Native modules require platform channels (more complex)",
        "React Native: JavaScript bridge causes performance bottlenecks",
        "React Native: UI inconsistencies across iOS and Android",
        "React Native: Harder to achieve 60 FPS in complex animations",
        "React Native: Debugging can be challenging with bridge issues",
      ],
      ar: [
        "Flutter: حجم تطبيق أكبر (حوالي 5-10 ميجابايت إضافية)",
        "Flutter: لغة Dart لديها مجتمع مطورين أصغر",
        "Flutter: حزم خارجية ناضجة أقل مقارنة بـ npm",
        "Flutter: الوحدات الأصلية تتطلب قنوات منصة (أكثر تعقيداً)",
        "React Native: جسر JavaScript يسبب اختناقات في الأداء",
        "React Native: عدم اتساق الواجهة بين iOS و Android",
        "React Native: صعوبة تحقيق 60 إطار في الثانية في الرسوم المتحركة المعقدة",
        "React Native: تصحيح الأخطاء قد يكون صعباً مع مشاكل الجسر",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Framework Selection:",
          value: [
            "Flutter: For high-performance, custom-branded UIs and consistency",
            "React Native: For leveraging JS ecosystem and existing web teams",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار إطار العمل:",
          value: [
            "Flutter: للواجهات عالية الأداء المخصصة والاتساق الكامل",
            "React Native: للاستفادة من نظام JS وفرق الويب الموجودة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "056",
    difficulty: .intermediate,
    categories: [.oop, .dartBasics],
    type: .theoretical,
    tags: ["intermediate", "dart", "oop", "composition", "inheritance"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            'Explain inheritance and composition in Dart. When should you use each?',
        answer: [
          StringContent(
            'Inheritance and composition are two fundamental ways to achieve code reuse in object-oriented programming, each with different implications for code structure and flexibility.',
          ),
          UnorderedListContent(
            title: 'Inheritance ("is-a" relationship):',
            value: [
              'A class extends another class, inheriting its properties and methods',
              'Creates a parent-child hierarchy where child is a specialized version of parent',
              'Uses "extends" keyword in Dart',
              'Supports method overriding with @override annotation',
            ],
          ),
          UnorderedListContent(
            title: 'Composition ("has-a" relationship):',
            value: [
              'A class contains instances of other classes as fields',
              'Assembles functionality by delegating to contained objects',
              'More flexible as components can be swapped at runtime',
              'Follows "favor composition over inheritance" design principle',
            ],
          ),
          StringContent(
            'Modern Dart/Flutter development heavily favors composition, especially with mixins and interfaces providing better alternatives to deep inheritance hierarchies.',
          ),
        ],
        bestUse:
            'Use inheritance when there\'s a clear "is-a" relationship and shared behavior (e.g., Dog is an Animal). Use composition to build complex objects from simpler parts and when you need runtime flexibility (e.g., Car has an Engine).',
        notes: [
          'Dart supports single inheritance but multiple mixins',
          'Composition makes testing easier through dependency injection',
          'Deep inheritance hierarchies are considered an anti-pattern',
        ],
      ),
      ar: QuestionContent(
        question:
            'اشرح الوراثة (inheritance) والتكوين (composition) في Dart. متى يجب استخدام كل منهما؟',
        answer: [
          StringContent(
            'الوراثة والتكوين هما طريقتان أساسيتان لتحقيق إعادة استخدام الكود في البرمجة الكائنية، ولكل منهما تأثيرات مختلفة على بنية الكود والمرونة.',
          ),
          UnorderedListContent(
            title: 'الوراثة (علاقة "هو-نوع من"):',
            value: [
              'فئة تمتد من فئة أخرى، فترث خصائصها وطرقها',
              'تنشئ تسلسل هرمي حيث الطفل هو نسخة متخصصة من الوالد',
              'تستخدم كلمة "extends" في Dart',
              'تدعم تجاوز الطرق باستخدام @override',
            ],
          ),
          UnorderedListContent(
            title: 'التكوين (علاقة "يحتوي-على"):',
            value: [
              'فئة تحتوي على مثيلات من فئات أخرى كحقول',
              'تجمع الوظائف من خلال التفويض للكائنات المحتواة',
              'أكثر مرونة حيث يمكن استبدال المكونات أثناء التشغيل',
              'تتبع مبدأ التصميم "فضّل التكوين على الوراثة"',
            ],
          ),
          StringContent(
            'تطوير Dart/Flutter الحديث يفضل بشدة التكوين، خاصةً مع mixins والواجهات التي توفر بدائل أفضل للتسلسلات الهرمية العميقة.',
          ),
        ],
        bestUse:
            'استخدم الوراثة عندما تكون هناك علاقة واضحة "هو-نوع من" وسلوك مشترك (مثل الكلب هو حيوان). استخدم التكوين لبناء كائنات معقدة من أجزاء أبسط وعندما تحتاج مرونة وقت التشغيل (مثل السيارة تحتوي على محرك).',
        notes: [
          'Dart تدعم الوراثة الفردية لكن عدة mixins',
          'التكوين يجعل الاختبار أسهل من خلال حقن التبعيات',
          'التسلسلات الهرمية العميقة تُعتبر نمط مضاد',
        ],
      ),
    ),
    examples: [
      StrCodeBlock.bad("""// Bad: Deep inheritance hierarchy
class Vehicle {
  void move() => print('Moving');
}

class LandVehicle extends Vehicle {
  void driveOnRoad() => print('Driving');
}

class Car extends LandVehicle {
  void honk() => print('Honk!');
}

// Tightly coupled, hard to change
"""),
      StrCodeBlock.good("""// Good: Composition with interfaces
abstract class Movable {
  void move();
}

class Engine {
  void start() => print('Engine started');
}

class Car implements Movable {
  final Engine engine;
  
  Car(this.engine);
  
  @override
  void move() {
    engine.start();
    print('Car moving');
  }
}

void main() {
  final car = Car(Engine());
  car.move(); // Flexible, testable
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Inheritance: Straightforward code reuse for closely related classes",
        "Inheritance: Clear hierarchical relationships in domain modeling",
        "Composition: Greater flexibility and loose coupling",
        "Composition: Easier unit testing through dependency injection",
        "Composition: Runtime behavior modification by swapping components",
        "Composition: Avoids fragile base class problem",
      ],
      ar: [
        "الوراثة: إعادة استخدام كود مباشرة للفئات ذات الصلة الوثيقة",
        "الوراثة: علاقات هرمية واضحة في نمذجة المجال",
        "التكوين: مرونة أكبر وارتباط أضعف",
        "التكوين: اختبار وحدات أسهل من خلال حقن التبعيات",
        "التكوين: تعديل السلوك وقت التشغيل باستبدال المكونات",
        "التكوين: يتجنب مشكلة الفئة الأساسية الهشة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Inheritance: Creates tight coupling between parent and child",
        "Inheritance: Changes to base class can break subclasses",
        "Inheritance: Limited to single inheritance in Dart",
        "Composition: Can lead to more boilerplate code",
        "Composition: Indirect access to composed object methods",
        "Composition: May be overkill for simple hierarchies",
      ],
      ar: [
        "الوراثة: تنشئ ارتباط قوي بين الوالد والطفل",
        "الوراثة: التغييرات على الفئة الأساسية قد تكسر الفئات الفرعية",
        "الوراثة: محدودة بالوراثة الفردية في Dart",
        "التكوين: قد يؤدي إلى المزيد من الكود المتكرر",
        "التكوين: وصول غير مباشر لطرق الكائنات المكونة",
        "التكوين: قد يكون مبالغة للتسلسلات الهرمية البسيطة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Inheritance vs Composition Selection:",
          value: [
            "Inheritance: Primary relationship is 'is-a' and stable",
            "Composition: Relationship is 'has-a' or requires flexibility",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار الوراثة مقابل التكوين:",
          value: [
            "الوراثة: العلاقة الأساسية هي 'هو نوع من' ومستقرة",
            "التكوين: العلاقة هي 'يحتوي على' أو تحتاج لمرونة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "057",
    difficulty: .basic,
    categories: [.oop, .dartBasics],
    type: .theoretical,
    tags: ["basic", "dart", "oop", "polymorphism"],
    content: LocalizedValue(
      en: QuestionContent(
        question: 'What is polymorphism in object-oriented programming?',
        answer: [
          StringContent(
            'Polymorphism (from Greek "many forms") is the ability of different objects to respond to the same method call in their own way. It allows treating objects of different classes through a common interface.',
          ),
          UnorderedListContent(
            title: 'Key Concepts:',
            value: [
              'A single interface can represent multiple underlying forms (classes)',
              'Subclasses can override methods to provide specialized behavior',
              'A function can accept a base type and work with any subclass instance',
              'Enables writing flexible, reusable code that works with multiple types',
            ],
          ),
          UnorderedListContent(
            title: 'Types in Dart:',
            value: [
              'Compile-time polymorphism: Method overloading (limited in Dart)',
              'Runtime polymorphism: Method overriding with @override',
              'Interface polymorphism: Implementing abstract classes or interfaces',
            ],
          ),
          StringContent(
            'Polymorphism is fundamental to Flutter\'s widget system, where a Widget reference can hold any concrete widget type (Container, Text, Column, etc.).',
          ),
        ],
        bestUse:
            'Use polymorphism when you need a common interface for different implementations, enabling code that works with multiple types without knowing their exact class.',
        notes: [
          'Dart uses runtime type checking for polymorphic calls',
          'Abstract classes and interfaces enable polymorphism in Dart',
          'Flutter\'s build() method is polymorphic across all widgets',
        ],
      ),
      ar: QuestionContent(
        question: 'ما هو تعدد الأشكال (polymorphism) في البرمجة الكائنية؟',
        answer: [
          StringContent(
            'تعدد الأشكال (من اليونانية "أشكال متعددة") هو قدرة كائنات مختلفة على الاستجابة لنفس استدعاء الطريقة بطريقتها الخاصة. يسمح بمعاملة كائنات من فئات مختلفة من خلال واجهة مشتركة.',
          ),
          UnorderedListContent(
            title: 'المفاهيم الأساسية:',
            value: [
              'واجهة واحدة يمكن أن تمثل أشكال أساسية متعددة (فئات)',
              'الفئات الفرعية يمكنها تجاوز الطرق لتوفير سلوك متخصص',
              'دالة يمكنها قبول نوع أساسي والعمل مع أي مثيل فئة فرعية',
              'تمكن من كتابة كود مرن وقابل لإعادة الاستخدام يعمل مع أنواع متعددة',
            ],
          ),
          UnorderedListContent(
            title: 'الأنواع في Dart:',
            value: [
              'تعدد أشكال وقت الترجمة: تحميل الطرق (محدود في Dart)',
              'تعدد أشكال وقت التشغيل: تجاوز الطرق باستخدام @override',
              'تعدد أشكال الواجهة: تنفيذ الفئات المجردة أو الواجهات',
            ],
          ),
          StringContent(
            'تعدد الأشكال أساسي في نظام widgets في Flutter، حيث يمكن لمرجع Widget أن يحتوي على أي نوع widget ملموس (Container، Text، Column، إلخ).',
          ),
        ],
        bestUse:
            'استخدم تعدد الأشكال عندما تحتاج واجهة مشتركة لتنفيذات مختلفة، مما يتيح كود يعمل مع أنواع متعددة دون معرفة فئتها الدقيقة.',
        notes: [
          'Dart تستخدم فحص النوع وقت التشغيل للاستدعاءات متعددة الأشكال',
          'الفئات المجردة والواجهات تمكن تعدد الأشكال في Dart',
          'طريقة build() في Flutter متعددة الأشكال عبر جميع widgets',
        ],
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Abstract base class
abstract class Animal {
  void makeSound();
  String get type;
}

// Concrete implementations
class Dog extends Animal {
  @override
  void makeSound() => print('Woof! 🐕');
  
  @override
  String get type => 'Canine';
}

class Cat extends Animal {
  @override
  void makeSound() => print('Meow! 🐈');
  
  @override
  String get type => 'Feline';
}

class Bird extends Animal {
  @override
  void makeSound() => print('Tweet! 🐦');
  
  @override
  String get type => 'Avian';
}

// Polymorphic function
void animalConcert(List<Animal> animals) {
  for (final animal in animals) {
    print('A \${animal.type} says:');
    animal.makeSound(); // Calls correct method based on runtime type
  }
}

void main() {
  final animals = <Animal>[
    Dog(),
    Cat(),
    Bird(),
  ];
  
  animalConcert(animals);
  // Output:
  // A Canine says:
  // Woof! 🐕
  // A Feline says:
  // Meow! 🐈
  // A Avian says:
  // Tweet! 🐦
}"""),
      StrCodeBlock.good("""// Flutter example: Polymorphic widget rendering
import 'package:flutter/material.dart';

abstract class Shape extends StatelessWidget {
  const Shape({super.key});
}

class Circle extends Shape {
  const Circle({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
    );
  }
}

class Square extends Shape {
  const Square({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
    );
  }
}

// Polymorphic usage
class ShapeGallery extends StatelessWidget {
  const ShapeGallery({super.key});
  
  @override
  Widget build(BuildContext context) {
    // List of Shape, but contains different types
    final shapes = <Shape>[
      const Circle(),
      const Square(),
      const Circle(),
    ];
    
    return Row(
      children: shapes, // Polymorphism in action
    );
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Enables writing flexible, reusable code that works with multiple types",
        "Makes code more maintainable by programming to interfaces",
        "Allows adding new implementations without changing existing code",
        "Reduces conditional logic and type checking",
        "Core to design patterns like Strategy, Factory, and Template Method",
      ],
      ar: [
        "يمكّن من كتابة كود مرن وقابل لإعادة الاستخدام يعمل مع أنواع متعددة",
        "يجعل الكود أكثر قابلية للصيانة من خلال البرمجة على الواجهات",
        "يسمح بإضافة تنفيذات جديدة دون تغيير الكود الموجود",
        "يقلل من المنطق الشرطي وفحص الأنواع",
        "أساسي لأنماط التصميم مثل Strategy و Factory و Template Method",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can make code harder to understand if overused or deeply nested",
        "Actual object type is less obvious at compile time",
        "May hide complexity behind abstractions",
        "Runtime overhead for dynamic method dispatch (minimal in Dart)",
        "Debugging can be more challenging with multiple implementations",
      ],
      ar: [
        "قد يجعل الكود أصعب في الفهم إذا أُفرط في استخدامه أو تداخل بعمق",
        "نوع الكائن الفعلي أقل وضوحاً في وقت الترجمة",
        "قد يخفي التعقيد خلف التجريدات",
        "تكلفة وقت تشغيل لإرسال الطرق الديناميكي (ضئيلة في Dart)",
        "تصحيح الأخطاء قد يكون أكثر صعوبة مع تنفيذات متعددة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Polymorphism when:",
          value: [
            "Building modular systems with interchangeable components",
            "Handling collections of different objects sharing a common base",
            "Decoupling high-level logic from specific implementations",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم تعدد الأشكال عندما:",
          value: [
            "بناء أنظمة برمجية مع مكونات قابلة للتبديل",
            "التعامل مع مجموعات من كائنات مختلفة تشترك في أصل واحد",
            "فصل المنطق عالي المستوى عن تنفيذات محددة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "058",
    difficulty: .basic,
    categories: [.basic, .flutterBasics],
    type: .theoretical,
    tags: ["basic", "pubspec", "dependencies", "configuration"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is the purpose of the pubspec.yaml file?",
        answer: [
          StringContent(
            "pubspec.yaml is the configuration file for Flutter and Dart projects. It defines project metadata, dependencies, assets, and build settings.",
          ),
          UnorderedListContent(
            title: "Key sections in pubspec.yaml:",
            value: [
              "name: Project identifier used for imports",
              "description: Brief project description",
              "version: App version and build number (e.g., 1.0.0+1)",
              "dependencies: External packages your app needs",
              "dev_dependencies: Packages needed only for development (testing, code generation)",
              "flutter: Flutter-specific configuration (assets, fonts, material design)",
            ],
          ),
          StringContent(
            "This file is crucial for dependency management, asset bundling, and version control. Every Flutter project must have a pubspec.yaml at the root.",
          ),
        ],
        notes: [
          "YAML is indentation-sensitive - use spaces, not tabs",
          "Run 'flutter pub get' after modifying dependencies",
          "Version constraints use semantic versioning (^, >=, <)",
        ],
        bestUse:
            "Essential configuration file for every Flutter project. Defines all dependencies and assets needed for the app.",
      ),
      ar: QuestionContent(
        question: "ما هو الغرض من ملف pubspec.yaml؟",
        answer: [
          StringContent(
            "pubspec.yaml هو ملف التكوين لمشاريع Flutter و Dart. يحدد البيانات الوصفية للمشروع، التبعيات، الأصول، وإعدادات البناء.",
          ),
          UnorderedListContent(
            title: "الأقسام الرئيسية في pubspec.yaml:",
            value: [
              "name: معرف المشروع المستخدم للاستيراد",
              "description: وصف موجز للمشروع",
              "version: إصدار التطبيق ورقم البناء (مثل 1.0.0+1)",
              "dependencies: الحزم الخارجية التي يحتاجها تطبيقك",
              "dev_dependencies: الحزم المطلوبة للتطوير فقط (الاختبار، توليد الكود)",
              "flutter: تكوين خاص بـ Flutter (الأصول، الخطوط، تصميم Material)",
            ],
          ),
          StringContent(
            "هذا الملف حاسم لإدارة التبعيات، تجميع الأصول، والتحكم في الإصدار. يجب أن يحتوي كل مشروع Flutter على pubspec.yaml في الجذر.",
          ),
        ],
        notes: [
          "YAML حساس للمسافات - استخدم المسافات، وليس علامات الجدولة",
          "قم بتشغيل 'flutter pub get' بعد تعديل التبعيات",
          "قيود الإصدار تستخدم الإصدار الدلالي (^، >=، <)",
        ],
        bestUse:
            "ملف تكوين أساسي لكل مشروع Flutter. يحدد جميع التبعيات والأصول المطلوبة للتطبيق.",
      ),
    ),
    examples: [
      StrCodeBlock("""name: my_flutter_app
description: A new Flutter project
version: 1.0.0+1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.2
  http: ^1.1.0
  provider: ^6.0.5

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0

flutter:
  uses-material-design: true
  
  assets:
    - assets/images/
    - assets/icons/
  
  fonts:
    - family: Roboto
      fonts:
        - asset: fonts/Roboto-Regular.ttf
        - asset: fonts/Roboto-Bold.ttf
          weight: 700
""", codeLanguage: .yaml),
    ],
    pros: LocalizedValue(
      en: [
        "Centralized dependency management",
        "Clear project configuration in one file",
        "Easy to version control and share",
        "Supports semantic versioning for dependencies",
      ],
      ar: [
        "إدارة مركزية للتبعيات",
        "تكوين واضح للمشروع في ملف واحد",
        "سهل للتحكم في الإصدار والمشاركة",
        "يدعم الإصدار الدلالي للتبعيات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "YAML syntax can be error-prone (indentation issues)",
        "Large projects may have very long dependency lists",
        "Version conflicts can occur between dependencies",
        "Not all dependencies on pub.dev are high quality",
      ],
      ar: [
        "صيغة YAML قد تكون عرضة للأخطاء (مشاكل المسافات)",
        "المشاريع الكبيرة قد يكون لها قوائم تبعيات طويلة جدًا",
        "قد تحدث تعارضات في الإصدارات بين التبعيات",
        "ليست كل التبعيات على pub.dev عالية الجودة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Modify pubspec.yaml when:",
          value: [
            "Adding or updating package dependencies",
            "Registering local assets or custom fonts",
            "Changing app version or build number",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "عدل pubspec.yaml عندما:",
          value: [
            "إضافة أو تحديث تبعيات الحزم",
            "تسجيل الأصول المحلية أو الخطوط المخصصة",
            "تغيير إصدار التطبيق أو رقم البناء",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "059",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .practical,
    tags: ["basic", "assets", "images", "configuration"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "How do you add an image to a Flutter project?",
        answer: [
          StringContent(
            "Adding images to Flutter involves two steps: placing the image file in the project directory and declaring it in pubspec.yaml.",
          ),
          OrderedListContent(
            title: "Steps to add an image:",
            value: [
              "Create an assets folder in project root (e.g., assets/images/)",
              "Place your image files in this folder",
              "Declare the asset path in pubspec.yaml under flutter > assets",
              "Run 'flutter pub get' to register the assets",
              "Use Image.asset() widget to display the image",
            ],
          ),
          StringContent(
            "For network images, use Image.network() without needing pubspec.yaml configuration. For better performance with network images, use the cached_network_image package.",
          ),
        ],
        notes: [
          "Flutter supports PNG, JPEG, GIF, WebP, and BMP formats",
          "Use different resolutions (1x, 2x, 3x) for various screen densities",
          "Optimize image sizes before adding to project",
        ],
        bestUse:
            "Use local assets for app logos, icons, and static images. Use network images for dynamic content loaded from servers.",
      ),
      ar: QuestionContent(
        question: "كيف تضيف صورة إلى مشروع Flutter؟",
        answer: [
          StringContent(
            "إضافة الصور إلى Flutter تتضمن خطوتين: وضع ملف الصورة في دليل المشروع وإعلانه في pubspec.yaml.",
          ),
          OrderedListContent(
            title: "خطوات إضافة صورة:",
            value: [
              "أنشئ مجلد assets في جذر المشروع (مثل assets/images/)",
              "ضع ملفات الصور في هذا المجلد",
              "أعلن مسار الأصل في pubspec.yaml تحت flutter > assets",
              "قم بتشغيل 'flutter pub get' لتسجيل الأصول",
              "استخدم ودجت Image.asset() لعرض الصورة",
            ],
          ),
          StringContent(
            "للصور من الشبكة، استخدم Image.network() دون الحاجة لتكوين pubspec.yaml. لأداء أفضل مع صور الشبكة، استخدم حزمة cached_network_image.",
          ),
        ],
        notes: [
          "يدعم Flutter صيغ PNG و JPEG و GIF و WebP و BMP",
          "استخدم دقات مختلفة (1x، 2x، 3x) لكثافات شاشة مختلفة",
          "حسّن أحجام الصور قبل إضافتها للمشروع",
        ],
        bestUse:
            "استخدم الأصول المحلية لشعارات التطبيق والأيقونات والصور الثابتة. استخدم صور الشبكة للمحتوى الديناميكي المحمّل من الخوادم.",
      ),
    ),
    examples: [
      StrCodeBlock("""# 1. pubspec.yaml configuration
flutter:
  assets:
    - assets/images/logo.png
    - assets/images/background.jpg
    # Or include entire directory:
    - assets/images/
""", codeLanguage: .yaml),
      StrCodeBlock("""// 2. Using local asset image
Image.asset(
  'assets/images/logo.png',
  width: 200,
  height: 200,
  fit: BoxFit.cover,
)

// 3. Using network image
Image.network(
  'https://example.com/image.jpg',
  loadingBuilder: (context, child, loadingProgress) {
    if (loadingProgress == null) return child;
    return CircularProgressIndicator();
  },
  errorBuilder: (context, error, stackTrace) {
    return Icon(Icons.error);
  },
)

// 4. Using cached_network_image (recommended)
import 'package:cached_network_image/cached_network_image.dart';

CachedNetworkImage(
  imageUrl: 'https://example.com/image.jpg',
  placeholder: (context, url) => CircularProgressIndicator(),
  errorWidget: (context, url, error) => Icon(Icons.error),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Simple asset management system",
        "Supports multiple image resolutions automatically",
        "Local assets are bundled with app (offline access)",
        "Network images save app size",
      ],
      ar: [
        "نظام إدارة أصول بسيط",
        "يدعم دقات صور متعددة تلقائيًا",
        "الأصول المحلية مجمعة مع التطبيق (وصول دون اتصال)",
        "صور الشبكة توفر حجم التطبيق",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Local assets increase app size",
        "Must rebuild after adding new assets",
        "Network images require internet connection",
        "No built-in caching for network images without packages",
      ],
      ar: [
        "الأصول المحلية تزيد حجم التطبيق",
        "يجب إعادة البناء بعد إضافة أصول جديدة",
        "صور الشبكة تتطلب اتصال بالإنترنت",
        "لا يوجد تخزين مؤقت مدمج لصور الشبكة بدون حزم",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Local vs Network Assets Selection:",
          value: [
            "Local: Reliable icons, logos, and UI decorations",
            "Network: Dynamic content, large image collections, user-uploaded data",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار الأصول المحلية مقابل الشبكة:",
          value: [
            "المحلية: الأيقونات الموثوقة، الشعارات، وزخارف الواجهة",
            "الشبكة: المحتوى الديناميكي، مجموعات الصور الكبيرة، بيانات المستخدم",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "060",
    difficulty: .basic,
    categories: [.basic, .flutterBasics],
    type: .theoretical,
    tags: ["basic", "main", "entry", "runApp"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is the role of the main() function in Flutter?",
        answer: [
          StringContent(
            "The main() function is the entry point of every Dart/Flutter application. It's the first function that runs when the app starts.",
          ),
          UnorderedListContent(
            title: "Key responsibilities:",
            value: [
              "Initialize the Flutter framework",
              "Call runApp() to inflate the root widget",
              "Set up global configurations or dependencies",
              "Initialize services like Firebase, analytics, etc.",
              "Configure error handling and logging",
            ],
          ),
          StringContent(
            "The main() function typically calls runApp() with the root widget (usually MaterialApp or CupertinoApp) which builds the entire widget tree.",
          ),
        ],
        notes: [
          "main() can be async if you need to await initialization",
          "Keep main() simple - complex setup should be in separate functions",
          "Use WidgetsFlutterBinding.ensureInitialized() before async operations",
        ],
        bestUse:
            "Entry point for app initialization. Keep it minimal and delegate complex setup to initialization functions.",
      ),
      ar: QuestionContent(
        question: "ما هو دور دالة main() في Flutter؟",
        answer: [
          StringContent(
            "دالة main() هي نقطة الدخول لكل تطبيق Dart/Flutter. إنها أول دالة تعمل عند بدء التطبيق.",
          ),
          UnorderedListContent(
            title: "المسؤوليات الرئيسية:",
            value: [
              "تهيئة إطار عمل Flutter",
              "استدعاء runApp() لبناء الودجت الجذر",
              "إعداد التكوينات العامة أو التبعيات",
              "تهيئة الخدمات مثل Firebase والتحليلات، إلخ",
              "تكوين معالجة الأخطاء والتسجيل",
            ],
          ),
          StringContent(
            "عادةً ما تستدعي دالة main() دالة runApp() مع الودجت الجذر (عادةً MaterialApp أو CupertinoApp) الذي يبني شجرة الودجت بأكملها.",
          ),
        ],
        notes: [
          "main() يمكن أن تكون async إذا كنت بحاجة لانتظار التهيئة",
          "اجعل main() بسيطة - الإعداد المعقد يجب أن يكون في دوال منفصلة",
          "استخدم WidgetsFlutterBinding.ensureInitialized() قبل العمليات غير المتزامنة",
        ],
        bestUse:
            "نقطة الدخول لتهيئة التطبيق. اجعلها بسيطة وفوّض الإعداد المعقد لدوال التهيئة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Simple main function
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: HomeScreen(),
    );
  }
}"""),
      StrCodeBlock.good("""// Async main with initialization
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  
  runApp(const MyApp());
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Clear entry point for the application",
        "Centralized initialization logic",
        "Can handle async setup operations",
        "Easy to configure global error handling",
      ],
      ar: [
        "نقطة دخول واضحة للتطبيق",
        "منطق تهيئة مركزي",
        "يمكن التعامل مع عمليات الإعداد غير المتزامنة",
        "سهل تكوين معالجة الأخطاء العامة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can become cluttered with too much initialization",
        "Async operations in main can delay app startup",
        "Not obvious where to place certain initialization code",
      ],
      ar: [
        "قد تصبح مزدحمة مع الكثير من التهيئة",
        "العمليات غير المتزامنة في main قد تؤخر بدء التطبيق",
        "ليس واضحًا أين تضع بعض كود التهيئة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use main() for:",
          value: [
            "Starting the Flutter application",
            "One-time global service initialization",
            "Configuring app-wide error reporters",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم main() لـ:",
          value: [
            "بدء تشغيل تطبيق فلاتر",
            "تهيئة الخدمات العالمية لمرة واحدة",
            "تكوين مبلّغي أخطاء شاملين للتطبيق",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "061",
    difficulty: .basic,
    categories: [.basic, .flutterBasics],
    type: .theoretical,
    tags: ["basic", "packages", "plugins", "dependencies"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What are Packages and Plugins in Flutter?",
        answer: [
          StringContent(
            "Packages and Plugins are reusable code libraries that extend Flutter functionality. Both are distributed through pub.dev, but they differ in how they interact with the platform.",
          ),
          UnorderedListContent(
            title: "Packages:",
            value: [
              "Pure Dart code that works across all platforms",
              "No platform-specific code (iOS/Android)",
              "Examples: http, provider, intl, path",
              "Easier to maintain and test",
            ],
          ),
          UnorderedListContent(
            title: "Plugins:",
            value: [
              "Dart code with platform-specific implementations",
              "Access native platform features (camera, GPS, sensors)",
              "Include native code for Android (Kotlin/Java) and iOS (Swift/Objective-C)",
              "Examples: camera, image_picker, shared_preferences",
            ],
          ),
          StringContent(
            "Both are added to pubspec.yaml under dependencies and installed using 'flutter pub get'.",
          ),
        ],
        notes: [
          "Check pub.dev for package popularity and maintenance status",
          "Plugins require more setup but enable native features",
          "Prefer packages over plugins when possible for easier maintenance",
        ],
        bestUse:
            "Use packages for pure Dart logic (state management, utilities). Use plugins when you need platform-specific features (camera, sensors, file system).",
      ),
      ar: QuestionContent(
        question: "ما هي الحزم (Packages) والإضافات (Plugins) في Flutter؟",
        answer: [
          StringContent(
            "الحزم والإضافات هي مكتبات كود قابلة لإعادة الاستخدام تمدد وظائف Flutter. كلاهما يُوزع عبر pub.dev، لكنهما يختلفان في كيفية تفاعلهما مع المنصة.",
          ),
          UnorderedListContent(
            title: "الحزم:",
            value: [
              "كود Dart نقي يعمل عبر جميع المنصات",
              "لا يوجد كود خاص بمنصة معينة (iOS/Android)",
              "أمثلة: http، provider، intl، path",
              "أسهل في الصيانة والاختبار",
            ],
          ),
          UnorderedListContent(
            title: "الإضافات:",
            value: [
              "كود Dart مع تنفيذات خاصة بالمنصة",
              "الوصول إلى ميزات المنصة الأصلية (الكاميرا، GPS، المستشعرات)",
              "تتضمن كود أصلي لـ Android (Kotlin/Java) و iOS (Swift/Objective-C)",
              "أمثلة: camera، image_picker، shared_preferences",
            ],
          ),
          StringContent(
            "كلاهما يُضاف إلى pubspec.yaml تحت dependencies ويُثبت باستخدام 'flutter pub get'.",
          ),
        ],
        notes: [
          "تحقق من pub.dev لمعرفة شعبية الحزمة وحالة الصيانة",
          "الإضافات تتطلب إعداد أكثر لكنها تمكّن من ميزات أصلية",
          "فضّل الحزم على الإضافات عندما يكون ذلك ممكنًا لصيانة أسهل",
        ],
        bestUse:
            "استخدم الحزم لمنطق Dart النقي (إدارة الحالة، الأدوات المساعدة). استخدم الإضافات عندما تحتاج ميزات خاصة بالمنصة (الكاميرا، المستشعرات، نظام الملفات).",
      ),
    ),
    examples: [
      StrCodeBlock("""# Adding packages/plugins to pubspec.yaml
dependencies:
  # Pure Dart packages
  http: ^1.1.0
  provider: ^6.0.5
  intl: ^0.18.0
  
  # Plugins (platform-specific)
  image_picker: ^1.0.0
  camera: ^0.10.0
  shared_preferences: ^2.2.0
""", codeLanguage: .yaml),
      StrCodeBlock("""// Using a package
import 'package:http/http.dart' as http;

Future<String> fetchData() async {
  final response = await http.get(
    Uri.parse('https://api.example.com/data'),
  );
  return response.body;
}

// Using a plugin
import 'package:image_picker/image_picker.dart';

Future<void> pickImage() async {
  final picker = ImagePicker();
  final image = await picker.pickImage(
    source: ImageSource.gallery,
  );
  if (image != null) {
    print('Image path: \${image.path}');
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Extensive ecosystem on pub.dev with thousands of packages",
        "Saves development time by reusing existing solutions",
        "Community-maintained with regular updates",
        "Easy to add and remove from projects",
      ],
      ar: [
        "نظام بيئي واسع على pub.dev مع آلاف الحزم",
        "توفر وقت التطوير بإعادة استخدام الحلول الموجودة",
        "يُصان من قبل المجتمع مع تحديثات منتظمة",
        "سهل الإضافة والإزالة من المشاريع",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Plugins require platform-specific permissions and setup",
        "Dependency on third-party code maintenance",
        "Version conflicts between packages can occur",
        "Plugins increase app size more than pure packages",
      ],
      ar: [
        "الإضافات تتطلب أذونات وإعداد خاص بالمنصة",
        "الاعتماد على صيانة كود طرف ثالث",
        "قد تحدث تعارضات في الإصدارات بين الحزم",
        "الإضافات تزيد حجم التطبيق أكثر من الحزم النقية",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Package vs Plugin Selection:",
          value: [
            "Package: Cross-platform logic, utilities, and UI widgets",
            "Plugin: Hardware access (camera, GPS) and platform services (Firebase)",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار الحزمة مقابل الإضافة:",
          value: [
            "الحزمة: منطق عابر للمنصات، أدوات مساعدة، وودجتس واجهة",
            "الإضافة: الوصول للعتاد (كاميرا، GPS) وخدمات المنصة (Firebase)",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "062",
    difficulty: .intermediate,
    categories: [.flutterBasics],
    type: .theoretical,
    tags: ["intermediate", "initialization", "binding", "async"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "What is the purpose of WidgetsFlutterBinding.ensureInitialized()?",
        answer: [
          StringContent(
            "WidgetsFlutterBinding.ensureInitialized() ensures that the Flutter engine is fully initialized before executing any asynchronous operations in main().",
          ),
          UnorderedListContent(
            title: "When it's required:",
            value: [
              "Before calling any async operations in main()",
              "Before accessing platform channels",
              "Before using services like Firebase, SharedPreferences in main()",
              "Before calling MethodChannel or EventChannel",
              "Before setting system UI overlays or orientations",
            ],
          ),
          StringContent(
            "This method is idempotent (safe to call multiple times) and returns the binding instance. If called after runApp(), it has no effect since runApp() initializes the binding automatically.",
          ),
        ],
        notes: [
          "Only needed when main() is async and does work before runApp()",
          "Not needed if main() directly calls runApp() without async work",
          "Prevents 'ServicesBinding.defaultBinaryMessenger was accessed before the binding was initialized' errors",
        ],
        bestUse:
            "Call it at the start of async main() before any platform channel access, Firebase initialization, or other service setup.",
      ),
      ar: QuestionContent(
        question: "ما هو الغرض من WidgetsFlutterBinding.ensureInitialized()؟",
        answer: [
          StringContent(
            "WidgetsFlutterBinding.ensureInitialized() تضمن أن محرك Flutter مهيأ بالكامل قبل تنفيذ أي عمليات غير متزامنة في main().",
          ),
          UnorderedListContent(
            title: "متى تكون مطلوبة:",
            value: [
              "قبل استدعاء أي عمليات async في main()",
              "قبل الوصول إلى قنوات المنصة",
              "قبل استخدام خدمات مثل Firebase أو SharedPreferences في main()",
              "قبل استدعاء MethodChannel أو EventChannel",
              "قبل تعيين تراكبات واجهة النظام أو الاتجاهات",
            ],
          ),
          StringContent(
            "هذه الدالة متماثلة الفاعلية (آمنة للاستدعاء عدة مرات) وتعيد مثيل الربط. إذا استُدعيت بعد runApp()، فلا تأثير لها لأن runApp() تهيئ الربط تلقائيًا.",
          ),
        ],
        notes: [
          "مطلوبة فقط عندما تكون main() غير متزامنة وتقوم بعمل قبل runApp()",
          "غير مطلوبة إذا كانت main() تستدعي runApp() مباشرة دون عمل async",
          "تمنع أخطاء 'تم الوصول إلى ServicesBinding.defaultBinaryMessenger قبل تهيئة الربط'",
        ],
        bestUse:
            "استدعها في بداية main() غير المتزامنة قبل أي وصول لقنوات المنصة، تهيئة Firebase، أو إعداد خدمة أخرى.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Correct usage with async initialization
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  
  final prefs = await SharedPreferences.getInstance();
  
  runApp(MyApp(prefs: prefs));
}"""),
      StrCodeBlock.bad("""// WRONG - async work without ensureInitialized()
void main() async {
  // This will crash!
  await Firebase.initializeApp(); // Error: binding not initialized
  
  runApp(const MyApp());
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Prevents crashes from uninitialized binding access",
        "Enables async initialization before app starts",
        "Clear indication that async work happens in main()",
        "Safe to call multiple times",
      ],
      ar: [
        "يمنع الأعطال من الوصول للربط غير المهيأ",
        "يمكّن من التهيئة غير المتزامنة قبل بدء التطبيق",
        "إشارة واضحة على أن العمل غير المتزامن يحدث في main()",
        "آمن للاستدعاء عدة مرات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Adds boilerplate to main() function",
        "Easy to forget when needed, causing runtime errors",
        "Not intuitive why it's necessary for beginners",
      ],
      ar: [
        "يضيف كود متكرر لدالة main()",
        "سهل النسيان عند الحاجة، مما يسبب أخطاء وقت التشغيل",
        "ليس بديهيًا لماذا ضروري للمبتدئين",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Ensure Initialized when:",
          value: [
            "Calling Firebase.initializeApp() in main",
            "Setting up SharedPreferences before runApp",
            "Configuring initial app orientation or theme in main",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اضمن التهيئة عندما:",
          value: [
            "استدعاء Firebase.initializeApp() في main",
            "إعداد SharedPreferences قبل runApp",
            "تكوين اتجاه التطبيق أو السمة الأولية في main",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "063",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .practical,
    tags: ["basic", "container", "layout", "widget"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "Explain the use of Container widget.",
        answer: [
          StringContent(
            "Container is one of the most versatile widgets in Flutter, combining several common layout and decoration features into a single widget.",
          ),
          UnorderedListContent(
            title: "Container can provide:",
            value: [
              "Padding: Space inside the container around its child",
              "Margin: Space outside the container",
              "Decoration: Background color, border, border radius, shadows, gradients",
              "Constraints: Min/max width and height",
              "Alignment: Position child within the container",
              "Transform: Rotate, scale, or translate the container",
            ],
          ),
          StringContent(
            "Container is extremely flexible but should not be overused. For simple cases, prefer more specific widgets like SizedBox, Padding, or DecoratedBox.",
          ),
        ],
        notes: [
          "Empty Container with no properties still takes up space",
          "Container without child can be used as a colored box",
          "Prefer SizedBox for spacing instead of empty Container",
        ],
        bestUse:
            "Use Container when you need multiple layout properties (padding, margin, decoration) together. For single properties, use specific widgets.",
      ),
      ar: QuestionContent(
        question: "اشرح استخدام ودجت Container.",
        answer: [
          StringContent(
            "Container هو أحد أكثر الودجتس تنوعًا في Flutter، يجمع العديد من ميزات التخطيط والزخرفة الشائعة في ودجت واحد.",
          ),
          UnorderedListContent(
            title: "يمكن أن يوفر Container:",
            value: [
              "Padding: مساحة داخل الحاوية حول طفلها",
              "Margin: مساحة خارج الحاوية",
              "Decoration: لون الخلفية، الحدود، نصف قطر الحدود، الظلال، التدرجات",
              "Constraints: عرض وارتفاع أدنى/أقصى",
              "Alignment: موضع الطفل داخل الحاوية",
              "Transform: تدوير أو تحجيم أو ترجمة الحاوية",
            ],
          ),
          StringContent(
            "Container مرن للغاية لكن لا يجب الإفراط في استخدامه. للحالات البسيطة، فضّل ودجتس أكثر تحديدًا مثل SizedBox أو Padding أو DecoratedBox.",
          ),
        ],
        notes: [
          "Container فارغ بدون خصائص لا يزال يشغل مساحة",
          "Container بدون طفل يمكن استخدامه كصندوق ملون",
          "فضّل SizedBox للتباعد بدلاً من Container فارغ",
        ],
        bestUse:
            "استخدم Container عندما تحتاج خصائص تخطيط متعددة (padding، margin، decoration) معًا. للخصائص الفردية، استخدم ودجتس محددة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Container with multiple properties
Container(
  width: 200,
  height: 100,
  padding: const EdgeInsets.all(16),
  margin: const EdgeInsets.all(8),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10,
        offset: Offset(0, 4),
      ),
    ],
  ),
  child: const Text(
    'Hello Flutter',
    style: TextStyle(color: Colors.white),
  ),
)"""),
      StrCodeBlock.good("""// Container as colored box (no child)
Container(
  width: 100,
  height: 100,
  color: Colors.red,
)

// Container with gradient
Container(
  width: 200,
  height: 200,
  decoration: const BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.blue, Colors.purple],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "All-in-one widget for common layout needs",
        "Highly customizable with many properties",
        "Can combine padding, margin, decoration in one widget",
        "Easy to use for beginners",
      ],
      ar: [
        "ودجت شامل لاحتياجات التخطيط الشائعة",
        "قابل للتخصيص بشكل كبير مع خصائص عديدة",
        "يمكن دمج padding و margin و decoration في ودجت واحد",
        "سهل الاستخدام للمبتدئين",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can be overused when more specific widgets would be better",
        "Performance impact if used excessively",
        "Empty Container wastes resources",
        "Can lead to unnecessarily complex widget trees",
      ],
      ar: [
        "قد يُستخدم بإفراط عندما تكون ودجتس أكثر تحديدًا أفضل",
        "تأثير على الأداء إذا استُخدم بشكل مفرط",
        "Container فارغ يهدر الموارد",
        "قد يؤدي إلى أشجار ودجتس معقدة دون داعٍ",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Container for:",
          value: [
            "Quickly applying multiple styling properties (padding, decoration, margin)",
            "Creating simple colored or decorated dividers",
            "Applying constraints to a single child",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Container لـ:",
          value: [
            "تطبيق خصائص تنسيق متعددة بسرعة (حشو، زخرفة، هوامش)",
            "إنشاء فواصل ملونة أو مزخرفة بسيطة",
            "تطبيق قيود على طفل واحد",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "064",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .performance],
    type: .theoretical,
    tags: ["basic", "const", "optimization", "performance"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is const in Flutter and why is it recommended?",
        answer: [
          StringContent(
            "The 'const' keyword creates compile-time constant objects in Dart. In Flutter, const widgets are created once and reused, significantly improving performance by preventing unnecessary rebuilds.",
          ),
          UnorderedListContent(
            title: "Benefits of const widgets:",
            value: [
              "Created at compile time, not runtime (faster)",
              "Shared across the app (memory efficient)",
              "Never rebuild during setState or parent rebuilds",
              "Flutter skips the build process for const widgets entirely",
              "Reduces widget tree comparison overhead",
            ],
          ),
          StringContent(
            "Use const constructors whenever the widget's parameters are compile-time constants and don't change during runtime.",
          ),
        ],
        notes: [
          "const can only be used with immutable values known at compile time",
          "Widgets with dynamic data (variables, function results) cannot be const",
          "Enable 'prefer_const_constructors' lint rule to get warnings",
        ],
        bestUse:
            "Use const for all static widgets (Text, Icon, Padding with constant values). This is one of the easiest performance optimizations in Flutter.",
      ),
      ar: QuestionContent(
        question: "ما هو const في Flutter ولماذا يُنصح باستخدامه؟",
        answer: [
          StringContent(
            "الكلمة المحجوزة 'const' تنشئ كائنات ثابتة في وقت الترجمة في Dart. في Flutter، ودجتس const تُنشأ مرة واحدة وتُعاد استخدامها، مما يحسن الأداء بشكل كبير بمنع إعادة البناء غير الضرورية.",
          ),
          UnorderedListContent(
            title: "فوائد ودجتس const:",
            value: [
              "تُنشأ في وقت الترجمة، وليس وقت التشغيل (أسرع)",
              "مشتركة عبر التطبيق (كفاءة في الذاكرة)",
              "لا تُعاد بناؤها أبدًا أثناء setState أو إعادة بناء الوالد",
              "Flutter يتخطى عملية البناء لـ const widgets تمامًا",
              "يقلل من تكلفة مقارنة شجرة الودجتس",
            ],
          ),
          StringContent(
            "استخدم بانيات const كلما كانت معاملات الودجت ثوابت في وقت الترجمة ولا تتغير أثناء التشغيل.",
          ),
        ],
        notes: [
          "const يمكن استخدامها فقط مع قيم ثابتة معروفة في وقت الترجمة",
          "الودجتس مع بيانات ديناميكية (متغيرات، نتائج دوال) لا يمكن أن تكون const",
          "فعّل قاعدة lint 'prefer_const_constructors' للحصول على تحذيرات",
        ],
        bestUse:
            "استخدم const لجميع الودجتس الثابتة (Text، Icon، Padding مع قيم ثابتة). هذا أحد أسهل تحسينات الأداء في Flutter.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// GOOD - const widget
const Text('Hello World')
const Icon(Icons.star)
const SizedBox(width: 20, height: 20)

// GOOD - const constructor
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Static text'),
        Icon(Icons.home),
      ],
    );
  }
}"""),
      StrCodeBlock.bad("""// BAD - Missing const (unnecessary rebuilds)
Text('Hello World') // Will rebuild unnecessarily
Icon(Icons.star) // Will rebuild unnecessarily

// BAD - Cannot use const with variables
String name = 'John';
const Text(name) // Error: not a constant expression
"""),
    ],
    pros: LocalizedValue(
      en: [
        "Significant performance improvement with zero effort",
        "Reduces memory usage by reusing instances",
        "Prevents unnecessary widget rebuilds",
        "Compile-time error checking",
        "Makes code more explicit about immutability",
      ],
      ar: [
        "تحسين أداء كبير بدون جهد",
        "يقلل استخدام الذاكرة بإعادة استخدام المثيلات",
        "يمنع إعادة بناء الودجتس غير الضرورية",
        "فحص الأخطاء في وقت الترجمة",
        "يجعل الكود أكثر وضوحًا حول الثبات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Cannot be used with dynamic values or variables",
        "Requires all constructor parameters to be const",
        "Can make code more verbose with 'const' keyword everywhere",
        "Easy to forget and needs lint rules for reminders",
      ],
      ar: [
        "لا يمكن استخدامها مع القيم الديناميكية أو المتغيرات",
        "تتطلب أن تكون جميع معاملات الباني const",
        "قد تجعل الكود أكثر تفصيلاً مع كلمة 'const' في كل مكان",
        "سهل النسيان وتحتاج قواعد lint للتذكير",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Const when:",
          value: [
            "The widget and its children are static",
            "Values are known at compile-time",
            "Optimizing rebuild performance is a priority",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Const عندما:",
          value: [
            "تكون الودجت وأطفالها ثابتة",
            "القيم معروفة في وقت الترجمة",
            "تكون أولوية تحسين أداء إعادة البناء قائمة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "065",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .theoretical,
    tags: ["basic", "safearea", "layout", "ui"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is SafeArea?",
        answer: [
          StringContent(
            "SafeArea is a widget that insets its child by sufficient padding to avoid system intrusions like the status bar, notch, rounded corners, and home indicator.",
          ),
          UnorderedListContent(
            title: "System intrusions SafeArea handles:",
            value: [
              "Status bar (top of screen showing time, battery, etc.)",
              "Notch or camera cutout on modern devices",
              "Rounded screen corners",
              "Home indicator bar (iOS)",
              "System gesture areas",
            ],
          ),
          StringContent(
            "SafeArea automatically detects these areas using MediaQuery and applies appropriate padding. You can selectively enable/disable padding for specific edges (top, bottom, left, right).",
          ),
        ],
        notes: [
          "Scaffold automatically wraps its body in SafeArea for AppBar",
          "Can disable SafeArea for specific edges (e.g., top: false)",
          "Essential for full-screen apps without AppBar",
        ],
        bestUse:
            "Wrap your screen content in SafeArea when not using Scaffold or when you need full control over safe area insets. Essential for apps with custom layouts.",
      ),
      ar: QuestionContent(
        question: "ما هو SafeArea؟",
        answer: [
          StringContent(
            "SafeArea هو ودجت يضيف حشوًا كافيًا حول طفله لتجنب تدخلات النظام مثل شريط الحالة، الشق، الزوايا المستديرة، ومؤشر الصفحة الرئيسية.",
          ),
          UnorderedListContent(
            title: "تدخلات النظام التي يتعامل معها SafeArea:",
            value: [
              "شريط الحالة (أعلى الشاشة يظهر الوقت، البطارية، إلخ)",
              "الشق أو قطع الكاميرا في الأجهزة الحديثة",
              "زوايا الشاشة المستديرة",
              "شريط مؤشر الصفحة الرئيسية (iOS)",
              "مناطق إيماءات النظام",
            ],
          ),
          StringContent(
            "يكتشف SafeArea هذه المناطق تلقائيًا باستخدام MediaQuery ويطبق الحشو المناسب. يمكنك تفعيل/تعطيل الحشو بشكل انتقائي لحواف معينة (أعلى، أسفل، يسار، يمين).",
          ),
        ],
        notes: [
          "Scaffold يلف body تلقائيًا في SafeArea لـ AppBar",
          "يمكن تعطيل SafeArea لحواف معينة (مثل top: false)",
          "أساسي للتطبيقات بملء الشاشة بدون AppBar",
        ],
        bestUse:
            "لف محتوى شاشتك في SafeArea عند عدم استخدام Scaffold أو عندما تحتاج تحكم كامل في مساحات الأمان. أساسي للتطبيقات ذات التخطيطات المخصصة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic SafeArea usage
Scaffold(
  body: SafeArea(
    child: Column(
      children: [
        Text('This text avoids the status bar'),
        // Content here
      ],
    ),
  ),
)"""),
      StrCodeBlock.good("""// Selective edge padding
SafeArea(
  top: true,     // Avoid status bar
  bottom: false, // Allow content under home indicator
  child: Container(
    color: Colors.blue,
    child: Text('Content'),
  ),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Automatically adapts to different device screen shapes",
        "Prevents UI from being obscured by system UI",
        "Works across iOS and Android without platform checks",
        "Selective control over which edges to pad",
      ],
      ar: [
        "يتكيف تلقائيًا مع أشكال شاشات أجهزة مختلفة",
        "يمنع واجهة المستخدم من الحجب بواجهة النظام",
        "يعمل عبر iOS و Android بدون فحوصات المنصة",
        "تحكم انتقائي في الحواف التي يتم حشوها",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Adds extra padding that may not be needed in some designs",
        "Can create unwanted white space if overused",
        "May conflict with custom layouts requiring edge-to-edge design",
      ],
      ar: [
        "يضيف حشو إضافي قد لا يكون مطلوبًا في بعض التصاميم",
        "قد ينشئ مساحة بيضاء غير مرغوبة إذا استُخدم بإفراط",
        "قد يتعارض مع التخطيطات المخصصة التي تتطلب تصميم من حافة لحافة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use SafeArea when:",
          value: [
            "Building pages without a standard AppBar",
            "Content overlaps with the device's notch or status bar",
            "Ensuring interactive elements avoid the home indicator",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم SafeArea عندما:",
          value: [
            "بناء صفحات بدون AppBar قياسي",
            "يتداخل المحتوى مع ثقب الكاميرا أو شريط الحالة",
            "ضمان تجنب العناصر التفاعلية لمؤشر الصفحة الرئيسية",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "066",
    difficulty: .basic,
    categories: [.flutterBasics, .ui],
    type: .practical,
    tags: ["intermediate", "dialog", "navigation", "fullscreen"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is a Full-screen dialog in Flutter?",
        answer: [
          StringContent(
            "A full-screen dialog is a modal presentation that takes up the entire screen, typically used for creating or editing content. It's distinct from regular dialogs which overlay content.",
          ),
          UnorderedListContent(
            title: "Characteristics:",
            value: [
              "Occupies entire screen like a new page",
              "Has a close button (X) instead of back arrow",
              "Used for complex forms or multi-step workflows",
              "Created using PageRoute with fullscreenDialog: true",
              "Different animation than regular page transitions",
            ],
          ),
          StringContent(
            "Full-screen dialogs are Material Design pattern for temporary tasks that require focus, like composing email or creating a new item.",
          ),
        ],
        notes: [
          "iOS shows slide-up animation, Android shows slide-up from bottom",
          "Back button shows X instead of arrow",
          "User expects to either save or discard changes",
        ],
        bestUse:
            "Use for creating/editing content, complex forms, or any temporary task requiring full user attention without background distractions.",
      ),
      ar: QuestionContent(
        question:
            "ما هو مربع الحوار بملء الشاشة (Full-screen dialog) في Flutter؟",
        answer: [
          StringContent(
            "مربع الحوار بملء الشاشة هو عرض نموذجي يشغل الشاشة بأكملها، يُستخدم عادةً لإنشاء أو تحرير المحتوى. يختلف عن مربعات الحوار العادية التي تتراكب على المحتوى.",
          ),
          UnorderedListContent(
            title: "الخصائص:",
            value: [
              "يشغل الشاشة بأكملها مثل صفحة جديدة",
              "لديه زر إغلاق (X) بدلاً من سهم الرجوع",
              "يُستخدم للنماذج المعقدة أو سير العمل متعدد الخطوات",
              "يُنشأ باستخدام PageRoute مع fullscreenDialog: true",
              "حركة مختلفة عن انتقالات الصفحات العادية",
            ],
          ),
          StringContent(
            "مربعات الحوار بملء الشاشة هي نمط Material Design للمهام المؤقتة التي تتطلب تركيزًا، مثل كتابة بريد إلكتروني أو إنشاء عنصر جديد.",
          ),
        ],
        notes: [
          "iOS يعرض حركة انزلاق لأعلى، Android يعرض انزلاق من الأسفل",
          "زر الرجوع يظهر X بدلاً من سهم",
          "المستخدم يتوقع إما حفظ أو تجاهل التغييرات",
        ],
        bestUse:
            "استخدمه لإنشاء/تحرير المحتوى، النماذج المعقدة، أو أي مهمة مؤقتة تتطلب انتباه المستخدم الكامل دون تشتيت من الخلفية.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Creating a full-screen dialog
void openFullScreenDialog(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      fullscreenDialog: true, // This makes it full-screen
      builder: (context) => CreateItemScreen(),
    ),
  );
}

// Full-screen dialog screen
class CreateItemScreen extends StatelessWidget {
  const CreateItemScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Item'),
        leading: IconButton(
          icon: const Icon(Icons.close), // X icon
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Save logic
              Navigator.pop(context);
            },
            child: const Text('SAVE'),
          ),
        ],
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            // More form fields...
          ],
        ),
      ),
    );
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Provides focused environment for complex tasks",
        "Clear entry and exit points",
        "Familiar pattern in mobile apps (email compose, create post)",
        "Platform-appropriate animations",
      ],
      ar: [
        "يوفر بيئة مركزة للمهام المعقدة",
        "نقاط دخول وخروج واضحة",
        "نمط مألوف في تطبيقات الهاتف (كتابة بريد، إنشاء منشور)",
        "حركات مناسبة للمنصة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Takes full screen space - no context of previous screen",
        "Can be jarring for simple tasks",
        "User might lose unsaved changes if dismissed accidentally",
        "More complex than simple dialogs",
      ],
      ar: [
        "يأخذ مساحة الشاشة بالكامل - لا سياق للشاشة السابقة",
        "قد يكون مزعجًا للمهام البسيطة",
        "قد يفقد المستخدم التغييرات غير المحفوظة إذا أُغلق بالخطأ",
        "أكثر تعقيدًا من مربعات الحوار البسيطة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Full-screen Dialogs for:",
          value: [
            "Complex data entry (e.g., creating a new calendar event)",
            "Stand-alone tasks that require focus",
            "Editor interfaces with multiple options",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم مربعات الحوار بملء الشاشة لـ:",
          value: [
            "إدخال البيانات المعقدة (مثل إنشاء حدث تقويم جديد)",
            "المهام القائمة بذاتها التي تتطلب تركيزًا",
            "واجهات المحرر ذات الخيارات المتعددة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "067",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .theoretical,
    tags: ["basic", "layout", "expanded", "spacer"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "Explain Expanded vs Spacer.",
        answer: [
          StringContent(
            "Both Expanded and Spacer are used in Row/Column to control spacing, but they serve different purposes.",
          ),
          UnorderedListContent(
            title: "Expanded:",
            value: [
              "Forces its child to fill available space in main axis",
              "Takes a child widget (required)",
              "Uses flex parameter to control distribution (default: 1)",
              "Multiple Expanded widgets share available space based on flex ratios",
            ],
          ),
          UnorderedListContent(
            title: "Spacer:",
            value: [
              "Creates empty space that fills available area",
              "Has no child widget (it IS the space)",
              "Also uses flex parameter like Expanded",
              "Essentially Expanded with an empty Container child",
            ],
          ),
          StringContent(
            "Use Expanded when you want a widget to fill space. Use Spacer when you just want empty space between widgets.",
          ),
        ],
        notes: [
          "Spacer is just Expanded(child: SizedBox.shrink())",
          "Both only work inside Flex widgets (Row, Column, Flex)",
          "flex: 2 takes twice as much space as flex: 1",
        ],
        bestUse:
            "Use Expanded to make widgets flexible. Use Spacer to push widgets apart or create flexible empty space.",
      ),
      ar: QuestionContent(
        question: "اشرح الفرق بين Expanded و Spacer.",
        answer: [
          StringContent(
            "كل من Expanded و Spacer يُستخدمان في Row/Column للتحكم في التباعد، لكن لكل منهما غرض مختلف.",
          ),
          UnorderedListContent(
            title: "Expanded:",
            value: [
              "يجبر طفله على ملء المساحة المتاحة في المحور الرئيسي",
              "يأخذ ودجت طفل (مطلوب)",
              "يستخدم معامل flex للتحكم في التوزيع (افتراضي: 1)",
              "عدة ودجتس Expanded تتشارك المساحة المتاحة بناءً على نسب flex",
            ],
          ),
          UnorderedListContent(
            title: "Spacer:",
            value: [
              "ينشئ مساحة فارغة تملأ المنطقة المتاحة",
              "ليس لديه ودجت طفل (هو نفسه المساحة)",
              "يستخدم أيضًا معامل flex مثل Expanded",
              "في الأساس Expanded مع طفل Container فارغ",
            ],
          ),
          StringContent(
            "استخدم Expanded عندما تريد أن يملأ ودجت المساحة. استخدم Spacer عندما تريد فقط مساحة فارغة بين الودجتس.",
          ),
        ],
        notes: [
          "Spacer هو فقط Expanded(child: SizedBox.shrink())",
          "كلاهما يعمل فقط داخل ودجتس Flex (Row، Column، Flex)",
          "flex: 2 يأخذ ضعف مساحة flex: 1",
        ],
        bestUse:
            "استخدم Expanded لجعل الودجتس مرنة. استخدم Spacer لدفع الودجتس بعيدًا أو إنشاء مساحة فارغة مرنة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Expanded - widget fills space
Row(
  children: [
    const Text('Start'),
    Expanded(
      child: Container(
        color: Colors.blue,
        child: const Text('This fills remaining space'),
      ),
    ),
    const Text('End'),
  ],
)"""),
      StrCodeBlock.good("""// Spacer - empty space between widgets
Row(
  children: [
    const Text('Left'),
    const Spacer(), // Pushes widgets apart
    const Text('Right'),
  ],
)

// Multiple Spacers with flex
Row(
  children: [
    const Text('A'),
    const Spacer(flex: 1), // 1/3 of space
    const Text('B'),
    const Spacer(flex: 2), // 2/3 of space
    const Text('C'),
  ],
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Expanded: Makes widgets responsive to available space",
        "Spacer: Clean way to create flexible gaps",
        "Both: flex parameter gives precise control",
        "Both: Essential for responsive layouts",
      ],
      ar: [
        "Expanded: يجعل الودجتس متجاوبة مع المساحة المتاحة",
        "Spacer: طريقة نظيفة لإنشاء فجوات مرنة",
        "كلاهما: معامل flex يعطي تحكم دقيق",
        "كلاهما: أساسي للتخطيطات المتجاوبة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Only work inside Flex containers (Row/Column)",
        "Can cause overflow if total flex is miscalculated",
        "Spacer adds widget overhead for empty space",
        "Requires understanding of flex system",
      ],
      ar: [
        "يعملان فقط داخل حاويات Flex (Row/Column)",
        "قد يسبب تجاوز إذا حُسب flex الإجمالي بشكل خاطئ",
        "Spacer يضيف عبء ودجت لمساحة فارغة",
        "يتطلب فهم نظام flex",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Expanded vs Spacer Selection:",
          value: [
            "Expanded: To make a child widget stretch and fill space",
            "Spacer: To create empty, flexible gaps between widgets",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختيار Expanded مقابل Spacer:",
          value: [
            "Expanded: لجعل ودجت طفل يمتد ويملأ المساحة",
            "Spacer: لإنشاء فجوات فارغة مرنة بين الودجتس",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "068",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .theoretical,
    tags: ["basic", "aspectratio", "layout", "sizing"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is AspectRatio widget?",
        answer: [
          StringContent(
            "AspectRatio is a widget that sizes its child to a specific aspect ratio (width-to-height ratio). It ensures the child maintains the specified proportions regardless of parent constraints.",
          ),
          UnorderedListContent(
            title: "Key characteristics:",
            value: [
              "Takes a single aspectRatio parameter (width / height)",
              "Common ratios: 16/9 for video, 1/1 for square, 4/3 for photos",
              "Respects parent constraints while maintaining ratio",
              "Useful for responsive designs that need consistent proportions",
            ],
          ),
          StringContent(
            "AspectRatio attempts to size the child to match the aspect ratio while fitting within parent constraints. If impossible to maintain exact ratio, it gets as close as possible.",
          ),
        ],
        notes: [
          "aspectRatio = width / height (e.g., 16/9 = 1.78)",
          "Widget may be larger or smaller than expected based on parent constraints",
          "Commonly used with images, videos, and card layouts",
        ],
        bestUse:
            "Use when you need widgets to maintain specific proportions (video players, image placeholders, responsive cards). Essential for consistent UI across different screen sizes.",
      ),
      ar: QuestionContent(
        question: "ما هو ودجت AspectRatio؟",
        answer: [
          StringContent(
            "AspectRatio هو ودجت يحدد حجم طفله بنسبة عرض إلى ارتفاع محددة. يضمن أن يحافظ الطفل على النسب المحددة بغض النظر عن قيود الوالد.",
          ),
          UnorderedListContent(
            title: "الخصائص الرئيسية:",
            value: [
              "يأخذ معامل aspectRatio واحد (العرض / الارتفاع)",
              "نسب شائعة: 16/9 للفيديو، 1/1 للمربع، 4/3 للصور",
              "يحترم قيود الوالد مع الحفاظ على النسبة",
              "مفيد للتصاميم المتجاوبة التي تحتاج نسب ثابتة",
            ],
          ),
          StringContent(
            "يحاول AspectRatio تحديد حجم الطفل ليطابق نسبة الأبعاد مع الاحتواء ضمن قيود الوالد. إذا كان من المستحيل الحفاظ على النسبة الدقيقة، يقترب قدر الإمكان.",
          ),
        ],
        notes: [
          "aspectRatio = العرض / الارتفاع (مثل 16/9 = 1.78)",
          "قد يكون الودجت أكبر أو أصغر من المتوقع بناءً على قيود الوالد",
          "يُستخدم عادةً مع الصور والفيديوهات وتخطيطات البطاقات",
        ],
        bestUse:
            "استخدمه عندما تحتاج أن تحافظ الودجتس على نسب محددة (مشغلات الفيديو، نماذج الصور، البطاقات المتجاوبة). أساسي لواجهة متسقة عبر أحجام شاشات مختلفة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// 16:9 aspect ratio (video)
AspectRatio(
  aspectRatio: 16 / 9,
  child: Container(
    color: Colors.blue,
    child: const Center(
      child: Text('16:9 Video Player'),
    ),
  ),
)

// Square aspect ratio
AspectRatio(
  aspectRatio: 1.0, // 1:1
  child: Image.network('https://example.com/image.jpg'),
)

// Photo aspect ratio
AspectRatio(
  aspectRatio: 4 / 3,
  child: Card(
    child: Image.asset('assets/photo.jpg'),
  ),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Ensures consistent proportions across different screen sizes",
        "Simple API with single aspectRatio parameter",
        "Useful for responsive design",
        "Works well with images and videos",
      ],
      ar: [
        "يضمن نسب ثابتة عبر أحجام شاشات مختلفة",
        "واجهة برمجية بسيطة مع معامل aspectRatio واحد",
        "مفيد للتصميم المتجاوب",
        "يعمل جيدًا مع الصور والفيديوهات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "May not fit perfectly in all parent constraints",
        "Can cause unexpected sizing if parent constraints conflict",
        "Requires manual calculation for aspect ratio",
      ],
      ar: [
        "قد لا يناسب تمامًا جميع قيود الوالد",
        "قد يسبب تحجيم غير متوقع إذا تعارضت قيود الوالد",
        "يتطلب حساب يدوي لنسبة الأبعاد",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use AspectRatio for:",
          value: [
            "Video players and image previews",
            "Maintaining circular or square shapes in grid layouts",
            "Responsive media content",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم AspectRatio لـ:",
          value: [
            "مشغلات الفيديو ومعاينات الصور",
            "الحفاظ على أشكال دائرية أو مربعة في تخطيطات الشبكة",
            "محتوى الوسائط المتجاوب",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "069",
    difficulty: .intermediate,
    categories: [.flutterBasics, .ui, .performance],
    type: .theoretical,
    tags: ["intermediate", "intrinsic", "layout", "sizing"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What are IntrinsicHeight and IntrinsicWidth?",
        answer: [
          StringContent(
            "IntrinsicHeight and IntrinsicWidth are widgets that size their children to their intrinsic dimensions - the natural size a widget would prefer to be.",
          ),
          UnorderedListContent(
            title: "IntrinsicHeight:",
            value: [
              "Makes all children in a Row have the same height",
              "Height becomes the maximum intrinsic height of all children",
              "Useful for aligning Row children vertically",
            ],
          ),
          UnorderedListContent(
            title: "IntrinsicWidth:",
            value: [
              "Makes all children in a Column have the same width",
              "Width becomes the maximum intrinsic width of all children",
              "Useful for aligning Column children horizontally",
            ],
          ),
          StringContent(
            "IMPORTANT: These widgets are expensive performance-wise. Flutter must perform layout twice - once to determine intrinsic size, then again to actually layout. Use sparingly.",
          ),
        ],
        notes: [
          "Performance cost - avoid in scrolling lists",
          "Better alternatives often exist (Expanded, Flexible, constraints)",
          "Only use when absolutely necessary for specific layouts",
        ],
        bestUse:
            "Use only when you need all children to match the size of the largest child AND simpler solutions don't work. Avoid in performance-critical areas.",
      ),
      ar: QuestionContent(
        question: "ما هما IntrinsicHeight و IntrinsicWidth؟",
        answer: [
          StringContent(
            "IntrinsicHeight و IntrinsicWidth هما ودجتس يحددان حجم أطفالهما بناءً على أبعادهم الذاتية - الحجم الطبيعي الذي يفضل الودجت أن يكون عليه.",
          ),
          UnorderedListContent(
            title: "IntrinsicHeight:",
            value: [
              "يجعل جميع الأطفال في Row لهم نفس الارتفاع",
              "يصبح الارتفاع هو الحد الأقصى للارتفاع الذاتي لجميع الأطفال",
              "مفيد لمحاذاة أطفال Row عموديًا",
            ],
          ),
          UnorderedListContent(
            title: "IntrinsicWidth:",
            value: [
              "يجعل جميع الأطفال في Column لهم نفس العرض",
              "يصبح العرض هو الحد الأقصى للعرض الذاتي لجميع الأطفال",
              "مفيد لمحاذاة أطفال Column أفقيًا",
            ],
          ),
          StringContent(
            "مهم: هذه الودجتس مكلفة من حيث الأداء. يجب على Flutter إجراء التخطيط مرتين - مرة لتحديد الحجم الذاتي، ثم مرة أخرى للتخطيط الفعلي. استخدمها بحذر.",
          ),
        ],
        notes: [
          "تكلفة أداء - تجنبها في القوائم القابلة للتمرير",
          "غالبًا توجد بدائل أفضل (Expanded، Flexible، القيود)",
          "استخدمها فقط عند الضرورة القصوى لتخطيطات معينة",
        ],
        bestUse:
            "استخدمها فقط عندما تحتاج أن يطابق جميع الأطفال حجم الطفل الأكبر والحلول الأبسط لا تعمل. تجنبها في المناطق الحرجة للأداء.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// IntrinsicHeight - all children same height
IntrinsicHeight(
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        color: Colors.blue,
        child: const Text('Short'),
      ),
      Container(
        color: Colors.red,
        child: const Text('Tall\\nText\\nHere'),
      ),
      Container(
        color: Colors.green,
        child: const Text('Medium\\nText'),
      ),
    ],
  ),
)
// All containers will be as tall as the tallest one
"""),
      StrCodeBlock.good("""// IntrinsicWidth - all children same width
IntrinsicWidth(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ElevatedButton(
        onPressed: () {},
        child: const Text('Short'),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text('Very Long Button Text'),
      ),
      ElevatedButton(
        onPressed: () {},
        child: const Text('Medium'),
      ),
    ],
  ),
)
// All buttons will be as wide as the widest one
"""),
    ],
    pros: LocalizedValue(
      en: [
        "Makes all children match the largest child's size",
        "Useful for specific alignment cases",
        "Simple to use when needed",
      ],
      ar: [
        "يجعل جميع الأطفال يطابقون حجم الطفل الأكبر",
        "مفيد لحالات محاذاة معينة",
        "بسيط الاستخدام عند الحاجة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Expensive performance cost - double layout pass",
        "Should be avoided in lists or frequently rebuilt widgets",
        "Often simpler alternatives exist",
        "Can cause performance issues if overused",
      ],
      ar: [
        "تكلفة أداء عالية - مرور تخطيط مزدوج",
        "يجب تجنبها في القوائم أو الودجتس المعاد بناؤها بشكل متكرر",
        "غالبًا توجد بدائل أبسط",
        "قد تسبب مشاكل أداء إذا استُخدمت بإفراط",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Intrinsic widgets when:",
          value: [
            "Creating side-by-side buttons of uniform width",
            "Row items must match the height of the tallest item",
            "No other layout solution (Expanded/Constraints) achieves the goal",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم ودجتس Intrinsic عندما:",
          value: [
            "إنشاء أزرار متجاورة بعرض موحد",
            "يجب أن تطابق عناصر الصف ارتفاع أطول عنصر",
            "لا يوجد حل تخطيط آخر يحقق الهدف",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "070",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .theoretical,
    tags: ["basic", "scrolling", "scrollview", "layout"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is SingleChildScrollView?",
        answer: [
          StringContent(
            "SingleChildScrollView is a scrollable widget that makes its single child scrollable. It's useful when you have content that might overflow the screen.",
          ),
          UnorderedListContent(
            title: "Key characteristics:",
            value: [
              "Takes only one child widget",
              "Scrolls vertically by default (can be horizontal)",
              "Does NOT lazy load - entire child is built at once",
              "Best for small, non-repeating content",
              "Supports physics (bouncing, clamping)",
            ],
          ),
          StringContent(
            "Unlike ListView, SingleChildScrollView builds its entire child upfront. Use it for forms, settings pages, or small content that might overflow. For large lists, use ListView.builder instead.",
          ),
        ],
        notes: [
          "Not suitable for long lists - use ListView.builder instead",
          "Entire child is built even if not visible (no lazy loading)",
          "Can scroll in one direction at a time",
        ],
        bestUse:
            "Use for forms, settings pages, or small content that might exceed screen height. NOT for large lists - use ListView for those.",
      ),
      ar: QuestionContent(
        question: "ما هو SingleChildScrollView؟",
        answer: [
          StringContent(
            "SingleChildScrollView هو ودجت قابل للتمرير يجعل طفله الوحيد قابلاً للتمرير. مفيد عندما يكون لديك محتوى قد يتجاوز الشاشة.",
          ),
          UnorderedListContent(
            title: "الخصائص الرئيسية:",
            value: [
              "يأخذ ودجت طفل واحد فقط",
              "يتمرر عموديًا افتراضيًا (يمكن أن يكون أفقيًا)",
              "لا يقوم بالتحميل الكسول - يتم بناء الطفل بالكامل مرة واحدة",
              "الأفضل للمحتوى الصغير غير المتكرر",
              "يدعم الفيزياء (الارتداد، التثبيت)",
            ],
          ),
          StringContent(
            "على عكس ListView، يبني SingleChildScrollView طفله بالكامل مسبقًا. استخدمه للنماذج، صفحات الإعدادات، أو المحتوى الصغير الذي قد يتجاوز الشاشة. للقوائم الطويلة، استخدم ListView.builder بدلاً من ذلك.",
          ),
        ],
        notes: [
          "غير مناسب للقوائم الطويلة - استخدم ListView.builder بدلاً من ذلك",
          "يتم بناء الطفل بالكامل حتى لو لم يكن مرئيًا (لا تحميل كسول)",
          "يمكن التمرير في اتجاه واحد في كل مرة",
        ],
        bestUse:
            "استخدمه للنماذج، صفحات الإعدادات، أو المحتوى الصغير الذي قد يتجاوز ارتفاع الشاشة. ليس للقوائم الطويلة - استخدم ListView لها.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Vertical scrolling (default)
SingleChildScrollView(
  child: Column(
    children: [
      Container(height: 300, color: Colors.red),
      Container(height: 300, color: Colors.blue),
      Container(height: 300, color: Colors.green),
      Container(height: 300, color: Colors.yellow),
    ],
  ),
)

// Horizontal scrolling
SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    children: [
      Container(width: 200, height: 100, color: Colors.red),
      Container(width: 200, height: 100, color: Colors.blue),
      Container(width: 200, height: 100, color: Colors.green),
    ],
  ),
)

// Form example
SingleChildScrollView(
  padding: const EdgeInsets.all(16),
  child: Form(
    child: Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(labelText: 'Name'),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Email'),
        ),
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(labelText: 'Password'),
        ),
        // More fields...
      ],
    ),
  ),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Simple to use - just wrap your content",
        "Automatically scrolls when content exceeds screen",
        "Supports both vertical and horizontal scrolling",
        "Good for forms and settings pages",
      ],
      ar: [
        "بسيط الاستخدام - فقط لف محتواك",
        "يتمرر تلقائيًا عندما يتجاوز المحتوى الشاشة",
        "يدعم التمرير العمودي والأفقي",
        "جيد للنماذج وصفحات الإعدادات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Builds entire child at once - no lazy loading",
        "Poor performance with large content",
        "Not suitable for long lists",
        "Takes memory for entire child even if not visible",
      ],
      ar: [
        "يبني الطفل بالكامل مرة واحدة - لا تحميل كسول",
        "أداء ضعيف مع المحتوى الكبير",
        "غير مناسب للقوائم الطويلة",
        "يستهلك ذاكرة للطفل بالكامل حتى لو لم يكن مرئيًا",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use SingleChildScrollView for:",
          value: [
            "Scrollable forms and detail pages",
            "Preventing overflow on small screen devices",
            "Modal sheets with variable content height",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم SingleChildScrollView لـ:",
          value: [
            "النماذج القابلة للتمرير وصفحات التفاصيل",
            "منع التجاوز على الأجهزة ذات الشاشات الصغيرة",
            "الصفائح النموذجية ذات ارتفاع المحتوى المتغير",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "071",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .practical,
    tags: ["basic", "gestures", "interaction", "tap"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "How to handle taps in Flutter?",
        answer: [
          StringContent(
            "Flutter provides multiple ways to handle tap gestures on widgets, each suited for different use cases.",
          ),
          UnorderedListContent(
            title: "Common approaches:",
            value: [
              "GestureDetector: Most flexible, handles all gesture types (tap, double tap, long press, drag, etc.)",
              "InkWell: Material Design ripple effect on tap, provides visual feedback",
              "Button widgets: ElevatedButton, TextButton, IconButton have built-in onPressed",
              "Listener: Low-level pointer events for advanced cases",
            ],
          ),
          StringContent(
            "GestureDetector is the most common choice for custom widgets. InkWell adds Material ripple animation. Button widgets should be used for actual buttons.",
          ),
        ],
        notes: [
          "GestureDetector has no visual feedback - use InkWell for that",
          "InkWell requires Material widget ancestor",
          "onTap callback is nullable - null disables interaction",
        ],
        bestUse:
            "Use GestureDetector for custom interactive widgets. Use InkWell for Material-style tap feedback. Use button widgets for actual buttons.",
      ),
      ar: QuestionContent(
        question: "كيف تتعامل مع النقرات (Taps) في Flutter؟",
        answer: [
          StringContent(
            "يوفر Flutter طرقًا متعددة للتعامل مع إيماءات النقر على الودجتس، كل منها مناسب لحالات استخدام مختلفة.",
          ),
          UnorderedListContent(
            title: "الأساليب الشائعة:",
            value: [
              "GestureDetector: الأكثر مرونة، يتعامل مع جميع أنواع الإيماءات (نقرة، نقرة مزدوجة، ضغط طويل، سحب، إلخ)",
              "InkWell: تأثير تموج Material Design عند النقر، يوفر تغذية راجعة بصرية",
              "ودجتس الأزرار: ElevatedButton، TextButton، IconButton لديها onPressed مدمج",
              "Listener: أحداث مؤشر منخفضة المستوى للحالات المتقدمة",
            ],
          ),
          StringContent(
            "GestureDetector هو الخيار الأكثر شيوعًا للودجتس المخصصة. InkWell يضيف حركة تموج Material. يجب استخدام ودجتس الأزرار للأزرار الفعلية.",
          ),
        ],
        notes: [
          "GestureDetector ليس لديه تغذية راجعة بصرية - استخدم InkWell لذلك",
          "InkWell يتطلب ودجت Material كسلف",
          "استدعاء onTap قابل للإلغاء - null يعطل التفاعل",
        ],
        bestUse:
            "استخدم GestureDetector للودجتس التفاعلية المخصصة. استخدم InkWell لتغذية راجعة بنمط Material. استخدم ودجتس الأزرار للأزرار الفعلية.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// GestureDetector - custom tap handling
GestureDetector(
  onTap: () {
    print('Container tapped!');
  },
  onDoubleTap: () {
    print('Double tapped!');
  },
  onLongPress: () {
    print('Long pressed!');
  },
  child: Container(
    width: 200,
    height: 100,
    color: Colors.blue,
    child: const Center(child: Text('Tap me')),
  ),
)

// InkWell - Material ripple effect
InkWell(
  onTap: () {
    print('InkWell tapped!');
  },
  child: Container(
    width: 200,
    height: 100,
    child: const Center(child: Text('Tap for ripple')),
  ),
)

// Button widgets
ElevatedButton(
  onPressed: () {
    print('Button pressed!');
  },
  child: const Text('Press me'),
)

IconButton(
  icon: const Icon(Icons.favorite),
  onPressed: () {
    print('Icon button pressed!');
  },
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "GestureDetector: Flexible, handles many gesture types",
        "InkWell: Provides Material ripple feedback",
        "Button widgets: Built-in styling and accessibility",
        "Multiple options for different use cases",
      ],
      ar: [
        "GestureDetector: مرن، يتعامل مع أنواع إيماءات عديدة",
        "InkWell: يوفر تغذية راجعة بتموج Material",
        "ودجتس الأزرار: تنسيق وإمكانية وصول مدمجة",
        "خيارات متعددة لحالات استخدام مختلفة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "GestureDetector: No visual feedback by default",
        "InkWell: Requires Material ancestor",
        "Need to choose right widget for the use case",
        "Can be confusing for beginners which to use",
      ],
      ar: [
        "GestureDetector: لا توجد تغذية راجعة بصرية افتراضيًا",
        "InkWell: يتطلب سلف Material",
        "تحتاج لاختيار الودجت المناسب لحالة الاستخدام",
        "قد يكون محيرًا للمبتدئين أيهما يُستخدم",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Handle taps when:",
          value: [
            "Creating custom interactive widgets",
            "Adding Material ripple effects to containers",
            "Implementing standard button actions",
            "Detecting specific gestures like long press or double tap",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "تعامل مع النقرات عندما:",
          value: [
            "إنشاء ودجتس تفاعلية مخصصة",
            "إضافة تأثيرات تموج Material إلى الحاويات",
            "تنفيذ إجراءات الأزرار القياسية",
            "اكتشاف إيماءات معينة مثل الضغط الطويل أو النقر المزدوج",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "072",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .theoretical,
    tags: ["basic", "appbar", "scaffold", "ui"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is an AppBar?",
        answer: [
          StringContent(
            "AppBar is a Material Design widget that displays a horizontal bar typically at the top of the screen. It's the primary way to show navigation, titles, and actions in Flutter apps.",
          ),
          UnorderedListContent(
            title: "Common AppBar properties:",
            value: [
              "title: Widget displayed as the app bar title (usually Text)",
              "leading: Widget before title (usually back button or menu icon)",
              "actions: List of widgets on the right (usually IconButtons)",
              "backgroundColor: Color of the app bar",
              "elevation: Shadow depth below the app bar",
              "centerTitle: Whether to center the title",
            ],
          ),
          StringContent(
            "AppBar is typically used inside Scaffold widget. It automatically handles back button, integrates with navigation, and provides consistent Material Design appearance.",
          ),
        ],
        notes: [
          "Scaffold automatically adds back button to AppBar when using Navigator",
          "AppBar height is 56 pixels on mobile, 64 on tablet",
          "Can be made flexible/collapsible with SliverAppBar",
        ],
        bestUse:
            "Use as the primary navigation and title bar for app screens. Essential component of Material Design apps.",
      ),
      ar: QuestionContent(
        question: "ما هو AppBar؟",
        answer: [
          StringContent(
            "AppBar هو ودجت Material Design يعرض شريطًا أفقيًا عادةً في أعلى الشاشة. إنه الطريقة الأساسية لعرض التنقل والعناوين والإجراءات في تطبيقات Flutter.",
          ),
          UnorderedListContent(
            title: "خصائص AppBar الشائعة:",
            value: [
              "title: ودجت يُعرض كعنوان شريط التطبيق (عادةً Text)",
              "leading: ودجت قبل العنوان (عادةً زر رجوع أو أيقونة قائمة)",
              "actions: قائمة ودجتس على اليمين (عادةً IconButtons)",
              "backgroundColor: لون شريط التطبيق",
              "elevation: عمق الظل أسفل شريط التطبيق",
              "centerTitle: ما إذا كان سيتم توسيط العنوان",
            ],
          ),
          StringContent(
            "يُستخدم AppBar عادةً داخل ودجت Scaffold. يتعامل تلقائيًا مع زر الرجوع، ويتكامل مع التنقل، ويوفر مظهر Material Design متسق.",
          ),
        ],
        notes: [
          "Scaffold يضيف تلقائيًا زر رجوع إلى AppBar عند استخدام Navigator",
          "ارتفاع AppBar هو 56 بكسل على الهاتف، 64 على الجهاز اللوحي",
          "يمكن جعله مرنًا/قابلاً للطي مع SliverAppBar",
        ],
        bestUse:
            "استخدمه كشريط التنقل والعنوان الأساسي لشاشات التطبيق. مكون أساسي لتطبيقات Material Design.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic AppBar
Scaffold(
  appBar: AppBar(
    title: const Text('My App'),
  ),
  body: const Center(child: Text('Content')),
)

// AppBar with actions
AppBar(
  title: const Text('Messages'),
  actions: [
    IconButton(
      icon: const Icon(Icons.search),
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.more_vert),
      onPressed: () {},
    ),
  ],
)

// Custom styled AppBar
AppBar(
  title: const Text('Profile'),
  backgroundColor: Colors.purple,
  centerTitle: true,
  elevation: 0,
  leading: IconButton(
    icon: const Icon(Icons.menu),
    onPressed: () {},
  ),
  actions: [
    IconButton(
      icon: const Icon(Icons.settings),
      onPressed: () {},
    ),
  ],
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Provides consistent navigation UI across the app",
        "Automatically integrates with Navigator (back button)",
        "Easy to add title, actions, and navigation elements",
        "Material Design compliant out of the box",
      ],
      ar: [
        "يوفر واجهة تنقل متسقة عبر التطبيق",
        "يتكامل تلقائيًا مع Navigator (زر الرجوع)",
        "سهل إضافة العنوان والإجراءات وعناصر التنقل",
        "متوافق مع Material Design افتراضيًا",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Fixed height - not flexible by default",
        "Material Design only - use CupertinoNavigationBar for iOS style",
        "Can look out of place in custom-designed apps",
      ],
      ar: [
        "ارتفاع ثابت - غير مرن افتراضيًا",
        "Material Design فقط - استخدم CupertinoNavigationBar لنمط iOS",
        "قد يبدو غير مناسب في التطبيقات المصممة بشكل مخصص",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use AppBar when:",
          value: [
            "Providing a screen title and consistent navigation",
            "Adding action buttons to the top of the screen",
            "Implementing a standard Material Design look",
            "Integrating with Scaffold to automatically handle the drawer or back button",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم AppBar عندما:",
          value: [
            "توفير عنوان للشاشة وتنقل متسق",
            "إضافة أزرار إجراءات في أعلى الشاشة",
            "تنفيذ مظهر Material Design القياسي",
            "التكامل مع Scaffold للتعامل تلقائيًا مع الدرج أو زر الرجوع",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "073",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .theoretical,
    tags: ["basic", "cupertino", "ios", "ui"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is CupertinoApp?",
        answer: [
          StringContent(
            "CupertinoApp is the iOS-style equivalent of MaterialApp. It provides iOS-styled widgets and follows Apple's Human Interface Guidelines instead of Material Design.",
          ),
          UnorderedListContent(
            title: "Key differences from MaterialApp:",
            value: [
              "Uses iOS-style navigation (slide transitions)",
              "Default font is San Francisco (iOS system font)",
              "Provides iOS-themed widgets by default",
              "Navigation bar looks like iOS instead of Material",
              "Different color scheme and design language",
            ],
          ),
          StringContent(
            "You can use Cupertino widgets in MaterialApp and vice versa, but CupertinoApp provides better iOS consistency when targeting iOS users specifically.",
          ),
        ],
        notes: [
          "Can mix Material and Cupertino widgets in same app",
          "CupertinoPageScaffold is iOS equivalent of Scaffold",
          "Useful for iOS-first apps or when consistency with iOS is priority",
        ],
        bestUse:
            "Use when building iOS-focused apps or when you want authentic iOS look and feel. Can also use alongside MaterialApp for platform-adaptive UIs.",
      ),
      ar: QuestionContent(
        question: "ما هو CupertinoApp؟",
        answer: [
          StringContent(
            "CupertinoApp هو المعادل بنمط iOS لـ MaterialApp. يوفر ودجتس بنمط iOS ويتبع إرشادات واجهة Apple البشرية بدلاً من Material Design.",
          ),
          UnorderedListContent(
            title: "الفروقات الرئيسية عن MaterialApp:",
            value: [
              "يستخدم تنقل بنمط iOS (انتقالات انزلاقية)",
              "الخط الافتراضي هو San Francisco (خط نظام iOS)",
              "يوفر ودجتس بموضوع iOS افتراضيًا",
              "شريط التنقل يبدو مثل iOS بدلاً من Material",
              "نظام ألوان ولغة تصميم مختلفة",
            ],
          ),
          StringContent(
            "يمكنك استخدام ودجتس Cupertino في MaterialApp والعكس، لكن CupertinoApp يوفر اتساق iOS أفضل عند استهداف مستخدمي iOS على وجه التحديد.",
          ),
        ],
        notes: [
          "يمكن مزج ودجتس Material و Cupertino في نفس التطبيق",
          "CupertinoPageScaffold هو معادل iOS لـ Scaffold",
          "مفيد لتطبيقات iOS أولاً أو عندما يكون الاتساق مع iOS أولوية",
        ],
        bestUse:
            "استخدمه عند بناء تطبيقات تركز على iOS أو عندما تريد مظهر وشعور iOS الأصلي. يمكن أيضًا استخدامه جنبًا إلى جنب مع MaterialApp لواجهات متكيفة مع المنصة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// CupertinoApp basic setup
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyCupertinoApp());
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'iOS App',
      home: HomeScreen(),
    );
  }
}

// CupertinoPageScaffold (iOS-style screen)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Home'),
      ),
      child: const Center(
        child: Text('iOS-style app'),
      ),
    );
  }
}

// Using Cupertino widgets
CupertinoButton(
  child: const Text('iOS Button'),
  onPressed: () {},
)

CupertinoSwitch(
  value: true,
  onChanged: (value) {},
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Provides authentic iOS look and feel",
        "Better for iOS-focused apps",
        "Follows Apple Human Interface Guidelines",
        "Can be mixed with Material widgets",
      ],
      ar: [
        "يوفر مظهر وشعور iOS الأصلي",
        "أفضل للتطبيقات المركزة على iOS",
        "يتبع إرشادات واجهة Apple البشرية",
        "يمكن مزجه مع ودجتس Material",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Less widget variety than Material Design",
        "Looks out of place on Android",
        "Smaller community/fewer examples than MaterialApp",
        "Need to handle platform differences manually",
      ],
      ar: [
        "تنوع ودجتس أقل من Material Design",
        "يبدو غير مناسب على Android",
        "مجتمع أصغر/أمثلة أقل من MaterialApp",
        "تحتاج للتعامل مع فروقات المنصة يدويًا",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use CupertinoApp when:",
          value: [
            "Building an app specifically for iOS users",
            "Targeting a strict iOS Human Interface look and feel",
            "Developing platform-specific subtrees for a consistent iOS experience",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم CupertinoApp عندما:",
          value: [
            "بناء تطبيق مخصص لمستخدمي iOS",
            "استهداف مظهر وشعور iOS Human Interface الصارم",
            "تطوير أشجار فرعية خاصة بالمنصة لتجربة iOS متسقة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "074",
    difficulty: .basic,
    categories: [.flutterBasics, .ui],
    type: .theoretical,
    tags: ["intermediate", "tabs", "tabcontroller", "navigation"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is DefaultTabController?",
        answer: [
          StringContent(
            "DefaultTabController is a widget that creates and controls a tab-based navigation system. It manages the state and synchronization between TabBar and TabBarView.",
          ),
          UnorderedListContent(
            title: "Key components:",
            value: [
              "DefaultTabController: Wraps TabBar and TabBarView, provides the controller",
              "TabBar: The clickable tabs at the top",
              "TabBarView: The content pages corresponding to each tab",
              "Tab: Individual tab widget (can have text, icon, or both)",
            ],
          ),
          StringContent(
            "DefaultTabController automatically syncs the selected tab with the displayed content. When user taps a tab, the corresponding page is shown. Swiping between pages updates the selected tab.",
          ),
        ],
        notes: [
          "length parameter must match number of tabs and tab views",
          "For custom control, use TabController instead",
          "TabBar usually placed in AppBar's bottom property",
        ],
        bestUse:
            "Use for tabbed navigation like messaging apps (Chats, Status, Calls), settings pages with categories, or any multi-section interface.",
      ),
      ar: QuestionContent(
        question: "ما هو DefaultTabController؟",
        answer: [
          StringContent(
            "DefaultTabController هو ودجت ينشئ ويتحكم في نظام تنقل قائم على علامات التبويب. يدير الحالة والمزامنة بين TabBar و TabBarView.",
          ),
          UnorderedListContent(
            title: "المكونات الرئيسية:",
            value: [
              "DefaultTabController: يلف TabBar و TabBarView، يوفر المتحكم",
              "TabBar: علامات التبويب القابلة للنقر في الأعلى",
              "TabBarView: صفحات المحتوى المقابلة لكل علامة تبويب",
              "Tab: ودجت علامة تبويب فردية (يمكن أن تحتوي على نص، أيقونة، أو كليهما)",
            ],
          ),
          StringContent(
            "يزامن DefaultTabController تلقائيًا علامة التبويب المحددة مع المحتوى المعروض. عندما ينقر المستخدم على علامة تبويب، تُعرض الصفحة المقابلة. السحب بين الصفحات يحدث علامة التبويب المحددة.",
          ),
        ],
        notes: [
          "معامل length يجب أن يطابق عدد علامات التبويب وعروض التبويب",
          "للتحكم المخصص، استخدم TabController بدلاً من ذلك",
          "عادةً ما يُوضع TabBar في خاصية bottom لـ AppBar",
        ],
        bestUse:
            "استخدمه للتنقل بعلامات التبويب مثل تطبيقات المراسلة (الدردشات، الحالة، المكالمات)، صفحات الإعدادات مع الفئات، أو أي واجهة متعددة الأقسام.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// DefaultTabController with TabBar and TabBarView
DefaultTabController(
  length: 3, // Number of tabs
  child: Scaffold(
    appBar: AppBar(
      title: const Text('Tabs Example'),
      bottom: const TabBar(
        tabs: [
          Tab(icon: Icon(Icons.chat), text: 'Chats'),
          Tab(icon: Icon(Icons.camera), text: 'Status'),
          Tab(icon: Icon(Icons.call), text: 'Calls'),
        ],
      ),
    ),
    body: const TabBarView(
      children: [
        Center(child: Text('Chats Screen')),
        Center(child: Text('Status Screen')),
        Center(child: Text('Calls Screen')),
      ],
    ),
  ),
)

// Tabs with custom styling
TabBar(
  indicatorColor: Colors.white,
  labelColor: Colors.white,
  unselectedLabelColor: Colors.white70,
  tabs: const [
    Tab(text: 'Home'),
    Tab(text: 'Profile'),
    Tab(text: 'Settings'),
  ],
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Easy to implement tabbed navigation",
        "Automatic synchronization between tabs and content",
        "Swipeable tab views built-in",
        "Integrates well with AppBar",
      ],
      ar: [
        "سهل تنفيذ التنقل بعلامات التبويب",
        "مزامنة تلقائية بين علامات التبويب والمحتوى",
        "عروض علامات تبويب قابلة للسحب مدمجة",
        "يتكامل جيدًا مع AppBar",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "All tab views are built at once (not lazy loaded)",
        "Limited customization compared to custom TabController",
        "Can be memory intensive with many complex tabs",
      ],
      ar: [
        "جميع عروض علامات التبويب تُبنى مرة واحدة (ليست محملة كسولة)",
        "تخصيص محدود مقارنة بـ TabController المخصص",
        "قد يكون مكثفًا للذاكرة مع العديد من علامات التبويب المعقدة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use DefaultTabController when:",
          value: [
            "Implementing simple tabbed navigation within a screen",
            "Syncing a TabBar with a TabBarView automatically",
            "You don't need fine-grained control over the tab switching process",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم DefaultTabController عندما:",
          value: [
            "تنفيذ تنقل بسيط بعلامات التبويب داخل الشاشة",
            "مزامنة TabBar مع TabBarView تلقائيًا",
            "لا تحتاج لسيطرة دقيقة على عملية تبديل علامات التبويب",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "075",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .practical,
    tags: ["basic", "text", "styling", "typography"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "How do you style text in Flutter?",
        answer: [
          StringContent(
            "Text styling in Flutter is done using the TextStyle class, which can be applied directly to Text widgets or defined in app themes.",
          ),
          UnorderedListContent(
            title: "Common TextStyle properties:",
            value: [
              "fontSize: Size of the text",
              "fontWeight: Bold, normal, light (FontWeight.bold, .w700, etc.)",
              "color: Text color",
              "fontFamily: Custom font family",
              "letterSpacing: Space between letters",
              "decoration: Underline, strikethrough, etc.",
              "height: Line height multiplier",
            ],
          ),
          StringContent(
            "You can also use predefined text styles from Theme like headline1, bodyText1, etc., which provides consistent typography across the app.",
          ),
        ],
        notes: [
          "Custom fonts need to be declared in pubspec.yaml",
          "Theme text styles are preferred for consistency",
          "TextStyle can be merged using copyWith()",
        ],
        bestUse:
            "Use TextStyle for custom text appearance. Use theme text styles (headline1, bodyText1) for consistent typography across the app.",
      ),
      ar: QuestionContent(
        question: "كيف تنسّق النصوص في Flutter؟",
        answer: [
          StringContent(
            "تنسيق النصوص في Flutter يتم باستخدام فئة TextStyle، التي يمكن تطبيقها مباشرة على ودجتس Text أو تعريفها في سمات التطبيق.",
          ),
          UnorderedListContent(
            title: "خصائص TextStyle الشائعة:",
            value: [
              "fontSize: حجم النص",
              "fontWeight: غامق، عادي، خفيف (FontWeight.bold، .w700، إلخ)",
              "color: لون النص",
              "fontFamily: عائلة خط مخصصة",
              "letterSpacing: المسافة بين الحروف",
              "decoration: تسطير، شطب، إلخ",
              "height: مضاعف ارتفاع السطر",
            ],
          ),
          StringContent(
            "يمكنك أيضًا استخدام أنماط نص محددة مسبقًا من Theme مثل headline1، bodyText1، إلخ، والتي توفر طباعة متسقة عبر التطبيق.",
          ),
        ],
        notes: [
          "الخطوط المخصصة تحتاج للإعلان عنها في pubspec.yaml",
          "أنماط نصوص السمة مفضلة للاتساق",
          "يمكن دمج TextStyle باستخدام copyWith()",
        ],
        bestUse:
            "استخدم TextStyle لمظهر نص مخصص. استخدم أنماط نصوص السمة (headline1، bodyText1) لطباعة متسقة عبر التطبيق.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic text styling
const Text(
  'Hello Flutter',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  ),
)

// Advanced styling
const Text(
  'Styled Text',
  style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.purple,
    letterSpacing: 1.5,
    decoration: TextDecoration.underline,
    decorationColor: Colors.red,
    fontStyle: FontStyle.italic,
  ),
)

// Using theme text styles
Text(
  'Headline',
  style: Theme.of(context).textTheme.headlineLarge,
)

Text(
  'Body text',
  style: Theme.of(context).textTheme.bodyMedium,
)

// Merging styles with copyWith
Text(
  'Modified theme style',
  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
    color: Colors.red,
    fontWeight: FontWeight.bold,
  ),
)

// Custom font family (must be in pubspec.yaml)
const Text(
  'Custom Font',
  style: TextStyle(
    fontFamily: 'Roboto',
    fontSize: 20,
  ),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Rich styling options for text",
        "Theme integration for consistent typography",
        "Easy to customize individual text widgets",
        "Support for custom fonts",
      ],
      ar: [
        "خيارات تنسيق غنية للنص",
        "تكامل السمة لطباعة متسقة",
        "سهل تخصيص ودجتس نص فردية",
        "دعم للخطوط المخصصة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can become verbose with many style properties",
        "Need to manually manage consistency without themes",
        "Custom fonts increase app size",
      ],
      ar: [
        "قد يصبح مطولاً مع العديد من خصائص النمط",
        "تحتاج للإدارة اليدوية للاتساق بدون سمات",
        "الخطوط المخصصة تزيد حجم التطبيق",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Style text when:",
          value: [
            "Defining the visual appearance of individual Text widgets",
            "Applying consistent typography across the application via themes",
            "Modifying specific properties like color, weight, or spacing for emphasis",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "نسق النص عندما:",
          value: [
            "تعريف المظهر المرئي لودجتس Text الفردية",
            "تطبيق طباعة متسقة عبر التطبيق من خلال السمات",
            "تعديل خصائص معينة مثل اللون أو الوزن أو التباعد للتأكيد",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "076",
    difficulty: .basic,
    categories: [.flutterBasics, .ui],
    type: .theoretical,
    tags: ["intermediate", "theme", "styling", "design"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is ThemeData?",
        answer: [
          StringContent(
            "ThemeData defines the visual properties for the entire app or specific widget subtrees. It provides a centralized way to configure colors, fonts, shapes, and other design elements.",
          ),
          UnorderedListContent(
            title: "Key ThemeData properties:",
            value: [
              "primaryColor: Main app color (used in AppBar, FloatingActionButton)",
              "colorScheme: Set of colors following Material Design",
              "textTheme: Typography styles (headline, body, caption, etc.)",
              "appBarTheme: Styling for all AppBars",
              "buttonTheme: Styling for buttons",
              "brightness: Light or dark theme (Brightness.light/dark)",
            ],
          ),
          StringContent(
            "Apply themes at MaterialApp level for app-wide theming, or use Theme widget to override for specific subtrees. Access current theme using Theme.of(context).",
          ),
        ],
        notes: [
          "ThemeData.light() and ThemeData.dark() provide default themes",
          "Use copyWith() to modify existing themes",
          "Themes cascade - child themes inherit parent theme properties",
        ],
        bestUse:
            "Define app-wide visual consistency. Essential for implementing dark mode and maintaining design system.",
      ),
      ar: QuestionContent(
        question: "ما هو ThemeData؟",
        answer: [
          StringContent(
            "ThemeData يعرّف الخصائص المرئية للتطبيق بأكمله أو أشجار ودجتس فرعية معينة. يوفر طريقة مركزية لتكوين الألوان والخطوط والأشكال وعناصر التصميم الأخرى.",
          ),
          UnorderedListContent(
            title: "خصائص ThemeData الرئيسية:",
            value: [
              "primaryColor: لون التطبيق الرئيسي (يُستخدم في AppBar، FloatingActionButton)",
              "colorScheme: مجموعة ألوان تتبع Material Design",
              "textTheme: أنماط الطباعة (العناوين، النص، التسميات، إلخ)",
              "appBarTheme: تنسيق لجميع AppBars",
              "buttonTheme: تنسيق للأزرار",
              "brightness: سمة فاتحة أو داكنة (Brightness.light/dark)",
            ],
          ),
          StringContent(
            "طبق السمات على مستوى MaterialApp لتطبيق السمة على مستوى التطبيق، أو استخدم ودجت Theme للتجاوز لأشجار فرعية معينة. الوصول للسمة الحالية باستخدام Theme.of(context).",
          ),
        ],
        notes: [
          "ThemeData.light() و ThemeData.dark() توفران سمات افتراضية",
          "استخدم copyWith() لتعديل السمات الموجودة",
          "السمات متسلسلة - السمات الفرعية ترث خصائص السمة الوالدة",
        ],
        bestUse:
            "عرّف الاتساق المرئي على مستوى التطبيق. أساسي لتنفيذ الوضع الداكن والحفاظ على نظام التصميم.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Define app theme in MaterialApp
MaterialApp(
  title: 'My App',
  theme: ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(fontSize: 16),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      elevation: 0,
    ),
  ),
  darkTheme: ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
  ),
  themeMode: ThemeMode.system, // Use system preference
  home: const HomeScreen(),
)

// Access theme in widgets
Widget build(BuildContext context) {
  final theme = Theme.of(context);
  
  return Container(
    color: theme.primaryColor,
    child: Text(
      'Themed text',
      style: theme.textTheme.headlineMedium,
    ),
  );
}

// Override theme for subtree
Theme(
  data: Theme.of(context).copyWith(
    primaryColor: Colors.red,
  ),
  child: ChildWidget(),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Centralized styling for entire app",
        "Easy dark mode implementation",
        "Consistent design across all screens",
        "Theme inheritance reduces code duplication",
      ],
      ar: [
        "تنسيق مركزي للتطبيق بأكمله",
        "تنفيذ سهل للوضع الداكن",
        "تصميم متسق عبر جميع الشاشات",
        "وراثة السمة تقلل من تكرار الكود",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can be complex to set up initially",
        "Overriding themes can lead to inconsistencies",
        "Large ThemeData objects can be hard to maintain",
      ],
      ar: [
        "قد يكون معقدًا في الإعداد الأولي",
        "تجاوز السمات قد يؤدي إلى عدم اتساق",
        "كائنات ThemeData الكبيرة قد يصعب صيانتها",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use ThemeData when:",
          value: [
            "Establishing a global design system for the entire app",
            "Implementing Dark/Light mode switching",
            "Centralizing color palettes and typography for better maintainability",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم ThemeData عندما:",
          value: [
            "إنشاء نظام تصميم عالمي للتطبيق بأكمله",
            "تنفيذ خيار التبديل بين الوضع الداكن والفاتح",
            "مركزية لوحات الألوان والطباعة لتحسين قابلية الصيانة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "077",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .theoretical,
    tags: ["basic", "drawer", "navigation", "ui"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is the Drawer widget?",
        answer: [
          StringContent(
            "Drawer is a Material Design panel that slides in from the side of the screen, typically used for navigation. It's accessed by swiping from the edge or tapping the menu icon in the AppBar.",
          ),
          UnorderedListContent(
            title: "Common usage:",
            value: [
              "Navigation between major app sections",
              "User profile information",
              "App settings access",
              "Account switching",
              "Usually contains a ListView with navigation items",
            ],
          ),
          StringContent(
            "Drawer is added to Scaffold's drawer property. Scaffold automatically adds a hamburger menu icon to the AppBar. Drawer can be opened programmatically using Scaffold.of(context).openDrawer().",
          ),
        ],
        notes: [
          "Closes automatically when item is tapped (need Navigator.pop)",
          "Can have both left (drawer) and right (endDrawer) drawers",
          "DrawerHeader is commonly used at the top for branding/profile",
        ],
        bestUse:
            "Use for main app navigation, especially when you have more than 5 main sections. Common in news apps, social media, and content-heavy applications.",
      ),
      ar: QuestionContent(
        question: "ما هو ودجت Drawer؟",
        answer: [
          StringContent(
            "Drawer هو لوحة Material Design تنزلق من جانب الشاشة، وتُستخدم عادةً للتنقل. يُصل إليها بالسحب من الحافة أو النقر على أيقونة القائمة في AppBar.",
          ),
          UnorderedListContent(
            title: "الاستخدام الشائع:",
            value: [
              "التنقل بين أقسام التطبيق الرئيسية",
              "معلومات ملف المستخدم",
              "الوصول إلى إعدادات التطبيق",
              "تبديل الحسابات",
              "عادةً ما يحتوي على ListView مع عناصر التنقل",
            ],
          ),
          StringContent(
            "يُضاف Drawer إلى خاصية drawer في Scaffold. يضيف Scaffold تلقائيًا أيقونة قائمة همبرغر إلى AppBar. يمكن فتح Drawer برمجيًا باستخدام Scaffold.of(context).openDrawer().",
          ),
        ],
        notes: [
          "يُغلق تلقائيًا عند النقر على عنصر (تحتاج Navigator.pop)",
          "يمكن أن يكون لديك كل من اليسار (drawer) واليمين (endDrawer)",
          "DrawerHeader يُستخدم عادةً في الأعلى للعلامة التجارية/الملف الشخصي",
        ],
        bestUse:
            "استخدمه للتنقل الرئيسي في التطبيق، خاصةً عندما يكون لديك أكثر من 5 أقسام رئيسية. شائع في تطبيقات الأخبار ووسائل التواصل الاجتماعي والتطبيقات كثيفة المحتوى.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Drawer in Scaffold
Scaffold(
  appBar: AppBar(
    title: const Text('My App'),
  ),
  drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                child: Icon(Icons.person),
              ),
              SizedBox(height: 10),
              Text(
                'John Doe',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                'john@example.com',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {
            Navigator.pop(context); // Close drawer
            // Navigate to home
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () {
            Navigator.pop(context);
            // Navigate to settings
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.logout),
          title: const Text('Logout'),
          onTap: () {
            Navigator.pop(context);
            // Logout logic
          },
        ),
      ],
    ),
  ),
  body: const Center(
    child: Text('Main Content'),
  ),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Space-efficient navigation for many sections",
        "Familiar pattern to users",
        "Can include user profile and account info",
        "Automatically handled by Scaffold",
      ],
      ar: [
        "تنقل موفر للمساحة للعديد من الأقسام",
        "نمط مألوف للمستخدمين",
        "يمكن أن يتضمن ملف المستخدم ومعلومات الحساب",
        "يُدار تلقائيًا بواسطة Scaffold",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Hidden navigation - users might not discover it",
        "Requires extra tap to access navigation",
        "Not suitable as primary navigation for very few items",
      ],
      ar: [
        "تنقل مخفي - قد لا يكتشفه المستخدمون",
        "يتطلب نقرة إضافية للوصول إلى التنقل",
        "غير مناسب كتنقل أساسي لعناصر قليلة جدًا",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Drawer when:",
          value: [
            "Your app has many top-level destinations (more than 5)",
            "Providing secondary navigation items like settings or profile",
            "Storing account switching or branding information",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Drawer عندما:",
          value: [
            "يحتوي تطبيقك على العديد من الوجهات الرئيسية (أكثر من 5)",
            "توفير عناصر تنقل ثانوية مثل الإعدادات أو الملف الشخصي",
            "تخزين معلومات تبديل الحساب أو العلامة التجارية",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "078",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .theoretical,
    tags: ["basic", "fab", "floatingactionbutton", "material"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is FloatingActionButton?",
        answer: [
          StringContent(
            "FloatingActionButton (FAB) is a circular Material Design button that floats above content and performs a primary action. It's one of the most prominent UI elements in an app.",
          ),
          UnorderedListContent(
            title: "Key characteristics:",
            value: [
              "Circular button that floats above the UI",
              "Used for primary, positive actions (create, share, navigate)",
              "Positioned using Scaffold's floatingActionButton property",
              "Default position is bottom-right corner",
              "Can be customized with different sizes (regular, small, large, extended)",
            ],
          ),
          StringContent(
            "FAB draws attention and should represent the most important action on the screen. Common uses include composing messages, creating new items, or sharing content.",
          ),
        ],
        notes: [
          "Only use one FAB per screen for the primary action",
          "FAB position can be changed with floatingActionButtonLocation",
          "Extended FAB can include text alongside icon",
        ],
        bestUse:
            "Use for the single most important action on a screen (compose email, add item, take photo). Should be immediately accessible and obvious.",
      ),
      ar: QuestionContent(
        question: "ما هو FloatingActionButton؟",
        answer: [
          StringContent(
            "FloatingActionButton (FAB) هو زر Material Design دائري يطفو فوق المحتوى ويقوم بإجراء أساسي. إنه أحد عناصر واجهة المستخدم الأكثر بروزًا في التطبيق.",
          ),
          UnorderedListContent(
            title: "الخصائص الرئيسية:",
            value: [
              "زر دائري يطفو فوق واجهة المستخدم",
              "يُستخدم للإجراءات الأساسية الإيجابية (إنشاء، مشاركة، تنقل)",
              "يُوضع باستخدام خاصية floatingActionButton في Scaffold",
              "الموضع الافتراضي هو الزاوية السفلية اليمنى",
              "يمكن تخصيصه بأحجام مختلفة (عادي، صغير، كبير، ممتد)",
            ],
          ),
          StringContent(
            "يجذب FAB الانتباه ويجب أن يمثل الإجراء الأكثر أهمية على الشاشة. الاستخدامات الشائعة تشمل كتابة الرسائل، إنشاء عناصر جديدة، أو مشاركة المحتوى.",
          ),
        ],
        notes: [
          "استخدم فقط FAB واحد لكل شاشة للإجراء الأساسي",
          "يمكن تغيير موضع FAB باستخدام floatingActionButtonLocation",
          "يمكن أن يتضمن FAB الممتد نصًا بجانب الأيقونة",
        ],
        bestUse:
            "استخدمه للإجراء الوحيد الأكثر أهمية على الشاشة (كتابة بريد، إضافة عنصر، التقاط صورة). يجب أن يكون متاحًا على الفور وواضحًا.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic FloatingActionButton
Scaffold(
  appBar: AppBar(title: const Text('FAB Example')),
  body: const Center(child: Text('Content')),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      print('FAB pressed!');
    },
    child: const Icon(Icons.add),
  ),
)

// Extended FloatingActionButton with text
FloatingActionButton.extended(
  onPressed: () {},
  icon: const Icon(Icons.add),
  label: const Text('Create New'),
)

// Small FAB
FloatingActionButton.small(
  onPressed: () {},
  child: const Icon(Icons.edit),
)

// Custom position
Scaffold(
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: const Icon(Icons.share),
  ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Highly visible and accessible",
        "Clearly indicates primary action",
        "Follows Material Design guidelines",
        "Customizable position and appearance",
      ],
      ar: [
        "مرئي ومتاح بشكل كبير",
        "يشير بوضوح إلى الإجراء الأساسي",
        "يتبع إرشادات Material Design",
        "موضع ومظهر قابل للتخصيص",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can obscure content underneath",
        "Should only represent one action",
        "Not suitable for secondary or tertiary actions",
        "May not fit all design systems",
      ],
      ar: [
        "قد يحجب المحتوى تحته",
        "يجب أن يمثل إجراءً واحدًا فقط",
        "غير مناسب للإجراءات الثانوية أو الثلاثية",
        "قد لا يناسب جميع أنظمة التصميم",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use FloatingActionButton when:",
          value: [
            "Promoting the most important, primary action on a screen",
            "Providing quick access to a high-frequency task (e.g., 'Compose', 'Add')",
            "Following Material Design principles for a central UI action",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم FloatingActionButton عندما:",
          value: [
            "الترويج لأهم إجراء أساسي على الشاشة",
            "توفير وصول سريع لمهمة تتكرر كثيرًا (مثل 'إنشاء'، 'إضافة')",
            "اتباع مبادئ Material Design لإجراء مركزي في واجهة المستخدم",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "079",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .practical,
    tags: ["basic", "snackbar", "feedback", "material"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is a SnackBar?",
        answer: [
          StringContent(
            "SnackBar is a lightweight message that briefly appears at the bottom of the screen to provide feedback about an operation. It's a Material Design component for showing temporary notifications.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Appears at bottom of screen",
              "Automatically dismisses after a duration",
              "Can include an optional action button",
              "Non-intrusive way to show feedback",
              "Displayed using ScaffoldMessenger.of(context).showSnackBar()",
            ],
          ),
          StringContent(
            "SnackBars are ideal for brief messages like 'Item deleted', 'Message sent', or 'No internet connection'. They should not be used for critical information that requires user action.",
          ),
        ],
        notes: [
          "Only one SnackBar is shown at a time",
          "Use ScaffoldMessenger instead of deprecated Scaffold.of(context).showSnackBar()",
          "Can be dismissed manually with action or automatically after duration",
        ],
        bestUse:
            "Use for brief confirmations, status updates, or simple error messages. Not for critical alerts requiring user decision.",
      ),
      ar: QuestionContent(
        question: "ما هو SnackBar؟",
        answer: [
          StringContent(
            "SnackBar هو رسالة خفيفة تظهر لفترة وجيزة في أسفل الشاشة لتوفير ملاحظات حول عملية ما. إنه مكون Material Design لعرض الإشعارات المؤقتة.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يظهر في أسفل الشاشة",
              "يختفي تلقائيًا بعد مدة معينة",
              "يمكن أن يتضمن زر إجراء اختياري",
              "طريقة غير متطفلة لإظهار الملاحظات",
              "يُعرض باستخدام ScaffoldMessenger.of(context).showSnackBar()",
            ],
          ),
          StringContent(
            "SnackBars مثالية للرسائل القصيرة مثل 'تم حذف العنصر'، 'تم إرسال الرسالة'، أو 'لا يوجد اتصال بالإنترنت'. لا ينبغي استخدامها للمعلومات الحرجة التي تتطلب إجراءً من المستخدم.",
          ),
        ],
        notes: [
          "يُعرض SnackBar واحد فقط في كل مرة",
          "استخدم ScaffoldMessenger بدلاً من Scaffold.of(context).showSnackBar() المهملة",
          "يمكن إزالته يدويًا بالإجراء أو تلقائيًا بعد المدة",
        ],
        bestUse:
            "استخدمه للتأكيدات القصيرة، تحديثات الحالة، أو رسائل الخطأ البسيطة. ليس للتنبيهات الحرجة التي تتطلب قرار المستخدم.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic SnackBar
ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(
    content: Text('Item deleted'),
    duration: Duration(seconds: 3),
  ),
)

// SnackBar with action
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: const Text('Message sent'),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {
        print('Undo pressed');
      },
    ),
  ),
)

// Custom styled SnackBar
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(
    content: const Text('Error occurred!'),
    backgroundColor: Colors.red,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    action: SnackBarAction(
      label: 'Retry',
      textColor: Colors.white,
      onPressed: () {},
    ),
  ),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Non-intrusive feedback mechanism",
        "Automatically dismisses",
        "Can include optional action",
        "Simple to implement and use",
      ],
      ar: [
        "آلية ملاحظات غير متطفلة",
        "يختفي تلقائيًا",
        "يمكن أن يتضمن إجراءً اختياريًا",
        "بسيط في التنفيذ والاستخدام",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Easy to miss if user isn't looking",
        "Not suitable for important messages",
        "Only one can be shown at a time",
        "Limited space for content",
      ],
      ar: [
        "سهل الضياع إذا لم يكن المستخدم ينظر",
        "غير مناسب للرسائل المهمة",
        "واحد فقط يمكن عرضه في كل مرة",
        "مساحة محدودة للمحتوى",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use SnackBar when:",
          value: [
            "Confirming a user action (e.g., 'Message archived')",
            "Providing lightweight, temporary feedback about an operation",
            "Informing users of non-critical status changes (e.g., 'Back online')",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم SnackBar عندما:",
          value: [
            "تأكيد إجراء قام به المستخدم (مثل 'تمت أرشفة الرسالة')",
            "توفير ملاحظات مؤقتة وخفيفة حول عملية ما",
            "إعلام المستخدمين بتغييرات الحالة غير الحرجة (مثل 'عبر الإنترنت الآن')",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "080",
    difficulty: .basic,
    categories: [.flutterBasics, .ui],
    type: .theoretical,
    tags: ["intermediate", "wrap", "layout", "responsive"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "Explain Wrap widget.",
        answer: [
          StringContent(
            "Wrap is a widget that displays its children in multiple horizontal or vertical runs. When a row/column runs out of room, it automatically wraps to the next line.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Automatically wraps children to new lines when space runs out",
              "Can be horizontal (default) or vertical",
              "Supports spacing between items and lines",
              "Useful for tags, chips, or responsive layouts",
              "Better than Row/Column for dynamic content that might overflow",
            ],
          ),
          StringContent(
            "Unlike Row/Column which overflow when children don't fit, Wrap automatically creates new lines. It's perfect for displaying a collection of chips, tags, or buttons that should wrap gracefully.",
          ),
        ],
        notes: [
          "direction: Axis.horizontal (default) or Axis.vertical",
          "spacing: space between items on the same line",
          "runSpacing: space between lines/runs",
        ],
        bestUse:
            "Use for tags, chips, filter buttons, or any collection of widgets that should wrap to new lines when they don't fit on one line.",
      ),
      ar: QuestionContent(
        question: "اشرح ودجت Wrap.",
        answer: [
          StringContent(
            "Wrap هو ودجت يعرض أطفاله في عدة صفوف أو أعمدة. عندما ينفد المكان في صف/عمود، يلتف تلقائيًا إلى السطر التالي.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يلف الأطفال تلقائيًا إلى سطور جديدة عندما ينفد المكان",
              "يمكن أن يكون أفقيًا (افتراضي) أو عموديًا",
              "يدعم التباعد بين العناصر والسطور",
              "مفيد للوسوم، الرقائق، أو التخطيطات المتجاوبة",
              "أفضل من Row/Column للمحتوى الديناميكي الذي قد يتجاوز",
            ],
          ),
          StringContent(
            "على عكس Row/Column التي تتجاوز عندما لا تناسب الأطفال، ينشئ Wrap سطورًا جديدة تلقائيًا. إنه مثالي لعرض مجموعة من الرقائق أو الوسوم أو الأزرار التي يجب أن تلتف بشكل رشيق.",
          ),
        ],
        notes: [
          "direction: Axis.horizontal (افتراضي) أو Axis.vertical",
          "spacing: المسافة بين العناصر على نفس السطر",
          "runSpacing: المسافة بين السطور/الصفوف",
        ],
        bestUse:
            "استخدمه للوسوم، الرقائق، أزرار التصفية، أو أي مجموعة من الودجتس التي يجب أن تلتف إلى سطور جديدة عندما لا تناسب سطرًا واحدًا.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Wrap with chips
Wrap(
  spacing: 8.0, // Space between items
  runSpacing: 4.0, // Space between lines
  children: [
    Chip(label: Text('Flutter')),
    Chip(label: Text('Dart')),
    Chip(label: Text('Mobile')),
    Chip(label: Text('Development')),
    Chip(label: Text('UI')),
    Chip(label: Text('State Management')),
    Chip(label: Text('Architecture')),
  ],
)

// Wrap vs Row comparison
// BAD - Row overflows
Row(
  children: List.generate(20, (i) => 
    Padding(
      padding: const EdgeInsets.all(4),
      child: Chip(label: Text('Tag \$i')),
    ),
  ),
) // This will overflow!

// GOOD - Wrap handles it
Wrap(
  spacing: 8,
  runSpacing: 4,
  children: List.generate(20, (i) => 
    Chip(label: Text('Tag \$i')),
  ),
) // Wraps to new lines automatically

// Vertical Wrap
Wrap(
  direction: Axis.vertical,
  spacing: 8,
  children: [
    ElevatedButton(onPressed: () {}, child: Text('Button 1')),
    ElevatedButton(onPressed: () {}, child: Text('Button 2')),
    ElevatedButton(onPressed: () {}, child: Text('Button 3')),
  ],
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Automatically handles overflow by wrapping",
        "Responsive without manual calculations",
        "Perfect for dynamic content collections",
        "Configurable spacing between items and lines",
      ],
      ar: [
        "يتعامل تلقائيًا مع التجاوز بالالتفاف",
        "متجاوب بدون حسابات يدوية",
        "مثالي لمجموعات المحتوى الديناميكي",
        "تباعد قابل للتكوين بين العناصر والسطور",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Less control over exact positioning",
        "Can be unpredictable with varying child sizes",
        "Not suitable when precise layout is needed",
      ],
      ar: [
        "تحكم أقل في الموضع الدقيق",
        "قد يكون غير متوقع مع أحجام أطفال متفاوتة",
        "غير مناسب عندما يكون التخطيط الدقيق مطلوبًا",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Wrap when:",
          value: [
            "Displaying a collection of items (chips, tags) that should wrap to new lines",
            "Creating responsive layouts without complex calculations",
            "You have dynamic content that might overflow a Row or Column",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Wrap عندما:",
          value: [
            "عرض مجموعة من العناصر (chips، tags) التي يجب أن تلتف إلى سطور جديدة",
            "إنشاء تخطيطات متجاوبة دون حسابات معقدة",
            "لديك محتوى ديناميكي قد يتجاوز Row أو Column",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "081",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .theoretical,
    tags: ["basic", "opacity", "transparency", "visibility"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is Opacity?",
        answer: [
          StringContent(
            "Opacity is a widget that makes its child partially transparent. It takes a value between 0.0 (completely transparent/invisible) and 1.0 (completely opaque/visible).",
          ),
          UnorderedListContent(
            title: "Key characteristics:",
            value: [
              "opacity value ranges from 0.0 to 1.0",
              "0.0 = completely invisible",
              "1.0 = completely visible",
              "0.5 = 50% transparent",
              "Child still takes up space even when invisible (opacity: 0.0)",
            ],
          ),
          StringContent(
            "IMPORTANT: Opacity is expensive because it requires offscreen rendering. For better performance, prefer using Color with alpha channel or AnimatedOpacity for opacity changes.",
          ),
        ],
        notes: [
          "Opacity is expensive - avoid in scrolling lists",
          "Use Color.withOpacity() for better performance when possible",
          "AnimatedOpacity for smooth opacity transitions",
        ],
        bestUse:
            "Use for simple transparency effects. For animations, use AnimatedOpacity. For static transparent colors, use Color.withOpacity().",
      ),
      ar: QuestionContent(
        question: "ما هو Opacity؟",
        answer: [
          StringContent(
            "Opacity هو ودجت يجعل طفله شبه شفاف. يأخذ قيمة بين 0.0 (شفاف تمامًا/غير مرئي) و 1.0 (معتم تمامًا/مرئي).",
          ),
          UnorderedListContent(
            title: "الخصائص الرئيسية:",
            value: [
              "قيمة opacity تتراوح من 0.0 إلى 1.0",
              "0.0 = غير مرئي تمامًا",
              "1.0 = مرئي تمامًا",
              "0.5 = شفاف بنسبة 50%",
              "الطفل لا يزال يشغل مساحة حتى عندما يكون غير مرئي (opacity: 0.0)",
            ],
          ),
          StringContent(
            "مهم: Opacity مكلف لأنه يتطلب عرضًا خارج الشاشة. لأداء أفضل، فضّل استخدام Color مع قناة alpha أو AnimatedOpacity لتغييرات الشفافية.",
          ),
        ],
        notes: [
          "Opacity مكلف - تجنبه في القوائم القابلة للتمرير",
          "استخدم Color.withOpacity() لأداء أفضل عندما يكون ذلك ممكنًا",
          "AnimatedOpacity لانتقالات شفافية سلسة",
        ],
        bestUse:
            "استخدمه لتأثيرات شفافية بسيطة. للرسوم المتحركة، استخدم AnimatedOpacity. للألوان الشفافة الثابتة، استخدم Color.withOpacity().",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic Opacity
Opacity(
  opacity: 0.5, // 50% transparent
  child: Container(
    width: 200,
    height: 100,
    color: Colors.blue,
    child: const Center(child: Text('Semi-transparent')),
  ),
)

// Invisible but takes space
Opacity(
  opacity: 0.0, // Invisible
  child: Container(
    width: 100,
    height: 100,
    color: Colors.red,
  ),
) // Still occupies 100x100 space!

// Better performance alternatives
// Instead of Opacity:
Container(
  color: Colors.blue.withOpacity(0.5), // Better performance
)

// For animations:
AnimatedOpacity(
  opacity: _isVisible ? 1.0 : 0.0,
  duration: const Duration(milliseconds: 300),
  child: Container(
    width: 200,
    height: 100,
    color: Colors.blue,
  ),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Simple way to make widgets transparent",
        "Easy to understand and use",
        "Works with any widget",
      ],
      ar: [
        "طريقة بسيطة لجعل الودجتس شفافة",
        "سهل الفهم والاستخدام",
        "يعمل مع أي ودجت",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Expensive performance cost (offscreen rendering)",
        "Widget still takes space even when invisible",
        "Not suitable for frequent changes or lists",
        "Better alternatives exist (Color.withOpacity, AnimatedOpacity)",
      ],
      ar: [
        "تكلفة أداء عالية (عرض خارج الشاشة)",
        "الودجت لا يزال يشغل مساحة حتى عندما يكون غير مرئي",
        "غير مناسب للتغييرات المتكررة أو القوائم",
        "توجد بدائل أفضل (Color.withOpacity، AnimatedOpacity)",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Opacity when:",
          value: [
            "Changing the transparency of any widget to values between 0.0 and 1.0",
            "Making complex UI elements partially transparent for visual effects",
            "Maintaining the layout space of a widget while making it invisible",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Opacity عندما:",
          value: [
            "تغيير شفافية أي ودجت إلى قيم بين 0.0 و 1.0",
            "جعل عناصر واجهة المستخدم المعقدة شفافة جزئيًا للتأثيرات البصرية",
            "الحفاظ على مساحة تخطيط الودجت مع جعله غير مرئي",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "082",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .practical,
    tags: ["basic", "cliprrect", "borderradius", "clipping"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is ClipRRect?",
        answer: [
          StringContent(
            "ClipRRect clips its child using a rounded rectangle with specified border radius. The 'RRect' stands for 'Rounded Rectangle'. It's commonly used to create rounded corners on images and containers.",
          ),
          UnorderedListContent(
            title: "Common uses:",
            value: [
              "Creating rounded corners on images",
              "Clipping widgets to rounded rectangle shape",
              "Creating circular or stadium-shaped widgets",
              "Works with any widget, not just images",
              "borderRadius property defines corner roundness",
            ],
          ),
          StringContent(
            "ClipRRect is essential for giving images and containers rounded corners. Without it, square corners would be visible even if decoration has borderRadius.",
          ),
        ],
        notes: [
          "ClipRRect for rounded corners, ClipOval for circles",
          "Clipping has performance cost - use sparingly",
          "borderRadius can be different for each corner",
        ],
        bestUse:
            "Use to clip images, containers, or any widget into a rounded rectangle shape. Essential for profile pictures, card images, and rounded UI elements.",
      ),
      ar: QuestionContent(
        question: "ما هو ClipRRect؟",
        answer: [
          StringContent(
            "ClipRRect يقص طفله باستخدام مستطيل مستدير مع نصف قطر حدود محدد. 'RRect' تعني 'مستطيل مستدير'. يُستخدم عادةً لإنشاء زوايا مستديرة على الصور والحاويات.",
          ),
          UnorderedListContent(
            title: "الاستخدامات الشائعة:",
            value: [
              "إنشاء زوايا مستديرة على الصور",
              "قص الودجتس إلى شكل مستطيل مستدير",
              "إنشاء ودجتس دائرية أو على شكل ملعب",
              "يعمل مع أي ودجت، ليس فقط الصور",
              "خاصية borderRadius تحدد استدارة الزاوية",
            ],
          ),
          StringContent(
            "ClipRRect أساسي لإعطاء الصور والحاويات زوايا مستديرة. بدونه، ستكون الزوايا المربعة مرئية حتى لو كان للزخرفة borderRadius.",
          ),
        ],
        notes: [
          "ClipRRect للزوايا المستديرة، ClipOval للدوائر",
          "القص له تكلفة أداء - استخدمه بحذر",
          "borderRadius يمكن أن يكون مختلفًا لكل زاوية",
        ],
        bestUse:
            "استخدمه لقص الصور أو الحاويات أو أي ودجت إلى شكل مستطيل مستدير. أساسي لصور الملفات الشخصية وصور البطاقات وعناصر واجهة المستخدم المستديرة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Rounded image
ClipRRect(
  borderRadius: BorderRadius.circular(12),
  child: Image.network(
    'https://example.com/image.jpg',
    width: 200,
    height: 200,
    fit: BoxFit.cover,
  ),
)

// Circular profile picture
ClipRRect(
  borderRadius: BorderRadius.circular(50),
  child: Image.asset(
    'assets/profile.jpg',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),
)

// Different radius for each corner
ClipRRect(
  borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
    bottomLeft: Radius.circular(0),
    bottomRight: Radius.circular(0),
  ),
  child: Container(
    width: 200,
    height: 100,
    color: Colors.blue,
  ),
)

// Stadium shape (pill-shaped)
ClipRRect(
  borderRadius: BorderRadius.circular(100),
  child: Container(
    width: 200,
    height: 50,
    color: Colors.green,
    child: const Center(child: Text('Pill Button')),
  ),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Easy way to create rounded corners",
        "Works with any widget",
        "Supports different radius for each corner",
        "Essential for modern UI design",
      ],
      ar: [
        "طريقة سهلة لإنشاء زوايا مستديرة",
        "يعمل مع أي ودجت",
        "يدعم نصف قطر مختلف لكل زاوية",
        "أساسي لتصميم واجهة المستخدم الحديثة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Clipping has performance cost",
        "Can cause anti-aliasing artifacts",
        "Adds extra widget layer",
      ],
      ar: [
        "القص له تكلفة أداء",
        "قد يسبب عيوب التنعيم",
        "يضيف طبقة ودجت إضافية",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use ClipRRect when:",
          value: [
            "Creating rounded corners on rectangular widgets (especially images)",
            "Implementing a specific radius for each corner of a container",
            "Clipping descendants that might overflow a rounded container",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم ClipRRect عندما:",
          value: [
            "إنشاء زوايا مستديرة على ودجتس مستطيلة (خاصة الصور)",
            "تنفيذ نصف قطر محدد لكل زاوية من زوايا الحاوية",
            "قص الودجتس التابعة التي قد تتجاوز حاوية مستديرة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "083",
    difficulty: .basic,
    categories: [.flutterBasics, .ui],
    type: .practical,
    tags: ["intermediate", "richtext", "textspan", "styling"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is RichText?",
        answer: [
          StringContent(
            "RichText is a widget that displays text with multiple different styles in a single widget. It uses TextSpan to define different styled segments of text.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Display multiple text styles in one widget",
              "Uses TextSpan tree structure",
              "Supports nested TextSpans",
              "Can have clickable text segments with GestureRecognizer",
              "More powerful than Text widget for mixed styling",
            ],
          ),
          StringContent(
            "RichText is essential for cases like 'I agree to the Terms and Conditions' where 'Terms and Conditions' should be styled differently and clickable. It's more flexible than using multiple Text widgets.",
          ),
        ],
        notes: [
          "Text.rich() is a convenient wrapper around RichText",
          "TextSpan can be nested for complex styling",
          "Use TapGestureRecognizer for clickable text segments",
        ],
        bestUse:
            "Use when you need different text styles in one line (colored words, bold portions, clickable links). Common in terms agreements, chat messages, or formatted text.",
      ),
      ar: QuestionContent(
        question: "ما هو RichText؟",
        answer: [
          StringContent(
            "RichText هو ودجت يعرض نصًا مع أنماط متعددة مختلفة في ودجت واحد. يستخدم TextSpan لتعريف أجزاء نصية مختلفة الأنماط.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "عرض أنماط نصية متعددة في ودجت واحد",
              "يستخدم هيكل شجرة TextSpan",
              "يدعم TextSpans متداخلة",
              "يمكن أن يكون لديه أجزاء نصية قابلة للنقر مع GestureRecognizer",
              "أقوى من ودجت Text للتنسيق المختلط",
            ],
          ),
          StringContent(
            "RichText أساسي لحالات مثل 'أوافق على الشروط والأحكام' حيث يجب أن تكون 'الشروط والأحكام' منسقة بشكل مختلف وقابلة للنقر. إنه أكثر مرونة من استخدام ودجتس Text متعددة.",
          ),
        ],
        notes: [
          "Text.rich() هو غلاف مريح حول RichText",
          "يمكن تداخل TextSpan للتنسيق المعقد",
          "استخدم TapGestureRecognizer لأجزاء نص قابلة للنقر",
        ],
        bestUse:
            "استخدمه عندما تحتاج أنماط نصية مختلفة في سطر واحد (كلمات ملونة، أجزاء غامقة، روابط قابلة للنقر). شائع في اتفاقيات الشروط أو رسائل الدردشة أو النصوص المنسقة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic RichText with different styles
RichText(
  text: TextSpan(
    text: 'Hello ',
    style: const TextStyle(color: Colors.black, fontSize: 16),
    children: [
      TextSpan(
        text: 'World',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
      const TextSpan(text: '!'),
    ],
  ),
)

// Clickable text with TapGestureRecognizer
RichText(
  text: TextSpan(
    text: 'I agree to the ',
    style: const TextStyle(color: Colors.black),
    children: [
      TextSpan(
        text: 'Terms and Conditions',
        style: const TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            print('Terms tapped');
          },
      ),
    ],
  ),
)

// Using Text.rich (convenient wrapper)
Text.rich(
  TextSpan(
    text: 'Price: ',
    children: [
      TextSpan(
        text: '\$99.99',
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green,
          fontSize: 20,
        ),
      ),
    ],
  ),
)

// Complex nested styling
RichText(
  text: TextSpan(
    style: const TextStyle(fontSize: 16, color: Colors.black),
    children: [
      const TextSpan(text: 'This is '),
      TextSpan(
        text: 'bold',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      const TextSpan(text: ' and this is '),
      TextSpan(
        text: 'italic',
        style: const TextStyle(fontStyle: FontStyle.italic),
      ),
      const TextSpan(text: ' and this is '),
      TextSpan(
        text: 'colored',
        style: const TextStyle(color: Colors.red),
      ),
    ],
  ),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Multiple text styles in one widget",
        "Supports clickable text segments",
        "More flexible than multiple Text widgets",
        "Nested styling capabilities",
      ],
      ar: [
        "أنماط نصية متعددة في ودجت واحد",
        "يدعم أجزاء نص قابلة للنقر",
        "أكثر مرونة من ودجتس Text متعددة",
        "قدرات تنسيق متداخلة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "More verbose than simple Text widget",
        "Can become complex with many styles",
        "Requires understanding TextSpan structure",
      ],
      ar: [
        "أكثر تفصيلاً من ودجت Text البسيط",
        "قد يصبح معقدًا مع العديد من الأنماط",
        "يتطلب فهم هيكل TextSpan",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use RichText when:",
          value: [
            "Mixing multiple styles (colors, fonts, sizes) in a single paragraph",
            "Adding clickable links or spans within a text block",
            "Creating formatted strings that require high fidelity over standard Text widgets",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم RichText عندما:",
          value: [
            "مزج أنماط متعددة (ألوان، خطوط، أحجام) في فقرة واحدة",
            "إضافة روابط أو أجزاء قابلة للنقر داخل كتلة نصية",
            "إنشاء سلاسل نصية منسقة تتطلب دقة عالية تتجاوز ودجتس Text القياسية",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "084",
    difficulty: .intermediate,
    categories: [.flutterBasics, .ui],
    type: .practical,
    tags: ["intermediate", "layoutbuilder", "responsive", "constraints"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is LayoutBuilder?",
        answer: [
          StringContent(
            "LayoutBuilder is a widget that builds itself based on the parent's constraints. It provides a builder function that receives BoxConstraints, allowing you to create responsive layouts that adapt to available space.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Receives parent constraints in builder function",
              "Builds different widgets based on available space",
              "Essential for responsive design",
              "Access to maxWidth, maxHeight, minWidth, minHeight",
              "Rebuilds when parent constraints change",
            ],
          ),
          StringContent(
            "LayoutBuilder is perfect for creating responsive UIs that change based on available space - for example, showing a grid on tablets but a list on phones, or adjusting column counts based on width.",
          ),
        ],
        notes: [
          "Builder function receives BoxConstraints from parent",
          "Different from MediaQuery which gives screen dimensions",
          "Useful for creating adaptive widgets",
        ],
        bestUse:
            "Use when your widget's layout depends on parent's available space. Essential for responsive designs that adapt to different screen sizes or orientations.",
      ),
      ar: QuestionContent(
        question: "ما هو LayoutBuilder؟",
        answer: [
          StringContent(
            "LayoutBuilder هو ودجت يبني نفسه بناءً على قيود الوالد. يوفر دالة بناء تستقبل BoxConstraints، مما يسمح لك بإنشاء تخطيطات متجاوبة تتكيف مع المساحة المتاحة.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يستقبل قيود الوالد في دالة البناء",
              "يبني ودجتس مختلفة بناءً على المساحة المتاحة",
              "أساسي للتصميم المتجاوب",
              "الوصول إلى maxWidth و maxHeight و minWidth و minHeight",
              "يُعاد بناؤه عندما تتغير قيود الوالد",
            ],
          ),
          StringContent(
            "LayoutBuilder مثالي لإنشاء واجهات متجاوبة تتغير بناءً على المساحة المتاحة - على سبيل المثال، عرض شبكة على الأجهزة اللوحية ولكن قائمة على الهواتف، أو تعديل عدد الأعمدة بناءً على العرض.",
          ),
        ],
        notes: [
          "دالة البناء تستقبل BoxConstraints من الوالد",
          "مختلف عن MediaQuery الذي يعطي أبعاد الشاشة",
          "مفيد لإنشاء ودجتس تكيفية",
        ],
        bestUse:
            "استخدمه عندما يعتمد تخطيط ودجتك على المساحة المتاحة للوالد. أساسي للتصاميم المتجاوبة التي تتكيف مع أحجام أو اتجاهات شاشات مختلفة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Responsive layout based on width
LayoutBuilder(
  builder: (context, constraints) {
    if (constraints.maxWidth > 600) {
      // Tablet/Desktop layout
      return Row(
        children: [
          Expanded(child: Sidebar()),
          Expanded(flex: 2, child: MainContent()),
        ],
      );
    } else {
      // Mobile layout
      return Column(
        children: [
          MainContent(),
        ],
      );
    }
  },
)

// Adaptive grid column count
LayoutBuilder(
  builder: (context, constraints) {
    final width = constraints.maxWidth;
    int columnCount;
    
    if (width > 900) {
      columnCount = 4;
    } else if (width > 600) {
      columnCount = 3;
    } else {
      columnCount = 2;
    }
    
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columnCount,
      ),
      itemBuilder: (context, index) => ItemWidget(),
    );
  },
)

// Adjust font size based on available space
LayoutBuilder(
  builder: (context, constraints) {
    final fontSize = constraints.maxWidth * 0.05;
    return Text(
      'Responsive Text',
      style: TextStyle(fontSize: fontSize),
    );
  },
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Creates truly responsive layouts",
        "Access to parent constraints",
        "Essential for adaptive UIs",
        "No need for hardcoded breakpoints",
      ],
      ar: [
        "ينشئ تخطيطات متجاوبة حقًا",
        "الوصول إلى قيود الوالد",
        "أساسي لواجهات المستخدم التكيفية",
        "لا حاجة لنقاط توقف مشفرة بشكل ثابت",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Adds extra build function",
        "Can make code more complex",
        "May rebuild frequently if constraints change often",
      ],
      ar: [
        "يضيف دالة بناء إضافية",
        "قد يجعل الكود أكثر تعقيدًا",
        "قد يُعاد بناؤه بشكل متكرر إذا تغيرت القيود كثيرًا",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use LayoutBuilder when:",
          value: [
            "Implementing truly responsive layouts that adapt based on parent width/height",
            "Creating adaptive widgets that show different UIs on mobile vs tablet",
            "Adjusting specific properties like column counts based on available space",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم LayoutBuilder عندما:",
          value: [
            "تنفيذ تخطيطات متجاوبة حقًا تتكيف بناءً على عرض/ارتفاع الأب",
            "إنشاء ودجتس تكيفية تعرض واجهات مستخدم مختلفة على الهاتف مقابل الجهاز اللوحي",
            "تعديل خصائص معينة مثل عدد الأعمدة بناءً على المساحة المتاحة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "085",
    difficulty: .basic,
    categories: [.flutterBasics, .ui, .performance],
    type: .theoretical,
    tags: ["intermediate", "inspector", "debugging", "devtools"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is Flutter Inspector?",
        answer: [
          StringContent(
            "Flutter Inspector is a powerful debugging tool in Flutter DevTools that visualizes and explores the widget tree. It helps developers understand, debug, and optimize their UI.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Visualize widget tree hierarchy",
              "Inspect widget properties and state",
              "Toggle debug paint (shows widget boundaries, padding, alignment)",
              "Performance overlay for FPS and frame rendering times",
              "Identify unnecessary rebuilds and performance issues",
              "Highlight widgets on device/emulator",
            ],
          ),
          StringContent(
            "Flutter Inspector is essential for debugging layout issues, understanding widget structure, and identifying performance bottlenecks. It's available in VS Code, Android Studio, and as a web-based tool in Flutter DevTools.",
          ),
        ],
        notes: [
          "Access via Flutter DevTools or IDE extensions",
          "Debug paint shows visual debugging information",
          "Can slow down app in debug mode",
        ],
        bestUse:
            "Use to debug layout issues, inspect widget properties, identify performance problems, and understand widget hierarchy. Essential tool for Flutter development.",
      ),
      ar: QuestionContent(
        question: "ما هو Flutter Inspector؟",
        answer: [
          StringContent(
            "Flutter Inspector هو أداة تصحيح قوية في Flutter DevTools تصور وتستكشف شجرة الودجتس. تساعد المطورين على فهم وتصحيح وتحسين واجهة المستخدم الخاصة بهم.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "تصور تسلسل هرمي لشجرة الودجتس",
              "فحص خصائص وحالة الودجتس",
              "تبديل رسم التصحيح (يظهر حدود الودجتس، الحشو، المحاذاة)",
              "تراكب الأداء لـ FPS وأوقات عرض الإطار",
              "تحديد إعادة البناء غير الضرورية ومشاكل الأداء",
              "تسليط الضوء على الودجتس على الجهاز/المحاكي",
            ],
          ),
          StringContent(
            "Flutter Inspector أساسي لتصحيح مشاكل التخطيط، فهم هيكل الودجتس، وتحديد اختناقات الأداء. متاح في VS Code و Android Studio وكأداة على الويب في Flutter DevTools.",
          ),
        ],
        notes: [
          "الوصول عبر Flutter DevTools أو ملحقات IDE",
          "رسم التصحيح يظهر معلومات تصحيح مرئية",
          "قد يبطئ التطبيق في وضع التصحيح",
        ],
        bestUse:
            "استخدمه لتصحيح مشاكل التخطيط، فحص خصائص الودجتس، تحديد مشاكل الأداء، وفهم تسلسل الودجتس الهرمي. أداة أساسية لتطوير Flutter.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// No code needed - it's a visual tool

// However, you can enable debug flags programmatically:

void main() {
  // Enable debug paint (shows widget boundaries)
  debugPaintSizeEnabled = true;
  
  // Show baseline (text baseline)
  debugPaintBaselinesEnabled = true;
  
  // Show layer boundaries
  debugPaintLayerBordersEnabled = true;
  
  // Show pointer (touch/click) positions
  debugPaintPointersEnabled = true;
  
  runApp(const MyApp());
}

// Performance overlay in MaterialApp
MaterialApp(
  showPerformanceOverlay: true, // Shows FPS
  home: HomeScreen(),
)

// Semantics debugger
MaterialApp(
  showSemanticsDebugger: true, // Shows accessibility tree
  home: HomeScreen(),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Visual debugging of widget tree",
        "Identify layout and performance issues",
        "Interactive widget inspection",
        "Essential for Flutter development",
      ],
      ar: [
        "تصحيح مرئي لشجرة الودجتس",
        "تحديد مشاكل التخطيط والأداء",
        "فحص ودجتس تفاعلي",
        "أساسي لتطوير Flutter",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Only available in debug mode",
        "Can slow down app performance",
        "Learning curve for beginners",
      ],
      ar: [
        "متاح فقط في وضع التصحيح",
        "قد يبطئ أداء التطبيق",
        "منحنى تعلم للمبتدئين",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Flutter Inspector when:",
          value: [
            "Debugging layout issues and understanding widget bounds",
            "Identifying performance bottlenecks and unnecessary rebuilds",
            "Exploring the widget tree structure and property values",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Flutter Inspector عندما:",
          value: [
            "تصحيح مشاكل التخطيط وفهم حدود الودجت",
            "تحديد اختناقات الأداء وإعادات البناء غير الضرورية",
            "استكشاف هيكل شجرة الودجتس وقيم الخصائص",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "086",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .performance],
    type: .theoretical,
    tags: ["basic", "debug", "release", "profile", "modes"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is Debug Mode vs Release Mode?",
        answer: [
          StringContent(
            "Flutter has three build modes: Debug, Profile, and Release. Each is optimized for different purposes during development and production.",
          ),
          OrderedListContent(
            title: "Build modes:",
            value: [
              "Debug Mode: For development. Enables hot reload, assertions, debugging tools. Slow performance, large app size. Use during development.",
              "Profile Mode: For performance testing. Optimized like release but includes profiling tools. Use to measure real performance.",
              "Release Mode: For production. Fully optimized, no debugging tools, smallest size, best performance. Use for app store deployment.",
            ],
          ),
          StringContent(
            "Debug mode prioritizes developer experience with hot reload and debugging. Release mode prioritizes performance and app size for end users. Never ship debug builds to production!",
          ),
        ],
        notes: [
          "Debug: flutter run (default)",
          "Profile: flutter run --profile",
          "Release: flutter run --release or flutter build",
        ],
        bestUse:
            "Debug for development, Profile for performance testing, Release for production deployment.",
      ),
      ar: QuestionContent(
        question: "ما الفرق بين Debug Mode و Release Mode؟",
        answer: [
          StringContent(
            "لدى Flutter ثلاثة أوضاع بناء: Debug و Profile و Release. كل منها محسّن لأغراض مختلفة أثناء التطوير والإنتاج.",
          ),
          OrderedListContent(
            title: "أوضاع البناء:",
            value: [
              "Debug Mode: للتطوير. يمكّن إعادة التحميل السريع، التأكيدات، أدوات التصحيح. أداء بطيء، حجم تطبيق كبير. استخدمه أثناء التطوير.",
              "Profile Mode: لاختبار الأداء. محسّن مثل release لكنه يتضمن أدوات المراقبة. استخدمه لقياس الأداء الحقيقي.",
              "Release Mode: للإنتاج. محسّن بالكامل، بدون أدوات تصحيح، أصغر حجم، أفضل أداء. استخدمه لنشر متجر التطبيقات.",
            ],
          ),
          StringContent(
            "وضع Debug يعطي الأولوية لتجربة المطور مع إعادة التحميل السريع والتصحيح. وضع Release يعطي الأولوية للأداء وحجم التطبيق للمستخدمين النهائيين. لا تشحن أبدًا إصدارات debug إلى الإنتاج!",
          ),
        ],
        notes: [
          "Debug: flutter run (افتراضي)",
          "Profile: flutter run --profile",
          "Release: flutter run --release أو flutter build",
        ],
        bestUse: "Debug للتطوير، Profile لاختبار الأداء، Release لنشر الإنتاج.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Check current mode in code
bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true); // assert only runs in debug
  return inDebugMode;
}

// Different behavior based on mode
void main() {
  if (kDebugMode) {
    print('Running in debug mode');
  } else if (kProfileMode) {
    print('Running in profile mode');
  } else if (kReleaseMode) {
    print('Running in release mode');
  }
  
  runApp(const MyApp());
}

// Conditional imports
import 'package:flutter/foundation.dart';

Widget build(BuildContext context) {
  if (kDebugMode) {
    return DebugBanner(child: MyWidget());
  }
  return MyWidget();
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Debug: Hot reload, debugging tools, detailed error messages",
        "Profile: Accurate performance metrics",
        "Release: Optimized performance, small size",
      ],
      ar: [
        "Debug: إعادة التحميل السريع، أدوات التصحيح، رسائل خطأ تفصيلية",
        "Profile: مقاييس أداء دقيقة",
        "Release: أداء محسّن، حجم صغير",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Debug mode is slow",
        "Release mode can't be debugged",
        "Performance testing must only be done in Profile/Release mode",
      ],
      ar: [
        "وضع التصحيح بطيء",
        "وضع الإصدار لا يمكن تصحيحه",
        "يجب إجراء اختبار الأداء فقط في وضع الملف الشخصي أو الإصدار",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Understand build modes when:",
          value: [
            "Developing and debugging logic (Debug mode)",
            "Testing application performance (Profile mode)",
            "Deploying the final application to users (Release mode)",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "افهم أوضاع البناء عندما:",
          value: [
            "تطوير وتصحيح المنطق (وضع Debug)",
            "اختبار أداء التطبيق (وضع Profile)",
            "نشر التطبيق النهائي للمستخدمين (وضع Release)",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "087",
    difficulty: .basic,
    categories: [.flutterBasics, .ui],
    type: .practical,
    tags: ["intermediate", "lifecycle", "initstate", "statefulwidget"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "Explain the initState lifecycle method.",
        answer: [
          StringContent(
            "initState is a lifecycle method in StatefulWidget that is called once when the State object is first created. It's the earliest point where you can initialize data that depends on the widget's context or configuration.",
          ),
          UnorderedListContent(
            title: "Key characteristics:",
            value: [
              "Called exactly once when State is inserted into the widget tree",
              "Called before build() method",
              "Cannot use BuildContext to access InheritedWidgets here",
              "Perfect for initializing controllers, animations, subscriptions",
              "Must call super.initState() first",
            ],
          ),
          StringContent(
            "Common uses include initializing AnimationControllers, subscribing to streams, loading initial data, and setting up listeners. Always remember to dispose resources in dispose() method.",
          ),
        ],
        notes: [
          "Called only once in the widget's lifetime",
          "Must call super.initState() as first line",
          "Cannot call setState() during initState (no effect)",
        ],
        bestUse:
            "Initialize controllers, load initial data, subscribe to streams, set up listeners. Any one-time setup that needs widget properties.",
      ),
      ar: QuestionContent(
        question: "اشرح دالة دورة الحياة initState.",
        answer: [
          StringContent(
            "initState هي دالة دورة حياة في StatefulWidget تُستدعى مرة واحدة عند إنشاء كائن State لأول مرة. إنها أقرب نقطة حيث يمكنك تهيئة البيانات التي تعتمد على سياق أو تكوين الودجت.",
          ),
          UnorderedListContent(
            title: "الخصائص الرئيسية:",
            value: [
              "تُستدعى مرة واحدة بالضبط عند إدراج State في شجرة الودجتس",
              "تُستدعى قبل دالة ()build",
              "لا يمكن استخدام BuildContext للوصول إلى InheritedWidgets هنا",
              "مثالية لتهيئة المتحكمات، الرسوم المتحركة، الاشتراكات",
              "يجب استدعاء super.initState() أولاً",
            ],
          ),
          StringContent(
            "الاستخدامات الشائعة تشمل تهيئة AnimationControllers، الاشتراك في التدفقات، تحميل البيانات الأولية، وإعداد المستمعين. تذكر دائمًا التخلص من الموارد في دالة dispose().",
          ),
        ],
        notes: [
          "تُستدعى مرة واحدة فقط في عمر الودجت",
          "يجب استدعاء super.initState() كسطر أول",
          "لا يمكن استدعاء setState() أثناء initState (لا تأثير)",
        ],
        bestUse:
            "تهيئة المتحكمات، تحميل البيانات الأولية، الاشتراك في التدفقات، إعداد المستمعين. أي إعداد لمرة واحدة يحتاج خصائص الودجت.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""class MyWidget extends StatefulWidget {
  final String title;
  const MyWidget({super.key, required this.title});
  
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late TextEditingController _controller;
  late AnimationController _animationController;
  int _counter = 0;
  
  @override
  void initState() {
    super.initState(); // MUST be first
    
    // Initialize controllers
    _controller = TextEditingController();
    
    // Access widget properties
    _counter = widget.title.length;
    
    // Set up listeners
    _controller.addListener(_onTextChanged);
    
    // Load initial data
    _loadData();
  }
  
  void _onTextChanged() {
    print('Text changed: \${_controller.text}');
  }
  
  Future<void> _loadData() async {
    // Load data from API or database
    final data = await fetchData();
    setState(() {
      // Update state with loaded data
    });
  }
  
  @override
  void dispose() {
    // Clean up resources
    _controller.dispose();
    _animationController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Perfect for one-time initialization",
        "Access to widget properties",
        "Runs before first build",
        "Clean separation of setup logic",
      ],
      ar: [
        "مثالي للتهيئة لمرة واحدة",
        "الوصول إلى خصائص الودجت",
        "يعمل قبل البناء الأول",
        "فصل نظيف لمنطق الإعداد",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Only called once - can't rely on it for value updates",
        "Too much logic here can slow down app start",
        "BuildContext might not be fully available for some operations",
      ],
      ar: [
        "تُستدعى مرة واحدة فقط - لا يمكن الاعتماد عليها لتحديث القيم",
        "الكثير من المنطق هنا قد يبطئ بدء تشغيل التطبيق",
        "قد لا يكون BuildContext متاحًا بالكامل لبعض العمليات",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use initState when:",
          value: [
            "Initializing variables that depend on the widget's location in the tree",
            "Subscribing to Streams or base-level ChangeNotifiers",
            "Starting animations or setting up controllers",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم initState عندما:",
          value: [
            "تهيئة المتغيرات التي تعتمد على موقع الودجت في الشجرة",
            "الاشتراك في Streams أو ChangeNotifiers الأساسية",
            "بدء الرسوم المتحركة أو إعداد وحدات التحكم",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "088",
    difficulty: .intermediate,
    categories: [.flutterBasics, .ui],
    type: .practical,
    tags: ["intermediate", "lifecycle", "didupdatewidget", "statefulwidget"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "Explain didUpdateWidget.",
        answer: [
          StringContent(
            "didUpdateWidget is a lifecycle method called whenever the parent widget rebuilds and passes new configuration to this widget. It's called when the widget's configuration changes but the State object persists.",
          ),
          UnorderedListContent(
            title: "Key characteristics:",
            value: [
              "Called when parent rebuilds with different widget configuration",
              "Receives the old widget as parameter for comparison",
              "Called before build() method",
              "State object persists, but widget properties change",
              "Perfect for responding to property changes",
            ],
          ),
          StringContent(
            "Common use cases include updating controllers when widget properties change, restarting animations, or refreshing data when configuration updates. Always call super.didUpdateWidget(oldWidget) first.",
          ),
        ],
        notes: [
          "Must call super.didUpdateWidget(oldWidget) first",
          "Compare oldWidget with widget to detect changes",
          "Can call setState() to trigger rebuild",
        ],
        bestUse:
            "Use when you need to respond to widget property changes. Update controllers, restart animations, or refresh data when parent passes new configuration.",
      ),
      ar: QuestionContent(
        question: "اشرح didUpdateWidget.",
        answer: [
          StringContent(
            "didUpdateWidget هي دالة دورة حياة تُستدعى كلما أعاد الودجت الوالد البناء ومرر تكوينًا جديدًا لهذا الودجت. تُستدعى عندما يتغير تكوين الودجت لكن كائن State يستمر.",
          ),
          UnorderedListContent(
            title: "الخصائص الرئيسية:",
            value: [
              "تُستدعى عندما يُعيد الوالد البناء بتكوين ودجت مختلف",
              "تستقبل الودجت القديم كمعامل للمقارنة",
              "تُستدعى قبل دالة ()build",
              "كائن State يستمر، لكن خصائص الودجت تتغير",
              "مثالية للاستجابة لتغييرات الخصائص",
            ],
          ),
          StringContent(
            "حالات الاستخدام الشائعة تشمل تحديث المتحكمات عندما تتغير خصائص الودجت، إعادة تشغيل الرسوم المتحركة، أو تحديث البيانات عندما يتحدث التكوين. استدع دائمًا super.didUpdateWidget(oldWidget) أولاً.",
          ),
        ],
        notes: [
          "يجب استدعاء super.didUpdateWidget(oldWidget) أولاً",
          "قارن oldWidget مع widget لاكتشاف التغييرات",
          "يمكن استدعاء setState() لتفعيل إعادة البناء",
        ],
        bestUse:
            "استخدمها عندما تحتاج للاستجابة لتغييرات خصائص الودجت. حدّث المتحكمات، أعد تشغيل الرسوم المتحركة، أو حدّث البيانات عندما يمرر الوالد تكوينًا جديدًا.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""class CounterWidget extends StatefulWidget {
  final int initialCount;
  final String label;
  
  const CounterWidget({
    super.key,
    required this.initialCount,
    required this.label,
  });
  
  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  late int _count;
  late TextEditingController _controller;
  
  @override
  void initState() {
    super.initState();
    _count = widget.initialCount;
    _controller = TextEditingController(text: widget.label);
  }
  
  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget); // MUST be first
    
    // Check if initialCount changed
    if (oldWidget.initialCount != widget.initialCount) {
      setState(() {
        _count = widget.initialCount;
      });
    }
    
    // Check if label changed
    if (oldWidget.label != widget.label) {
      _controller.text = widget.label;
    }
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: \$_count'),
        TextField(controller: _controller),
      ],
    );
  }
}"""),
      StrCodeBlock.good("""// Animation example
class AnimatedBox extends StatefulWidget {
  final Color color;
  final double size;
  
  const AnimatedBox({super.key, required this.color, required this.size});
  
  @override
  State<AnimatedBox> createState() => _AnimatedBoxState();
}

class _AnimatedBoxState extends State<AnimatedBox> 
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
  }
  
  @override
  void didUpdateWidget(AnimatedBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    
    // Restart animation if size changed significantly
    if ((oldWidget.size - widget.size).abs() > 50) {
      _controller.reset();
      _controller.forward();
    }
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          width: widget.size,
          height: widget.size,
          color: widget.color,
        );
      },
    );
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Respond to widget configuration changes",
        "Update state based on new properties",
        "Maintain State object across rebuilds",
        "Access to both old and new widget",
      ],
      ar: [
        "الاستجابة لتغييرات تكوين الودجت",
        "تحديث الحالة بناءً على خصائص جديدة",
        "الحفاظ على كائن State عبر إعادات البناء",
        "الوصول إلى كل من الودجت القديم والجديد",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can be called frequently",
        "Logic here must be efficient",
        "Often forgotten by developers leading to bugs",
      ],
      ar: [
        "قد تُستدعى بشكل متكرر",
        "يجب أن يكون المنطق هنا فعالاً",
        "غالبًا ما ينساه المطورون مما يؤدي إلى أخطاء",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use didUpdateWidget when:",
          value: [
            "Updating internal state when the parent widget changes its configuration",
            "Restarting animations or re-fetching data based on new widget properties",
            "Comparing old vs new widget fields to decide whether to trigger side effects",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم didUpdateWidget عندما:",
          value: [
            "تحديث الحالة الداخلية عندما يغير الودجت الأب تكوينه",
            "إعادة بدء الرسوم المتحركة أو إعادة جلب البيانات بناءً على خصائص الودجت الجديدة",
            "مقارنة حقول الودجت القديمة مقابل الجديدة لتقرير ما إذا كان سيتم تشغيل آثار جانبية",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "089",
    difficulty: .basic,
    categories: [.flutterBasics, .ui, .performance],
    type: .practical,
    tags: ["intermediate", "lifecycle", "dispose", "cleanup", "memory"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is dispose() used for?",
        answer: [
          StringContent(
            "dispose() is a lifecycle method called when the State object is permanently removed from the widget tree. It's the place to clean up resources and prevent memory leaks.",
          ),
          UnorderedListContent(
            title: "Common cleanup tasks:",
            value: [
              "Dispose controllers (TextEditingController, AnimationController)",
              "Cancel streams and subscriptions",
              "Remove listeners",
              "Close database connections",
              "Cancel timers and futures",
              "Release any other resources",
            ],
          ),
          StringContent(
            "CRITICAL: Always dispose resources to prevent memory leaks. For every resource initialized in initState, there should be corresponding cleanup in dispose. Always call super.dispose() as the LAST statement.",
          ),
        ],
        notes: [
          "Call super.dispose() as LAST line (opposite of initState)",
          "Called only once when State is permanently removed",
          "Failure to dispose causes memory leaks",
        ],
        bestUse:
            "Clean up all resources: controllers, streams, listeners, timers. Essential for preventing memory leaks and ensuring app stability.",
      ),
      ar: QuestionContent(
        question: "فيما تُستخدم دالة dispose()؟",
        answer: [
          StringContent(
            "dispose() هي دالة دورة حياة تُستدعى عندما يُزال كائن State نهائيًا من شجرة الودجتس. إنه المكان لتنظيف الموارد ومنع تسريبات الذاكرة.",
          ),
          UnorderedListContent(
            title: "مهام التنظيف الشائعة:",
            value: [
              "التخلص من المتحكمات (TextEditingController، AnimationController)",
              "إلغاء التدفقات والاشتراكات",
              "إزالة المستمعين",
              "إغلاق اتصالات قاعدة البيانات",
              "إلغاء المؤقتات والـ futures",
              "تحرير أي موارد أخرى",
            ],
          ),
          StringContent(
            "حرج: تخلص دائمًا من الموارد لمنع تسريبات الذاكرة. لكل مورد مهيأ في initState، يجب أن يكون هناك تنظيف مطابق في dispose. استدع دائمًا super.dispose() كآخر تعليمة.",
          ),
        ],
        notes: [
          "استدع super.dispose() كآخر سطر (عكس initState)",
          "تُستدعى مرة واحدة فقط عند إزالة State نهائيًا",
          "الفشل في التخلص يسبب تسريبات ذاكرة",
        ],
        bestUse:
            "نظف جميع الموارد: المتحكمات، التدفقات، المستمعين، المؤقتات. أساسي لمنع تسريبات الذاكرة وضمان استقرار التطبيق.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""class MyWidget extends StatefulWidget {
  const MyWidget({super.key});
  
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> 
    with SingleTickerProviderStateMixin {
  late TextEditingController _textController;
  late AnimationController _animationController;
  late ScrollController _scrollController;
  StreamSubscription? _subscription;
  Timer? _timer;
  
  @override
  void initState() {
    super.initState();
    
    // Initialize resources
    _textController = TextEditingController();
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _scrollController = ScrollController();
    
    // Add listeners
    _textController.addListener(_onTextChanged);
    _scrollController.addListener(_onScroll);
    
    // Subscribe to stream
    _subscription = someStream.listen(_onData);
    
    // Start timer
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      _onTimer,
    );
  }
  
  void _onTextChanged() {}
  void _onScroll() {}
  void _onData(dynamic data) {}
  void _onTimer(Timer timer) {}
  
  @override
  void dispose() {
    // Clean up ALL resources
    _textController.dispose();
    _animationController.dispose();
    _scrollController.dispose();
    
    // Cancel subscriptions
    _subscription?.cancel();
    
    // Cancel timers
    _timer?.cancel();
    
    // Call super LAST
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}"""),
      StrCodeBlock.bad("""// BAD - Memory leak!
class BadWidget extends StatefulWidget {
  const BadWidget({super.key});
  
  @override
  State<BadWidget> createState() => _BadWidgetState();
}

class _BadWidgetState extends State<BadWidget> {
  late TextEditingController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }
  
  // Missing dispose() - MEMORY LEAK!
  
  @override
  Widget build(BuildContext context) {
    return TextField(controller: _controller);
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Prevents memory leaks",
        "Clean resource management",
        "Ensures app stability",
        "Required for proper lifecycle management",
      ],
      ar: [
        "يمنع تسريبات الذاكرة",
        "إدارة موارد نظيفة",
        "يضمن استقرار التطبيق",
        "مطلوب لإدارة دورة حياة صحيحة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Failure to call leads to memory leaks",
        "Once disposed, the state cannot be used again",
        "Must be careful not to call setState after dispose",
      ],
      ar: [
        "الفشل في استدعائها يؤدي إلى تسرب الذاكرة",
        "بمجرد التخلص منها، لا يمكن استخدام الحالة مرة أخرى",
        "يجب الحذر من عدم استدعاء setState بعد dispose",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use dispose when:",
          value: [
            "Canceling active Stream subscriptions",
            "Closing AnimationControllers or VideoControllers",
            "Cleaning up any listeners or resources to prevent memory leaks",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم dispose عندما:",
          value: [
            "إلغاء اشتراكات Streams النشطة",
            "إغلاق AnimationControllers أو VideoControllers",
            "تنظيف أي مستمعين أو موارد لمنع تسرب الذاكرة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "090",
    difficulty: .basic,
    categories: [.basic, .dartBasics],
    type: .theoretical,
    tags: ["basic", "async", "sync", "programming", "dart"],
    content: LocalizedValue(
      en: QuestionContent(
        question:
            "What is the difference between asynchronous and synchronous programming in Dart?",
        answer: [
          StringContent(
            "Synchronous and asynchronous programming are two different execution models in Dart.",
          ),
          UnorderedListContent(
            title: "Synchronous Programming:",
            value: [
              "Code executes line by line in order",
              "Each operation must complete before the next starts",
              "Blocks execution until operation finishes",
              "Simple and predictable flow",
              "Can freeze UI if long operations run on main thread",
            ],
          ),
          UnorderedListContent(
            title: "Asynchronous Programming:",
            value: [
              "Operations can run concurrently",
              "Doesn't block execution - continues to next line",
              "Uses Future, async/await, and Streams",
              "Essential for I/O operations (network, file, database)",
              "Keeps UI responsive during long operations",
            ],
          ),
          StringContent(
            "In Flutter, all UI runs on the main thread. Long synchronous operations freeze the app. Use asynchronous programming for network calls, file I/O, database queries, and any operation that takes time.",
          ),
        ],
        notes: [
          "Synchronous: blocks until complete",
          "Asynchronous: returns immediately, completes later",
          "Use async for any I/O or time-consuming operations",
        ],
        bestUse:
            "Synchronous for quick calculations. Asynchronous for network, database, file operations, or anything that takes time.",
      ),
      ar: QuestionContent(
        question: "ما الفرق بين البرمجة المتزامنة وغير المتزامنة في Dart؟",
        answer: [
          StringContent(
            "البرمجة المتزامنة وغير المتزامنة هما نموذجان تنفيذ مختلفان في Dart.",
          ),
          UnorderedListContent(
            title: "البرمجة المتزامنة:",
            value: [
              "ينفذ الكود سطرًا تلو الآخر بالترتيب",
              "يجب أن تكتمل كل عملية قبل بدء التالية",
              "يحجب التنفيذ حتى تنتهي العملية",
              "تدفق بسيط ومتوقع",
              "قد يجمد واجهة المستخدم إذا عملت عمليات طويلة على الخيط الرئيسي",
            ],
          ),
          UnorderedListContent(
            title: "البرمجة غير المتزامنة:",
            value: [
              "يمكن أن تعمل العمليات بشكل متزامن",
              "لا يحجب التنفيذ - يستمر إلى السطر التالي",
              "يستخدم Future و async/await و Streams",
              "أساسي لعمليات الإدخال/الإخراج (الشبكة، الملف، قاعدة البيانات)",
              "يحافظ على استجابة واجهة المستخدم أثناء العمليات الطويلة",
            ],
          ),
          StringContent(
            "في Flutter، تعمل جميع واجهة المستخدم على الخيط الرئيسي. العمليات المتزامنة الطويلة تجمد التطبيق. استخدم البرمجة غير المتزامنة لاستدعاءات الشبكة، إدخال/إخراج الملفات، استعلامات قاعدة البيانات، وأي عملية تستغرق وقتًا.",
          ),
        ],
        notes: [
          "المتزامن: يحجب حتى يكتمل",
          "غير المتزامن: يعود فورًا، يكتمل لاحقًا",
          "استخدم async لأي عمليات إدخال/إخراج أو تستغرق وقتًا",
        ],
        bestUse:
            "المتزامن للحسابات السريعة. غير المتزامن للشبكة، قاعدة البيانات، عمليات الملفات، أو أي شيء يستغرق وقتًا.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Synchronous - blocks execution
void synchronousExample() {
  print('Start');
  
  // This blocks for 2 seconds
  sleep(Duration(seconds: 2));
  
  print('End'); // Only prints after 2 seconds
}

// Asynchronous - doesn't block
Future<void> asynchronousExample() async {
  print('Start');
  
  // This doesn't block - continues immediately
  await Future.delayed(Duration(seconds: 2));
  
  print('End'); // Prints after 2 seconds, but doesn't block other code
}

// Real-world example
// Synchronous - BAD (freezes UI)
void fetchDataSync() {
  print('Fetching data...');
  // This would freeze the app for 3 seconds
  sleep(Duration(seconds: 3));
  print('Data fetched');
}

// Asynchronous - GOOD (keeps UI responsive)
Future<void> fetchDataAsync() async {
  print('Fetching data...');
  // UI remains responsive during this wait
  await Future.delayed(Duration(seconds: 3));
  print('Data fetched');
}

// Network call example
// Synchronous approach (DON'T DO THIS)
String getData() {
  // This would block the entire app
  return http.get('https://api.example.com').body;
}

// Asynchronous approach (CORRECT)
Future<String> getDataAsync() async {
  final response = await http.get(Uri.parse('https://api.example.com'));
  return response.body;
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Synchronous: Simple, predictable, easy to debug",
        "Asynchronous: Non-blocking, keeps UI responsive, efficient",
      ],
      ar: [
        "المتزامن: بسيط، متوقع، سهل التصحيح",
        "غير المتزامن: غير محجوب، يحافظ على استجابة واجهة المستخدم، فعال",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Synchronous: Blocks execution, can freeze UI",
        "Asynchronous: More complex, harder to debug, error handling complexity",
      ],
      ar: [
        "المتزامن: يحجب التنفيذ، قد يجمد واجهة المستخدم",
        "غير المتزامن: أكثر تعقيدًا، أصعب للتصحيح، تعقيد معالجة الأخطاء",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use asynchronous programming when:",
          value: [
            "Performing I/O operations (network requests, file access, database queries)",
            "Running long-running computations that would otherwise block the UI",
            "Handling user input events that might take time to process",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم البرمجة غير المتزامنة عندما:",
          value: [
            "إجراء عمليات الإدخال/الإخراج (طلبات الشبكة، الوصول إلى الملفات، استعلامات قاعدة البيانات)",
            "تشغيل عمليات حسابية طويلة الأمد قد تحجب واجهة المستخدم",
            "التعامل مع أحداث إدخال المستخدم التي قد تستغرق وقتًا للمعالجة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "091",
    difficulty: .intermediate,
    categories: [.dartBasics],
    type: .practical,
    tags: ["intermediate", "future", "error", "async", "exception"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "How do you handle errors in a Future?",
        answer: [
          StringContent(
            "There are multiple ways to handle errors in Futures in Dart: try-catch with async/await, catchError() method, and onError callback.",
          ),
          OrderedListContent(
            title: "Error handling approaches:",
            value: [
              "try-catch with async/await: Most readable and recommended. Wrap await in try-catch block.",
              "catchError() method: Chain .catchError() to the Future. Useful for specific error types.",
              "then() with onError: Use then() for success and provide onError callback.",
              "whenComplete(): Like finally - runs regardless of success or error.",
            ],
          ),
          StringContent(
            "Best practice is to use try-catch with async/await for readability. Always handle errors in Futures to prevent unhandled exceptions and app crashes.",
          ),
        ],
        notes: [
          "Unhandled Future errors can crash your app",
          "try-catch is most readable and maintainable",
          "Can catch specific error types",
        ],
        bestUse:
            "Use try-catch with async/await for most cases. Use catchError for chaining. Always handle errors to prevent crashes.",
      ),
      ar: QuestionContent(
        question: "كيف تتعامل مع الأخطاء في Future؟",
        answer: [
          StringContent(
            "هناك طرق متعددة للتعامل مع الأخطاء في Futures في Dart: try-catch مع async/await، دالة catchError()، واستدعاء onError.",
          ),
          OrderedListContent(
            title: "أساليب معالجة الأخطاء:",
            value: [
              "try-catch مع async/await: الأكثر قابلية للقراءة والموصى بها. لف await في كتلة try-catch.",
              "دالة catchError(): ربط .catchError() بـ Future. مفيد لأنواع أخطاء محددة.",
              "then() مع onError: استخدم then() للنجاح ووفر استدعاء onError.",
              "whenComplete(): مثل finally - يعمل بغض النظر عن النجاح أو الخطأ.",
            ],
          ),
          StringContent(
            "أفضل ممارسة هي استخدام try-catch مع async/await لقابلية القراءة. تعامل دائمًا مع الأخطاء في Futures لمنع الاستثناءات غير المعالجة وأعطال التطبيق.",
          ),
        ],
        notes: [
          "أخطاء Future غير المعالجة قد تعطل تطبيقك",
          "try-catch الأكثر قابلية للقراءة والصيانة",
          "يمكن التقاط أنواع أخطاء محددة",
        ],
        bestUse:
            "استخدم try-catch مع async/await لمعظم الحالات. استخدم catchError للربط. تعامل دائمًا مع الأخطاء لمنع الأعطال.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Method 1: try-catch with async/await (RECOMMENDED)
Future<void> fetchUserData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/user'));
    final data = jsonDecode(response.body);
    print('Success: \$data');
  } on SocketException {
    print('No internet connection');
  } on HttpException {
    print('HTTP error occurred');
  } on FormatException {
    print('Invalid response format');
  } catch (e) {
    print('Unexpected error: \$e');
  } finally {
    print('Request completed');
  }
}

// Method 2: catchError()
Future<void> loadData() {
  return http.get(Uri.parse('https://api.example.com/data'))
    .then((response) {
      print('Data loaded: \${response.body}');
    })
    .catchError((error) {
      print('Error occurred: \$error');
    })
    .whenComplete(() {
      print('Request finished');
    });
}

// Method 3: then with onError
Future<void> getData() {
  return http.get(Uri.parse('https://api.example.com/data'))
    .then(
      (response) => print('Success: \${response.body}'),
      onError: (error) => print('Error: \$error'),
    );
}

// Handling specific error types
Future<String> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load data: \${response.statusCode}');
    }
  } catch (e) {
    // Re-throw or handle
    rethrow;
  }
}

// Using in a widget
class DataWidget extends StatefulWidget {
  const DataWidget({super.key});
  
  @override
  State<DataWidget> createState() => _DataWidgetState();
}

class _DataWidgetState extends State<DataWidget> {
  String _status = 'Loading...';
  
  @override
  void initState() {
    super.initState();
    _loadData();
  }
  
  Future<void> _loadData() async {
    try {
      final data = await fetchData();
      setState(() {
        _status = 'Loaded: \$data';
      });
    } catch (e) {
      setState(() {
        _status = 'Error: \$e';
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Text(_status);
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "try-catch: Readable, familiar syntax, supports specific error types",
        "catchError: Good for chaining, non-blocking",
        "Prevents app crashes from unhandled errors",
      ],
      ar: [
        "try-catch: قابل للقراءة، صيغة مألوفة، يدعم أنواع أخطاء محددة",
        "catchError: جيد للربط، غير محجوب",
        "يمنع أعطال التطبيق من الأخطاء غير المعالجة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can make code more verbose",
        "Easy to forget error handling",
        "catchError doesn't catch all error types",
      ],
      ar: [
        "قد يجعل الكود أكثر تفصيلاً",
        "سهل نسيان معالجة الأخطاء",
        "catchError لا يلتقط جميع أنواع الأخطاء",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Handle Future errors when:",
          value: [
            "Making network requests that might fail (e.g., no internet, server error)",
            "Reading/writing files that might not exist or have permission issues",
            "Parsing data that might be malformed",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "تعامل مع أخطاء Future عندما:",
          value: [
            "إجراء طلبات الشبكة التي قد تفشل (مثل، لا يوجد إنترنت، خطأ في الخادم)",
            "قراءة/كتابة الملفات التي قد لا تكون موجودة أو بها مشاكل في الأذونات",
            "تحليل البيانات التي قد تكون مشوهة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "092",
    difficulty: .intermediate,
    categories: [.dartBasics],
    type: .theoretical,
    tags: ["intermediate", "stream", "async", "reactive"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is a Stream?",
        answer: [
          StringContent(
            "A Stream is a sequence of asynchronous events that can emit multiple values over time. Unlike Future (single value), Streams can produce zero, one, or many values.",
          ),
          UnorderedListContent(
            title: "Key characteristics:",
            value: [
              "Emits multiple values over time",
              "Two types: Single-subscription and Broadcast streams",
              "Single-subscription: Only one listener allowed",
              "Broadcast: Multiple listeners can listen simultaneously",
              "Can emit data, errors, and completion events",
              "Used for continuous data: user input, WebSockets, sensors, timers",
            ],
          ),
          StringContent(
            "Streams are essential for reactive programming. Common uses include listening to user input events, real-time data from servers (WebSocket), sensor data, or periodic updates. Use StreamBuilder widget to rebuild UI based on stream data.",
          ),
        ],
        notes: [
          "Future = single value, Stream = multiple values over time",
          "Single-subscription streams can only be listened to once",
          "Broadcast streams support multiple listeners",
        ],
        bestUse:
            "Use for continuous data flow: real-time updates, user events, WebSocket connections, sensor data, periodic timers.",
      ),
      ar: QuestionContent(
        question: "ما هو Stream؟",
        answer: [
          StringContent(
            "Stream هو تسلسل من الأحداث غير المتزامنة يمكن أن يصدر قيمًا متعددة مع مرور الوقت. على عكس Future (قيمة واحدة)، يمكن أن ينتج Streams صفر أو واحدة أو عدة قيم.",
          ),
          UnorderedListContent(
            title: "الخصائص الرئيسية:",
            value: [
              "يصدر قيمًا متعددة مع مرور الوقت",
              "نوعان: تدفقات اشتراك واحد وتدفقات بث",
              "اشتراك واحد: مستمع واحد فقط مسموح",
              "بث: يمكن لعدة مستمعين الاستماع في وقت واحد",
              "يمكن أن يصدر بيانات وأخطاء وأحداث اكتمال",
              "يُستخدم للبيانات المستمرة: إدخال المستخدم، WebSockets، المستشعرات، المؤقتات",
            ],
          ),
          StringContent(
            "Streams أساسية للبرمجة التفاعلية. الاستخدامات الشائعة تشمل الاستماع لأحداث إدخال المستخدم، البيانات في الوقت الفعلي من الخوادم (WebSocket)، بيانات المستشعرات، أو التحديثات الدورية. استخدم ودجت StreamBuilder لإعادة بناء واجهة المستخدم بناءً على بيانات التدفق.",
          ),
        ],
        notes: [
          "Future = قيمة واحدة، Stream = قيم متعددة مع الوقت",
          "تدفقات الاشتراك الواحد يمكن الاستماع إليها مرة واحدة فقط",
          "تدفقات البث تدعم مستمعين متعددين",
        ],
        bestUse:
            "استخدمها لتدفق البيانات المستمر: التحديثات في الوقت الفعلي، أحداث المستخدم، اتصالات WebSocket، بيانات المستشعرات، المؤقتات الدورية.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Creating a simple stream
Stream<int> countStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i; // Emit value to stream
  }
}

// Listening to a stream
void listenToStream() {
  countStream().listen(
    (value) {
      print('Received: \$value');
    },
    onError: (error) {
      print('Error: \$error');
    },
    onDone: () {
      print('Stream completed');
    },
  );
}

// Using StreamBuilder in Flutter
class StreamExample extends StatelessWidget {
  const StreamExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: countStream(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error: \${snapshot.error}');
        }
        
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        
        if (!snapshot.hasData) {
          return const Text('No data');
        }
        
        return Text('Count: \${snapshot.data}');
      },
    );
  }
}

// Broadcast stream (multiple listeners)
void broadcastExample() {
  final controller = StreamController<int>.broadcast();
  
  // First listener
  controller.stream.listen((value) {
    print('Listener 1: \$value');
  });
  
  // Second listener
  controller.stream.listen((value) {
    print('Listener 2: \$value');
  });
  
  // Add data
  controller.add(1);
  controller.add(2);
  controller.add(3);
  
  // Close stream
  controller.close();
}

// Real-world example: Search with debounce
class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});
  
  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final _searchController = TextEditingController();
  final _searchStream = StreamController<String>();
  
  @override
  void initState() {
    super.initState();
    
    // Debounce search
    _searchStream.stream
      .debounceTime(Duration(milliseconds: 500))
      .listen((query) {
        print('Searching for: \$query');
        // Perform search
      });
  }
  
  @override
  void dispose() {
    _searchController.dispose();
    _searchStream.close();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      onChanged: (value) {
        _searchStream.add(value);
      },
    );
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Handle multiple values over time",
        "Perfect for real-time data",
        "Supports reactive programming",
        "Built-in error and completion handling",
      ],
      ar: [
        "التعامل مع قيم متعددة مع الوقت",
        "مثالي للبيانات في الوقت الفعلي",
        "يدعم البرمجة التفاعلية",
        "معالجة أخطاء واكتمال مدمجة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "More complex than Future",
        "Need to manage subscriptions (memory leaks if not closed)",
        "Learning curve for beginners",
        "Can be overkill for simple async operations",
      ],
      ar: [
        "أكثر تعقيدًا من Future",
        "تحتاج لإدارة الاشتراكات (تسريبات ذاكرة إذا لم تُغلق)",
        "منحنى تعلم للمبتدئين",
        "قد يكون مبالغة للعمليات غير المتزامنة البسيطة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Streams when:",
          value: [
            "Receiving multiple data points over time (e.g., location updates)",
            "Handling real-time data from WebSockets or Firebase",
            "Building reactive UIs that respond to continuous event flows",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Streams عندما:",
          value: [
            "تلقي نقاط بيانات متعددة بمرور الوقت (مثل تحديثات الموقع)",
            "التعامل مع البيانات في الوقت الفعلي من WebSockets أو Firebase",
            "بناء واجهات مستخدم تفاعلية تستجيب لتدفقات الأحداث المستمرة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "093",
    difficulty: .basic,
    categories: [.basic, .flutterBasics],
    type: .practical,
    tags: ["basic", "navigation", "push", "pop", "routing"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "Explain Navigator.push and Navigator.pop.",
        answer: [
          StringContent(
            "Navigator.push and Navigator.pop are the fundamental methods for navigating between screens in Flutter. They manage a stack of routes (screens).",
          ),
          UnorderedListContent(
            title: "Navigator.push:",
            value: [
              "Adds a new route (screen) on top of the navigation stack",
              "New screen slides in from the right (Material) or bottom (Cupertino)",
              "Previous screen remains in memory below",
              "Returns a Future that completes when the new route is popped",
            ],
          ),
          UnorderedListContent(
            title: "Navigator.pop:",
            value: [
              "Removes the current route from the top of the stack",
              "Returns to the previous screen",
              "Can pass data back to the previous screen",
              "Automatically called when user taps back button",
            ],
          ),
          StringContent(
            "Navigation in Flutter uses a stack model. Push adds screens, pop removes them. The Navigator automatically handles the back button and platform-specific transitions.",
          ),
        ],
        notes: [
          "Navigator uses a stack (Last In, First Out)",
          "Can pass data between screens using arguments",
          "push returns Future for data from popped screen",
        ],
        bestUse:
            "Use push to navigate to new screen, pop to go back. Essential for all multi-screen Flutter apps.",
      ),
      ar: QuestionContent(
        question: "اشرح Navigator.push و Navigator.pop.",
        answer: [
          StringContent(
            "Navigator.push و Navigator.pop هما الدالتان الأساسيتان للتنقل بين الشاشات في Flutter. يديران مكدس من المسارات (الشاشات).",
          ),
          UnorderedListContent(
            title: "Navigator.push:",
            value: [
              "يضيف مسارًا (شاشة) جديدًا في أعلى مكدس التنقل",
              "تنزلق الشاشة الجديدة من اليمين (Material) أو الأسفل (Cupertino)",
              "تبقى الشاشة السابقة في الذاكرة أسفل",
              "يعيد Future يكتمل عندما يُزال المسار الجديد",
            ],
          ),
          UnorderedListContent(
            title: "Navigator.pop:",
            value: [
              "يزيل المسار الحالي من أعلى المكدس",
              "يعود إلى الشاشة السابقة",
              "يمكن تمرير بيانات إلى الشاشة السابقة",
              "يُستدعى تلقائيًا عندما ينقر المستخدم زر الرجوع",
            ],
          ),
          StringContent(
            "التنقل في Flutter يستخدم نموذج مكدس. Push يضيف شاشات، pop يزيلها. يتعامل Navigator تلقائيًا مع زر الرجوع والانتقالات الخاصة بالمنصة.",
          ),
        ],
        notes: [
          "Navigator يستخدم مكدس (آخر دخول، أول خروج)",
          "يمكن تمرير بيانات بين الشاشات باستخدام المعاملات",
          "push يعيد Future للبيانات من الشاشة المزالة",
        ],
        bestUse:
            "استخدم push للانتقال إلى شاشة جديدة، pop للرجوع. أساسي لجميع تطبيقات Flutter متعددة الشاشات.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic navigation with push
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to details screen
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailsScreen(),
              ),
            );
          },
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}

// Details screen with pop
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Go back to previous screen
            Navigator.pop(context);
          },
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}

// Passing data forward
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => DetailsScreen(
      userId: 123,
      userName: 'John Doe',
    ),
  ),
);

// Passing data back
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        onPressed: () {
          // Return data to previous screen
          Navigator.pop(context, 'Result data');
        },
        child: const Text('Return with Data'),
      ),
    );
  }
}

// Receiving data from popped screen
Future<void> navigateAndGetResult(BuildContext context) async {
  final result = await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const DetailsScreen(),
    ),
  );
  
  print('Received result: \$result');
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Simple and intuitive API",
        "Automatic back button handling",
        "Platform-specific transitions",
        "Can pass data between screens",
      ],
      ar: [
        "واجهة برمجية بسيطة وبديهية",
        "معالجة تلقائية لزر الرجوع",
        "انتقالات خاصة بالمنصة",
        "يمكن تمرير بيانات بين الشاشات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "All screens remain in memory until popped",
        "Can lead to memory issues with deep navigation",
        "No built-in deep linking",
        "Harder to manage complex navigation flows",
      ],
      ar: [
        "جميع الشاشات تبقى في الذاكرة حتى تُزال",
        "قد تؤدي لمشاكل ذاكرة مع تنقل عميق",
        "لا يوجد ربط عميق مدمج",
        "أصعب لإدارة تدفقات تنقل معقدة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Navigator push/pop when:",
          value: [
            "Navigating between simple screens in a small application",
            "Returning data from a modal or detail screen back to the caller",
            "Performing direct, imperative navigation without pre-defined routes",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Navigator push/pop عندما:",
          value: [
            "التنقل بين شاشات بسيطة في تطبيق صغير",
            "إعادة البيانات من شاشة منبثقة أو شاشة تفاصيل إلى المستدعي",
            "إجراء تنقل مباشر وأمري بدون مسارات محددة مسبقًا",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "094",
    difficulty: .basic,
    categories: [.flutterBasics],
    type: .practical,
    tags: ["intermediate", "navigation", "routes", "namedroutes"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What are Named Routes?",
        answer: [
          StringContent(
            "Named Routes are a way to navigate using string identifiers instead of creating MaterialPageRoute manually each time. Routes are registered in MaterialApp and accessed by name.",
          ),
          UnorderedListContent(
            title: "Key benefits:",
            value: [
              "Centralized route management",
              "Navigate using string names instead of constructors",
              "Easier to maintain in large apps",
              "Supports passing arguments",
              "Better for deep linking and URL routing",
              "Cleaner navigation code",
            ],
          ),
          StringContent(
            "Named routes are defined in MaterialApp's routes or onGenerateRoute. Navigate using Navigator.pushNamed() instead of Navigator.push(). Particularly useful in large apps with many screens.",
          ),
        ],
        notes: [
          "Define routes in MaterialApp.routes or onGenerateRoute",
          "Use Navigator.pushNamed() to navigate",
          "Can pass arguments using RouteSettings",
        ],
        bestUse:
            "Use for medium to large apps with many screens. Provides centralized route management and cleaner code than inline MaterialPageRoute.",
      ),
      ar: QuestionContent(
        question: "ما هي Named Routes؟",
        answer: [
          StringContent(
            "Named Routes هي طريقة للتنقل باستخدام معرفات نصية بدلاً من إنشاء MaterialPageRoute يدويًا في كل مرة. تُسجل المسارات في MaterialApp ويُصل إليها بالاسم.",
          ),
          UnorderedListContent(
            title: "الفوائد الرئيسية:",
            value: [
              "إدارة مسارات مركزية",
              "التنقل باستخدام أسماء نصية بدلاً من البانيات",
              "أسهل للصيانة في التطبيقات الكبيرة",
              "يدعم تمرير المعاملات",
              "أفضل للربط العميق وتوجيه URL",
              "كود تنقل أنظف",
            ],
          ),
          StringContent(
            "تُعرّف المسارات المسماة في routes أو onGenerateRoute في MaterialApp. تنقل باستخدام Navigator.pushNamed() بدلاً من Navigator.push(). مفيد بشكل خاص في التطبيقات الكبيرة مع العديد من الشاشات.",
          ),
        ],
        notes: [
          "عرّف المسارات في MaterialApp.routes أو onGenerateRoute",
          "استخدم Navigator.pushNamed() للتنقل",
          "يمكن تمرير معاملات باستخدام RouteSettings",
        ],
        bestUse:
            "استخدمها للتطبيقات المتوسطة إلى الكبيرة مع العديد من الشاشات. توفر إدارة مسارات مركزية وكود أنظف من MaterialPageRoute المضمن.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Define named routes in MaterialApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Example',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/details': (context) => const DetailsScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}

// Navigate using named routes
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/details');
            },
            child: const Text('Go to Details'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            child: const Text('Go to Settings'),
          ),
        ],
      ),
    );
  }
}

// Passing arguments with named routes
// Navigate with arguments
Navigator.pushNamed(
  context,
  '/details',
  arguments: {
    'userId': 123,
    'userName': 'John Doe',
  },
);

// Receive arguments in destination
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final userId = args['userId'];
    final userName = args['userName'];
    
    return Scaffold(
      appBar: AppBar(title: Text('Details for \$userName')),
      body: Text('User ID: \$userId'),
    );
  }
}

// Using onGenerateRoute for dynamic routes
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            );
          case '/details':
            final args = settings.arguments as Map;
            return MaterialPageRoute(
              builder: (context) => DetailsScreen(
                userId: args['userId'],
                userName: args['userName'],
              ),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const NotFoundScreen(),
            );
        }
      },
    );
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Centralized route management",
        "Cleaner navigation code",
        "Better for large apps",
        "Supports deep linking",
        "Easy to handle 404/not found",
      ],
      ar: [
        "إدارة مسارات مركزية",
        "كود تنقل أنظف",
        "أفضل للتطبيقات الكبيرة",
        "يدعم الربط العميق",
        "سهل للتعامل مع 404/غير موجود",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Harder to pass type-safe arguments",
        "String identifiers can lead to typos",
        "More boilerplate setup",
        "Arguments must be cast to correct type",
      ],
      ar: [
        "أصعب لتمرير معاملات آمنة من حيث النوع",
        "معرفات نصية قد تؤدي لأخطاء إملائية",
        "المزيد من الإعداد المتكرر",
        "يجب تحويل المعاملات للنوع الصحيح",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Named Routes when:",
          value: [
            "Managing navigation in a large app with many screens",
            "Implementing deep linking or URL-based routing",
            "Keeping navigation logic centralized and maintainable",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Named Routes عندما:",
          value: [
            "إدارة التنقل في تطبيق كبير مع العديد من الشاشات",
            "تنفيذ الربط العميق أو التوجيه القائم على URL",
            "الحفاظ على منطق التنقل مركزيًا وقابلاً للصيانة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "095",
    difficulty: .intermediate,
    categories: [.flutterBasics],
    type: .theoretical,
    tags: ["intermediate", "navigation", "modalroute", "routing"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is ModalRoute?",
        answer: [
          StringContent(
            "ModalRoute is a route that prevents interaction with previous routes while it's active. It's the base class for routes like MaterialPageRoute and CupertinoPageRoute that show as full-screen modals.",
          ),
          UnorderedListContent(
            title: "Key characteristics:",
            value: [
              "Blocks interaction with routes below it",
              "Typically takes up entire screen",
              "Can access route settings and arguments",
              "ModalRoute.of(context) accesses current route",
              "Base class for page routes in Flutter",
              "Supports transitions and animations",
            ],
          ),
          StringContent(
            "ModalRoute is primarily used to access route information like arguments passed during navigation. Most commonly used via ModalRoute.of(context)?.settings.arguments to retrieve data passed to the route.",
          ),
        ],
        notes: [
          "Use ModalRoute.of(context) to access current route",
          "Retrieve arguments via settings.arguments",
          "Not usually instantiated directly",
        ],
        bestUse:
            "Access route information and arguments in destination screens. Useful for retrieving data passed during navigation.",
      ),
      ar: QuestionContent(
        question: "ما هو ModalRoute؟",
        answer: [
          StringContent(
            "ModalRoute هو مسار يمنع التفاعل مع المسارات السابقة أثناء نشاطه. إنه الفئة الأساسية للمسارات مثل MaterialPageRoute و CupertinoPageRoute التي تُعرض كنوافذ بملء الشاشة.",
          ),
          UnorderedListContent(
            title: "الخصائص الرئيسية:",
            value: [
              "يحجب التفاعل مع المسارات أسفله",
              "عادةً يشغل الشاشة بأكملها",
              "يمكن الوصول إلى إعدادات ومعاملات المسار",
              "ModalRoute.of(context) يصل إلى المسار الحالي",
              "الفئة الأساسية لمسارات الصفحات في Flutter",
              "يدعم الانتقالات والرسوم المتحركة",
            ],
          ),
          StringContent(
            "يُستخدم ModalRoute بشكل أساسي للوصول إلى معلومات المسار مثل المعاملات الممررة أثناء التنقل. الأكثر استخدامًا عبر ModalRoute.of(context)?.settings.arguments لاسترجاع البيانات الممررة للمسار.",
          ),
        ],
        notes: [
          "استخدم ModalRoute.of(context) للوصول إلى المسار الحالي",
          "استرجع المعاملات عبر settings.arguments",
          "عادةً لا يتم إنشاؤه مباشرة",
        ],
        bestUse:
            "الوصول إلى معلومات ومعاملات المسار في الشاشات الوجهة. مفيد لاسترجاع البيانات الممررة أثناء التنقل.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Accessing route arguments using ModalRoute
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    // Get arguments from route
    final args = ModalRoute.of(context)?.settings.arguments;
    
    if (args is Map) {
      final userId = args['userId'];
      final userName = args['userName'];
      
      return Scaffold(
        appBar: AppBar(title: Text('Details for \$userName')),
        body: Column(
          children: [
            Text('User ID: \$userId'),
            Text('Name: \$userName'),
          ],
        ),
      );
    }
    
    return const Scaffold(
      body: Text('No arguments provided'),
    );
  }
}

// Navigating with arguments
Navigator.pushNamed(
  context,
  '/details',
  arguments: {
    'userId': 123,
    'userName': 'John Doe',
  },
);

// Getting route name
class MyScreen extends StatelessWidget {
  const MyScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final routeName = ModalRoute.of(context)?.settings.name;
    print('Current route: \$routeName');
    
    return Scaffold(
      appBar: AppBar(title: Text('Route: \$routeName')),
    );
  }
}

// Type-safe arguments with custom class
class UserArguments {
  final int userId;
  final String userName;
  
  UserArguments({required this.userId, required this.userName});
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as UserArguments;
    
    return Scaffold(
      appBar: AppBar(title: Text(args.userName)),
      body: Text('User ID: \${args.userId}'),
    );
  }
}

// Navigate with type-safe arguments
Navigator.pushNamed(
  context,
  '/details',
  arguments: UserArguments(
    userId: 123,
    userName: 'John Doe',
  ),
);
"""),
    ],
    pros: LocalizedValue(
      en: [
        "Access route information anywhere in widget tree",
        "Retrieve navigation arguments easily",
        "Standard way to get route data",
        "Works with named and unnamed routes",
      ],
      ar: [
        "الوصول إلى معلومات المسار في أي مكان في شجرة الودجتس",
        "استرجاع معاملات التنقل بسهولة",
        "طريقة قياسية للحصول على بيانات المسار",
        "يعمل مع المسارات المسماة وغير المسماة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Arguments are untyped (need casting)",
        "Can return null if called at wrong time",
        "Not type-safe without custom wrapper",
      ],
      ar: [
        "المعاملات غير مكتوبة (تحتاج تحويل)",
        "قد يعيد null إذا استُدعي في وقت خاطئ",
        "غير آمن من حيث النوع بدون غلاف مخصص",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use ModalRoute when:",
          value: [
            "Retrieving arguments passed to a screen during navigation",
            "Accessing specific settings of the current route inside the widget tree",
            "Determining whether the current screen is the first/root route",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم ModalRoute عندما:",
          value: [
            "استرجاع المعاملات الممررة إلى شاشة أثناء التنقل",
            "الوصول إلى إعدادات معينة للمسار الحالي داخل شجرة الودجت",
            "تحديد ما إذا كانت الشاشة الحالية هي المسار الأول/الجذر",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "096",
    difficulty: .basic,
    categories: [.flutterBasics],
    type: .practical,
    tags: ["intermediate", "navigation", "maybepop", "conditionalnavigation"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is Navigator.maybePop?",
        answer: [
          StringContent(
            "Navigator.maybePop attempts to pop the current route if it's possible, but won't do anything if it's the first route in the navigator. It prevents trying to pop the last route which would cause an error.",
          ),
          UnorderedListContent(
            title: "Key differences from pop:",
            value: [
              "pop() always pops, even if it's the last route (causes error)",
              "maybePop() checks if pop is possible first",
              "Returns Future<bool> - true if popped, false if not",
              "Safe to call even on the first/root route",
              "Useful when you're unsure if there's a previous route",
            ],
          ),
          StringContent(
            "Use maybePop when implementing custom back button behavior or when you want to safely attempt to go back without knowing if there's a previous route. It returns true if navigation happened, false otherwise.",
          ),
        ],
        notes: [
          "Returns true if popped, false if not possible",
          "Safe alternative to pop() when unsure about navigation stack",
          "Commonly used with WillPopScope/PopScope",
        ],
        bestUse:
            "Use when implementing custom back button logic or when you need to safely attempt navigation back without errors.",
      ),
      ar: QuestionContent(
        question: "ما هو Navigator.maybePop؟",
        answer: [
          StringContent(
            "Navigator.maybePop يحاول إزالة المسار الحالي إذا كان ممكنًا، لكن لن يفعل شيئًا إذا كان المسار الأول في المتنقل. يمنع محاولة إزالة المسار الأخير مما قد يسبب خطأً.",
          ),
          UnorderedListContent(
            title: "الاختلافات الرئيسية عن pop:",
            value: [
              "pop() دائمًا يزيل، حتى لو كان المسار الأخير (يسبب خطأً)",
              "maybePop() يتحقق إذا كانت الإزالة ممكنة أولاً",
              "يعيد Future<bool> - true إذا أُزيل، false إذا لم يُزل",
              "آمن للاستدعاء حتى على المسار الأول/الجذر",
              "مفيد عندما لا تكون متأكدًا إذا كان هناك مسار سابق",
            ],
          ),
          StringContent(
            "استخدم maybePop عند تنفيذ سلوك زر رجوع مخصص أو عندما تريد محاولة العودة بأمان دون معرفة ما إذا كان هناك مسار سابق. يعيد true إذا حدث تنقل، false خلاف ذلك.",
          ),
        ],
        notes: [
          "يعيد true إذا أُزيل، false إذا لم يكن ممكنًا",
          "بديل آمن لـ pop() عندما لا تكون متأكدًا من مكدس التنقل",
          "يُستخدم عادةً مع WillPopScope/PopScope",
        ],
        bestUse:
            "استخدمه عند تنفيذ منطق زر رجوع مخصص أو عندما تحتاج لمحاولة التنقل للخلف بأمان دون أخطاء.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic maybePop usage
Future<void> handleBackButton(BuildContext context) async {
  final didPop = await Navigator.maybePop(context);
  
  if (didPop) {
    print('Navigation successful');
  } else {
    print('Already at root, cannot pop');
  }
}

// Using with PopScope (replaces WillPopScope)
class MyScreen extends StatelessWidget {
  const MyScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) return;
        
        // Custom back button logic
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to leave this screen?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Yes'),
              ),
            ],
          ),
        );
        
        if (shouldPop == true && context.mounted) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('My Screen')),
        body: const Center(child: Text('Press back to see dialog')),
      ),
    );
  }
}

// Comparison: pop vs maybePop
// BAD - May throw error if already at root
void badGoBack(BuildContext context) {
  Navigator.pop(context); // Error if this is the root route!
}

// GOOD - Safe to call anywhere
Future<void> safeGoBack(BuildContext context) async {
  final didPop = await Navigator.maybePop(context);
  if (!didPop) {
    print('Already at root route');
  }
}

// Custom back button with maybePop
class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});
  
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () async {
        // Try to pop, if can't, show message
        final didPop = await Navigator.maybePop(context);
        
        if (!didPop && context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Already at home screen'),
            ),
          );
        }
      },
    );
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Safe - won't error on root route",
        "Returns bool to indicate success",
        "Perfect for custom back button logic",
        "Prevents navigation errors",
      ],
      ar: [
        "آمن - لن يخطئ على المسار الجذر",
        "يعيد bool للإشارة للنجاح",
        "مثالي لمنطق زر رجوع مخصص",
        "يمنع أخطاء التنقل",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Returns Future - need to await",
        "Slightly more complex than simple pop",
        "Less obvious behavior than pop for beginners",
      ],
      ar: [
        "يعيد Future - تحتاج للانتظار",
        "أكثر تعقيدًا قليلاً من pop البسيط",
        "سلوك أقل وضوحًا من pop للمبتدئين",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use maybePop when:",
          value: [
            "Implementing custom drawer or back-button logic",
            "Safely attempting to go back without risking a crash at the root screen",
            "Coordinating navigation with dialogs or confirmation prompts",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم maybePop عندما:",
          value: [
            "تنفيذ منطق درج أو زر رجوع مخصص",
            "محاولة العودة للخلف بأمان دون المخاطرة بتعطل التطبيق في الشاشة الجذر",
            "تنسيق التنقل مع الحوارات أو مطالبات التأكيد",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "097",
    difficulty: .intermediate,
    categories: [.animations],
    type: .practical,
    tags: ["intermediate", "animation", "animationcontroller", "vsync"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is AnimationController?",
        answer: [
          StringContent(
            "AnimationController is a class that controls an animation's duration, direction, and value. It generates values from 0.0 to 1.0 over a specified duration and is the foundation of animations in Flutter.",
          ),
          UnorderedListContent(
            title: "Key characteristics:",
            value: [
              "Produces values from 0.0 to 1.0",
              "Requires a TickerProvider (usually SingleTickerProviderStateMixin)",
              "Controls animation playback: forward, reverse, repeat, stop",
              "Must be disposed to prevent memory leaks",
              "Can be combined with Tween to generate other value ranges",
              "Supports listeners and status listeners",
            ],
          ),
          StringContent(
            "AnimationController is the core of Flutter animations. It generates animation values over time, which can be used directly or combined with Tweens to animate properties like size, color, or position.",
          ),
        ],
        notes: [
          "Requires TickerProvider - use SingleTickerProviderStateMixin",
          "Must dispose in dispose() method",
          "Value ranges from 0.0 to 1.0 by default",
        ],
        bestUse:
            "Core component for all Flutter animations. Use to control animation timing and playback. Combine with Tween for specific value ranges.",
      ),
      ar: QuestionContent(
        question: "ما هو AnimationController؟",
        answer: [
          StringContent(
            "AnimationController هو فئة تتحكم في مدة ووجهة وقيمة الرسم المتحرك. ينتج قيمًا من 0.0 إلى 1.0 على مدة محددة وهو أساس الرسوم المتحركة في Flutter.",
          ),
          UnorderedListContent(
            title: "الخصائص الرئيسية:",
            value: [
              "ينتج قيمًا من 0.0 إلى 1.0",
              "يتطلب TickerProvider (عادةً SingleTickerProviderStateMixin)",
              "يتحكم في تشغيل الرسوم المتحركة: للأمام، للخلف، تكرار، توقف",
              "يجب التخلص منه لمنع تسريبات الذاكرة",
              "يمكن دمجه مع Tween لإنتاج نطاقات قيم أخرى",
              "يدعم المستمعين ومستمعي الحالة",
            ],
          ),
          StringContent(
            "AnimationController هو جوهر الرسوم المتحركة في Flutter. ينتج قيم الرسوم المتحركة مع الوقت، والتي يمكن استخدامها مباشرة أو دمجها مع Tweens لتحريك خصائص مثل الحجم أو اللون أو الموضع.",
          ),
        ],
        notes: [
          "يتطلب TickerProvider - استخدم SingleTickerProviderStateMixin",
          "يجب التخلص منه في دالة dispose()",
          "القيمة تتراوح من 0.0 إلى 1.0 افتراضيًا",
        ],
        bestUse:
            "مكون أساسي لجميع رسوم Flutter المتحركة. استخدمه للتحكم في توقيت وتشغيل الرسوم المتحركة. ادمجه مع Tween لنطاقات قيم محددة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic AnimationController setup
class AnimatedBox extends StatefulWidget {
  const AnimatedBox({super.key});
  
  @override
  State<AnimatedBox> createState() => _AnimatedBoxState();
}

class _AnimatedBoxState extends State<AnimatedBox>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  
  @override
  void initState() {
    super.initState();
    
    // Create controller
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this, // From SingleTickerProviderStateMixin
    );
    
    // Start animation
    _controller.forward();
    
    // Add listener
    _controller.addListener(() {
      print('Animation value: \${_controller.value}');
    });
    
    // Add status listener
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        print('Animation completed!');
      }
    });
  }
  
  @override
  void dispose() {
    _controller.dispose(); // MUST dispose
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: _controller.value,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        );
      },
    );
  }
}

// Animation controls
_controller.forward();      // 0.0 -> 1.0
_controller.reverse();      // 1.0 -> 0.0
_controller.repeat();       // Loop forever
_controller.stop();         // Stop animation
_controller.reset();        // Reset to 0.0

// Repeat with reverse
_controller.repeat(reverse: true); // Yoyo effect

// Animation with Tween
class SizeAnimationExample extends StatefulWidget {
  const SizeAnimationExample({super.key});
  
  @override
  State<SizeAnimationExample> createState() => _SizeAnimationExampleState();
}

class _SizeAnimationExampleState extends State<SizeAnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  
  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    
    // Tween converts 0.0-1.0 to 100.0-300.0
    _sizeAnimation = Tween<double>(
      begin: 100.0,
      end: 300.0,
    ).animate(_controller);
    
    _controller.repeat(reverse: true);
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _sizeAnimation,
      builder: (context, child) {
        return Container(
          width: _sizeAnimation.value,
          height: _sizeAnimation.value,
          color: Colors.blue,
        );
      },
    );
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Full control over animation timing",
        "Can forward, reverse, repeat",
        "Efficient performance",
        "Foundation for complex animations",
      ],
      ar: [
        "تحكم كامل في توقيت الرسوم المتحركة",
        "يمكن التقديم، العكس، التكرار",
        "أداء فعال",
        "أساس للرسوم المتحركة المعقدة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Requires SingleTickerProviderStateMixin",
        "Must remember to dispose",
        "More boilerplate than implicit animations",
        "Only produces 0.0-1.0 without Tween",
      ],
      ar: [
        "يتطلب SingleTickerProviderStateMixin",
        "يجب تذكر التخلص منه",
        "المزيد من الكود المتكرر من الرسوم المتحركة الضمنية",
        "ينتج فقط 0.0-1.0 بدون Tween",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use AnimationController when:",
          value: [
            "Creating complex, fine-tuned animations with full control",
            "Synchronizing multiple animated properties simultaneously",
            "Controlling animation playback (forward/reverse/repeat) based on logic",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم AnimationController عندما:",
          value: [
            "إنشاء رسوم متحركة معقدة ومضبوطة بدقة مع تحكم كامل",
            "مزامنة العديد من الخصائص المتحركة في وقت واحد",
            "التحكم في تشغيل الرسوم المتحركة (للأمام/للخلف/تكرار) بناءً على المنطق",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "098",
    difficulty: .intermediate,
    categories: [.animations],
    type: .practical,
    tags: ["intermediate", "animation", "tween", "interpolation"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is Tween?",
        answer: [
          StringContent(
            "Tween (short for 'in-between') maps AnimationController's 0.0-1.0 values to a different range of values. It interpolates between a begin and end value, allowing you to animate any type: double, Color, Size, Offset, etc.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Maps 0.0-1.0 to any value range",
              "Supports many types: double, int, Color, Size, Offset, Rect",
              "Uses lerp (linear interpolation) for smooth transitions",
              "Combined with AnimationController via .animate()",
              "Can chain multiple Tweens",
              "Essential for animating specific value ranges",
            ],
          ),
          StringContent(
            "Tween is the bridge between AnimationController (0.0-1.0) and the actual values you want to animate. For example, Tween<double>(begin: 0, end: 200) converts 0.0-1.0 to 0-200 pixels.",
          ),
        ],
        notes: [
          "Tween by itself doesn't animate - needs AnimationController",
          "Call .animate(controller) to create Animation object",
          "Different Tween types for different data types",
        ],
        bestUse:
            "Use to animate specific value ranges. Essential for animating sizes, colors, positions, or any custom values beyond 0.0-1.0.",
      ),
      ar: QuestionContent(
        question: "ما هو Tween؟",
        answer: [
          StringContent(
            "Tween (اختصار لـ 'in-between') يخطط قيم AnimationController من 0.0-1.0 إلى نطاق قيم مختلف. يستكمل بين قيمة بداية ونهاية، مما يسمح لك بتحريك أي نوع: double، Color، Size، Offset، إلخ.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يخطط 0.0-1.0 إلى أي نطاق قيم",
              "يدعم أنواع عديدة: double، int، Color، Size، Offset، Rect",
              "يستخدم lerp (الاستكمال الخطي) لانتقالات سلسة",
              "يُدمج مع AnimationController عبر .animate()",
              "يمكن ربط Tweens متعددة",
              "أساسي لتحريك نطاقات قيم محددة",
            ],
          ),
          StringContent(
            "Tween هو الجسر بين AnimationController (0.0-1.0) والقيم الفعلية التي تريد تحريكها. على سبيل المثال، Tween<double>(begin: 0, end: 200) يحول 0.0-1.0 إلى 0-200 بكسل.",
          ),
        ],
        notes: [
          "Tween بنفسه لا يحرك - يحتاج AnimationController",
          "استدع .animate(controller) لإنشاء كائن Animation",
          "أنواع Tween مختلفة لأنواع بيانات مختلفة",
        ],
        bestUse:
            "استخدمه لتحريك نطاقات قيم محددة. أساسي لتحريك الأحجام والألوان والمواضع أو أي قيم مخصصة تتجاوز 0.0-1.0.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic Tween usage
class TweenExample extends StatefulWidget {
  const TweenExample({super.key});
  
  @override
  State<TweenExample> createState() => _TweenExampleState();
}

class _TweenExampleState extends State<TweenExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;
  
  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    
    // Double Tween (size)
    _sizeAnimation = Tween<double>(
      begin: 50.0,
      end: 200.0,
    ).animate(_controller);
    
    // Color Tween
    _colorAnimation = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(_controller);
    
    _controller.repeat(reverse: true);
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          width: _sizeAnimation.value,
          height: _sizeAnimation.value,
          color: _colorAnimation.value,
        );
      },
    );
  }
}

// Different Tween types
// Size Tween
final sizeTween = Tween<Size>(
  begin: const Size(100, 100),
  end: const Size(300, 200),
).animate(_controller);

// Offset Tween (position)
final offsetTween = Tween<Offset>(
  begin: Offset.zero,
  end: const Offset(1.0, 0.0),
).animate(_controller);

// Border Radius Tween
final borderTween = BorderRadiusTween(
  begin: BorderRadius.circular(0),
  end: BorderRadius.circular(50),
).animate(_controller);

// Alignment Tween
final alignmentTween = AlignmentTween(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
).animate(_controller);

// Chaining multiple animations
class ComplexAnimation extends StatefulWidget {
  const ComplexAnimation({super.key});
  
  @override
  State<ComplexAnimation> createState() => _ComplexAnimationState();
}

class _ComplexAnimationState extends State<ComplexAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacity;
  late Animation<double> _size;
  late Animation<double> _rotation;
  
  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    
    _opacity = Tween<double>(begin: 0.0, end: 1.0)
      .animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeIn),
      ));
    
    _size = Tween<double>(begin: 0.0, end: 200.0)
      .animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 0.8, curve: Curves.elasticOut),
      ));
    
    _rotation = Tween<double>(begin: 0.0, end: 2 * 3.14159)
      .animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ));
    
    _controller.forward();
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Opacity(
          opacity: _opacity.value,
          child: Transform.rotate(
            angle: _rotation.value,
            child: Container(
              width: _size.value,
              height: _size.value,
              color: Colors.blue,
            ),
          ),
        );
      },
    );
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Animate any value type",
        "Smooth linear interpolation",
        "Type-safe animations",
        "Can chain and combine multiple Tweens",
      ],
      ar: [
        "حرّك أي نوع قيمة",
        "استكمال خطي سلس",
        "رسوم متحركة آمنة من حيث النوع",
        "يمكن ربط ودمج Tweens متعددة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Needs AnimationController to work",
        "Additional layer of complexity",
        "Must specify begin and end values",
      ],
      ar: [
        "يحتاج AnimationController للعمل",
        "طبقة تعقيد إضافية",
        "يجب تحديد قيم البداية والنهاية",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Tween when:",
          value: [
            "Animating values outside the standard 0.0 to 1.0 range",
            "Handling specific types like Color, Size, Offset, or BorderRadius",
            "Creating custom interpolations between two states",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Tween عندما:",
          value: [
            "تحريك القيم خارج نطاق 0.0 إلى 1.0 القياسي",
            "التعامل مع أنواع معينة مثل Color أو Size أو Offset أو BorderRadius",
            "إنشاء استكمالات مخصصة بين حالتين",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "099",
    difficulty: .intermediate,
    categories: [.animations],
    type: .practical,
    tags: ["intermediate", "animation", "curvedanimation", "curves"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is CurvedAnimation?",
        answer: [
          StringContent(
            "CurvedAnimation applies an easing curve to an animation, making it feel more natural and realistic. Instead of linear progression, it can accelerate, decelerate, bounce, or follow other curve patterns.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Applies easing curves to animations",
              "Wraps an AnimationController or Animation",
              "Provides numerous built-in curves (easeIn, easeOut, bounceIn, etc.)",
              "Can have different curves for forward and reverse",
              "Makes animations feel more natural and polished",
              "Essential for professional-looking animations",
            ],
          ),
          StringContent(
            "CurvedAnimation transforms linear animation values using mathematical curves. Common curves include Curves.easeIn (slow start), Curves.easeOut (slow end), Curves.bounceOut (bouncing effect), and many more.",
          ),
        ],
        notes: [
          "Wraps AnimationController with a curve",
          "Use different curves for different effects",
          "Interval allows different curves for different time ranges",
        ],
        bestUse:
            "Use to make animations feel natural and polished. Apply curves like easeIn, easeOut, or bounce for better user experience.",
      ),
      ar: QuestionContent(
        question: "ما هو CurvedAnimation؟",
        answer: [
          StringContent(
            "CurvedAnimation يطبق منحنى تسهيل على رسم متحرك، مما يجعله يبدو أكثر طبيعية وواقعية. بدلاً من التقدم الخطي، يمكن أن يتسارع أو يتباطأ أو يرتد أو يتبع أنماط منحنى أخرى.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يطبق منحنيات تسهيل على الرسوم المتحركة",
              "يلف AnimationController أو Animation",
              "يوفر منحنيات مدمجة عديدة (easeIn، easeOut، bounceIn، إلخ)",
              "يمكن أن يكون له منحنيات مختلفة للأمام والعكس",
              "يجعل الرسوم المتحركة تبدو أكثر طبيعية وصقلاً",
              "أساسي للرسوم المتحركة ذات المظهر الاحترافي",
            ],
          ),
          StringContent(
            "CurvedAnimation يحول قيم الرسوم المتحركة الخطية باستخدام منحنيات رياضية. المنحنيات الشائعة تشمل Curves.easeIn (بداية بطيئة)، Curves.easeOut (نهاية بطيئة)، Curves.bounceOut (تأثير ارتداد)، والكثير غيرها.",
          ),
        ],
        notes: [
          "يلف AnimationController بمنحنى",
          "استخدم منحنيات مختلفة لتأثيرات مختلفة",
          "Interval يسمح بمنحنيات مختلفة لنطاقات زمنية مختلفة",
        ],
        bestUse:
            "استخدمه لجعل الرسوم المتحركة تبدو طبيعية ومصقولة. طبق منحنيات مثل easeIn أو easeOut أو bounce لتجربة مستخدم أفضل.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic CurvedAnimation
class CurvedAnimationExample extends StatefulWidget {
  const CurvedAnimationExample({super.key});
  
  @override
  State<CurvedAnimationExample> createState() => _CurvedAnimationExampleState();
}

class _CurvedAnimationExampleState extends State<CurvedAnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  
  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    
    // Apply curve to animation
    final curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    
    _animation = Tween<double>(
      begin: 0.0,
      end: 300.0,
    ).animate(curvedAnimation);
    
    _controller.forward();
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          width: _animation.value,
          height: 100,
          color: Colors.blue,
        );
      },
    );
  }
}

// Different curves for different effects
// Ease In - slow start, fast end
CurvedAnimation(
  parent: _controller,
  curve: Curves.easeIn,
)

// Ease Out - fast start, slow end
CurvedAnimation(
  parent: _controller,
  curve: Curves.easeOut,
)

// Bounce - bouncing effect
CurvedAnimation(
  parent: _controller,
  curve: Curves.bounceOut,
)

// Elastic - spring-like effect
CurvedAnimation(
  parent: _controller,
  curve: Curves.elasticOut,
)

// Different curves for forward and reverse
final curvedAnimation = CurvedAnimation(
  parent: _controller,
  curve: Curves.easeIn,        // Forward animation
  reverseCurve: Curves.easeOut, // Reverse animation
);

// Using Interval for sequential animations
class SequentialAnimation extends StatefulWidget {
  const SequentialAnimation({super.key});
  
  @override
  State<SequentialAnimation> createState() => _SequentialAnimationState();
}

class _SequentialAnimationState extends State<SequentialAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _firstAnimation;
  late Animation<double> _secondAnimation;
  
  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );
    
    // First animation: 0% to 50% of total duration
    _firstAnimation = Tween<double>(begin: 0.0, end: 200.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0, 0.5, // First half
          curve: Curves.easeIn,
        ),
      ),
    );
    
    // Second animation: 50% to 100% of total duration
    _secondAnimation = Tween<double>(begin: 0.0, end: 200.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.5, 1.0, // Second half
          curve: Curves.bounceOut,
        ),
      ),
    );
    
    _controller.forward();
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Column(
          children: [
            Container(
              width: _firstAnimation.value,
              height: 50,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            Container(
              width: _secondAnimation.value,
              height: 50,
              color: Colors.red,
            ),
          ],
        );
      },
    );
  }
}

// Common curves comparison
final examples = {
  'linear': Curves.linear,           // No easing
  'easeIn': Curves.easeIn,          // Slow start
  'easeOut': Curves.easeOut,        // Slow end
  'easeInOut': Curves.easeInOut,    // Slow start and end
  'bounceOut': Curves.bounceOut,    // Bounce at end
  'elasticOut': Curves.elasticOut,  // Spring effect
  'decelerate': Curves.decelerate,  // Quick start, slow end
};
"""),
    ],
    pros: LocalizedValue(
      en: [
        "Makes animations feel natural and polished",
        "Many built-in curves available",
        "Different curves for forward/reverse",
        "Interval support for complex timing",
      ],
      ar: [
        "يجعل الرسوم المتحركة تبدو طبيعية ومصقولة",
        "العديد من المنحنيات المدمجة متاحة",
        "منحنيات مختلفة للأمام/العكس",
        "دعم Interval لتوقيت معقد",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Additional complexity layer",
        "Need to understand curve behavior",
        "Can be overused (not all animations need curves)",
      ],
      ar: [
        "طبقة تعقيد إضافية",
        "تحتاج لفهم سلوك المنحنى",
        "قد يُستخدم بإفراط (ليست كل الرسوم المتحركة تحتاج منحنيات)",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use CurvedAnimation when:",
          value: [
            "Making animations feel more natural and life-like",
            "Implementing easing effects like bounce, elastic, or decelerate",
            "Specifying different behaviors for forward and reverse playback",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم CurvedAnimation عندما:",
          value: [
            "جعل الرسوم المتحركة تبدو أكثر طبيعية وواقعية",
            "تنفيذ تأثيرات التسهيل مثل الارتداد أو المرونة أو التباطؤ",
            "تحديد سلوكيات مختلفة للتشغيل للأمام وللخلف",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "100",
    difficulty: .intermediate,
    categories: [.animations],
    type: .theoretical,
    tags: ["intermediate", "animation", "ticker", "vsync"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is Ticker in animations?",
        answer: [
          StringContent(
            "Ticker is a class that calls a callback once per animation frame (typically 60 times per second). It's essential for smooth animations and is provided by TickerProvider (like SingleTickerProviderStateMixin).",
          ),
          UnorderedListContent(
            title: "Key characteristics:",
            value: [
              "Triggers callback on every frame (vsync signal)",
              "Ensures animations run at smooth 60fps",
              "Automatically pauses when app is in background",
              "Provided by TickerProvider mixins",
              "Required by AnimationController",
              "Prevents unnecessary battery drain",
            ],
          ),
          StringContent(
            "Ticker synchronizes animations with the screen's refresh rate. The 'vsync' parameter in AnimationController takes a TickerProvider, which you get by adding SingleTickerProviderStateMixin or TickerProviderStateMixin to your State class.",
          ),
        ],
        notes: [
          "Use SingleTickerProviderStateMixin for one AnimationController",
          "Use TickerProviderStateMixin for multiple AnimationControllers",
          "Ticker automatically stops when widget is off-screen",
        ],
        bestUse:
            "Essential infrastructure for all Flutter animations. Ensures smooth frame rate and efficient battery usage.",
      ),
      ar: QuestionContent(
        question: "ما هو Ticker في الرسوم المتحركة؟",
        answer: [
          StringContent(
            "Ticker هو فئة تستدعي استدعاء مرة واحدة لكل إطار رسوم متحركة (عادةً 60 مرة في الثانية). إنه أساسي للرسوم المتحركة السلسة ويُوفر بواسطة TickerProvider (مثل SingleTickerProviderStateMixin).",
          ),
          UnorderedListContent(
            title: "الخصائص الرئيسية:",
            value: [
              "يفعّل الاستدعاء في كل إطار (إشارة vsync)",
              "يضمن تشغيل الرسوم المتحركة بـ 60fps سلس",
              "يتوقف تلقائيًا عندما يكون التطبيق في الخلفية",
              "يُوفر بواسطة mixins TickerProvider",
              "مطلوب بواسطة AnimationController",
              "يمنع استنزاف البطارية غير الضروري",
            ],
          ),
          StringContent(
            "Ticker يزامن الرسوم المتحركة مع معدل تحديث الشاشة. معامل 'vsync' في AnimationController يأخذ TickerProvider، الذي تحصل عليه بإضافة SingleTickerProviderStateMixin أو TickerProviderStateMixin إلى فئة State الخاصة بك.",
          ),
        ],
        notes: [
          "استخدم SingleTickerProviderStateMixin لـ AnimationController واحد",
          "استخدم TickerProviderStateMixin لعدة AnimationControllers",
          "Ticker يتوقف تلقائيًا عندما يكون الودجت خارج الشاشة",
        ],
        bestUse:
            "بنية تحتية أساسية لجميع رسوم Flutter المتحركة. يضمن معدل إطار سلس واستخدام بطارية فعال.",
      ),
    ),
    examples: [
      StrCodeBlock.good(
        """// SingleTickerProviderStateMixin (one AnimationController)
class SingleAnimationExample extends StatefulWidget {
  const SingleAnimationExample({super.key});
  
  @override
  State<SingleAnimationExample> createState() => _SingleAnimationExampleState();
}

class _SingleAnimationExampleState extends State<SingleAnimationExample>
    with SingleTickerProviderStateMixin { // Provides Ticker
  late AnimationController _controller;
  
  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this, // 'this' is the TickerProvider
    );
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// TickerProviderStateMixin (multiple AnimationControllers)
class MultipleAnimationsExample extends StatefulWidget {
  const MultipleAnimationsExample({super.key});
  
  @override
  State<MultipleAnimationsExample> createState() => _MultipleAnimationsExampleState();
}

class _MultipleAnimationsExampleState extends State<MultipleAnimationsExample>
    with TickerProviderStateMixin { // For multiple controllers
  late AnimationController _controller1;
  late AnimationController _controller2;
  late AnimationController _controller3;
  
  @override
  void initState() {
    super.initState();
    
    _controller1 = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    
    _controller2 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    
    _controller3 = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
  }
  
  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// Why vsync is important
// WITHOUT vsync (DON'T DO THIS):
// - Animation continues even when app is in background
// - Wastes battery
// - May cause performance issues

// WITH vsync (CORRECT):
// - Animation pauses when app is in background
// - Saves battery
// - Syncs with screen refresh rate
// - Ensures smooth 60fps

// Custom Ticker (advanced)
class CustomTickerExample extends StatefulWidget {
  const CustomTickerExample({super.key});
  
  @override
  State<CustomTickerExample> createState() => _CustomTickerExampleState();
}

class _CustomTickerExampleState extends State<CustomTickerExample>
    with SingleTickerProviderStateMixin {
  late Ticker _ticker;
  int _frameCount = 0;
  
  @override
  void initState() {
    super.initState();
    
    // Create custom ticker
    _ticker = createTicker((elapsed) {
      setState(() {
        _frameCount++;
      });
      print('Frame \$_frameCount at \${elapsed.inMilliseconds}ms');
    });
    
    _ticker.start();
  }
  
  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Text('Frames rendered: \$_frameCount');
  }
}""",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Ensures smooth 60fps animations",
        "Automatically pauses in background (saves battery)",
        "Syncs with screen refresh rate",
        "Built into Flutter's animation system",
      ],
      ar: [
        "يضمن رسوم متحركة سلسة بـ 60fps",
        "يتوقف تلقائيًا في الخلفية (يوفر البطارية)",
        "يزامن مع معدل تحديث الشاشة",
        "مدمج في نظام رسوم Flutter المتحركة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Requires mixin (SingleTickerProviderStateMixin)",
        "Can't use with StatelessWidget",
        "Must remember to choose correct mixin (Single vs Multiple)",
      ],
      ar: [
        "يتطلب mixin (SingleTickerProviderStateMixin)",
        "لا يمكن استخدامه مع StatelessWidget",
        "يجب تذكر اختيار mixin الصحيح (Single vs Multiple)",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Ticker/vsync when:",
          value: [
            "Building any custom animation that requires an AnimationController",
            "Optimizing app battery life by pausing animations in the background",
            "Developing low-level UI components with precise frame-rate synchronization",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Ticker/vsync عندما:",
          value: [
            "بناء أي رسم متحرك مخصص يتطلب AnimationController",
            "تحسين عمر بطارية التطبيق بوقف الرسوم المتحركة في الخلفية",
            "تطوير مكونات واجهة مستخدم منخفضة المستوى مع مزامنة دقيقة لمعدل الإطارات",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "101",
    difficulty: .intermediate,
    categories: [.dartBasics, .animations],
    type: .theoretical,
    tags: ["intermediate", "mixins", "ticker", "inheritance"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is Mixins and SingleTickerProviderStateMixin?",
        answer: [
          StringContent(
            "Mixins are a way to reuse code across multiple class hierarchies without traditional inheritance. SingleTickerProviderStateMixin is a mixin that provides a single Ticker for animations.",
          ),
          UnorderedListContent(
            title: "Mixins:",
            value: [
              "Allow code reuse without inheritance",
              "Added to classes using 'with' keyword",
              "Can add multiple mixins to one class",
              "Solve the 'diamond problem' of multiple inheritance",
              "Dart supports mixins but not multiple inheritance",
            ],
          ),
          UnorderedListContent(
            title: "SingleTickerProviderStateMixin:",
            value: [
              "Provides a single Ticker for one AnimationController",
              "Used when State has only one animation",
              "More efficient than TickerProviderStateMixin",
              "Automatically manages ticker lifecycle",
            ],
          ),
          StringContent(
            "Use 'with SingleTickerProviderStateMixin' for one AnimationController, 'with TickerProviderStateMixin' for multiple. Mixins are declared with 'mixin' keyword and applied with 'with'.",
          ),
        ],
        notes: [
          "Mixins use 'with' keyword, inheritance uses 'extends'",
          "Single for one controller, Multiple for many",
          "Mixins can't have constructors",
        ],
        bestUse:
            "Use mixins for code reuse across unrelated classes. SingleTickerProviderStateMixin essential for animations in StatefulWidget.",
      ),
      ar: QuestionContent(
        question: "ما هي Mixins و SingleTickerProviderStateMixin؟",
        answer: [
          StringContent(
            "Mixins هي طريقة لإعادة استخدام الكود عبر تسلسلات فئات متعددة دون الوراثة التقليدية. SingleTickerProviderStateMixin هو mixin يوفر Ticker واحد للرسوم المتحركة.",
          ),
          UnorderedListContent(
            title: "Mixins:",
            value: [
              "تسمح بإعادة استخدام الكود دون الوراثة",
              "تُضاف إلى الفئات باستخدام كلمة 'with'",
              "يمكن إضافة mixins متعددة لفئة واحدة",
              "تحل 'مشكلة الماس' للوراثة المتعددة",
              "Dart يدعم mixins لكن ليس الوراثة المتعددة",
            ],
          ),
          UnorderedListContent(
            title: "SingleTickerProviderStateMixin:",
            value: [
              "يوفر Ticker واحد لـ AnimationController واحد",
              "يُستخدم عندما يكون لدى State رسم متحرك واحد فقط",
              "أكثر كفاءة من TickerProviderStateMixin",
              "يدير دورة حياة ticker تلقائيًا",
            ],
          ),
          StringContent(
            "استخدم 'with SingleTickerProviderStateMixin' لـ AnimationController واحد، 'with TickerProviderStateMixin' لعدة. تُعرّف Mixins بكلمة 'mixin' وتُطبق بـ 'with'.",
          ),
        ],
        notes: [
          "Mixins تستخدم كلمة 'with'، الوراثة تستخدم 'extends'",
          "Single لمتحكم واحد، Multiple للعديد",
          "Mixins لا يمكن أن يكون لها بانيات",
        ],
        bestUse:
            "استخدم mixins لإعادة استخدام الكود عبر فئات غير مرتبطة. SingleTickerProviderStateMixin أساسي للرسوم المتحركة في StatefulWidget.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic Mixin definition
mixin Musical {
  void playMusic() {
    print('Playing music');
  }
  
  void stopMusic() {
    print('Stopping music');
  }
}

mixin Danceable {
  void dance() {
    print('Dancing');
  }
}

// Using multiple mixins
class Performer with Musical, Danceable {
  void perform() {
    playMusic();
    dance();
  }
}

// SingleTickerProviderStateMixin usage
class AnimatedWidget extends StatefulWidget {
  const AnimatedWidget({super.key});
  
  @override
  State<AnimatedWidget> createState() => _AnimatedWidgetState();
}

class _AnimatedWidgetState extends State<AnimatedWidget>
    with SingleTickerProviderStateMixin { // Mixin for one animation
  late AnimationController _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this, // Provided by SingleTickerProviderStateMixin
    );
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// TickerProviderStateMixin for multiple animations
class MultiAnimatedWidget extends StatefulWidget {
  const MultiAnimatedWidget({super.key});
  
  @override
  State<MultiAnimatedWidget> createState() => _MultiAnimatedWidgetState();
}

class _MultiAnimatedWidgetState extends State<MultiAnimatedWidget>
    with TickerProviderStateMixin { // Mixin for multiple animations
  late AnimationController _controller1;
  late AnimationController _controller2;
  
  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _controller2 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
  }
  
  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// Custom Mixin example
mixin ValidatorMixin {
  bool validateEmail(String email) {
    return email.contains('@') && email.contains('.');
  }
  
  bool validatePassword(String password) {
    return password.length >= 8;
  }
}

class LoginForm extends StatefulWidget with ValidatorMixin {
  const LoginForm({super.key});
  
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  void login(String email, String password) {
    // Access mixin methods from widget
    if (widget.validateEmail(email) && widget.validatePassword(password)) {
      print('Login successful');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// Mixin with 'on' clause (restricted to specific types)
mixin ScoreMixin on StatefulWidget {
  int score = 0;
  
  void incrementScore() {
    score++;
  }
}

// Multiple mixins with State
class GameWidget extends StatefulWidget {
  const GameWidget({super.key});
  
  @override
  State<GameWidget> createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late AnimationController _controller;
  
  @override
  bool get wantKeepAlive => true; // From AutomaticKeepAliveClientMixin
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this, // From SingleTickerProviderStateMixin
    );
  }
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    super.build(context); // Required by AutomaticKeepAliveClientMixin
    return Container();
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Mixins: Code reuse without inheritance constraints",
        "Multiple mixins on one class",
        "SingleTickerProviderStateMixin: Efficient for single animation",
        "Clean separation of concerns",
      ],
      ar: [
        "Mixins: إعادة استخدام الكود دون قيود الوراثة",
        "mixins متعددة على فئة واحدة",
        "SingleTickerProviderStateMixin: فعال لرسم متحرك واحد",
        "فصل نظيف للاهتمامات",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can't have constructors in mixins",
        "Order of mixins matters (linearization)",
        "Can make class hierarchy complex",
        "Need to know which mixin to use (Single vs Multiple)",
      ],
      ar: [
        "لا يمكن أن يكون لها بانيات في mixins",
        "ترتيب mixins مهم (خطي)",
        "قد يجعل تسلسل الفئات معقدًا",
        "تحتاج لمعرفة أي mixin تستخدم (Single vs Multiple)",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Mixins and TickerProvider when:",
          value: [
            "Sharing code/logic between multiple unrelated class hierarchies",
            "Implementing animation controllers that require a lifecycle-linked Ticker",
            "Keeping StatefulWidget states clean by extracting reusable behaviors",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Mixins و TickerProvider عندما:",
          value: [
            "مشاركة الكود/المنطق بين عدة تسلسلات فئات غير مرتبطة",
            "تنفيذ متحكمات الرسوم المتحركة التي تتطلب Ticker مرتبط بدورة الحياة",
            "الحفاظ على حالات StatefulWidget نظيفة عن طريق استخراج السلوكيات القابلة لإعادة الاستخدام",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "102",
    difficulty: .basic,
    categories: [.flutterBasics, .ui],
    type: .practical,
    tags: ["intermediate", "forms", "validation", "textfield"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "How to handle forms and validation?",
        answer: [
          StringContent(
            "Flutter provides Form widget and TextFormField for handling user input and validation. Form manages multiple fields, while GlobalKey<FormState> allows validation and data retrieval.",
          ),
          UnorderedListContent(
            title: "Key components:",
            value: [
              "Form: Wraps form fields and manages validation state",
              "TextFormField: Input field with built-in validation",
              "GlobalKey<FormState>: Access form state for validation/submission",
              "validator: Function to validate each field",
              "onSaved: Called when form is saved to retrieve values",
              "autovalidateMode: When to show validation errors",
            ],
          ),
          StringContent(
            "Form validation workflow: 1) Wrap fields in Form widget, 2) Add validator to each TextFormField, 3) Call form.validate() to check all fields, 4) Call form.save() to retrieve values. Use GlobalKey to access FormState.",
          ),
        ],
        notes: [
          "Use GlobalKey<FormState> to access form",
          "validator returns error string or null (valid)",
          "Call validate() before save()",
        ],
        bestUse:
            "Use for login forms, registration, settings, or any user input that needs validation. Essential for data entry screens.",
      ),
      ar: QuestionContent(
        question: "كيف تتعامل مع النماذج (Forms) والتحقق (Validation)؟",
        answer: [
          StringContent(
            "يوفر Flutter ودجت Form و TextFormField للتعامل مع إدخال المستخدم والتحقق. Form يدير حقول متعددة، بينما GlobalKey<FormState> يسمح بالتحقق واسترجاع البيانات.",
          ),
          UnorderedListContent(
            title: "المكونات الرئيسية:",
            value: [
              "Form: يلف حقول النموذج ويدير حالة التحقق",
              "TextFormField: حقل إدخال مع تحقق مدمج",
              "GlobalKey<FormState>: الوصول لحالة النموذج للتحقق/الإرسال",
              "validator: دالة للتحقق من كل حقل",
              "onSaved: تُستدعى عند حفظ النموذج لاسترجاع القيم",
              "autovalidateMode: متى تُعرض أخطاء التحقق",
            ],
          ),
          StringContent(
            "سير عمل التحقق من النموذج: 1) لف الحقول في ودجت Form، 2) أضف validator لكل TextFormField، 3) استدع form.validate() للتحقق من جميع الحقول، 4) استدع form.save() لاسترجاع القيم. استخدم GlobalKey للوصول إلى FormState.",
          ),
        ],
        notes: [
          "استخدم GlobalKey<FormState> للوصول إلى النموذج",
          "validator يعيد نص خطأ أو null (صالح)",
          "استدع validate() قبل save()",
        ],
        bestUse:
            "استخدمه لنماذج تسجيل الدخول، التسجيل، الإعدادات، أو أي إدخال مستخدم يحتاج تحققًا. أساسي لشاشات إدخال البيانات.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Complete Form with validation
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});
  
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!value.contains('@')) {
                return 'Please enter a valid email';
              }
              return null; // Valid
            },
            onSaved: (value) {
              _email = value ?? '';
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 8) {
                return 'Password must be at least 8 characters';
              }
              return null;
            },
            onSaved: (value) {
              _password = value ?? '';
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _submitForm,
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
  
  void _submitForm() {
    // Validate all fields
    if (_formKey.currentState!.validate()) {
      // All fields are valid, save the form
      _formKey.currentState!.save();
      
      print('Email: \$_email');
      print('Password: \$_password');
      
      // Proceed with login logic
      _login(_email, _password);
    }
  }
  
  Future<void> _login(String email, String password) async {
    // Login implementation
  }
}

// Auto-validate mode
Form(
  key: _formKey,
  autovalidateMode: AutovalidateMode.onUserInteraction, // Validate as user types
  child: Column(
    children: [
      TextFormField(
        validator: (value) => value?.isEmpty ?? true ? 'Required' : null,
      ),
    ],
  ),
)

// Registration form with multiple fields
class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});
  
  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: 'Full Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              final emailRegex = RegExp(r'^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}\$');
              if (!emailRegex.hasMatch(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: 'Password'),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a password';
              }
              if (value.length < 8) {
                return 'Password must be at least 8 characters';
              }
              if (!value.contains(RegExp(r'[A-Z]'))) {
                return 'Password must contain at least one uppercase letter';
              }
              if (!value.contains(RegExp(r'[0-9]'))) {
                return 'Password must contain at least one number';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _confirmPasswordController,
            decoration: const InputDecoration(labelText: 'Confirm Password'),
            obscureText: true,
            validator: (value) {
              if (value != _passwordController.text) {
                return 'Passwords do not match';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _register();
              }
            },
            child: const Text('Register'),
          ),
        ],
      ),
    );
  }
  
  void _register() {
    print('Name: \${_nameController.text}');
    print('Email: \${_emailController.text}');
    print('Password: \${_passwordController.text}');
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Built-in validation system",
        "Centralized form state management",
        "Easy error display",
        "Can validate all fields at once",
      ],
      ar: [
        "نظام تحقق مدمج",
        "إدارة حالة نموذج مركزية",
        "عرض أخطاء سهل",
        "يمكن التحقق من جميع الحقول مرة واحدة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Requires GlobalKey boilerplate",
        "TextFormField instead of TextField (more complex)",
        "Manual controller management",
        "Can be verbose for complex forms",
      ],
      ar: [
        "يتطلب كود GlobalKey متكرر",
        "TextFormField بدلاً من TextField (أكثر تعقيدًا)",
        "إدارة متحكمات يدوية",
        "قد يكون مطولاً للنماذج المعقدة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Forms and Validation when:",
          value: [
            "Collecting user data that requires specific formats (email, password strength)",
            "Managing multiple related input fields as a single unit",
            "Providing immediate feedback to users during data entry",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم النماذج والتحقق عندما:",
          value: [
            "جمع بيانات المستخدم التي تتطلب تنسيقات محددة (البريد الإلكتروني، قوة كلمة المرور)",
            "إدارة العديد من حقول الإدخال المرتبطة كوحدة واحدة",
            "توفير ملاحظات فورية للمستخدمين أثناء إدخال البيانات",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "103",
    difficulty: .basic,
    categories: [.flutterBasics, .ui],
    type: .practical,
    tags: ["intermediate", "focusnode", "keyboard", "textfield"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is FocusNode?",
        answer: [
          StringContent(
            "FocusNode is an object that manages keyboard focus for input widgets. It controls which TextField has focus, allows programmatic focus changes, and listens to focus events.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Controls which input field has keyboard focus",
              "Request focus programmatically with requestFocus()",
              "Move focus to next field with nextFocus()/previousFocus()",
              "Listen to focus changes with addListener()",
              "Can unfocus to dismiss keyboard",
              "Must be disposed to prevent memory leaks",
            ],
          ),
          StringContent(
            "FocusNode is essential for controlling keyboard behavior in forms. Common uses include moving to next field after enter, auto-focusing first field, or dismissing keyboard after form submission.",
          ),
        ],
        notes: [
          "Must dispose FocusNode in dispose() method",
          "Can attach to TextField/TextFormField via focusNode property",
          "One FocusNode per TextField",
        ],
        bestUse:
            "Control keyboard focus in forms, move between fields, auto-focus fields, or dismiss keyboard programmatically.",
      ),
      ar: QuestionContent(
        question: "ما هو FocusNode؟",
        answer: [
          StringContent(
            "FocusNode هو كائن يدير تركيز لوحة المفاتيح لودجتس الإدخال. يتحكم في أي TextField له التركيز، يسمح بتغييرات تركيز برمجية، ويستمع لأحداث التركيز.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يتحكم في أي حقل إدخال له تركيز لوحة المفاتيح",
              "طلب التركيز برمجيًا باستخدام requestFocus()",
              "نقل التركيز للحقل التالي باستخدام nextFocus()/previousFocus()",
              "الاستماع لتغييرات التركيز باستخدام addListener()",
              "يمكن إلغاء التركيز لإخفاء لوحة المفاتيح",
              "يجب التخلص منه لمنع تسريبات الذاكرة",
            ],
          ),
          StringContent(
            "FocusNode أساسي للتحكم في سلوك لوحة المفاتيح في النماذج. الاستخدامات الشائعة تشمل الانتقال للحقل التالي بعد الضغط على enter، التركيز التلقائي على الحقل الأول، أو إخفاء لوحة المفاتيح بعد إرسال النموذج.",
          ),
        ],
        notes: [
          "يجب التخلص من FocusNode في دالة dispose()",
          "يمكن ربطه بـ TextField/TextFormField عبر خاصية focusNode",
          "FocusNode واحد لكل TextField",
        ],
        bestUse:
            "التحكم في تركيز لوحة المفاتيح في النماذج، التنقل بين الحقول، التركيز التلقائي على الحقول، أو إخفاء لوحة المفاتيح برمجيًا.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic FocusNode usage
class FocusExample extends StatefulWidget {
  const FocusExample({super.key});
  
  @override
  State<FocusExample> createState() => _FocusExampleState();
}

class _FocusExampleState extends State<FocusExample> {
  late FocusNode _emailFocusNode;
  late FocusNode _passwordFocusNode;
  
  @override
  void initState() {
    super.initState();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    
    // Listen to focus changes
    _emailFocusNode.addListener(() {
      if (_emailFocusNode.hasFocus) {
        print('Email field has focus');
      }
    });
  }
  
  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          focusNode: _emailFocusNode,
          decoration: const InputDecoration(labelText: 'Email'),
          textInputAction: TextInputAction.next,
          onSubmitted: (_) {
            // Move to password field when enter is pressed
            _passwordFocusNode.requestFocus();
          },
        ),
        TextField(
          focusNode: _passwordFocusNode,
          decoration: const InputDecoration(labelText: 'Password'),
          obscureText: true,
          textInputAction: TextInputAction.done,
          onSubmitted: (_) {
            // Unfocus when done
            _passwordFocusNode.unfocus();
          },
        ),
        ElevatedButton(
          onPressed: () {
            // Programmatically focus email field
            _emailFocusNode.requestFocus();
          },
          child: const Text('Focus Email'),
        ),
      ],
    );
  }
}

// Auto-focus first field
class AutoFocusExample extends StatefulWidget {
  const AutoFocusExample({super.key});
  
  @override
  State<AutoFocusExample> createState() => _AutoFocusExampleState();
}

class _AutoFocusExampleState extends State<AutoFocusExample> {
  late FocusNode _firstFieldFocus;
  
  @override
  void initState() {
    super.initState();
    _firstFieldFocus = FocusNode();
    
    // Auto-focus after build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _firstFieldFocus.requestFocus();
    });
  }
  
  @override
  void dispose() {
    _firstFieldFocus.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _firstFieldFocus,
      decoration: const InputDecoration(labelText: 'Username'),
    );
  }
}

// Dismiss keyboard
void dismissKeyboard(BuildContext context) {
  // Method 1: Unfocus current focus
  FocusScope.of(context).unfocus();
  
  // Method 2: Request focus on empty node
  FocusScope.of(context).requestFocus(FocusNode());
}

// Complete form with focus management
class LoginFormWithFocus extends StatefulWidget {
  const LoginFormWithFocus({super.key});
  
  @override
  State<LoginFormWithFocus> createState() => _LoginFormWithFocusState();
}

class _LoginFormWithFocusState extends State<LoginFormWithFocus> {
  final _emailFocus = FocusNode();
  final _passwordFocus = FocusNode();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  
  @override
  void dispose() {
    _emailFocus.dispose();
    _passwordFocus.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(), // Dismiss on tap outside
      child: Column(
        children: [
          TextField(
            controller: _emailController,
            focusNode: _emailFocus,
            decoration: const InputDecoration(labelText: 'Email'),
            textInputAction: TextInputAction.next,
            onSubmitted: (_) => _passwordFocus.requestFocus(),
          ),
          TextField(
            controller: _passwordController,
            focusNode: _passwordFocus,
            decoration: const InputDecoration(labelText: 'Password'),
            obscureText: true,
            textInputAction: TextInputAction.done,
            onSubmitted: (_) => _login(),
          ),
          ElevatedButton(
            onPressed: _login,
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
  
  void _login() {
    FocusScope.of(context).unfocus(); // Dismiss keyboard
    print('Email: \${_emailController.text}');
    print('Password: \${_passwordController.text}');
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Full control over keyboard focus",
        "Can move between fields programmatically",
        "Listen to focus events",
        "Improve form UX significantly",
      ],
      ar: [
        "تحكم كامل في تركيز لوحة المفاتيح",
        "يمكن التنقل بين الحقول برمجيًا",
        "الاستماع لأحداث التركيز",
        "تحسين تجربة المستخدم للنماذج بشكل كبير",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Must remember to dispose",
        "Additional boilerplate code",
        "One FocusNode per field",
        "Easy to create memory leaks if not disposed",
      ],
      ar: [
        "يجب تذكر التخلص منه",
        "كود متكرر إضافي",
        "FocusNode واحد لكل حقل",
        "سهل إنشاء تسريبات ذاكرة إذا لم يُتخلص منه",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use FocusNode when:",
          value: [
            "Controlling which text field is currently active programmatically",
            "Moving focus to the next field automatically when 'Enter' is pressed",
            "Implementing custom keyboard shortcuts or focus-based UI highlights",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم FocusNode عندما:",
          value: [
            "التحكم في أي حقل نصي نشط حاليًا برمجيًا",
            "نقل التركيز إلى الحقل التالي تلقائيًا عند الضغط على 'Enter'",
            "تنفيذ اختصارات لوحة مفاتيح مخصصة أو تمييز واجهة المستخدم بناءً على التركيز",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "104",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .database],
    type: .practical,
    tags: ["basic", "sharedpreferences", "storage", "persistence"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is SharedPreferences used for?",
        answer: [
          StringContent(
            "SharedPreferences is a simple key-value storage for persisting small amounts of primitive data (strings, numbers, booleans). It's used for storing user preferences, settings, and simple app state.",
          ),
          UnorderedListContent(
            title: "Common use cases:",
            value: [
              "Store user preferences (theme, language, notifications)",
              "Remember login state (stay logged in)",
              "Save simple settings and flags",
              "Cache small amounts of data",
              "Store onboarding completion status",
              "Remember user choices",
            ],
          ),
          StringContent(
            "SharedPreferences is NOT a database. Use it only for small, simple data. For complex data or large datasets, use SQLite (sqflite) or other database solutions. Data persists even after app closes.",
          ),
        ],
        notes: [
          "Only for primitive types: int, double, bool, String, List<String>",
          "Not suitable for large data or complex objects",
          "Asynchronous operations (returns Future)",
        ],
        bestUse:
            "Store user preferences, settings, login state, or small cached data. Perfect for 'remember me', theme selection, language preference.",
      ),
      ar: QuestionContent(
        question: "فيما تُستخدم SharedPreferences؟",
        answer: [
          StringContent(
            "SharedPreferences هو تخزين بسيط لأزواج مفتاح-قيمة لإبقاء كميات صغيرة من البيانات الأولية (نصوص، أرقام، قيم منطقية). يُستخدم لتخزين تفضيلات المستخدم والإعدادات وحالة التطبيق البسيطة.",
          ),
          UnorderedListContent(
            title: "حالات الاستخدام الشائعة:",
            value: [
              "تخزين تفضيلات المستخدم (السمة، اللغة، الإشعارات)",
              "تذكر حالة تسجيل الدخول (البقاء مسجلاً)",
              "حفظ إعدادات وعلامات بسيطة",
              "تخزين مؤقت لكميات صغيرة من البيانات",
              "تخزين حالة اكتمال الإعداد",
              "تذكر اختيارات المستخدم",
            ],
          ),
          StringContent(
            "SharedPreferences ليست قاعدة بيانات. استخدمها فقط للبيانات الصغيرة والبسيطة. للبيانات المعقدة أو مجموعات البيانات الكبيرة، استخدم SQLite (sqflite) أو حلول قاعدة بيانات أخرى. تستمر البيانات حتى بعد إغلاق التطبيق.",
          ),
        ],
        notes: [
          "فقط للأنواع الأولية: int، double، bool، String، List<String>",
          "غير مناسب للبيانات الكبيرة أو الكائنات المعقدة",
          "عمليات غير متزامنة (يعيد Future)",
        ],
        bestUse:
            "تخزين تفضيلات المستخدم، الإعدادات، حالة تسجيل الدخول، أو بيانات مخزنة مؤقتًا صغيرة. مثالي لـ 'تذكرني'، اختيار السمة، تفضيل اللغة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Add dependency to pubspec.yaml:
// dependencies:
//   shared_preferences: ^2.2.0

import 'package:shared_preferences/shared_preferences.dart';

// Basic usage
class PreferencesService {
  // Save data
  Future<void> saveUserPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    
    await prefs.setString('username', 'john_doe');
    await prefs.setInt('userId', 12345);
    await prefs.setBool('isDarkMode', true);
    await prefs.setDouble('fontSize', 16.5);
    await prefs.setStringList('recentSearches', ['flutter', 'dart']);
  }
  
  // Read data
  Future<Map<String, dynamic>> getUserPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    
    return {
      'username': prefs.getString('username') ?? 'Guest',
      'userId': prefs.getInt('userId') ?? 0,
      'isDarkMode': prefs.getBool('isDarkMode') ?? false,
      'fontSize': prefs.getDouble('fontSize') ?? 14.0,
      'recentSearches': prefs.getStringList('recentSearches') ?? [],
    };
  }
  
  // Remove data
  Future<void> clearUserData() async {
    final prefs = await SharedPreferences.getInstance();
    
    await prefs.remove('username');
    // Or clear everything:
    // await prefs.clear();
  }
  
  // Check if key exists
  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('authToken');
  }
}

// Theme persistence example
class ThemeService {
  static const String _themeKey = 'isDarkMode';
  
  Future<bool> isDarkMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_themeKey) ?? false;
  }
  
  Future<void> setDarkMode(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_themeKey, value);
  }
}

// Using in app
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;
  
  @override
  void initState() {
    super.initState();
    _loadTheme();
  }
  
  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isDarkMode = prefs.getBool('isDarkMode') ?? false;
    });
  }
  
  Future<void> _toggleTheme() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
    await prefs.setBool('isDarkMode', _isDarkMode);
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Theme Toggle')),
        body: Center(
          child: Switch(
            value: _isDarkMode,
            onChanged: (_) => _toggleTheme(),
          ),
        ),
      ),
    );
  }
}

// Login state example
class AuthService {
  Future<void> login(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('authToken', token);
    await prefs.setBool('isLoggedIn', true);
  }
  
  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('authToken');
    await prefs.setBool('isLoggedIn', false);
  }
  
  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isLoggedIn') ?? false;
  }
  
  Future<String?> getAuthToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('authToken');
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Simple key-value storage",
        "Data persists after app closes",
        "Easy to use API",
        "Perfect for small user preferences",
      ],
      ar: [
        "تخزين مفتاح-قيمة بسيط",
        "تستمر البيانات بعد إغلاق التطبيق",
        "واجهة برمجية سهلة الاستخدام",
        "مثالي لتفضيلات المستخدم الصغيرة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Only for primitive types",
        "Not suitable for large data",
        "No encryption (not secure for sensitive data)",
        "Asynchronous (slight complexity)",
      ],
      ar: [
        "فقط للأنواع الأولية",
        "غير مناسب للبيانات الكبيرة",
        "لا تشفير (غير آمن للبيانات الحساسة)",
        "غير متزامن (تعقيد طفيف)",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use SharedPreferences when:",
          value: [
            "Persisting simple user settings like theme mode or language",
            "Storing small flags such as whether a user has seen an onboarding flow",
            "Saving lightweight session tokens or basic app configuration",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم SharedPreferences عندما:",
          value: [
            "حفظ إعدادات المستخدم البسيطة مثل وضع السمات أو اللغة",
            "تخزين علامات صغيرة مثل ما إذا كان المستخدم قد رأى تدفق الإعداد",
            "حفظ رموز الجلسة الخفيفة أو تكوين التطبيق الأساسي",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "105",
    difficulty: .intermediate,
    categories: [.ui, .performance],
    type: .practical,
    tags: ["advanced", "sliverappbar", "scrolling", "customscrollview"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "Explain SliverAppBar.",
        answer: [
          StringContent(
            "SliverAppBar is a Material Design app bar that integrates with CustomScrollView and can expand, collapse, and float as the user scrolls. It creates engaging, space-efficient headers.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Expands and collapses with scroll",
              "Can pin (stay visible) or float (hide on scroll down, show on scroll up)",
              "Supports flexible space for images or custom content",
              "Works only inside CustomScrollView",
              "Can have different expanded and collapsed appearances",
              "Great for image headers or hero sections",
            ],
          ),
          StringContent(
            "SliverAppBar is used in CustomScrollView with other Slivers. Common properties include expandedHeight (size when expanded), floating (appears when scrolling up), pinned (always visible), and flexibleSpace for custom content.",
          ),
        ],
        notes: [
          "Must be used inside CustomScrollView",
          "Combine with SliverList or SliverGrid for content",
          "floating and pinned can be combined",
        ],
        bestUse:
            "Create collapsing toolbars, parallax effects, or space-efficient headers. Perfect for profile screens, detail pages, or image-heavy content.",
      ),
      ar: QuestionContent(
        question: "اشرح SliverAppBar.",
        answer: [
          StringContent(
            "SliverAppBar هو شريط تطبيق Material Design يتكامل مع CustomScrollView ويمكن أن يتوسع ويطوى ويطفو أثناء تمرير المستخدم. ينشئ رؤوس جذابة وموفرة للمساحة.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يتوسع ويطوى مع التمرير",
              "يمكن تثبيته (يبقى مرئيًا) أو يطفو (يختفي عند التمرير للأسفل، يظهر عند التمرير للأعلى)",
              "يدعم مساحة مرنة للصور أو محتوى مخصص",
              "يعمل فقط داخل CustomScrollView",
              "يمكن أن يكون له مظاهر موسعة ومطوية مختلفة",
              "رائع لرؤوس الصور أو أقسام البطل",
            ],
          ),
          StringContent(
            "يُستخدم SliverAppBar في CustomScrollView مع Slivers أخرى. الخصائص الشائعة تشمل expandedHeight (الحجم عند التوسع)، floating (يظهر عند التمرير للأعلى)، pinned (مرئي دائمًا)، و flexibleSpace للمحتوى المخصص.",
          ),
        ],
        notes: [
          "يجب استخدامه داخل CustomScrollView",
          "ادمجه مع SliverList أو SliverGrid للمحتوى",
          "floating و pinned يمكن دمجهما",
        ],
        bestUse:
            "إنشاء أشرطة أدوات قابلة للطي، تأثيرات المنظر، أو رؤوس موفرة للمساحة. مثالي لشاشات الملف الشخصي وصفحات التفاصيل أو المحتوى الغني بالصور.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic SliverAppBar
CustomScrollView(
  slivers: [
    SliverAppBar(
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text('Title'),
        background: Image.network(
          'https://example.com/image.jpg',
          fit: BoxFit.cover,
        ),
      ),
    ),
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(
          title: Text('Item \$index'),
        ),
        childCount: 50,
      ),
    ),
  ],
)

// Different SliverAppBar behaviors
// Pinned: Always visible
SliverAppBar(
  pinned: true, // Stays at top
  title: const Text('Pinned'),
)

// Floating: Shows on scroll up
SliverAppBar(
  floating: true, // Appears when scrolling up
  title: const Text('Floating'),
)

// Snap: Fully shows/hides quickly
SliverAppBar(
  floating: true,
  snap: true, // Snaps to fully visible or hidden
  title: const Text('Snap'),
)

// Floating + Pinned
SliverAppBar(
  floating: true,
  pinned: true, // Combines both behaviors
  title: const Text('Floating + Pinned'),
)

// Complete example with image
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('John Doe'),
              titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://example.com/cover.jpg',
                    fit: BoxFit.cover,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black54,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'About',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Software developer passionate about Flutter...',
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                leading: const Icon(Icons.article),
                title: Text('Post \${index + 1}'),
                subtitle: Text('Posted \${index + 1} days ago'),
              ),
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Space-efficient collapsing headers",
        "Engaging scroll effects",
        "Built-in Material Design animations",
        "Flexible customization options",
      ],
      ar: [
        "رؤوس قابلة للطي موفرة للمساحة",
        "تأثيرات تمرير جذابة",
        "رسوم متحركة Material Design مدمجة",
        "خيارات تخصيص مرنة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Must use CustomScrollView (can't use with ListView)",
        "More complex than regular AppBar",
        "Behavior can be confusing (floating, pinned, snap combinations)",
      ],
      ar: [
        "يجب استخدام CustomScrollView (لا يمكن استخدامه مع ListView)",
        "أكثر تعقيدًا من AppBar العادي",
        "السلوك قد يكون محيرًا (تركيبات floating، pinned، snap)",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use SliverAppBar when:",
          value: [
            "Creating high-end UI headers that collapse or expand during scroll",
            "Maximizing screen space by hiding the app bar on down-scrolling",
            "Implementing visual effects like background image parallax in headers",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم SliverAppBar عندما:",
          value: [
            "إنشاء رؤوس واجهة مستخدم راقية تطوى أو تتوسع أثناء التمرير",
            "زيادة مساحة الشاشة عن طريق إخفاء شريط التطبيق عند التمرير للأسفل",
            "تنفيذ تأثيرات بصرية مثل اختلاف منظر صورة الخلفية في الرؤوس",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "106",
    difficulty: .intermediate,
    categories: [.ui, .performance],
    type: .theoretical,
    tags: ["advanced", "customscrollview", "slivers", "scrolling"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is CustomScrollView?",
        answer: [
          StringContent(
            "CustomScrollView is a scrollable widget that works with Slivers to create custom scroll effects. It's the foundation for advanced scrolling layouts like collapsing headers, mixed grids and lists, or sticky headers.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Uses Slivers (SliverList, SliverGrid, SliverAppBar, etc.)",
              "All children must be Sliver widgets",
              "Enables complex scrolling behaviors",
              "Better performance for heterogeneous scrolling content",
              "Single scroll controller for all slivers",
              "Foundation for Material Design scroll effects",
            ],
          ),
          StringContent(
            "CustomScrollView coordinates multiple Sliver widgets in a single scrollable area. Common Slivers include SliverAppBar (collapsing headers), SliverList (lists), SliverGrid (grids), and SliverToBoxAdapter (regular widgets).",
          ),
        ],
        notes: [
          "All children must be Sliver widgets",
          "Use SliverToBoxAdapter to wrap regular widgets",
          "More efficient than nesting scrollable widgets",
        ],
        bestUse:
            "Create complex scrolling UIs with mixed content types, collapsing headers, or custom scroll effects. Essential for advanced Material Design patterns.",
      ),
      ar: QuestionContent(
        question: "ما هو CustomScrollView؟",
        answer: [
          StringContent(
            "CustomScrollView هو ودجت قابل للتمرير يعمل مع Slivers لإنشاء تأثيرات تمرير مخصصة. إنه الأساس لتخطيطات تمرير متقدمة مثل رؤوس قابلة للطي، شبكات وقوائم مختلطة، أو رؤوس ثابتة.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يستخدم Slivers (SliverList، SliverGrid، SliverAppBar، إلخ)",
              "يجب أن تكون جميع الأطفال ودجتس Sliver",
              "يمكّن سلوكيات تمرير معقدة",
              "أداء أفضل لمحتوى تمرير غير متجانس",
              "متحكم تمرير واحد لجميع slivers",
              "أساس لتأثيرات تمرير Material Design",
            ],
          ),
          StringContent(
            "CustomScrollView ينسق عدة ودجتس Sliver في منطقة تمرير واحدة. Slivers الشائعة تشمل SliverAppBar (رؤوس قابلة للطي)، SliverList (قوائم)، SliverGrid (شبكات)، و SliverToBoxAdapter (ودجتس عادية).",
          ),
        ],
        notes: [
          "يجب أن تكون جميع الأطفال ودجتس Sliver",
          "استخدم SliverToBoxAdapter للف الودجتس العادية",
          "أكثر كفاءة من تداخل ودجتس قابلة للتمرير",
        ],
        bestUse:
            "إنشاء واجهات تمرير معقدة مع أنواع محتوى مختلطة، رؤوس قابلة للطي، أو تأثيرات تمرير مخصصة. أساسي لأنماط Material Design المتقدمة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic CustomScrollView
CustomScrollView(
  slivers: [
    SliverAppBar(
      title: const Text('Custom Scroll'),
      expandedHeight: 200,
      pinned: true,
    ),
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(
          title: Text('Item \$index'),
        ),
        childCount: 20,
      ),
    ),
  ],
)

// Mixed content types
CustomScrollView(
  slivers: [
    // Collapsing header
    SliverAppBar(
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text('Title'),
        background: Image.network('...', fit: BoxFit.cover),
      ),
    ),
    
    // Regular widget wrapped in Sliver
    SliverToBoxAdapter(
      child: Container(
        height: 100,
        color: Colors.blue,
        child: const Center(child: Text('Header Section')),
      ),
    ),
    
    // Grid section
    SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) => Card(
          child: Center(child: Text('Grid \$index')),
        ),
        childCount: 6,
      ),
    ),
    
    // Another header
    SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          'List Section',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    ),
    
    // List section
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(
          leading: const Icon(Icons.article),
          title: Text('Article \$index'),
        ),
        childCount: 10,
      ),
    ),
  ],
)

// SliverPadding, SliverFillRemaining
CustomScrollView(
  slivers: [
    SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => ListTile(title: Text('Item \$index')),
          childCount: 5,
        ),
      ),
    ),
    
    // Fill remaining space
    SliverFillRemaining(
      child: Container(
        color: Colors.grey[200],
        child: const Center(
          child: Text('Fills remaining space'),
        ),
      ),
    ),
  ],
)

// SliverPersistentHeader (sticky header)
CustomScrollView(
  slivers: [
    SliverPersistentHeader(
      pinned: true,
      delegate: MySliverHeaderDelegate(
        minHeight: 60,
        maxHeight: 200,
      ),
    ),
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(title: Text('Item \$index')),
        childCount: 50,
      ),
    ),
  ],
)

// Custom header delegate
class MySliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  
  MySliverHeaderDelegate({required this.minHeight, required this.maxHeight});
  
  @override
  double get minExtent => minHeight;
  
  @override
  double get maxExtent => maxHeight;
  
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Sticky Header',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20 + (shrinkOffset / maxHeight) * 10,
          ),
        ),
      ),
    );
  }
  
  @override
  bool shouldRebuild(MySliverHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight || minHeight != oldDelegate.minHeight;
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Create complex scrolling layouts",
        "Better performance than nested scroll views",
        "Single scroll physics for all slivers",
        "Enables Material Design scroll effects",
      ],
      ar: [
        "إنشاء تخطيطات تمرير معقدة",
        "أداء أفضل من طرق عرض التمرير المتداخلة",
        "فيزياء تمرير واحدة لجميع slivers",
        "يمكّن تأثيرات تمرير Material Design",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Steeper learning curve",
        "All children must be Slivers (use SliverToBoxAdapter for regular widgets)",
        "More verbose than simple ListView",
        "Complex API for beginners",
      ],
      ar: [
        "منحنى تعلم أعلى",
        "يجب أن تكون جميع الأطفال Slivers (استخدم SliverToBoxAdapter للودجتس العادية)",
        "أكثر تفصيلاً من ListView البسيط",
        "واجهة برمجية معقدة للمبتدئين",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use CustomScrollView when:",
          value: [
            "Combining mixed scrollable content types (lists, grids, and sticky headers)",
            "Optimizing performance for complex scrolling layouts via Slivers",
            "Implementing advanced scroll-linked effects that require fine coordination",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم CustomScrollView عندما:",
          value: [
            "دمج أنواع محتوى قابلة للتمرير مختلطة (قوائم، شبكات، ورؤوس ثابتة)",
            "تحسين الأداء لتخطيطات تمرير معقدة عبر Slivers",
            "تنفيذ تأثيرات متقدمة مرتبطة بالتمرير تتطلب تنسيقًا دقيقًا",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "107",
    difficulty: .basic,
    categories: [.flutterBasics],
    type: .practical,
    tags: [
      "intermediate",
      "willpopscope",
      "popscope",
      "backbutton",
      "navigation",
    ],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is WillPopScope (deprecated in favor of PopScope)?",
        answer: [
          StringContent(
            "WillPopScope (now replaced by PopScope) was a widget that intercepts the back button or pop gesture, allowing you to control whether the route should be popped. PopScope is the modern replacement with better functionality.",
          ),
          UnorderedListContent(
            title: "PopScope features:",
            value: [
              "Control back button/gesture behavior",
              "Show confirmation dialogs before leaving screen",
              "Prevent accidental navigation away from unsaved forms",
              "canPop: Whether route can be popped",
              "onPopInvoked: Called when pop is attempted",
              "Works on both Android back button and iOS swipe",
            ],
          ),
          StringContent(
            "Common use cases include showing 'Are you sure?' dialogs before leaving forms with unsaved changes, preventing accidental exits, or implementing custom back button behavior. PopScope replaces deprecated WillPopScope.",
          ),
        ],
        notes: [
          "WillPopScope is deprecated - use PopScope instead",
          "PopScope has different API than WillPopScope",
          "Handles both Android back button and iOS back gesture",
        ],
        bestUse:
            "Prevent accidental navigation, show confirmation dialogs, or implement custom back button logic. Essential for forms with unsaved data.",
      ),
      ar: QuestionContent(
        question: "ما هو WillPopScope (تم استبداله بـ PopScope)؟",
        answer: [
          StringContent(
            "WillPopScope (تم استبداله الآن بـ PopScope) كان ودجت يعترض زر الرجوع أو إيماءة الإزالة، مما يسمح لك بالتحكم فيما إذا كان يجب إزالة المسار. PopScope هو البديل الحديث بوظائف أفضل.",
          ),
          UnorderedListContent(
            title: "ميزات PopScope:",
            value: [
              "التحكم في سلوك زر/إيماءة الرجوع",
              "عرض حوارات تأكيد قبل مغادرة الشاشة",
              "منع التنقل العرضي من النماذج غير المحفوظة",
              "canPop: ما إذا كان يمكن إزالة المسار",
              "onPopInvoked: تُستدعى عند محاولة الإزالة",
              "يعمل على كل من زر رجوع Android وسحب iOS",
            ],
          ),
          StringContent(
            "حالات الاستخدام الشائعة تشمل عرض حوارات 'هل أنت متأكد؟' قبل مغادرة النماذج مع تغييرات غير محفوظة، منع الخروج العرضي، أو تنفيذ سلوك زر رجوع مخصص. PopScope يستبدل WillPopScope المهمل.",
          ),
        ],
        notes: [
          "WillPopScope مهمل - استخدم PopScope بدلاً منه",
          "PopScope لديه واجهة برمجية مختلفة عن WillPopScope",
          "يتعامل مع كل من زر رجوع Android وإيماءة رجوع iOS",
        ],
        bestUse:
            "منع التنقل العرضي، عرض حوارات تأكيد، أو تنفيذ منطق زر رجوع مخصص. أساسي للنماذج مع بيانات غير محفوظة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Modern approach: PopScope (Flutter 3.12+)
class FormScreen extends StatefulWidget {
  const FormScreen({super.key});
  
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  bool _hasUnsavedChanges = false;
  
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // Prevent automatic pop
      onPopInvoked: (bool didPop) async {
        if (didPop) return;
        
        // Show confirmation dialog
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Discard changes?'),
            content: const Text('You have unsaved changes.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Discard'),
              ),
            ],
          ),
        );
        
        if (shouldPop == true && context.mounted) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Form')),
        body: TextField(
          onChanged: (value) {
            setState(() {
              _hasUnsavedChanges = value.isNotEmpty;
            });
          },
        ),
      ),
    );
  }
}

// Conditional PopScope
class ConditionalPopExample extends StatefulWidget {
  const ConditionalPopExample({super.key});
  
  @override
  State<ConditionalPopExample> createState() => _ConditionalPopExampleState();
}

class _ConditionalPopExampleState extends State<ConditionalPopExample> {
  bool _canExit = false;
  
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _canExit,
      onPopInvoked: (bool didPop) {
        if (didPop) return;
        
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Complete the task before leaving'),
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Task')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _canExit = true;
              });
            },
            child: const Text('Complete Task'),
          ),
        ),
      ),
    );
  }
}

// OLD approach: WillPopScope (DEPRECATED)
// Don't use this in new code
WillPopScope(
  onWillPop: () async {
    final shouldPop = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Yes'),
          ),
        ],
      ),
    );
    return shouldPop ?? false;
  },
  child: Scaffold(
    body: const Text('Old approach - use PopScope instead'),
  ),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Prevent data loss from accidental navigation",
        "Custom back button behavior",
        "User-friendly confirmation dialogs",
        "Works on both Android and iOS",
      ],
      ar: [
        "منع فقدان البيانات من التنقل العرضي",
        "سلوك زر رجوع مخصص",
        "حوارات تأكيد صديقة للمستخدم",
        "يعمل على كل من Android و iOS",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can be confusing for users if overused",
        "Additional code complexity",
        "WillPopScope is deprecated (use PopScope)",
        "PopScope has different API than WillPopScope",
      ],
      ar: [
        "قد يكون محيرًا للمستخدمين إذا استُخدم بإفراط",
        "تعقيد كود إضافي",
        "WillPopScope مهمل (استخدم PopScope)",
        "PopScope لديه واجهة برمجية مختلفة عن WillPopScope",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use PopScope when:",
          value: [
            "Preventing accidental back-button presses that could cause data loss",
            "Displaying a confirmation dialog before allowed to leave a screen",
            "Coordinating complex closing workflows for custom overlays or drawers",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم PopScope عندما:",
          value: [
            "منع ضغطات زر الرجوع العرضية التي قد تسبب فقدان البيانات",
            "عرض حوار تأكيد قبل السماح بمغادرة الشاشة",
            "تنسيق تدفقات عمل الإغلاق المعقدة للتراكبات أو الأدرج المخصصة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "108",
    difficulty: .intermediate,
    categories: [.animations, .ui],
    type: .practical,
    tags: ["intermediate", "hero", "animation", "transition"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "Explain Hero animation.",
        answer: [
          StringContent(
            "Hero animation creates smooth transitions when navigating between screens by animating a widget from one route to another. The widget appears to 'fly' from its position on the first screen to its position on the second screen.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Automatic shared element transition",
              "Works with any widget (images, icons, containers)",
              "Both screens must have Hero widgets with matching tags",
              "Smooth, Material Design-compliant animations",
              "Customizable flight path and animation curve",
              "Handles size and position changes automatically",
            ],
          ),
          StringContent(
            "Hero animations require two Hero widgets with the same tag (one on each screen). When navigating, Flutter automatically animates the transition. Common use cases include image galleries, product details, and profile avatars.",
          ),
        ],
        notes: [
          "Both Hero widgets MUST have the same tag",
          "Tag must be unique within each route",
          "Works with Navigator push/pop",
        ],
        bestUse:
            "Image galleries, product detail transitions, profile avatars, or any shared element that should smoothly transition between screens.",
      ),
      ar: QuestionContent(
        question: "اشرح حركة Hero.",
        answer: [
          StringContent(
            "حركة Hero تنشئ انتقالات سلسة عند التنقل بين الشاشات عن طريق تحريك ودجت من مسار إلى آخر. يبدو الودجت وكأنه 'يطير' من موضعه على الشاشة الأولى إلى موضعه على الشاشة الثانية.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "انتقال عنصر مشترك تلقائي",
              "يعمل مع أي ودجت (صور، أيقونات، حاويات)",
              "يجب أن يكون لدى كلتا الشاشتين ودجتس Hero بوسوم متطابقة",
              "رسوم متحركة سلسة متوافقة مع Material Design",
              "مسار طيران ومنحنى حركة قابل للتخصيص",
              "يتعامل تلقائيًا مع تغييرات الحجم والموضع",
            ],
          ),
          StringContent(
            "تتطلب حركات Hero ودجتين Hero بنفس الوسم (واحد على كل شاشة). عند التنقل، يحرك Flutter الانتقال تلقائيًا. حالات الاستخدام الشائعة تشمل معارض الصور، تفاصيل المنتج، وصور الملف الشخصي.",
          ),
        ],
        notes: [
          "يجب أن يكون لدى كلتا ودجتي Hero نفس الوسم",
          "يجب أن يكون الوسم فريدًا ضمن كل مسار",
          "يعمل مع Navigator push/pop",
        ],
        bestUse:
            "معارض الصور، انتقالات تفاصيل المنتج، صور الملف الشخصي، أو أي عنصر مشترك يجب أن ينتقل بسلاسة بين الشاشات.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Screen 1: List of items
class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Items')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Hero(
              tag: 'item-\$index', // Unique tag for each hero
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://example.com/\$index.jpg'),
              ),
            ),
            title: Text('Item \$index'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemDetailScreen(index: index),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// Screen 2: Detail screen
class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({super.key, required this.index});
  
  final int index;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Item \$index Details')),
      body: Column(
        children: [
          Hero(
            tag: 'item-\$index', // SAME tag as in list screen
            child: Image.network(
              'https://example.com/\$index.jpg',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Details about item \$index',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Hero animation
Hero(
  tag: 'custom-hero',
  flightShuttleBuilder: (
    flightContext,
    animation,
    flightDirection,
    fromHeroContext,
    toHeroContext,
  ) {
    // Custom widget during transition
    return Material(
      color: Colors.transparent,
      child: ScaleTransition(
        scale: animation.drive(
          Tween<double>(begin: 0.0, end: 1.0).chain(
            CurveTween(curve: Curves.elasticOut),
          ),
        ),
        child: toHeroContext.widget,
      ),
    );
  },
  child: Image.network('...'),
)

// Hero with custom curve
Hero(
  tag: 'photo',
  createRectTween: (begin, end) {
    return RectTween(begin: begin, end: end);
  },
  child: Image.network('...'),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Smooth, polished transitions",
        "Automatic animation handling",
        "Works with any widget",
        "Improves perceived performance",
      ],
      ar: [
        "انتقالات سلسة ومصقولة",
        "معالجة تلقائية للحركة",
        "يعمل مع أي ودجت",
        "يحسّن الأداء المدرك",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Both screens must have matching Hero tags",
        "Can be complex with nested navigation",
        "May need custom builders for complex transitions",
      ],
      ar: [
        "يجب أن يكون لدى كلتا الشاشتين وسوم Hero متطابقة",
        "قد يكون معقدًا مع التنقل المتداخل",
        "قد يحتاج لبناة مخصصين للانتقالات المعقدة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Hero animations when:",
          value: [
            "Providing visual continuity for a shared element (like an image) across screens",
            "Guiding user focus from a thumbnail in a list to its detailed view",
            "Creating a premium, polished feel during route transitions",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم حركات Hero عندما:",
          value: [
            "توفير الاستمرارية البصرية لعنصر مشترك (مثل الصورة) عبر الشاشات",
            "توجيه تركيز المستخدم من صورة مصغرة في قائمة إلى عرضها المفصل",
            "إنشاء شعور راقي ومصقول أثناء انتقالات المسار",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "109",
    difficulty: .basic,
    categories: [.ui, .flutterBasics],
    type: .practical,
    tags: ["basic", "refreshindicator", "pulltorefresh", "ui"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "How to use RefreshIndicator?",
        answer: [
          StringContent(
            "RefreshIndicator is a Material Design widget that implements pull-to-refresh functionality. It wraps a scrollable widget and triggers a callback when the user pulls down from the top.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Wraps any scrollable widget (ListView, GridView, CustomScrollView)",
              "onRefresh callback returns Future",
              "Shows circular progress indicator while refreshing",
              "Customizable colors and stroke width",
              "Material Design compliant",
              "Works with async operations",
            ],
          ),
          StringContent(
            "RefreshIndicator requires a scrollable child and an onRefresh callback that returns a Future. The indicator automatically shows while the Future is pending and hides when complete. Essential for data refresh patterns.",
          ),
        ],
        notes: [
          "Child must be scrollable",
          "onRefresh must return Future",
          "Indicator shows until Future completes",
        ],
        bestUse:
            "Refresh data lists, reload content from API, or any pull-to-refresh pattern. Essential for news feeds, social media, or data-heavy apps.",
      ),
      ar: QuestionContent(
        question: "كيف تستخدم RefreshIndicator؟",
        answer: [
          StringContent(
            "RefreshIndicator هو ودجت Material Design ينفذ وظيفة السحب للتحديث. يلف ودجت قابل للتمرير ويفعّل استدعاء عندما يسحب المستخدم للأسفل من الأعلى.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يلف أي ودجت قابل للتمرير (ListView، GridView، CustomScrollView)",
              "استدعاء onRefresh يعيد Future",
              "يظهر مؤشر تقدم دائري أثناء التحديث",
              "ألوان وعرض خط قابلين للتخصيص",
              "متوافق مع Material Design",
              "يعمل مع عمليات async",
            ],
          ),
          StringContent(
            "يتطلب RefreshIndicator ودجت فرعي قابل للتمرير واستدعاء onRefresh يعيد Future. يظهر المؤشر تلقائيًا بينما Future معلق ويختفي عند الاكتمال. أساسي لأنماط تحديث البيانات.",
          ),
        ],
        notes: [
          "يجب أن يكون الفرع قابلاً للتمرير",
          "يجب أن يعيد onRefresh قيمة Future",
          "يظهر المؤشر حتى اكتمال Future",
        ],
        bestUse:
            "تحديث قوائم البيانات، إعادة تحميل المحتوى من API، أو أي نمط سحب للتحديث. أساسي لموجزات الأخبار، وسائل التواصل الاجتماعي، أو التطبيقات الثقيلة بالبيانات.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic RefreshIndicator
class RefreshableList extends StatefulWidget {
  const RefreshableList({super.key});
  
  @override
  State<RefreshableList> createState() => _RefreshableListState();
}

class _RefreshableListState extends State<RefreshableList> {
  List<String> items = List.generate(20, (index) => 'Item \$index');
  
  Future<void> _refreshData() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));
    
    setState(() {
      // Update data
      items = List.generate(20, (index) => 'Updated Item \$index');
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pull to Refresh')),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}

// Custom colors
RefreshIndicator(
  onRefresh: _refreshData,
  color: Colors.blue, // Spinner color
  backgroundColor: Colors.white,
  strokeWidth: 3.0,
  child: ListView(...),
)

// With error handling
Future<void> _refreshData() async {
  try {
    final newData = await fetchDataFromApi();
    setState(() {
      items = newData;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Failed to refresh: \$e')),
    );
  }
}

// With GridView
RefreshIndicator(
  onRefresh: _refreshData,
  child: GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
    ),
    itemCount: items.length,
    itemBuilder: (context, index) {
      return Card(
        child: Center(child: Text(items[index])),
      );
    },
  ),
)

// With CustomScrollView
RefreshIndicator(
  onRefresh: _refreshData,
  child: CustomScrollView(
    slivers: [
      SliverAppBar(
        title: const Text('Refresh'),
        floating: true,
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => ListTile(
            title: Text('Item \$index'),
          ),
          childCount: 20,
        ),
      ),
    ],
  ),
)

// Trigger refresh programmatically
class ProgrammaticRefresh extends StatefulWidget {
  const ProgrammaticRefresh({super.key});
  
  @override
  State<ProgrammaticRefresh> createState() => _ProgrammaticRefreshState();
}

class _ProgrammaticRefreshState extends State<ProgrammaticRefresh> {
  final GlobalKey<RefreshIndicatorState> _refreshKey = GlobalKey();
  
  @override
  void initState() {
    super.initState();
    // Trigger refresh on load
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _refreshKey.currentState?.show();
    });
  }
  
  Future<void> _refreshData() async {
    await Future.delayed(const Duration(seconds: 2));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refresh'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _refreshKey.currentState?.show();
            },
          ),
        ],
      ),
      body: RefreshIndicator(
        key: _refreshKey,
        onRefresh: _refreshData,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => ListTile(
            title: Text('Item \$index'),
          ),
        ),
      ),
    );
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Standard pull-to-refresh pattern",
        "Easy to implement",
        "Material Design compliant",
        "Works with any scrollable widget",
      ],
      ar: [
        "نمط سحب للتحديث قياسي",
        "سهل التنفيذ",
        "متوافق مع Material Design",
        "يعمل مع أي ودجت قابل للتمرير",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Only works with scrollable widgets",
        "Limited customization options",
        "Only vertical pull-down (no pull-up)",
      ],
      ar: [
        "يعمل فقط مع ودجتس قابلة للتمرير",
        "خيارات تخصيص محدودة",
        "فقط سحب عمودي للأسفل (لا سحب للأعلى)",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use RefreshIndicator when:",
          value: [
            "Implementing pull-to-refresh functionality in lists or grids",
            "Providing a manual way for users to re-fetch dynamic data from an API",
            "Adding familiar mobile navigation patterns for content updates",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم RefreshIndicator عندما:",
          value: [
            "تنفيذ وظيفة السحب للتحديث في القوائم أو الشبكات",
            "توفير طريقة يدوية للمستخدمين لإعادة جلب البيانات الديناميكية من واجهة برمجة تطبيقات",
            "إضافة أنماط تنقل محمولة مألوفة لتحديثات المحتوى",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "110",
    difficulty: .basic,
    categories: [.ui, .flutterBasics],
    type: .practical,
    tags: ["intermediate", "dismissible", "swipetodelete", "gestures"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is Dismissible?",
        answer: [
          StringContent(
            "Dismissible is a widget that can be dismissed by dragging in a specified direction. It's commonly used for swipe-to-delete functionality in lists, implementing Material Design swipe actions.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Swipe to dismiss in any direction",
              "onDismissed callback when dismissed",
              "confirmDismiss for confirmation dialogs",
              "Custom background widgets",
              "Undo functionality support",
              "Smooth Material Design animations",
            ],
          ),
          StringContent(
            "Dismissible requires a unique key for each item. Common patterns include swipe-to-delete in lists, email inbox actions, or task completion. The confirmDismiss callback allows showing confirmation dialogs before dismissal.",
          ),
        ],
        notes: [
          "Each Dismissible MUST have unique key",
          "onDismissed is called after animation completes",
          "Use confirmDismiss for confirmation dialogs",
        ],
        bestUse:
            "Swipe-to-delete lists, email inbox actions, task completion, or any swipe gesture patterns. Essential for Material Design list interactions.",
      ),
      ar: QuestionContent(
        question: "ما هو Dismissible؟",
        answer: [
          StringContent(
            "Dismissible هو ودجت يمكن رفضه بالسحب في اتجاه محدد. يُستخدم بشكل شائع لوظيفة السحب للحذف في القوائم، تنفيذ إجراءات السحب في Material Design.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "السحب للرفض في أي اتجاه",
              "استدعاء onDismissed عند الرفض",
              "confirmDismiss لحوارات التأكيد",
              "ودجتس خلفية مخصصة",
              "دعم وظيفة التراجع",
              "رسوم متحركة Material Design سلسة",
            ],
          ),
          StringContent(
            "يتطلب Dismissible مفتاحًا فريدًا لكل عنصر. الأنماط الشائعة تشمل السحب للحذف في القوائم، إجراءات صندوق الوارد للبريد الإلكتروني، أو إكمال المهام. يسمح استدعاء confirmDismiss بعرض حوارات تأكيد قبل الرفض.",
          ),
        ],
        notes: [
          "يجب أن يكون لكل Dismissible مفتاح فريد",
          "يُستدعى onDismissed بعد اكتمال الحركة",
          "استخدم confirmDismiss لحوارات التأكيد",
        ],
        bestUse:
            "قوائم السحب للحذف، إجراءات صندوق الوارد للبريد الإلكتروني، إكمال المهام، أو أي أنماط إيماءات السحب. أساسي لتفاعلات قائمة Material Design.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic Dismissible
class DismissibleListExample extends StatefulWidget {
  const DismissibleListExample({super.key});
  
  @override
  State<DismissibleListExample> createState() => _DismissibleListExampleState();
}

class _DismissibleListExampleState extends State<DismissibleListExample> {
  List<String> items = List.generate(20, (index) => 'Item \$index');
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Swipe to Delete')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Dismissible(
            key: Key(item), // Unique key for each item
            onDismissed: (direction) {
              setState(() {
                items.removeAt(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('\$item dismissed')),
              );
            },
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            child: ListTile(
              title: Text(item),
            ),
          );
        },
      ),
    );
  }
}

// With confirmation dialog
Dismissible(
  key: Key(item),
  confirmDismiss: (direction) async {
    return await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete'),
        content: const Text('Are you sure you want to delete this item?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  },
  onDismissed: (direction) {
    setState(() {
      items.removeAt(index);
    });
  },
  background: Container(color: Colors.red),
  child: ListTile(title: Text(item)),
)

// Different backgrounds for different directions
Dismissible(
  key: Key(item),
  background: Container(
    color: Colors.green,
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.only(left: 16),
    child: const Icon(Icons.archive, color: Colors.white),
  ),
  secondaryBackground: Container(
    color: Colors.red,
    alignment: Alignment.centerRight,
    padding: const EdgeInsets.only(right: 16),
    child: const Icon(Icons.delete, color: Colors.white),
  ),
  onDismissed: (direction) {
    if (direction == DismissDirection.startToEnd) {
      // Swiped right - archive
      print('Archived');
    } else {
      // Swiped left - delete
      print('Deleted');
    }
    setState(() {
      items.removeAt(index);
    });
  },
  child: ListTile(title: Text(item)),
)

// Specific dismiss direction
Dismissible(
  key: Key(item),
  direction: DismissDirection.endToStart, // Only swipe left to dismiss
  onDismissed: (direction) {
    // Handle dismiss
  },
  child: ListTile(title: Text(item)),
)

// With undo functionality
class DismissibleWithUndo extends StatefulWidget {
  const DismissibleWithUndo({super.key});
  
  @override
  State<DismissibleWithUndo> createState() => _DismissibleWithUndoState();
}

class _DismissibleWithUndoState extends State<DismissibleWithUndo> {
  List<String> items = List.generate(20, (index) => 'Item \$index');
  
  void _removeItem(int index) {
    final removedItem = items[index];
    setState(() {
      items.removeAt(index);
    });
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('\$removedItem deleted'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              items.insert(index, removedItem);
            });
          },
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Swipe with Undo')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index]),
            onDismissed: (_) => _removeItem(index),
            background: Container(
              color: Colors.red,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            child: ListTile(title: Text(items[index])),
          );
        },
      ),
    );
  }
}

// Custom dismiss threshold
Dismissible(
  key: Key(item),
  dismissThresholds: const {
    DismissDirection.endToStart: 0.8, // Must swipe 80% to dismiss
  },
  onDismissed: (direction) {
    // Handle dismiss
  },
  child: ListTile(title: Text(item)),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Intuitive swipe gestures",
        "Material Design compliant",
        "Confirmation dialog support",
        "Custom backgrounds and directions",
      ],
      ar: [
        "إيماءات سحب بديهية",
        "متوافق مع Material Design",
        "دعم حوار التأكيد",
        "خلفيات واتجاهات مخصصة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Requires unique key for each item",
        "Can be accidentally triggered",
        "May need confirmation dialogs to prevent mistakes",
      ],
      ar: [
        "يتطلب مفتاحًا فريدًا لكل عنصر",
        "يمكن تفعيله عن طريق الخطأ",
        "قد يحتاج حوارات تأكيد لمنع الأخطاء",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Dismissible when:",
          value: [
            "Implementing intuitive swipe-to-delete or archive actions in list items",
            "Managing quick task completion in to-do or productivity applications",
            "Adding interactive, gesture-based controls to repetitive list content",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Dismissible عندما:",
          value: [
            "تنفيذ إجراءات سحب بديهية للحذف أو الأرشفة في عناصر القائمة",
            "إدارة إكمال المهام السريع في تطبيقات المهام أو الإنتاجية",
            "إضافة عناصر تحكم تفاعلية قائمة على الإيماءات لمحتوى القائمة المتكرر",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "111",
    difficulty: .basic,
    categories: [.ui, .flutterBasics],
    type: .practical,
    tags: ["intermediate", "orientation", "mediaquery", "responsive"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "How to handle device orientation changes?",
        answer: [
          StringContent(
            "Device orientation changes can be handled using MediaQuery to detect current orientation and OrientationBuilder to rebuild UI when orientation changes. You can also lock orientation using SystemChrome.",
          ),
          UnorderedListContent(
            title: "Approaches:",
            value: [
              "MediaQuery.of(context).orientation - get current orientation",
              "OrientationBuilder - rebuild widget on orientation change",
              "SystemChrome.setPreferredOrientations - lock orientation",
              "LayoutBuilder - build different layouts based on constraints",
              "Different layouts for portrait and landscape",
              "Handle orientation in initState or didChangeDependencies",
            ],
          ),
          StringContent(
            "Common patterns include showing different layouts for portrait vs landscape, adjusting widget sizes, or locking orientation for specific screens (like video players or games).",
          ),
        ],
        notes: [
          "OrientationBuilder rebuilds on orientation change",
          "Use SystemChrome to lock orientation",
          "MediaQuery can also detect orientation",
        ],
        bestUse:
            "Create responsive layouts, video players, games, or any app that needs different UI for portrait/landscape orientations.",
      ),
      ar: QuestionContent(
        question: "كيف تتعامل مع تغيّر اتجاه الجهاز؟",
        answer: [
          StringContent(
            "يمكن التعامل مع تغيرات اتجاه الجهاز باستخدام MediaQuery لاكتشاف الاتجاه الحالي و OrientationBuilder لإعادة بناء الواجهة عند تغيير الاتجاه. يمكنك أيضًا قفل الاتجاه باستخدام SystemChrome.",
          ),
          UnorderedListContent(
            title: "الأساليب:",
            value: [
              "MediaQuery.of(context).orientation - احصل على الاتجاه الحالي",
              "OrientationBuilder - إعادة بناء الودجت عند تغيير الاتجاه",
              "SystemChrome.setPreferredOrientations - قفل الاتجاه",
              "LayoutBuilder - بناء تخطيطات مختلفة بناءً على القيود",
              "تخطيطات مختلفة للوضع الطولي والأفقي",
              "التعامل مع الاتجاه في initState أو didChangeDependencies",
            ],
          ),
          StringContent(
            "الأنماط الشائعة تشمل عرض تخطيطات مختلفة للوضع الطولي مقابل الأفقي، تعديل أحجام الودجتس، أو قفل الاتجاه لشاشات محددة (مثل مشغلات الفيديو أو الألعاب).",
          ),
        ],
        notes: [
          "OrientationBuilder يعيد البناء عند تغيير الاتجاه",
          "استخدم SystemChrome لقفل الاتجاه",
          "MediaQuery يمكنه أيضًا اكتشاف الاتجاه",
        ],
        bestUse:
            "إنشاء تخطيطات متجاوبة، مشغلات فيديو، ألعاب، أو أي تطبيق يحتاج واجهة مستخدم مختلفة للاتجاهات الطولية/الأفقية.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Using OrientationBuilder
class OrientationExample extends StatelessWidget {
  const OrientationExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Orientation')),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
            children: List.generate(20, (index) {
              return Card(
                child: Center(child: Text('Item \$index')),
              );
            }),
          );
        },
      ),
    );
  }
}

// Using MediaQuery
class MediaQueryOrientation extends StatelessWidget {
  const MediaQueryOrientation({super.key});
  
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final isPortrait = orientation == Orientation.portrait;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(isPortrait ? 'Portrait' : 'Landscape'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isPortrait ? Icons.stay_current_portrait : Icons.stay_current_landscape,
              size: 100,
            ),
            const SizedBox(height: 20),
            Text(
              isPortrait ? 'Portrait Mode' : 'Landscape Mode',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

// Lock orientation for entire app
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

// Lock orientation for specific screen
class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});
  
  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  @override
  void initState() {
    super.initState();
    // Lock to landscape when screen opens
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }
  
  @override
  void dispose() {
    // Restore all orientations when leaving
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Video Player')),
      body: const Center(
        child: Text('Video playing in landscape'),
      ),
    );
  }
}

// Different layouts for orientation
class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive')),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _buildPortraitLayout();
          } else {
            return _buildLandscapeLayout();
          }
        },
      ),
    );
  }
  
  Widget _buildPortraitLayout() {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.blue,
            child: const Center(child: Text('Top Section')),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            child: const Center(child: Text('Bottom Section')),
          ),
        ),
      ],
    );
  }
  
  Widget _buildLandscapeLayout() {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.blue,
            child: const Center(child: Text('Left Section')),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green,
            child: const Center(child: Text('Right Section')),
          ),
        ),
      ],
    );
  }
}

// Using LayoutBuilder for more control
class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilder')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > constraints.maxHeight) {
            // Landscape
            return Row(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.blue)),
              ],
            );
          } else {
            // Portrait
            return Column(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.blue)),
              ],
            );
          }
        },
      ),
    );
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Create responsive layouts easily",
        "Lock orientation when needed",
        "Different UIs for portrait/landscape",
        "Better UX for different screen modes",
      ],
      ar: [
        "إنشاء تخطيطات متجاوبة بسهولة",
        "قفل الاتجاه عند الحاجة",
        "واجهات مختلفة للوضع الطولي/الأفقي",
        "تجربة مستخدم أفضل لأوضاع الشاشة المختلفة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "More code complexity for different layouts",
        "State may be lost during orientation change (without proper handling)",
        "Testing both orientations required",
      ],
      ar: [
        "تعقيد كود أكبر للتخطيطات المختلفة",
        "قد تُفقد الحالة أثناء تغيير الاتجاه (بدون معالجة صحيحة)",
        "الاختبار لكلا الاتجاهين مطلوب",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Handle Orientation when:",
          value: [
            "Optimizing the user interface for both portrait and landscape modes",
            "Locking specific screens (like video players) to a fixed orientation",
            "Detecting physical hardware rotation to adjust component positioning",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "تعامل مع الاتجاه عندما:",
          value: [
            "تحسين واجهة المستخدم لكل من الوضع الطولي والأفقي",
            "قفل شاشات معينة (مثل مشغلات الفيديو) على اتجاه ثابت",
            "اكتشاف دوران أجهزة الهاردوير لتعديل موضع المكونات",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "112",
    difficulty: .intermediate,
    categories: [.ui, .flutterBasics],
    type: .theoretical,
    tags: ["intermediate", "absorbpointer", "ignorepointer", "gestures"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "Explain AbsorbPointer vs IgnorePointer.",
        answer: [
          StringContent(
            "Both AbsorbPointer and IgnorePointer prevent their child widgets from receiving pointer events (touches, clicks), but they differ in how they handle hit testing.",
          ),
          UnorderedListContent(
            title: "AbsorbPointer:",
            value: [
              "Prevents child from receiving pointer events",
              "Absorbs (consumes) the hit test - stops event propagation",
              "Widgets behind it cannot receive events",
              "Like a solid barrier",
            ],
          ),
          UnorderedListContent(
            title: "IgnorePointer:",
            value: [
              "Prevents child from receiving pointer events",
              "Does NOT absorb hit test - events pass through",
              "Widgets behind it CAN receive events",
              "Like an invisible barrier",
            ],
          ),
          StringContent(
            "The key difference: AbsorbPointer stops events completely (nothing behind it can respond), while IgnorePointer allows events to pass through to widgets underneath.",
          ),
        ],
        notes: [
          "AbsorbPointer = solid barrier (absorbs events)",
          "IgnorePointer = transparent barrier (events pass through)",
          "Both have 'absorbing' and 'ignoring' boolean properties",
        ],
        bestUse:
            "Use AbsorbPointer to create modal overlays. Use IgnorePointer to disable specific widgets while allowing interaction with widgets behind them.",
      ),
      ar: QuestionContent(
        question: "اشرح الفرق بين AbsorbPointer و IgnorePointer.",
        answer: [
          StringContent(
            "كلاهما AbsorbPointer و IgnorePointer يمنعان ودجتس الأطفال من تلقي أحداث المؤشر (اللمسات، النقرات)، لكنهما يختلفان في كيفية التعامل مع اختبار الضربة.",
          ),
          UnorderedListContent(
            title: "AbsorbPointer:",
            value: [
              "يمنع الفرع من تلقي أحداث المؤشر",
              "يمتص (يستهلك) اختبار الضربة - يوقف انتشار الحدث",
              "الودجتس خلفه لا يمكنها تلقي الأحداث",
              "مثل حاجز صلب",
            ],
          ),
          UnorderedListContent(
            title: "IgnorePointer:",
            value: [
              "يمنع الفرع من تلقي أحداث المؤشر",
              "لا يمتص اختبار الضربة - تمر الأحداث خلاله",
              "الودجتس خلفه يمكنها تلقي الأحداث",
              "مثل حاجز غير مرئي",
            ],
          ),
          StringContent(
            "الفرق الرئيسي: AbsorbPointer يوقف الأحداث تمامًا (لا شيء خلفه يمكنه الاستجابة)، بينما IgnorePointer يسمح للأحداث بالمرور إلى الودجتس تحته.",
          ),
        ],
        notes: [
          "AbsorbPointer = حاجز صلب (يمتص الأحداث)",
          "IgnorePointer = حاجز شفاف (تمر الأحداث خلاله)",
          "كلاهما لديه خصائص منطقية 'absorbing' و 'ignoring'",
        ],
        bestUse:
            "استخدم AbsorbPointer لإنشاء تراكبات مشروطة. استخدم IgnorePointer لتعطيل ودجتس محددة مع السماح بالتفاعل مع الودجتس خلفها.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// AbsorbPointer example
class AbsorbPointerExample extends StatelessWidget {
  const AbsorbPointerExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AbsorbPointer')),
      body: Stack(
        children: [
          // Button underneath
          Center(
            child: ElevatedButton(
              onPressed: () => print('Bottom button pressed'),
              child: const Text('Bottom Button'),
            ),
          ),
          // AbsorbPointer blocks events to everything
          AbsorbPointer(
            absorbing: true, // Set to false to enable interaction
            child: Container(
              color: Colors.black26,
              child: Center(
                child: ElevatedButton(
                  onPressed: () => print('Top button pressed'),
                  child: const Text('Top Button (Disabled)'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// IgnorePointer example
class IgnorePointerExample extends StatelessWidget {
  const IgnorePointerExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IgnorePointer')),
      body: Stack(
        children: [
          // Button underneath
          Center(
            child: ElevatedButton(
              onPressed: () => print('Bottom button pressed'),
              child: const Text('Bottom Button'),
            ),
          ),
          // IgnorePointer only disables its child, events pass through
          IgnorePointer(
            ignoring: true, // Set to false to enable interaction
            child: Container(
              color: Colors.black26,
              child: Center(
                child: ElevatedButton(
                  onPressed: () => print('Top button pressed'),
                  child: const Text('Top Button (Disabled)'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Comparison side by side
class ComparisonExample extends StatefulWidget {
  const ComparisonExample({super.key});
  
  @override
  State<ComparisonExample> createState() => _ComparisonExampleState();
}

class _ComparisonExampleState extends State<ComparisonExample> {
  bool _disableInteraction = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Comparison')),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text('Disable Interaction'),
            value: _disableInteraction,
            onChanged: (value) {
              setState(() {
                _disableInteraction = value;
              });
            },
          ),
          const Divider(),
          Expanded(
            child: Row(
              children: [
                // AbsorbPointer side
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'AbsorbPointer',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Bottom button (AbsorbPointer)'),
                                    ),
                                  );
                                },
                                child: const Text('Bottom'),
                              ),
                            ),
                            AbsorbPointer(
                              absorbing: _disableInteraction,
                              child: Container(
                                color: Colors.red.withOpacity(0.3),
                                child: Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content: Text('Top button (AbsorbPointer)'),
                                        ),
                                      );
                                    },
                                    child: const Text('Top'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(),
                // IgnorePointer side
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        'IgnorePointer',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Bottom button (IgnorePointer)'),
                                    ),
                                  );
                                },
                                child: const Text('Bottom'),
                              ),
                            ),
                            IgnorePointer(
                              ignoring: _disableInteraction,
                              child: Container(
                                color: Colors.blue.withOpacity(0.3),
                                child: Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                          content: Text('Top button (IgnorePointer)'),
                                        ),
                                      );
                                    },
                                    child: const Text('Top'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Practical use case: Loading overlay
class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    super.key,
    required this.isLoading,
    required this.child,
  });
  
  final bool isLoading;
  final Widget child;
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          AbsorbPointer( // Use AbsorbPointer to block ALL interaction
            child: Container(
              color: Colors.black54,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
      ],
    );
  }
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Simple way to disable interaction",
        "No need to modify child widgets",
        "Useful for loading states and overlays",
        "Can be toggled dynamically",
      ],
      ar: [
        "طريقة بسيطة لتعطيل التفاعل",
        "لا حاجة لتعديل ودجتس الأطفال",
        "مفيد لحالات التحميل والتراكبات",
        "يمكن تبديله ديناميكيًا",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Easy to confuse AbsorbPointer with IgnorePointer",
        "Can make UI unresponsive if misused",
        "May not work as expected with complex widget trees",
      ],
      ar: [
        "سهل الخلط بين AbsorbPointer و IgnorePointer",
        "قد يجعل الواجهة غير مستجيبة إذا أُسيء استخدامه",
        "قد لا يعمل كما هو متوقع مع أشجار ودجتس معقدة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Choose AbsorbPointer/IgnorePointer when:",
          value: [
            "Creating non-interactive loading states or partial UI overlays",
            "Blocking interaction with a layer that should still capture hit tests (AbsorbPointer)",
            "Allowing touch events to pass through transparent visual elements (IgnorePointer)",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "اختر AbsorbPointer/IgnorePointer عندما:",
          value: [
            "إنشاء حالات تحميل غير تفاعلية أو تراكبات واجهة مستخدم جزئية",
            "منع التفاعل مع طبقة يجب أن تظل تلتقط اختبارات الضربة (AbsorbPointer)",
            "السماح لأحداث اللمس بالمرور عبر العناصر البصرية الشفافة (IgnorePointer)",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "113",
    difficulty: .intermediate,
    categories: [.ui, .flutterBasics],
    type: .theoretical,
    tags: ["intermediate", "overflowbox", "layout", "constraints"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is OverflowBox?",
        answer: [
          StringContent(
            "OverflowBox is a widget that allows its child to overflow its parent's constraints. It imposes different constraints on its child than it receives from its parent, enabling the child to be larger or smaller than normally allowed.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Allows child to exceed parent's size constraints",
              "Can specify minWidth, maxWidth, minHeight, maxHeight",
              "Child can be larger or smaller than parent",
              "Useful for creating effects that break layout boundaries",
              "Does not clip overflowing content",
              "Alignment controls positioning within parent",
            ],
          ),
          StringContent(
            "OverflowBox is useful when you need a widget to intentionally overflow its bounds, such as decorative elements, floating action buttons, or creating special visual effects. The overflowing content is not clipped by default.",
          ),
        ],
        notes: [
          "Child can overflow parent's bounds",
          "Content is NOT clipped unless wrapped in ClipRect",
          "Use alignment to position child within parent",
        ],
        bestUse:
            "Create decorative overflows, floating elements, or special visual effects that need to break normal layout constraints.",
      ),
      ar: QuestionContent(
        question: "ما هو OverflowBox؟",
        answer: [
          StringContent(
            "OverflowBox هو ودجت يسمح لفرعه بتجاوز قيود الأب. يفرض قيودًا مختلفة على فرعه عما يتلقاه من والده، مما يمكّن الفرع من أن يكون أكبر أو أصغر مما هو مسموح به عادة.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يسمح للفرع بتجاوز قيود حجم الأب",
              "يمكن تحديد minWidth، maxWidth، minHeight، maxHeight",
              "يمكن أن يكون الفرع أكبر أو أصغر من الأب",
              "مفيد لإنشاء تأثيرات تكسر حدود التخطيط",
              "لا يقص المحتوى المتجاوز",
              "المحاذاة تتحكم في الموضع داخل الأب",
            ],
          ),
          StringContent(
            "OverflowBox مفيد عندما تحتاج لودجت ليتجاوز حدوده عمدًا، مثل العناصر الزخرفية، أزرار الإجراءات العائمة، أو إنشاء تأثيرات بصرية خاصة. المحتوى المتجاوز لا يُقص افتراضيًا.",
          ),
        ],
        notes: [
          "يمكن للفرع تجاوز حدود الأب",
          "المحتوى لا يُقص إلا إذا لُف في ClipRect",
          "استخدم المحاذاة لوضع الفرع داخل الأب",
        ],
        bestUse:
            "إنشاء تجاوزات زخرفية، عناصر عائمة، أو تأثيرات بصرية خاصة تحتاج لكسر قيود التخطيط العادية.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic OverflowBox
class OverflowBoxExample extends StatelessWidget {
  const OverflowBoxExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OverflowBox')),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: OverflowBox(
            maxWidth: 200, // Child can be up to 200 wide
            maxHeight: 200, // Child can be up to 200 tall
            child: Container(
              width: 150,
              height: 150,
              color: Colors.red.withOpacity(0.5),
              child: const Center(
                child: Text(
                  'Overflow',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Decorative overflow effect
class DecorativeOverflow extends StatelessWidget {
  const DecorativeOverflow({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Decorative Overflow')),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Card Content',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              // Badge that overflows top-right corner
              Positioned(
                top: -10,
                right: -10,
                child: OverflowBox(
                  maxWidth: 50,
                  maxHeight: 50,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Alignment control
OverflowBox(
  minWidth: 0,
  maxWidth: double.infinity,
  minHeight: 0,
  maxHeight: double.infinity,
  alignment: Alignment.topLeft, // Position child
  child: Container(
    width: 300,
    height: 300,
    color: Colors.red,
  ),
)

// Clipping overflow
ClipRect(
  child: Container(
    width: 100,
    height: 100,
    color: Colors.blue,
    child: OverflowBox(
      maxWidth: 200,
      maxHeight: 200,
      child: Container(
        width: 150,
        height: 150,
        color: Colors.red, // Will be clipped
      ),
    ),
  ),
)

// Practical use case: Floating action element
class FloatingElement extends StatelessWidget {
  const FloatingElement({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Floating Element')),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          if (index == 5) {
            return Container(
              height: 100,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'Featured Item',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  // Floating badge
                  Positioned(
                    top: -20,
                    right: 20,
                    child: OverflowBox(
                      maxHeight: 80,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'NEW',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return ListTile(
            title: Text('Item \$index'),
          );
        },
      ),
    );
  }
}

// Compare with UnconstrainedBox
// UnconstrainedBox: Removes ALL constraints from child
UnconstrainedBox(
  child: Container(
    width: 1000, // Can be any size
    height: 1000,
    color: Colors.red,
  ),
)

// OverflowBox: You control the constraints
OverflowBox(
  maxWidth: 500, // You set the max
  maxHeight: 500,
  child: Container(
    width: 400,
    height: 400,
    color: Colors.blue,
  ),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Precise control over child constraints",
        "Create decorative overflows",
        "Useful for special visual effects",
        "Can position with alignment",
      ],
      ar: [
        "تحكم دقيق في قيود الفرع",
        "إنشاء تجاوزات زخرفية",
        "مفيد للتأثيرات البصرية الخاصة",
        "يمكن الوضع بالمحاذاة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Can break layout if misused",
        "Content may overflow screen bounds",
        "Requires careful constraint management",
        "May need ClipRect to prevent unwanted overflow",
      ],
      ar: [
        "قد يكسر التخطيط إذا أُسيء استخدامه",
        "قد يتجاوز المحتوى حدود الشاشة",
        "يتطلب إدارة دقيقة للقيود",
        "قد يحتاج ClipRect لمنع التجاوز غير المرغوب فيه",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use OverflowBox when:",
          value: [
            "Intentionally allowing a child widget to exceed its parent's constraints",
            "Creating artistic 'bleed' effects for decorative UI elements",
            "Displaying fixed-size content in a container that would otherwise shrink it",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم OverflowBox عندما:",
          value: [
            "السماح لودجت فرع بتجاوز قيود والده عمدًا",
            "إنشاء تأثيرات 'نزيف' فنية لعناصر واجهة المستخدم الزخرفية",
            "عرض محتوى ثابت الحجم في حاوية قد تؤدي لتقليصه بخلاف ذلك",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "114",
    difficulty: .basic,
    categories: [.basic, .flutterBasics, .ui],
    type: .practical,
    tags: ["basic", "mediaquery", "screensize", "responsive"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "How to get the screen height and width?",
        answer: [
          StringContent(
            "Use MediaQuery to get screen dimensions in Flutter. MediaQuery provides device and screen information including size, orientation, padding, and more.",
          ),
          UnorderedListContent(
            title: "Common MediaQuery properties:",
            value: [
              "MediaQuery.of(context).size - Screen width and height",
              "MediaQuery.of(context).padding - System UI padding (status bar, notch)",
              "MediaQuery.of(context).viewInsets - Keyboard height",
              "MediaQuery.of(context).orientation - Portrait or landscape",
              "MediaQuery.of(context).devicePixelRatio - Screen pixel density",
              "MediaQuery.of(context).textScaleFactor - User's text size setting",
            ],
          ),
          StringContent(
            "MediaQuery.of(context).size returns a Size object with width and height properties. These values are in logical pixels, not physical pixels. Essential for responsive layouts and adaptive UIs.",
          ),
        ],
        notes: [
          "Returns logical pixels, not physical pixels",
          "Updates when screen size changes (orientation, split screen)",
          "BuildContext required to access MediaQuery",
        ],
        bestUse:
            "Create responsive layouts, calculate widget sizes based on screen, handle different screen sizes and orientations.",
      ),
      ar: QuestionContent(
        question: "كيف تحصل على عرض وارتفاع الشاشة؟",
        answer: [
          StringContent(
            "استخدم MediaQuery للحصول على أبعاد الشاشة في Flutter. يوفر MediaQuery معلومات الجهاز والشاشة بما في ذلك الحجم، الاتجاه، الحشو، والمزيد.",
          ),
          UnorderedListContent(
            title: "خصائص MediaQuery الشائعة:",
            value: [
              "MediaQuery.of(context).size - عرض وارتفاع الشاشة",
              "MediaQuery.of(context).padding - حشوة واجهة المستخدم للنظام (شريط الحالة، الشق)",
              "MediaQuery.of(context).viewInsets - ارتفاع لوحة المفاتيح",
              "MediaQuery.of(context).orientation - طولي أو أفقي",
              "MediaQuery.of(context).devicePixelRatio - كثافة بكسل الشاشة",
              "MediaQuery.of(context).textScaleFactor - إعداد حجم نص المستخدم",
            ],
          ),
          StringContent(
            "MediaQuery.of(context).size يعيد كائن Size مع خصائص width و height. هذه القيم بالبكسل المنطقي، وليس البكسل الفعلي. أساسي للتخطيطات المتجاوبة والواجهات التكيفية.",
          ),
        ],
        notes: [
          "يعيد البكسل المنطقي، وليس البكسل الفعلي",
          "يتحدث عند تغيير حجم الشاشة (الاتجاه، الشاشة المقسمة)",
          "BuildContext مطلوب للوصول إلى MediaQuery",
        ],
        bestUse:
            "إنشاء تخطيطات متجاوبة، حساب أحجام الودجتس بناءً على الشاشة، التعامل مع أحجام واتجاهات شاشة مختلفة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Get screen size
class ScreenSizeExample extends StatelessWidget {
  const ScreenSizeExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    
    return Scaffold(
      appBar: AppBar(title: const Text('Screen Size')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Width: \${width.toStringAsFixed(2)}'),
            Text('Height: \${height.toStringAsFixed(2)}'),
            Text('Aspect Ratio: \${(width / height).toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}

// Responsive widget sizes
class ResponsiveSizeExample extends StatelessWidget {
  const ResponsiveSizeExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Sizes')),
      body: Center(
        child: Container(
          width: screenWidth * 0.8, // 80% of screen width
          height: screenHeight * 0.3, // 30% of screen height
          color: Colors.blue,
          child: const Center(
            child: Text(
              'Responsive Container',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

// All MediaQuery properties
class MediaQueryInfo extends StatelessWidget {
  const MediaQueryInfo({super.key});
  
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    
    return Scaffold(
      appBar: AppBar(title: const Text('MediaQuery Info')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildInfoRow('Width', '\${mediaQuery.size.width}'),
          _buildInfoRow('Height', '\${mediaQuery.size.height}'),
          _buildInfoRow('Orientation', '\${mediaQuery.orientation}'),
          _buildInfoRow('Device Pixel Ratio', '\${mediaQuery.devicePixelRatio}'),
          _buildInfoRow('Text Scale Factor', '\${mediaQuery.textScaleFactor}'),
          _buildInfoRow('Padding Top', '\${mediaQuery.padding.top}'),
          _buildInfoRow('Padding Bottom', '\${mediaQuery.padding.bottom}'),
          _buildInfoRow('ViewInsets Bottom (Keyboard)', '\${mediaQuery.viewInsets.bottom}'),
        ],
      ),
    );
  }
  
  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}

// Adaptive layout based on screen size
class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({super.key});
  
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    
    // Breakpoints
    if (width < 600) {
      return _buildMobileLayout();
    } else if (width < 900) {
      return _buildTabletLayout();
    } else {
      return _buildDesktopLayout();
    }
  }
  
  Widget _buildMobileLayout() {
    return const Scaffold(
      body: Center(child: Text('Mobile Layout')),
    );
  }
  
  Widget _buildTabletLayout() {
    return const Scaffold(
      body: Center(child: Text('Tablet Layout')),
    );
  }
  
  Widget _buildDesktopLayout() {
    return const Scaffold(
      body: Center(child: Text('Desktop Layout')),
    );
  }
}

// Safe area aware layout
class SafeAreaExample extends StatelessWidget {
  const SafeAreaExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final availableHeight = mediaQuery.size.height - 
                           mediaQuery.padding.top - 
                           mediaQuery.padding.bottom;
    
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: mediaQuery.padding.top,
            color: Colors.red,
            child: const Center(child: Text('Status Bar Area')),
          ),
          Container(
            height: availableHeight,
            color: Colors.blue,
            child: const Center(child: Text('Safe Content Area')),
          ),
          Container(
            height: mediaQuery.padding.bottom,
            color: Colors.green,
            child: const Center(child: Text('Bottom Safe Area')),
          ),
        ],
      ),
    );
  }
}

// Keyboard aware layout
class KeyboardAwareExample extends StatelessWidget {
  const KeyboardAwareExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    
    return Scaffold(
      appBar: AppBar(title: const Text('Keyboard Aware')),
      body: Padding(
        padding: EdgeInsets.only(bottom: keyboardHeight),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Type here',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Text('Keyboard height: \$keyboardHeight'),
          ],
        ),
      ),
    );
  }
}

// Without BuildContext (using WidgetsBinding)
void getScreenSizeWithoutContext() {
  final view = WidgetsBinding.instance.platformDispatcher.views.first;
  final size = view.physicalSize / view.devicePixelRatio;
  
  print('Screen width: \${size.width}');
  print('Screen height: \${size.height}');
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Easy access to screen dimensions",
        "Updates automatically on changes",
        "Comprehensive device information",
        "Essential for responsive design",
      ],
      ar: [
        "وصول سهل لأبعاد الشاشة",
        "يتحدث تلقائيًا عند التغييرات",
        "معلومات شاملة عن الجهاز",
        "أساسي للتصميم المتجاوب",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Requires BuildContext",
        "May trigger rebuilds if not used carefully",
        "Returns logical pixels (may need conversion for physical pixels)",
      ],
      ar: [
        "يتطلب BuildContext",
        "قد يفعّل إعادات بناء إذا لم يُستخدم بحذر",
        "يعيد البكسل المنطقي (قد يحتاج تحويل للبكسل الفعلي)",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Screen Dimensions (MediaQuery) when:",
          value: [
            "Calculating dynamic widths or heights for adaptive components",
            "Detecting system-level paddings (status bar, notch) for safe layouts",
            "Applying different styling based on available logical pixel density",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم أبعاد الشاشة (MediaQuery) عندما:",
          value: [
            "حساب العروض أو الارتفاعات الديناميكية للمكونات التكيفية",
            "اكتشاف حشوات مستوى النظام (شريط الحالة، الشق) للتخطيطات الآمنة",
            "تطبيق أنماط مختلفة بناءً على كثافة البكسل المنطقي المتاحة",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "115",
    difficulty: .basic,
    categories: [.ui, .flutterBasics],
    type: .practical,
    tags: ["intermediate", "stepper", "forms", "wizard"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is Stepper?",
        answer: [
          StringContent(
            "Stepper is a Material Design widget that displays progress through a sequence of logical steps. It's commonly used for multi-step forms, onboarding flows, or wizards where users complete tasks in order.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Shows numbered or labeled steps",
              "Supports linear and non-linear progression",
              "Each step has title, subtitle, and content",
              "Built-in controls (continue, cancel)",
              "Customizable step state (editing, complete, disabled, error)",
              "Horizontal or vertical layout",
            ],
          ),
          StringContent(
            "Stepper requires a list of Step widgets, a currentStep index, and callbacks for onStepContinue, onStepCancel, and onStepTapped. Each step can show different content and be marked as complete, active, or disabled.",
          ),
        ],
        notes: [
          "Control progression with currentStep",
          "Each Step needs unique content",
          "Can be linear or non-linear",
        ],
        bestUse:
            "Multi-step forms, registration wizards, checkout processes, onboarding flows, or any sequential task completion UI.",
      ),
      ar: QuestionContent(
        question: "ما هو Stepper؟",
        answer: [
          StringContent(
            "Stepper هو ودجت Material Design يعرض التقدم عبر تسلسل من الخطوات المنطقية. يُستخدم بشكل شائع للنماذج متعددة الخطوات، تدفقات الإعداد، أو المعالجات حيث يكمل المستخدمون المهام بالترتيب.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يعرض خطوات مرقمة أو معنونة",
              "يدعم التقدم الخطي وغير الخطي",
              "كل خطوة لها عنوان وعنوان فرعي ومحتوى",
              "عناصر تحكم مدمجة (متابعة، إلغاء)",
              "حالة خطوة قابلة للتخصيص (تحرير، مكتمل، معطل، خطأ)",
              "تخطيط أفقي أو عمودي",
            ],
          ),
          StringContent(
            "يتطلب Stepper قائمة من ودجتس Step، فهرس currentStep، واستدعاءات لـ onStepContinue و onStepCancel و onStepTapped. كل خطوة يمكن أن تعرض محتوى مختلف وتُميّز كمكتملة أو نشطة أو معطلة.",
          ),
        ],
        notes: [
          "التحكم في التقدم باستخدام currentStep",
          "كل Step يحتاج محتوى فريد",
          "يمكن أن يكون خطيًا أو غير خطي",
        ],
        bestUse:
            "نماذج متعددة الخطوات، معالجات التسجيل، عمليات الدفع، تدفقات الإعداد، أو أي واجهة مستخدم لإكمال مهمة تسلسلية.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic Stepper
class BasicStepperExample extends StatefulWidget {
  const BasicStepperExample({super.key});
  
  @override
  State<BasicStepperExample> createState() => _BasicStepperExampleState();
}

class _BasicStepperExampleState extends State<BasicStepperExample> {
  int _currentStep = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stepper')),
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep < 2) {
            setState(() {
              _currentStep++;
            });
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep--;
            });
          }
        },
        onStepTapped: (step) {
          setState(() {
            _currentStep = step;
          });
        },
        steps: [
          Step(
            title: const Text('Step 1'),
            subtitle: const Text('Enter details'),
            content: const TextField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            isActive: _currentStep >= 0,
            state: _currentStep > 0 ? StepState.complete : StepState.indexed,
          ),
          Step(
            title: const Text('Step 2'),
            subtitle: const Text('Confirm information'),
            content: const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            isActive: _currentStep >= 1,
            state: _currentStep > 1 ? StepState.complete : StepState.indexed,
          ),
          Step(
            title: const Text('Step 3'),
            subtitle: const Text('Complete'),
            content: const Text('All done!'),
            isActive: _currentStep >= 2,
            state: _currentStep > 2 ? StepState.complete : StepState.indexed,
          ),
        ],
      ),
    );
  }
}

// Registration wizard
class RegistrationWizard extends StatefulWidget {
  const RegistrationWizard({super.key});
  
  @override
  State<RegistrationWizard> createState() => _RegistrationWizardState();
}

class _RegistrationWizardState extends State<RegistrationWizard> {
  int _currentStep = 0;
  final _formKeys = List.generate(3, (_) => GlobalKey<FormState>());
  
  String _name = '';
  String _email = '';
  String _password = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration')),
      body: Stepper(
        type: StepperType.vertical,
        currentStep: _currentStep,
        onStepContinue: _onStepContinue,
        onStepCancel: _onStepCancel,
        controlsBuilder: (context, details) {
          return Row(
            children: [
              ElevatedButton(
                onPressed: details.onStepContinue,
                child: Text(_currentStep == 2 ? 'Submit' : 'Continue'),
              ),
              const SizedBox(width: 8),
              if (_currentStep > 0)
                TextButton(
                  onPressed: details.onStepCancel,
                  child: const Text('Back'),
                ),
            ],
          );
        },
        steps: [
          Step(
            title: const Text('Personal Info'),
            content: Form(
              key: _formKeys[0],
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) =>
                    value?.isEmpty ?? true ? 'Required' : null,
                onSaved: (value) => _name = value ?? '',
              ),
            ),
            isActive: _currentStep >= 0,
            state: _currentStep > 0 ? StepState.complete : StepState.indexed,
          ),
          Step(
            title: const Text('Account Details'),
            content: Form(
              key: _formKeys[1],
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Email'),
                    validator: (value) =>
                        value?.contains('@') ?? false ? null : 'Invalid email',
                    onSaved: (value) => _email = value ?? '',
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    validator: (value) =>
                        (value?.length ?? 0) >= 8 ? null : 'Min 8 characters',
                    onSaved: (value) => _password = value ?? '',
                  ),
                ],
              ),
            ),
            isActive: _currentStep >= 1,
            state: _currentStep > 1 ? StepState.complete : StepState.indexed,
          ),
          Step(
            title: const Text('Review'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name: \$_name'),
                Text('Email: \$_email'),
              ],
            ),
            isActive: _currentStep >= 2,
          ),
        ],
      ),
    );
  }
  
  void _onStepContinue() {
    if (_formKeys[_currentStep].currentState?.validate() ?? false) {
      _formKeys[_currentStep].currentState?.save();
      
      if (_currentStep < 2) {
        setState(() {
          _currentStep++;
        });
      } else {
        // Submit
        _submitRegistration();
      }
    }
  }
  
  void _onStepCancel() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
      });
    }
  }
  
  void _submitRegistration() {
    print('Name: \$_name');
    print('Email: \$_email');
    print('Password: \$_password');
    
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Registration complete!')),
    );
  }
}

// Horizontal stepper
Stepper(
  type: StepperType.horizontal,
  currentStep: _currentStep,
  steps: [
    Step(title: const Text('Step 1'), content: Container()),
    Step(title: const Text('Step 2'), content: Container()),
    Step(title: const Text('Step 3'), content: Container()),
  ],
)

// Non-linear stepper (can jump to any step)
Stepper(
  currentStep: _currentStep,
  onStepTapped: (step) {
    setState(() {
      _currentStep = step;
    });
  },
  steps: [
    Step(
      title: const Text('Step 1'),
      content: Container(),
      state: _step1Complete ? StepState.complete : StepState.indexed,
    ),
    Step(
      title: const Text('Step 2'),
      content: Container(),
      state: _step2Complete ? StepState.complete : StepState.indexed,
    ),
  ],
)

// Step states
Step(
  title: const Text('Step'),
  content: Container(),
  state: StepState.indexed, // Default numbered state
  // state: StepState.editing, // Currently editing
  // state: StepState.complete, // Completed with checkmark
  // state: StepState.disabled, // Disabled step
  // state: StepState.error, // Error state with X
)

// Custom controls
Stepper(
  controlsBuilder: (context, details) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          FilledButton(
            onPressed: details.onStepContinue,
            child: const Text('Next'),
          ),
          const SizedBox(width: 8),
          OutlinedButton(
            onPressed: details.onStepCancel,
            child: const Text('Previous'),
          ),
        ],
      ),
    );
  },
  steps: [...],
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Built-in Material Design stepper UI",
        "Easy step progression management",
        "Customizable controls and states",
        "Supports both linear and non-linear flows",
      ],
      ar: [
        "واجهة مستخدم stepper Material Design مدمجة",
        "إدارة تقدم خطوات سهلة",
        "عناصر تحكم وحالات قابلة للتخصيص",
        "يدعم التدفقات الخطية وغير الخطية",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Limited styling flexibility",
        "Vertical stepper can take much space",
        "Manual state management required",
        "May not fit all design requirements",
      ],
      ar: [
        "مرونة تصميم محدودة",
        "stepper العمودي قد يأخذ مساحة كبيرة",
        "إدارة حالة يدوية مطلوبة",
        "قد لا يناسب جميع متطلبات التصميم",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Stepper when:",
          value: [
            "Guiding users through a logical sequence of multi-step tasks",
            "Building onboarding flows or complex wizards (like checkout or registration)",
            "Visualizing progress in a linear or non-linear process",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Stepper عندما:",
          value: [
            "توجيه المستخدمين عبر تسلسل منطقي لمهام متعددة الخطوات",
            "بناء تدفقات الإعداد أو المعالجات المعقدة (مثل الدفع أو التسجيل)",
            "تصور التقدم في عملية خطية أو غير خطية",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "116",
    difficulty: .basic,
    categories: [.ui, .flutterBasics],
    type: .theoretical,
    tags: ["intermediate", "table", "layout", "rows", "columns"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "Explain Table widget.",
        answer: [
          StringContent(
            "Table is a widget that displays children in rows and columns with a grid layout. Unlike GridView, Table is not scrollable and all children are rendered at once. Each row can have different numbers of children, and column widths can be customized.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Non-scrollable grid layout",
              "Rows and columns structure",
              "Flexible column sizing (IntrinsicColumnWidth, FlexColumnWidth, FixedColumnWidth, FractionColumnWidth)",
              "TableBorder for borders and decoration",
              "TableRow for row-level configuration",
              "Efficient for small tables with known size",
              "Each cell is a widget",
            ],
          ),
          StringContent(
            "Table is ideal for displaying tabular data like schedules, comparison tables, or structured information. Column widths can be set individually or as default for all columns. Use TableRow to group cells into rows.",
          ),
        ],
        notes: [
          "Not scrollable - all content rendered at once",
          "Each row must have the same number of children as specified in columnWidths",
          "For scrollable tables, use DataTable or custom ListView",
        ],
        bestUse:
            "Small, non-scrollable tables with structured data like schedules, comparison charts, or form layouts.",
      ),
      ar: QuestionContent(
        question: "اشرح ودجت Table.",
        answer: [
          StringContent(
            "Table هو ودجت يعرض الأطفال في صفوف وأعمدة بتخطيط شبكي. على عكس GridView، Table غير قابل للتمرير ويتم عرض جميع الأطفال دفعة واحدة. كل صف يمكن أن يحتوي على عدد مختلف من الأطفال، ويمكن تخصيص عروض الأعمدة.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "تخطيط شبكي غير قابل للتمرير",
              "بنية صفوف وأعمدة",
              "حجم عمود مرن (IntrinsicColumnWidth، FlexColumnWidth، FixedColumnWidth، FractionColumnWidth)",
              "TableBorder للحدود والزخرفة",
              "TableRow لتكوين على مستوى الصف",
              "فعال للجداول الصغيرة ذات الحجم المعروف",
              "كل خلية هي ودجت",
            ],
          ),
          StringContent(
            "Table مثالي لعرض البيانات الجدولية مثل الجداول الزمنية، جداول المقارنة، أو المعلومات المنظمة. يمكن تعيين عروض الأعمدة بشكل فردي أو كإعداد افتراضي لجميع الأعمدة. استخدم TableRow لتجميع الخلايا في صفوف.",
          ),
        ],
        notes: [
          "غير قابل للتمرير - يتم عرض جميع المحتويات دفعة واحدة",
          "كل صف يجب أن يحتوي على نفس عدد الأطفال كما هو محدد في columnWidths",
          "للجداول القابلة للتمرير، استخدم DataTable أو ListView مخصص",
        ],
        bestUse:
            "جداول صغيرة غير قابلة للتمرير مع بيانات منظمة مثل الجداول الزمنية، مخططات المقارنة، أو تخطيطات النماذج.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic Table
class BasicTableExample extends StatelessWidget {
  const BasicTableExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Table Widget')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Table(
          border: TableBorder.all(color: Colors.black),
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('Name', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('Age', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('City', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(padding: const EdgeInsets.all(8), child: Text('Alice')),
                Padding(padding: const EdgeInsets.all(8), child: Text('25')),
                Padding(padding: const EdgeInsets.all(8), child: Text('NYC')),
              ],
            ),
            TableRow(
              children: [
                Padding(padding: const EdgeInsets.all(8), child: Text('Bob')),
                Padding(padding: const EdgeInsets.all(8), child: Text('30')),
                Padding(padding: const EdgeInsets.all(8), child: Text('LA')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Column width customization
Table(
  columnWidths: const {
    0: FlexColumnWidth(2), // First column takes 2x space
    1: FlexColumnWidth(1), // Second column takes 1x space
    2: FixedColumnWidth(100), // Third column fixed 100 pixels
  },
  children: [...],
)

// IntrinsicColumnWidth - sizes to content
Table(
  columnWidths: const {
    0: IntrinsicColumnWidth(),
    1: FlexColumnWidth(),
  },
  children: [...],
)

// FractionColumnWidth - percentage of table width
Table(
  columnWidths: const {
    0: FractionColumnWidth(0.3), // 30% of table width
    1: FractionColumnWidth(0.7), // 70% of table width
  },
  children: [...],
)

// Styled table with decoration
class StyledTableExample extends StatelessWidget {
  const StyledTableExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder(
        horizontalInside: BorderSide(color: Colors.grey.shade300),
        verticalInside: BorderSide(color: Colors.grey.shade300),
        top: BorderSide(color: Colors.blue, width: 2),
        bottom: BorderSide(color: Colors.blue, width: 2),
      ),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
          decoration: BoxDecoration(color: Colors.blue.shade100),
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                'Product',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                'Price',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(padding: const EdgeInsets.all(12), child: Text('Item 1')),
            Padding(padding: const EdgeInsets.all(12), child: Text('\$10')),
          ],
        ),
        TableRow(
          decoration: BoxDecoration(color: Colors.grey.shade50),
          children: [
            Padding(padding: const EdgeInsets.all(12), child: Text('Item 2')),
            Padding(padding: const EdgeInsets.all(12), child: Text('\$20')),
          ],
        ),
      ],
    );
  }
}

// Schedule table
class ScheduleTable extends StatelessWidget {
  const ScheduleTable({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.grey),
      defaultColumnWidth: const FlexColumnWidth(),
      children: [
        TableRow(
          decoration: BoxDecoration(color: Colors.blue.shade700),
          children: [
            _buildHeaderCell('Time'),
            _buildHeaderCell('Monday'),
            _buildHeaderCell('Tuesday'),
            _buildHeaderCell('Wednesday'),
          ],
        ),
        _buildScheduleRow('9:00', 'Math', 'English', 'Science'),
        _buildScheduleRow('10:00', 'History', 'Math', 'Art'),
        _buildScheduleRow('11:00', 'PE', 'Science', 'Music'),
      ],
    );
  }
  
  Widget _buildHeaderCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
  
  TableRow _buildScheduleRow(String time, String mon, String tue, String wed) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(time, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Padding(padding: const EdgeInsets.all(8), child: Text(mon)),
        Padding(padding: const EdgeInsets.all(8), child: Text(tue)),
        Padding(padding: const EdgeInsets.all(8), child: Text(wed)),
      ],
    );
  }
}

// Default column width
Table(
  defaultColumnWidth: const IntrinsicColumnWidth(),
  children: [...],
)

// Vertical alignment
Table(
  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
  // Options: top, middle, bottom, baseline, fill
  children: [...],
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Simple API for tabular layouts",
        "Flexible column sizing options",
        "Lightweight for small tables",
        "Each cell can be any widget",
        "Good for structured, non-scrollable data",
      ],
      ar: [
        "واجهة برمجية بسيطة للتخطيطات الجدولية",
        "خيارات حجم عمود مرنة",
        "خفيف للجداول الصغيرة",
        "كل خلية يمكن أن تكون أي ودجت",
        "جيد للبيانات المنظمة غير القابلة للتمرير",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Not scrollable - all content loaded at once",
        "Can cause performance issues with many rows",
        "Less suitable for large datasets",
        "All rows must have same number of children",
        "No built-in sorting or filtering",
      ],
      ar: [
        "غير قابل للتمرير - يتم تحميل جميع المحتويات دفعة واحدة",
        "قد يسبب مشاكل أداء مع العديد من الصفوف",
        "أقل ملاءمة لمجموعات البيانات الكبيرة",
        "جميع الصفوف يجب أن يكون لها نفس عدد الأطفال",
        "لا فرز أو تصفية مدمجة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use Table when:",
          value: [
            "Displaying static, non-scrollable tabular data like product comparisons",
            "Aligning complex grid-like layouts that don't require lazy loading",
            "Creating structured UI components such as schedules or calendars",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم Table عندما:",
          value: [
            "عرض بيانات جدولية ثابتة غير قابلة للتمرير مثل مقارنات المنتجات",
            "محاذاة تخطيطات شبكية معقدة لا تتطلب تحميلاً كسولاً",
            "إنشاء مكونات واجهة مستخدم منظمة مثل الجداول الزمنية أو التقاويم",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "117",
    difficulty: .intermediate,
    categories: [.ui, .flutterBasics],
    type: .theoretical,
    tags: ["intermediate", "backdropfilter", "blur", "effects", "imagefilter"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is BackdropFilter?",
        answer: [
          StringContent(
            "BackdropFilter is a widget that applies an ImageFilter to everything painted behind it. It's commonly used to create blur effects, frosted glass effects, or other visual filters on the content behind a widget.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Applies filters to background content",
              "Common filters: blur, matrix transformation",
              "Creates frosted glass or glassmorphism effects",
              "Works with ImageFilter from dart:ui",
              "Requires child widget",
              "Computationally expensive - use sparingly",
              "Commonly wrapped in ClipRect for clipping",
            ],
          ),
          StringContent(
            "The most common use is ImageFilter.blur() to create blurred backgrounds. BackdropFilter affects everything behind it in the paint order, not just its parent. For best performance, limit the number of BackdropFilters and the blur radius.",
          ),
        ],
        notes: [
          "Expensive operation - impacts performance",
          "Only affects content behind it in paint order",
          "Requires a child widget (often Container or SizedBox)",
          "Wrap in ClipRect to limit filter area",
        ],
        bestUse:
            "Frosted glass effects, blurred overlays, modal dialogs with blurred backgrounds, modern glassmorphism UI.",
      ),
      ar: QuestionContent(
        question: "ما هو BackdropFilter؟",
        answer: [
          StringContent(
            "BackdropFilter هو ودجت يطبق ImageFilter على كل شيء مرسوم خلفه. يُستخدم بشكل شائع لإنشاء تأثيرات التمويه، تأثيرات الزجاج المتجمد، أو مرشحات بصرية أخرى على المحتوى خلف الودجت.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يطبق المرشحات على محتوى الخلفية",
              "مرشحات شائعة: التمويه، تحويل المصفوفة",
              "ينشئ تأثيرات زجاج متجمد أو glassmorphism",
              "يعمل مع ImageFilter من dart:ui",
              "يتطلب ودجت فرع",
              "مكلف حسابيًا - استخدم بحذر",
              "عادة ملفوف في ClipRect للقص",
            ],
          ),
          StringContent(
            "الاستخدام الأكثر شيوعًا هو ImageFilter.blur() لإنشاء خلفيات مموهة. يؤثر BackdropFilter على كل شيء خلفه في ترتيب الرسم، وليس فقط والده. للحصول على أفضل أداء، حدد عدد BackdropFilters ونصف قطر التمويه.",
          ),
        ],
        notes: [
          "عملية مكلفة - تؤثر على الأداء",
          "يؤثر فقط على المحتوى خلفه في ترتيب الرسم",
          "يتطلب ودجت فرع (غالبًا Container أو SizedBox)",
          "لف في ClipRect لتحديد منطقة المرشح",
        ],
        bestUse:
            "تأثيرات الزجاج المتجمد، تراكبات مموهة، مربعات حوار مشروطة مع خلفيات مموهة، واجهة مستخدم glassmorphism حديثة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic blur effect
class BlurExample extends StatelessWidget {
  const BlurExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://example.com/image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Blurred overlay
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.3),
                      width: 1.5,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Frosted Glass Effect',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Modal with blurred background
class BlurredModal extends StatelessWidget {
  const BlurredModal({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Content behind
        ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => ListTile(
            title: Text('Item \$index'),
          ),
        ),
        // Blurred modal overlay
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.black.withOpacity(0.3),
              child: Center(
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Dialog Title',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text('Dialog content goes here'),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Glassmorphism card
class GlassmorphicCard extends StatelessWidget {
  const GlassmorphicCard({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.blue],
        ),
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(
              width: 300,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  width: 1.5,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.credit_card,
                    size: 60,
                    color: Colors.white.withOpacity(0.9),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Card Number',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 14,
                    ),
                  ),
                  const Text(
                    '•••• •••• •••• 1234',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Bottom sheet with blur
void showBlurredBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            child: const Center(
              child: Text('Bottom Sheet Content'),
            ),
          ),
        ),
      );
    },
  );
}

// Different blur strengths
// Light blur
BackdropFilter(
  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
  child: Container(),
)

// Medium blur
BackdropFilter(
  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
  child: Container(),
)

// Heavy blur
BackdropFilter(
  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
  child: Container(),
)

// Matrix filter (advanced)
BackdropFilter(
  filter: ImageFilter.matrix(Matrix4.identity().storage),
  child: Container(),
)

// Performance optimization - limit area
ClipRect(
  child: BackdropFilter(
    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
    child: Container(
      width: 200,
      height: 200,
      color: Colors.white.withOpacity(0.2),
    ),
  ),
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Creates beautiful frosted glass effects",
        "Modern glassmorphism UI patterns",
        "Enhances visual hierarchy",
        "Works with any background content",
        "Simple API",
      ],
      ar: [
        "ينشئ تأثيرات زجاج متجمد جميلة",
        "أنماط واجهة مستخدم glassmorphism حديثة",
        "يعزز التسلسل الهرمي البصري",
        "يعمل مع أي محتوى خلفية",
        "واجهة برمجية بسيطة",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Computationally expensive - impacts performance",
        "Can cause frame drops if overused",
        "Battery drain on mobile devices",
        "High blur values significantly reduce performance",
        "Not suitable for animations or scrolling content",
      ],
      ar: [
        "مكلف حسابيًا - يؤثر على الأداء",
        "قد يسبب انخفاض الإطارات إذا أُفرط في الاستخدام",
        "استنزاف البطارية على الأجهزة المحمولة",
        "قيم التمويه العالية تقلل الأداء بشكل كبير",
        "غير مناسب للرسوم المتحركة أو المحتوى القابل للتمرير",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use BackdropFilter when:",
          value: [
            "Creating modern 'glassmorphism' or frosted glass visual styles",
            "Applying blur effects to background elements during modal transitions",
            "Enhancing UI depth by subtly blurring content behind overlays",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم BackdropFilter عندما:",
          value: [
            "إنشاء أنماط بصرية حديثة مثل 'glassmorphism' أو الزجاج المتجمد",
            "تطبيق تأثيرات التمويه على عناصر الخلفية أثناء انتقالات المودال",
            "تعزيز عمق واجهة المستخدم عن طريق تمويه المحتوى خلف التراكبات بشكل طفيف",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "118",
    difficulty: .basic,
    categories: [.ui, .flutterBasics],
    type: .theoretical,
    tags: ["intermediate", "indexedstack", "stack", "visibility", "tabview"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "Explain IndexedStack.",
        answer: [
          StringContent(
            "IndexedStack is a Stack widget that shows only one child at a time based on an index. Unlike Stack where all children are visible (possibly overlapping), IndexedStack displays only the child at the current index while keeping all children in the widget tree.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Shows only one child at a time",
              "All children remain in widget tree (maintains state)",
              "Switch between children using index property",
              "Children keep their state when hidden",
              "No animation - instant switching",
              "Useful for tab-like interfaces without TabView",
              "Sizing based on currently displayed child",
            ],
          ),
          StringContent(
            "IndexedStack is perfect for preserving state across different views, like tab content where you want to maintain scroll position or form data when switching tabs. All children are built and kept in memory, so use cautiously with many or heavy children.",
          ),
        ],
        notes: [
          "All children are built and kept in memory",
          "Only one child visible at a time",
          "State is preserved when switching",
          "Sizing based on current child, not all children",
        ],
        bestUse:
            "Tab-like interfaces without TabController, preserving state across views, bottom navigation with persistent state.",
      ),
      ar: QuestionContent(
        question: "اشرح IndexedStack.",
        answer: [
          StringContent(
            "IndexedStack هو ودجت Stack يعرض طفلًا واحدًا فقط في كل مرة بناءً على فهرس. على عكس Stack حيث جميع الأطفال مرئيون (ربما متداخلون)، يعرض IndexedStack فقط الطفل في الفهرس الحالي مع الحفاظ على جميع الأطفال في شجرة الودجت.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يعرض طفلًا واحدًا فقط في كل مرة",
              "جميع الأطفال يبقون في شجرة الودجت (يحافظ على الحالة)",
              "التبديل بين الأطفال باستخدام خاصية index",
              "الأطفال يحافظون على حالتهم عند الإخفاء",
              "لا رسوم متحركة - تبديل فوري",
              "مفيد لواجهات شبيهة بالتبويبات بدون TabView",
              "الحجم بناءً على الطفل المعروض حاليًا",
            ],
          ),
          StringContent(
            "IndexedStack مثالي للحفاظ على الحالة عبر طرق عرض مختلفة، مثل محتوى التبويب حيث تريد الحفاظ على موضع التمرير أو بيانات النموذج عند التبديل بين التبويبات. يتم بناء جميع الأطفال والاحتفاظ بهم في الذاكرة، لذا استخدم بحذر مع العديد من الأطفال أو الأطفال الثقيلين.",
          ),
        ],
        notes: [
          "يتم بناء جميع الأطفال والاحتفاظ بهم في الذاكرة",
          "طفل واحد فقط مرئي في كل مرة",
          "يتم الحفاظ على الحالة عند التبديل",
          "الحجم بناءً على الطفل الحالي، وليس جميع الأطفال",
        ],
        bestUse:
            "واجهات شبيهة بالتبويبات بدون TabController، الحفاظ على الحالة عبر طرق العرض، التنقل السفلي مع حالة مستمرة.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic IndexedStack
class IndexedStackExample extends StatefulWidget {
  const IndexedStackExample({super.key});
  
  @override
  State<IndexedStackExample> createState() => _IndexedStackExampleState();
}

class _IndexedStackExampleState extends State<IndexedStackExample> {
  int _currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IndexedStack')),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Container(color: Colors.red, child: const Center(child: Text('Screen 1'))),
          Container(color: Colors.blue, child: const Center(child: Text('Screen 2'))),
          Container(color: Colors.green, child: const Center(child: Text('Screen 3'))),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

// State preservation example
class StatePreservationExample extends StatefulWidget {
  const StatePreservationExample({super.key});
  
  @override
  State<StatePreservationExample> createState() => _StatePreservationExampleState();
}

class _StatePreservationExampleState extends State<StatePreservationExample> {
  int _selectedTab = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Preserved')),
      body: IndexedStack(
        index: _selectedTab,
        children: const [
          ScrollableList(), // Scroll position preserved
          CounterScreen(), // Counter state preserved
          FormScreen(), // Form data preserved
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => setState(() => _selectedTab = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Counter'),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'Form'),
        ],
      ),
    );
  }
}

class ScrollableList extends StatelessWidget {
  const ScrollableList({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) => ListTile(
        title: Text('Item \$index'),
        subtitle: Text('Scroll position is preserved'),
      ),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Counter state preserved:'),
          Text(
            '\$_counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          ElevatedButton(
            onPressed: () => setState(() => _counter++),
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }
}

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});
  
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _controller = TextEditingController();
  
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text('Form data is preserved when switching tabs:'),
          const SizedBox(height: 16),
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              labelText: 'Enter text',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}

// Comparison: IndexedStack vs Visibility
// IndexedStack - all children built, only one visible
IndexedStack(
  index: _currentIndex,
  children: [
    Widget1(), // Always built
    Widget2(), // Always built
    Widget3(), // Always built
  ],
)

// Visibility - conditional building
if (_currentIndex == 0) Widget1(),
if (_currentIndex == 1) Widget2(),
if (_currentIndex == 2) Widget3(),

// Sizing behavior
class SizingExample extends StatefulWidget {
  const SizingExample({super.key});
  
  @override
  State<SizingExample> createState() => _SizingExampleState();
}

class _SizingExampleState extends State<SizingExample> {
  int _index = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sizing')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Size changes based on visible child
            Container(
              color: Colors.grey.shade200,
              child: IndexedStack(
                index: _index,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: const Center(child: Text('100x100')),
                  ),
                  Container(
                    width: 200,
                    height: 150,
                    color: Colors.blue,
                    child: const Center(child: Text('200x150')),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => setState(() => _index = _index == 0 ? 1 : 0),
              child: const Text('Toggle Size'),
            ),
          ],
        ),
      ),
    );
  }
}

// Alignment
IndexedStack(
  index: _currentIndex,
  alignment: Alignment.center, // Center all children
  sizing: StackFit.loose, // Size to current child
  children: [...],
)"""),
    ],
    pros: LocalizedValue(
      en: [
        "Preserves state of all children",
        "Instant switching without rebuild",
        "Simple state management for tabs",
        "No animation overhead",
        "Good for forms and scrollable content",
      ],
      ar: [
        "يحافظ على حالة جميع الأطفال",
        "تبديل فوري بدون إعادة بناء",
        "إدارة حالة بسيطة للتبويبات",
        "لا عبء رسوم متحركة",
        "جيد للنماذج والمحتوى القابل للتمرير",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "All children built and kept in memory",
        "Can be memory intensive with many children",
        "No built-in animations",
        "May build expensive widgets unnecessarily",
        "Size jumps if children have different sizes",
      ],
      ar: [
        "يتم بناء جميع الأطفال والاحتفاظ بهم في الذاكرة",
        "قد يكون مكثفًا للذاكرة مع العديد من الأطفال",
        "لا رسوم متحركة مدمجة",
        "قد يبني ودجتس مكلفة دون داعٍ",
        "قفزات الحجم إذا كان للأطفال أحجام مختلفة",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use IndexedStack when:",
          value: [
            "Navigating between sections while preserving sub-page scroll positions",
            "Managing simple tab systems that don't require fancy transitions",
            "Maintaining persistent state (like form inputs) when switching views",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم IndexedStack عندما:",
          value: [
            "التنقل بين الأقسام مع الحفاظ على مواضع تمرير الصفحات الفرعية",
            "إدارة أنظمة تبويب بسيطة لا تتطلب انتقالات معقدة",
            "الحفاظ على حالة مستمرة (مثل مدخلات النموذج) عند التبديل بين طرق العرض",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "119",
    difficulty: .basic,
    categories: [.ui, .flutterBasics],
    type: .practical,
    tags: ["intermediate", "reorderablelistview", "drag", "reorder", "list"],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is ReorderableListView?",
        answer: [
          StringContent(
            "ReorderableListView is a ListView that allows users to reorder items by dragging them. It's built on top of ListView and provides drag-and-drop functionality to rearrange list items interactively.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Drag and drop to reorder items",
              "Long-press to start dragging",
              "onReorder callback receives old and new indices",
              "Automatic scrolling when dragging near edges",
              "Each child must have a unique key",
              "Supports both vertical and horizontal scrolling",
              "Works with ListView.builder pattern",
            ],
          ),
          StringContent(
            "ReorderableListView requires each child to have a unique Key (typically ValueKey or ObjectKey). The onReorder callback is called when an item is moved, providing old and new indices. You must update your data source in this callback to persist the reorder.",
          ),
        ],
        notes: [
          "Each item MUST have a unique key",
          "onReorder callback required to handle reordering",
          "Long-press to initiate drag",
          "Update your data source in onReorder",
        ],
        bestUse:
            "Task lists, priority queues, playlist management, sortable settings, or any list where user-controlled ordering is needed.",
      ),
      ar: QuestionContent(
        question: "ما هو ReorderableListView؟",
        answer: [
          StringContent(
            "ReorderableListView هو ListView يسمح للمستخدمين بإعادة ترتيب العناصر عن طريق سحبها. إنه مبني على ListView ويوفر وظيفة السحب والإفلات لإعادة ترتيب عناصر القائمة بشكل تفاعلي.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "السحب والإفلات لإعادة ترتيب العناصر",
              "ضغط طويل لبدء السحب",
              "استدعاء onReorder يتلقى الفهارس القديمة والجديدة",
              "تمرير تلقائي عند السحب بالقرب من الحواف",
              "كل طفل يجب أن يكون لديه مفتاح فريد",
              "يدعم التمرير العمودي والأفقي",
              "يعمل مع نمط ListView.builder",
            ],
          ),
          StringContent(
            "يتطلب ReorderableListView أن يكون لكل طفل Key فريد (عادة ValueKey أو ObjectKey). يتم استدعاء استدعاء onReorder عند نقل عنصر، مما يوفر الفهارس القديمة والجديدة. يجب عليك تحديث مصدر بياناتك في هذا الاستدعاء للحفاظ على إعادة الترتيب.",
          ),
        ],
        notes: [
          "كل عنصر يجب أن يكون لديه مفتاح فريد",
          "استدعاء onReorder مطلوب للتعامل مع إعادة الترتيب",
          "ضغط طويل لبدء السحب",
          "حدث مصدر بياناتك في onReorder",
        ],
        bestUse:
            "قوائم المهام، طوابير الأولوية، إدارة قوائم التشغيل، إعدادات قابلة للفرز، أو أي قائمة حيث يُطلب ترتيب يتحكم فيه المستخدم.",
      ),
    ),
    examples: [
      StrCodeBlock.good("""// Basic ReorderableListView
class BasicReorderableList extends StatefulWidget {
  const BasicReorderableList({super.key});
  
  @override
  State<BasicReorderableList> createState() => _BasicReorderableListState();
}

class _BasicReorderableListState extends State<BasicReorderableList> {
  final List<String> _items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reorderable List')),
      body: ReorderableListView(
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final item = _items.removeAt(oldIndex);
            _items.insert(newIndex, item);
          });
        },
        children: [
          for (int i = 0; i < _items.length; i++)
            ListTile(
              key: ValueKey(_items[i]), // MUST have unique key
              title: Text(_items[i]),
              leading: const Icon(Icons.drag_handle),
            ),
        ],
      ),
    );
  }
}

// ReorderableListView.builder
class BuilderReorderableList extends StatefulWidget {
  const BuilderReorderableList({super.key});
  
  @override
  State<BuilderReorderableList> createState() => _BuilderReorderableListState();
}

class _BuilderReorderableListState extends State<BuilderReorderableList> {
  List<Task> _tasks = [
    Task(id: '1', title: 'Task 1', priority: 1),
    Task(id: '2', title: 'Task 2', priority: 2),
    Task(id: '3', title: 'Task 3', priority: 3),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task List')),
      body: ReorderableListView.builder(
        itemCount: _tasks.length,
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final task = _tasks.removeAt(oldIndex);
            _tasks.insert(newIndex, task);
            
            // Update priorities
            for (int i = 0; i < _tasks.length; i++) {
              _tasks[i].priority = i + 1;
            }
          });
        },
        itemBuilder: (context, index) {
          final task = _tasks[index];
          return ListTile(
            key: ValueKey(task.id),
            leading: const Icon(Icons.drag_indicator),
            title: Text(task.title),
            subtitle: Text('Priority: \${task.priority}'),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _tasks.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    );
  }
}

class Task {
  Task({required this.id, required this.title, required this.priority});
  final String id;
  String title;
  int priority;
}

// Custom drag handle
class CustomDragHandle extends StatefulWidget {
  const CustomDragHandle({super.key});
  
  @override
  State<CustomDragHandle> createState() => _CustomDragHandleState();
}

class _CustomDragHandleState extends State<CustomDragHandle> {
  final List<String> _items = List.generate(10, (i) => 'Item \${i + 1}');
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Drag Handle')),
      body: ReorderableListView(
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final item = _items.removeAt(oldIndex);
            _items.insert(newIndex, item);
          });
        },
        children: [
          for (int i = 0; i < _items.length; i++)
            Container(
              key: ValueKey(_items[i]),
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                title: Text(_items[i]),
                trailing: ReorderableDragStartListener(
                  index: i,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Icon(Icons.drag_handle, color: Colors.white),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// Horizontal reorderable list
class HorizontalReorderableList extends StatefulWidget {
  const HorizontalReorderableList({super.key});
  
  @override
  State<HorizontalReorderableList> createState() => _HorizontalReorderableListState();
}

class _HorizontalReorderableListState extends State<HorizontalReorderableList> {
  final List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Horizontal Reorder')),
      body: Center(
        child: SizedBox(
          height: 120,
          child: ReorderableListView(
            scrollDirection: Axis.horizontal,
            onReorder: (oldIndex, newIndex) {
              setState(() {
                if (newIndex > oldIndex) {
                  newIndex -= 1;
                }
                final color = _colors.removeAt(oldIndex);
                _colors.insert(newIndex, color);
              });
            },
            children: [
              for (int i = 0; i < _colors.length; i++)
                Container(
                  key: ValueKey(_colors[i]),
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: _colors[i],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      '\${i + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

// With header and footer
ReorderableListView(
  header: const Padding(
    padding: EdgeInsets.all(16),
    child: Text('Header (not draggable)'),
  ),
  footer: const Padding(
    padding: EdgeInsets.all(16),
    child: Text('Footer (not draggable)'),
  ),
  onReorder: (oldIndex, newIndex) {
    // Handle reorder
  },
  children: [
    // Draggable items with keys
  ],
)

// Custom proxy decorator (drag preview)
ReorderableListView(
  proxyDecorator: (child, index, animation) {
    return Material(
      elevation: 8,
      shadowColor: Colors.blue,
      child: child,
    );
  },
  onReorder: (oldIndex, newIndex) {
    // Handle reorder
  },
  children: [...],
)

// Padding
ReorderableListView(
  padding: const EdgeInsets.all(16),
  onReorder: (oldIndex, newIndex) {
    // Handle reorder
  },
  children: [...],
)

// Understanding onReorder indices
void _onReorder(int oldIndex, int newIndex) {
  setState(() {
    // If moving down, the newIndex needs adjustment
    // because we remove the item first
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    
    final item = _items.removeAt(oldIndex);
    _items.insert(newIndex, item);
  });
}"""),
    ],
    pros: LocalizedValue(
      en: [
        "Built-in drag and drop functionality",
        "Automatic scroll when dragging near edges",
        "Works with ListView.builder for efficiency",
        "Material Design compliant",
        "Supports both vertical and horizontal",
      ],
      ar: [
        "وظيفة السحب والإفلات مدمجة",
        "تمرير تلقائي عند السحب بالقرب من الحواف",
        "يعمل مع ListView.builder للكفاءة",
        "متوافق مع Material Design",
        "يدعم كلاً من العمودي والأفقي",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Requires unique keys for each item",
        "Manual data source update needed in onReorder",
        "Long-press can be awkward for users",
        "No built-in undo functionality",
        "Index calculation in onReorder can be confusing",
      ],
      ar: [
        "يتطلب مفاتيح فريدة لكل عنصر",
        "تحديث يدوي لمصدر البيانات مطلوب في onReorder",
        "الضغط الطويل قد يكون محرجًا للمستخدمين",
        "لا وظيفة تراجع مدمجة",
        "حساب الفهرس في onReorder قد يكون مربكًا",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use ReorderableListView when:",
          value: [
            "Building customizable user lists like playlists or priority tasks",
            "Allowing users to manually rank or sort items in a collection",
            "Implementing draggable dashboard items or configurable settings",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم ReorderableListView عندما:",
          value: [
            "بناء قوائم مستخدم قابلة للتخصيص مثل قوائم التشغيل أو المهام ذات الأولوية",
            "السماح للمستخدمين بتصنيف أو فرز العناصر يدويًا في مجموعة",
            "تنفيذ عناصر لوحة معلومات قابلة للسحب أو إعدادات قابلة للتكوين",
          ],
        ),
      ],
    ),
  ),
  InterviewQuestion(
    id: "120",
    difficulty: .intermediate,
    categories: [.ui, .flutterBasics],
    type: .theoretical,
    tags: [
      "intermediate",
      "fractionallysizedbox",
      "layout",
      "responsive",
      "percentage",
    ],
    content: LocalizedValue(
      en: QuestionContent(
        question: "What is FractionallySizedBox?",
        answer: [
          StringContent(
            "FractionallySizedBox is a widget that sizes its child to a fraction of the available space. It allows you to specify the child's width and height as percentages (fractions) of the parent's constraints, making it useful for responsive layouts.",
          ),
          UnorderedListContent(
            title: "Key features:",
            value: [
              "Sizes child as fraction of available space",
              "widthFactor and heightFactor properties (0.0 to 1.0)",
              "Useful for percentage-based layouts",
              "Works only with bounded parent constraints",
              "Can align child within the allocated space",
              "Null factors mean child size is unconstrained in that dimension",
              "Values > 1.0 allow child to overflow parent",
            ],
          ),
          StringContent(
            "widthFactor and heightFactor are decimal values where 0.5 means 50%, 1.0 means 100%, etc. If null, the child's size in that dimension is unconstrained. The alignment property positions the child within the fractional box.",
          ),
        ],
        notes: [
          "FractionallySizedBox requires a bounded parent in that dimension.",
          "Use alignment to position the child within the allocated fraction.",
          "Factors are 0.0 to 1.0, but can exceed 1.0 to allow overflow.",
          "Do not use directly inside unbounded widgets like Row or Column without wrapping in Expanded, SizedBox, or LayoutBuilder.",
          "Best for responsive layouts, splash screens, flexible spacing, and adaptive sizing.",
        ],
        bestUse:
            "Responsive layouts, percentage-based sizing, splash screens with centered logos, creating flexible spacing, aspect-ratio-independent sizing.",
      ),
      ar: QuestionContent(
        question: "ما هو FractionallySizedBox؟",
        answer: [
          StringContent(
            "FractionallySizedBox هو ودجت يحدد حجم فرعه بجزء من المساحة المتاحة. يسمح لك بتحديد عرض وارتفاع الطفل كنسب مئوية (كسور) من قيود الأب، مما يجعله مفيدًا للتخطيطات المتجاوبة.",
          ),
          UnorderedListContent(
            title: "الميزات الرئيسية:",
            value: [
              "يحدد حجم الطفل بجزء من المساحة المتاحة",
              "خصائص widthFactor و heightFactor (0.0 إلى 1.0)",
              "مفيد للتخطيطات القائمة على النسبة المئوية",
              "يعمل فقط مع قيود الأب المحدودة",
              "يمكن محاذاة الطفل داخل المساحة المخصصة",
              "العوامل الفارغة تعني أن حجم الطفل غير مقيد في ذلك البعد",
              "القيم > 1.0 تسمح للطفل بتجاوز الأب",
            ],
          ),
          StringContent(
            "widthFactor و heightFactor هي قيم عشرية حيث 0.5 يعني 50%، 1.0 يعني 100%، إلخ. إذا كانت null، فإن حجم الطفل في هذا البعد غير مقيد. خاصية alignment تضع الطفل داخل الصندوق الكسري.",
          ),
        ],
        notes: [
          "FractionallySizedBox يحتاج إلى والد محدد الأبعاد في ذلك البعد.",
          "استخدم المحاذاة لوضع الطفل داخل الجزء المخصص.",
          "العوامل من 0.0 إلى 1.0، ويمكن أن تتجاوز 1.0 للسماح بالتجاوز.",
          "لا تستخدمه مباشرة داخل Row أو Column غير المقيدين بدون لف في Expanded أو SizedBox أو LayoutBuilder.",
          "أفضل استخدام: التخطيطات المتجاوبة، شاشات البداية، التباعد المرن، والحجم التكيفي.",
        ],
        bestUse:
            "التخطيطات المتجاوبة، الحجم القائم على النسبة المئوية، شاشات البداية مع شعارات مركزة، إنشاء تباعد مرن، الحجم المستقل عن نسبة الأبعاد.",
      ),
    ),
    examples: [
      StrCodeBlock.good(
        """class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FractionallySizedBox')),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5, // 50% of parent width
          heightFactor: 0.3, // 30% of parent height
          child: Container(
            color: Colors.blue,
            child: const Center(
              child: Text('50% x 30%', style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}""",
      ),
    ],
    pros: LocalizedValue(
      en: [
        "Simple percentage-based sizing",
        "Responsive to parent constraints",
        "No need for LayoutBuilder in bounded parents",
        "Can align child within allocated space",
        "Works well with MediaQuery for adaptive layouts",
      ],
      ar: [
        "حجم بسيط قائم على النسبة المئوية",
        "متجاوب مع قيود الأب",
        "لا حاجة لـ LayoutBuilder مع والد محدود",
        "يمكن محاذاة الطفل داخل المساحة المخصصة",
        "يعمل بشكل جيد مع MediaQuery للتخطيطات التكيفية",
      ],
    ),
    cons: LocalizedValue(
      en: [
        "Limited to simple fractional sizing",
        "Cannot express complex layout logic",
        "Factors > 1.0 can cause overflow issues",
        "Requires bounded parent in each dimension",
        "Not suitable for intrinsic sizing needs",
      ],
      ar: [
        "محدود بالحجم الكسري البسيط",
        "لا يمكن التعبير عن منطق تخطيط معقد",
        "العوامل > 1.0 قد تسبب مشاكل تجاوز",
        "يتطلب وجود والد محدد الأبعاد في كل بُعد",
        "غير مناسب لاحتياجات الحجم الجوهري",
      ],
    ),
    whenToUse: LocalizedValue(
      en: [
        UnorderedListContent(
          title: "Use FractionallySizedBox when:",
          value: [
            "Creating responsive widgets that adapt to a percentage of their parent's size",
            "Developing layout grids that scale proportionally across different screens",
            "Designing centered UI elements (like logos) with specific relative dimensions",
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: "استخدم FractionallySizedBox عندما:",
          value: [
            "إنشاء ودجتس متجاوبة تتكيف مع نسبة مئوية من حجم والديها",
            "تطوير شبكات تخطيط تتوسع بشكل تناسبي عبر الشاشات المختلفة",
            "تصميم عناصر واجهة مستخدم مركزة (مثل الشعارات) بأبعاد نسبية محددة",
          ],
        ),
      ],
    ),
  ),
];
