import "package:loopsbase/data/diagrams/diagrams.dart";

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
      ar: "يُعرّف واجهة لإنشاء الكائنات، مع السماح للفئات الفرعية (Subclasses) بتحديد الفئة المُراد إنشاؤها",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Factory Method pattern is one of the most fundamental creational patterns. It solves a common problem: how do you create objects without tightly coupling your code to specific classes?",
        ),
        AnalogyContent(
          "Think of a restaurant kitchen. When a customer orders 'pizza,' they don't tell the chef exactly how to make it. The chef (factory method) decides which type of pizza to create based on the restaurant's specialty. An Italian restaurant creates Italian-style pizza, while a New York restaurant creates New York-style pizza.",
        ),
        StrContent(
          "Instead of calling constructors directly (new MyClass()), you call a factory method that returns instances through a common interface or base class. This decouples your client code from concrete implementations.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Product: The interface or abstract class for objects the factory method creates",
            "ConcreteProduct: Specific implementations of the Product interface",
            "Creator: Declares the factory method that returns Product objects (can be abstract or provide default implementation)",
            "ConcreteCreator: Overrides the factory method to return specific ConcreteProduct instances",
          ],
        ),
        // DiagramContent(
        //   "Structure Flow:\nClient → Creator.factoryMethod() → Product Interface\n         ↓                        ↓\n   ConcreteCreator          ConcreteProduct",
        // ),
        SvgDiagramContent(Diagrams.generateFactorySvg),
        StrContent(
          "The pattern follows the Open/Closed Principle: you can introduce new product types without modifying existing client code. Just create new concrete creators and products.",
        ),
        NoteContent(
          "Factory Method is NOT the same as a simple factory (static method that creates objects). Factory Method uses inheritance and polymorphism, while simple factory uses conditional logic.",
          type: .important,
        ),
        StrContent(
          "In Dart and Flutter, this pattern is commonly used for creating platform-specific widgets, different types of network clients, various data parsers, and plugin systems.",
        ),
      ],
      ar: [
        StrContent(
          "نمط طريقة المصنع (Factory Method) هو أحد أكثر الأنماط الإنشائية (Creational Patterns) أساسية. يحل مشكلة شائعة: كيف تُنشئ الكائنات دون ربط كودك بإحكام بفئات محددة؟",
        ),
        AnalogyContent(
          "فكر في مطبخ مطعم. عندما يطلب الزبون 'بيتزا'، لا يخبر الطاهي بالضبط كيف يصنعها. الطاهي (طريقة المصنع) يقرر نوع البيتزا المراد إنشاؤها بناءً على تخصص المطعم. مطعم إيطالي ينشئ بيتزا على الطراز الإيطالي، بينما مطعم نيويورك ينشئ بيتزا على طراز نيويورك.",
        ),
        StrContent(
          "بدلاً من استدعاء المُنشئات (Constructors) مباشرة (new MyClass())، تستدعي طريقة مصنع تُرجع كائنات من خلال واجهة (Interface) أو فئة أساسية (Base Class) مشتركة. هذا يفصل كود العميل عن التطبيقات المحددة (Concrete Implementations).",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "المنتج (Product): الواجهة أو الفئة المجردة (Abstract Class) للكائنات التي تنشئها طريقة المصنع",
            "المنتج المحدد (ConcreteProduct): تطبيقات محددة لواجهة المنتج",
            "المُنشئ (Creator): يُعلن عن طريقة المصنع التي تُرجع كائنات المنتج (يمكن أن يكون مجرداً أو يوفر تطبيقاً افتراضياً)",
            "المُنشئ المحدد (ConcreteCreator): يُعيد تعريف طريقة المصنع لإرجاع كائنات المنتج المحدد",
          ],
        ),

        // DiagramContent(
        //   "تدفق البنية:\nالعميل ← Creator.factoryMethod() ← واجهة المنتج\n         ↓                        ↓\n   ConcreteCreator          ConcreteProduct",
        // ),
        SvgDiagramContent(Diagrams.generateFactorySvg),
        StrContent(
          "يتبع النمط مبدأ المفتوح/المغلق (Open/Closed Principle): يمكنك إضافة أنواع منتجات جديدة دون تعديل كود العميل الموجود. فقط أنشئ مُنشئين ومنتجات محددة جديدة.",
        ),
        NoteContent(
          "طريقة المصنع ليست نفس المصنع البسيط (Simple Factory) الذي هو طريقة ثابتة (Static Method) تنشئ كائنات. طريقة المصنع تستخدم الوراثة (Inheritance) والتعددية الشكلية (Polymorphism)، بينما المصنع البسيط يستخدم منطقاً شرطياً (Conditional Logic).",
          type: .important,
        ),
        StrContent(
          "في Dart و Flutter، يُستخدم هذا النمط بشكل شائع لإنشاء واجهات مستخدم (Widgets) خاصة بمنصة معينة، أنواع مختلفة من عملاء الشبكة (Network Clients)، محللات بيانات متنوعة (Data Parsers)، وأنظمة الإضافات (Plugin Systems).",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Dialog Factory
        StrCodeBlock("""// Example 1: Basic - Platform-Specific Dialog Factory
// Use case: Creating platform-specific UI components

abstract class Dialog {
  void render();
  void close();
}

class AndroidDialog implements Dialog {
  @override
  void render() => print('Rendering Material Design dialog');
  
  @override
  void close() => print('Closing with Android animation');
}

class IOSDialog implements Dialog {
  @override
  void render() => print('Rendering Cupertino dialog');
  
  @override
  void close() => print('Closing with iOS animation');
}

// Creator
abstract class DialogFactory {
  // Factory method - subclasses override this
  Dialog createDialog();
  
  // Template method using factory method
  void showDialog() {
    final dialog = createDialog();
    dialog.render();
  }
}

// Concrete Creators
class AndroidDialogFactory extends DialogFactory {
  @override
  Dialog createDialog() => AndroidDialog();
}

class IOSDialogFactory extends DialogFactory {
  @override
  Dialog createDialog() => IOSDialog();
}

void main() {
  // Client code doesn't know about concrete dialog classes
  DialogFactory factory;
  
  if (Platform.isAndroid) {
    factory = AndroidDialogFactory();
  } else {
    factory = IOSDialogFactory();
  }
  
  factory.showDialog(); // Creates appropriate dialog
}"""),

        // Example 2: Intermediate - HTTP Client Factory
        StrCodeBlock("""// Example 2: Intermediate - Network Client Factory
// Use case: Different HTTP clients for different environments

abstract class HttpClient {
  Future<Response> get(String url);
  Future<Response> post(String url, Map<String, dynamic> data);
}

class ProductionHttpClient implements HttpClient {
  @override
  Future<Response> get(String url) async {
    print('Production GET: \$url');
    // Real network call
    return Response(200, 'Real data');
  }
  
  @override
  Future<Response> post(String url, Map<String, dynamic> data) async {
    print('Production POST: \$url');
    return Response(201, 'Created');
  }
}

class MockHttpClient implements HttpClient {
  @override
  Future<Response> get(String url) async {
    print('Mock GET: \$url');
    await Future.delayed(.seconds(1));
    return Response(200, '{"mock": "data"}');
  }
  
  @override
  Future<Response> post(String url, Map<String, dynamic> data) async {
    print('Mock POST: \$url with \$data');
    return Response(200, '{"success": true}');
  }
}

// Creator with default implementation
abstract class ApiService {
  late final HttpClient client = createClient();
  
  // Factory method
  HttpClient createClient();
  
  Future<List<User>> getUsers() async {
    final response = await client.get('/users');
    return parseUsers(response.body);
  }
  
  List<User> parseUsers(String json) => []; // Parse logic
}

class ProductionApiService extends ApiService {
  @override
  HttpClient createClient() => ProductionHttpClient();
}

class TestApiService extends ApiService {
  @override
  HttpClient createClient() => MockHttpClient();
}

void main() async {
  final apiService = kDebugMode 
      ? TestApiService() 
      : ProductionApiService();
  
  final users = await apiService.getUsers();
  print('Fetched \${users.length} users');
}

class Response {
  Response(this.statusCode, this.body);
  final int statusCode;
  final String body;
}

class User {
  User(this.name);
  final String name;
}"""),

        // Example 3: Advanced - Document Parser Factory
        StrCodeBlock("""// Example 3: Advanced - Document Parser with Cache
// Use case: Parsing different document formats efficiently

abstract class DocumentParser {
  String parse(String content);
  bool canParse(String extension);
}

class JsonParser implements DocumentParser {
  @override
  String parse(String content) {
    print('Parsing JSON document');
    // Complex JSON parsing logic
    return 'Parsed JSON: \${content.length} chars';
  }
  
  @override
  bool canParse(String extension) => extension == '.json';
}

class XmlParser implements DocumentParser {
  @override
  String parse(String content) {
    print('Parsing XML document');
    // Complex XML parsing logic
    return 'Parsed XML: \${content.length} chars';
  }
  
  @override
  bool canParse(String extension) => extension == '.xml';
}

class CsvParser implements DocumentParser {
  @override
  String parse(String content) {
    print('Parsing CSV document');
    final lines = content.split('');
    return 'Parsed CSV: \${lines.length} rows';
  }
  
  @override
  bool canParse(String extension) => extension == '.csv';
}

// Sophisticated creator with caching
abstract class DocumentProcessor {
  final Map<String, DocumentParser> _parserCache = {};
  
  // Factory method
  DocumentParser createParser(String extension);
  
  // Uses factory method with caching
  String processDocument(String filePath, String content) {
    final extension = _getExtension(filePath);
    
    // Check cache first
    final parser = _parserCache.putIfAbsent(
      extension,
      () => createParser(extension),
    );
    
    if (!parser.canParse(extension)) {
      throw Exception('Parser cannot handle \$extension files');
    }
    
    return parser.parse(content);
  }
  
  String _getExtension(String path) {
    final parts = path.split('.');
    return parts.isEmpty ? '' : '.\${parts.last}';
  }
}

// Concrete creator for different document sets
class StandardDocumentProcessor extends DocumentProcessor {
  @override
  DocumentParser createParser(String extension) {
    return switch (extension) {
      '.json' => JsonParser(),
      '.xml' => XmlParser(),
      '.csv' => CsvParser(),
      _ => throw Exception('Unsupported format: \$extension'),
    };
  }
}

// Extended processor with additional formats
class ExtendedDocumentProcessor extends StandardDocumentProcessor {
  @override
  DocumentParser createParser(String extension) {
    if (extension == '.yaml') {
      return YamlParser();
    }
    return super.createParser(extension);
  }
}

class YamlParser implements DocumentParser {
  @override
  String parse(String content) => 'Parsed YAML';
  
  @override
  bool canParse(String extension) => extension == '.yaml';
}

void main() {
  final processor = ExtendedDocumentProcessor();
  
  // Same interface, different parsers created
  print(processor.processDocument('data.json', '{"key": "value"}'));
  print(processor.processDocument('config.xml', '<root></root>'));
  print(processor.processDocument('data.csv', 'a,b,c\n1,2,3'));
  print(processor.processDocument('config.yaml', 'key: value'));
  
  // Parser reused from cache on second call
  print(processor.processDocument('another.json', '{}'));
}"""),

        // Example 4: Flutter Widget Factory
        StrCodeBlock("""// Example 4: Flutter - Theme-Aware Button Factory
// Use case: Creating buttons that match app theme

abstract class ThemedButton extends StatelessWidget {
  const ThemedButton({
    required this.text,
    required this.onPressed,
    super.key,
  });
  
  final String text;
  final VoidCallback onPressed;
}

class MaterialThemedButton extends ThemedButton {
  const MaterialThemedButton({
    required super.text,
    required super.onPressed,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      child: Text(text),
    );
  }
}

class CupertinoThemedButton extends ThemedButton {
  const CupertinoThemedButton({
    required super.text,
    required super.onPressed,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class CustomThemedButton extends ThemedButton {
  const CustomThemedButton({
    required super.text,
    required super.onPressed,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.pink],
        ),
        borderRadius: .circular(20),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(text, style: .white),
      ),
    );
  }
}

// Factory
abstract class ButtonFactory {
  ThemedButton createButton({
    required String text,
    required VoidCallback onPressed,
  });
  
  // Can have other factory methods
  Widget createTextField();
  Widget createCard();
}

class MaterialButtonFactory extends ButtonFactory {
  @override
  ThemedButton createButton({
    required String text,
    required VoidCallback onPressed,
  }) {
    return MaterialThemedButton(text: text, onPressed: onPressed);
  }
  
  @override
  Widget createTextField() => TextField(
    decoration: InputDecoration(border: OutlineInputBorder()),
  );
  
  @override
  Widget createCard() => Card(child: .empty);
}

class CupertinoButtonFactory extends ButtonFactory {
  @override
  ThemedButton createButton({
    required String text,
    required VoidCallback onPressed,
  }) {
    return CupertinoThemedButton(text: text, onPressed: onPressed);
  }
  
  @override
  Widget createTextField() => CupertinoTextField();
  
  @override
  Widget createCard() => Container(
    decoration: BoxDecoration(
      color: CupertinoColors.systemGrey6,
      borderRadius: .circular(10),
    ),
  );
}

class ThemedApp extends StatelessWidget {
  const ThemedApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    // Factory selected based on platform or user preference
    final factory = Platform.isIOS 
        ? CupertinoButtonFactory() 
        : MaterialButtonFactory();
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            factory.createButton(
              text: 'Click Me',
              onPressed: () => print('Clicked!'),
            ),
            .height(20),
            factory.createTextField(),
            .height(20),
            factory.createCard(),
          ],
        ),
      ),
    );
  }
}"""),
      ],
      ar: [
        // Same examples with Arabic comments
        StrCodeBlock("""// مثال 1: أساسي - مصنع مربعات الحوار الخاصة بالمنصة
// حالة الاستخدام: إنشاء مكونات واجهة مستخدم خاصة بالمنصة

abstract class Dialog {
  void render();
  void close();
}

class AndroidDialog implements Dialog {
  @override
  void render() => print('عرض مربع حوار Material Design');
  
  @override
  void close() => print('إغلاق مع رسوم متحركة Android');
}

class IOSDialog implements Dialog {
  @override
  void render() => print('عرض مربع حوار Cupertino');
  
  @override
  void close() => print('إغلاق مع رسوم متحركة iOS');
}

// المُنشئ (Creator)
abstract class DialogFactory {
  // طريقة المصنع - الفئات الفرعية تُعيد تعريفها
  Dialog createDialog();
  
  // طريقة القالب (Template Method) تستخدم طريقة المصنع
  void showDialog() {
    final dialog = createDialog();
    dialog.render();
  }
}

// المُنشئات المحددة (Concrete Creators)
class AndroidDialogFactory extends DialogFactory {
  @override
  Dialog createDialog() => AndroidDialog();
}

class IOSDialogFactory extends DialogFactory {
  @override
  Dialog createDialog() => IOSDialog();
}

void main() {
  // كود العميل لا يعرف عن فئات مربع الحوار المحددة
  DialogFactory factory;
  
  if (Platform.isAndroid) {
    factory = AndroidDialogFactory();
  } else {
    factory = IOSDialogFactory();
  }
  
  factory.showDialog(); // ينشئ مربع الحوار المناسب
}"""),

        StrCodeBlock("""// مثال 2: متوسط - مصنع عميل HTTP
// حالة الاستخدام: عملاء HTTP مختلفون لبيئات مختلفة

abstract class HttpClient {
  Future<Response> get(String url);
  Future<Response> post(String url, Map<String, dynamic> data);
}

class ProductionHttpClient implements HttpClient {
  @override
  Future<Response> get(String url) async {
    print('إنتاج GET: \$url');
    // استدعاء شبكة حقيقي
    return Response(200, 'بيانات حقيقية');
  }
  
  @override
  Future<Response> post(String url, Map<String, dynamic> data) async {
    print('إنتاج POST: \$url');
    return Response(201, 'تم الإنشاء');
  }
}

class MockHttpClient implements HttpClient {
  @override
  Future<Response> get(String url) async {
    print('وهمي GET: \$url');
    await Future.delayed(.seconds(1));
    return Response(200, '{"mock": "data"}');
  }
  
  @override
  Future<Response> post(String url, Map<String, dynamic> data) async {
    print('وهمي POST: \$url مع \$data');
    return Response(200, '{"success": true}');
  }
}

// المُنشئ مع تطبيق افتراضي
abstract class ApiService {
  late final HttpClient client = createClient();
  
  // طريقة المصنع
  HttpClient createClient();
  
  Future<List<User>> getUsers() async {
    final response = await client.get('/users');
    return parseUsers(response.body);
  }
  
  List<User> parseUsers(String json) => []; // منطق التحليل
}

class ProductionApiService extends ApiService {
  @override
  HttpClient createClient() => ProductionHttpClient();
}

class TestApiService extends ApiService {
  @override
  HttpClient createClient() => MockHttpClient();
}

void main() async {
  final apiService = kDebugMode 
      ? TestApiService() 
      : ProductionApiService();
  
  final users = await apiService.getUsers();
  print('تم جلب \${users.length} مستخدمين');
}

class Response {
  Response(this.statusCode, this.body);
  final int statusCode;
  final String body;
}

class User {
  User(this.name);
  final String name;
}"""),

        StrCodeBlock("""// مثال 3: متقدم - محلل المستندات مع التخزين المؤقت
// حالة الاستخدام: تحليل تنسيقات مستندات مختلفة بكفاءة

abstract class DocumentParser {
  String parse(String content);
  bool canParse(String extension);
}

class JsonParser implements DocumentParser {
  @override
  String parse(String content) {
    print('تحليل مستند JSON');
    // منطق تحليل JSON معقد
    return 'JSON محلل: \${content.length} حرف';
  }
  
  @override
  bool canParse(String extension) => extension == '.json';
}

class XmlParser implements DocumentParser {
  @override
  String parse(String content) {
    print('تحليل مستند XML');
    // منطق تحليل XML معقد
    return 'XML محلل: \${content.length} حرف';
  }
  
  @override
  bool canParse(String extension) => extension == '.xml';
}

class CsvParser implements DocumentParser {
  @override
  String parse(String content) {
    print('تحليل مستند CSV');
    final lines = content.split('');
    return 'CSV محلل: \${lines.length} صفوف';
  }
  
  @override
  bool canParse(String extension) => extension == '.csv';
}

// مُنشئ متطور مع التخزين المؤقت (Caching)
abstract class DocumentProcessor {
  final Map<String, DocumentParser> _parserCache = {};
  
  // طريقة المصنع
  DocumentParser createParser(String extension);
  
  // يستخدم طريقة المصنع مع التخزين المؤقت
  String processDocument(String filePath, String content) {
    final extension = _getExtension(filePath);
    
    // تحقق من الذاكرة المؤقتة أولاً
    final parser = _parserCache.putIfAbsent(
      extension,
      () => createParser(extension),
    );
    
    if (!parser.canParse(extension)) {
      throw Exception('المحلل لا يمكنه معالجة ملفات \$extension');
    }
    
    return parser.parse(content);
  }
  
  String _getExtension(String path) {
    final parts = path.split('.');
    return parts.isEmpty ? '' : '.\${parts.last}';
  }
}

// مُنشئ محدد لمجموعات مستندات مختلفة
class StandardDocumentProcessor extends DocumentProcessor {
  @override
  DocumentParser createParser(String extension) {
    return switch (extension) {
      '.json' => JsonParser(),
      '.xml' => XmlParser(),
      '.csv' => CsvParser(),
      _ => throw Exception('تنسيق غير مدعوم: \$extension'),
    };
  }
}

// معالج موسع مع تنسيقات إضافية
class ExtendedDocumentProcessor extends StandardDocumentProcessor {
  @override
  DocumentParser createParser(String extension) {
    if (extension == '.yaml') {
      return YamlParser();
    }
    return super.createParser(extension);
  }
}

class YamlParser implements DocumentParser {
  @override
  String parse(String content) => 'YAML محلل';
  
  @override
  bool canParse(String extension) => extension == '.yaml';
}

void main() {
  final processor = ExtendedDocumentProcessor();
  
  // نفس الواجهة، محللات مختلفة تم إنشاؤها
  print(processor.processDocument('data.json', '{"key": "value"}'));
  print(processor.processDocument('config.xml', '<root></root>'));
  print(processor.processDocument('data.csv', 'a,b,c\n1,2,3'));
  print(processor.processDocument('config.yaml', 'key: value'));
  
  // المحلل يُعاد استخدامه من الذاكرة المؤقتة في الاستدعاء الثاني
  print(processor.processDocument('another.json', '{}'));
}"""),

        StrCodeBlock("""// مثال 4: Flutter - مصنع أزرار واعٍ بالثيم
// حالة الاستخدام: إنشاء أزرار تتطابق مع ثيم التطبيق

abstract class ThemedButton extends StatelessWidget {
  const ThemedButton({
    required this.text,
    required this.onPressed,
    super.key,
  });
  
  final String text;
  final VoidCallback onPressed;
}

class MaterialThemedButton extends ThemedButton {
  const MaterialThemedButton({
    required super.text,
    required super.onPressed,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      child: Text(text),
    );
  }
}

class CupertinoThemedButton extends ThemedButton {
  const CupertinoThemedButton({
    required super.text,
    required super.onPressed,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}

class CustomThemedButton extends ThemedButton {
  const CustomThemedButton({
    required super.text,
    required super.onPressed,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.pink],
        ),
        borderRadius: .circular(20),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(text, style: .white),
      ),
    );
  }
}

// المصنع (Factory)
abstract class ButtonFactory {
  ThemedButton createButton({
    required String text,
    required VoidCallback onPressed,
  });
  
  // يمكن أن يكون لديه طرق مصنع أخرى
  Widget createTextField();
  Widget createCard();
}

class MaterialButtonFactory extends ButtonFactory {
  @override
  ThemedButton createButton({
    required String text,
    required VoidCallback onPressed,
  }) {
    return MaterialThemedButton(text: text, onPressed: onPressed);
  }
  
  @override
  Widget createTextField() => TextField(
    decoration: InputDecoration(border: OutlineInputBorder()),
  );
  
  @override
  Widget createCard() => Card(child: .empty);
}

class CupertinoButtonFactory extends ButtonFactory {
  @override
  ThemedButton createButton({
    required String text,
    required VoidCallback onPressed,
  }) {
    return CupertinoThemedButton(text: text, onPressed: onPressed);
  }
  
  @override
  Widget createTextField() => CupertinoTextField();
  
  @override
  Widget createCard() => Container(
    decoration: BoxDecoration(
      color: CupertinoColors.systemGrey6,
      borderRadius: .circular(10),
    ),
  );
}

class ThemedApp extends StatelessWidget {
  const ThemedApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    // المصنع يُختار بناءً على المنصة أو تفضيل المستخدم
    final factory = Platform.isIOS 
        ? CupertinoButtonFactory() 
        : MaterialButtonFactory();
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            factory.createButton(
              text: 'انقر هنا',
              onPressed: () => print('تم النقر!'),
            ),
            .height(20),
            factory.createTextField(),
            .height(20),
            factory.createCard(),
          ],
        ),
      ),
    );
  }
}"""),
      ],
    ),
    pros: LocSL(
      en: [
        "Decouples client code from concrete product classes, improving flexibility",
        "Follows Single Responsibility Principle by separating object creation logic",
        "Follows Open/Closed Principle - easy to add new product types without changing existing code",
        "Makes testing easier by allowing mock objects and test doubles",
        "Provides a single place to control which class instances are created",
        "Supports polymorphism and inheritance naturally",
      ],
      ar: [
        "يفصل كود العميل عن فئات المنتج المحددة، مما يحسن المرونة",
        "يتبع مبدأ المسؤولية الواحدة (Single Responsibility Principle) من خلال فصل منطق إنشاء الكائنات",
        "يتبع مبدأ المفتوح/المغلق (Open/Closed Principle) - سهولة إضافة أنواع منتجات جديدة دون تغيير الكود الموجود",
        "يسهّل الاختبار من خلال السماح بكائنات وهمية (Mock Objects) وبدائل الاختبار (Test Doubles)",
        "يوفر مكاناً واحداً للتحكم في أي نسخ من الفئات يتم إنشاؤها",
        "يدعم التعددية الشكلية (Polymorphism) والوراثة (Inheritance) بشكل طبيعي",
      ],
    ),
    cons: LocSL(
      en: [
        "Increases code complexity with many subclasses and classes",
        "Can lead to parallel class hierarchies (creators mirror products)",
        "May be overkill for simple object creation scenarios",
        "Difficult to understand for beginners due to abstraction layers",
        "Requires more upfront design and planning",
        "Can be harder to trace code flow due to indirection",
      ],
      ar: [
        "يزيد من تعقيد الكود مع العديد من الفئات الفرعية والفئات",
        "قد يؤدي إلى تسلسلات هرمية متوازية للفئات (المُنشئون يعكسون المنتجات)",
        "قد يكون مبالغاً فيه لسيناريوهات إنشاء الكائنات البسيطة",
        "صعب الفهم للمبتدئين بسبب طبقات التجريد (Abstraction Layers)",
        "يتطلب المزيد من التصميم والتخطيط المسبق",
        "قد يكون من الصعب تتبع تدفق الكود بسبب التوجيه غير المباشر (Indirection)",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Factory Method when:"),
        ULContent(
          value: [
            "A class cannot anticipate the exact type of objects it must create at compile time",
            "You want to delegate the choice of object type to subclasses",
            "You want to localize the knowledge of which class to instantiate",
            "You need to provide a library or framework where users can extend object creation",
            "You're building platform-specific components (Android vs iOS widgets)",
            "You want to provide hooks for customization in frameworks or libraries",
            "Testing requires substituting real objects with mock versions",
          ],
        ),
        NoteContent(
          "Don't use if: you only have one product type, object creation is simple, or you don't need polymorphic behavior.",
          type: .warning,
        ),
      ],
      ar: [
        StrContent("استخدم طريقة المصنع عندما:"),
        ULContent(
          value: [
            "لا تستطيع الفئة توقع النوع الدقيق للكائنات التي يجب إنشاؤها في وقت الترجمة (Compile Time)",
            "تريد تفويض اختيار نوع الكائن للفئات الفرعية",
            "تريد توطين المعرفة حول الفئة التي سيتم إنشاؤها",
            "تحتاج لتوفير مكتبة أو إطار حيث يمكن للمستخدمين توسيع إنشاء الكائنات",
            "تقوم ببناء مكونات خاصة بالمنصة (واجهات Android مقابل iOS)",
            "تريد توفير خطافات (Hooks) للتخصيص في الأطر أو المكتبات",
            "الاختبار يتطلب استبدال الكائنات الحقيقية بإصدارات وهمية (Mock Versions)",
          ],
        ),
        NoteContent(
          "لا تستخدمه إذا: كان لديك نوع منتج واحد فقط، إنشاء الكائن بسيط، أو لا تحتاج لسلوك متعدد الأشكال (Polymorphic Behavior).",
          type: .warning,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Overusing factories for every constructor, adding unnecessary indirection and complexity",
        "Creating 'God Factories' with huge switch statements or conditional logic - this defeats the purpose",
        "Allowing clients to downcast to concrete types (using 'as' operator), which breaks the pattern's encapsulation benefits",
        "Confusing Factory Method with Simple Factory (static factory) or Abstract Factory patterns",
        "Not providing a clear product interface, making it hard to add new products",
        "Making factory methods too complex with business logic - keep them focused on creation only",
        "Forgetting to make constructors private/protected, allowing direct instantiation",
      ],
      ar: [
        "الإفراط في استخدام المصانع لكل مُنشئ، مما يضيف توجيهاً غير مباشر وتعقيداً غير ضروري",
        "إنشاء 'مصانع إله (God Factories)' مع عبارات switch ضخمة أو منطق شرطي - هذا يُفشل الغرض",
        "السماح للعملاء بالتحويل إلى الأنواع المحددة (استخدام معامل 'as')، مما يكسر فوائد التغليف (Encapsulation) للنمط",
        "الخلط بين طريقة المصنع والمصنع البسيط (Static Factory) أو أنماط المصنع المجرد",
        "عدم توفير واجهة منتج واضحة، مما يجعل من الصعب إضافة منتجات جديدة",
        "جعل طرق المصنع معقدة جداً مع منطق الأعمال - أبقِها مركزة على الإنشاء فقط",
        "نسيان جعل المُنشئات خاصة/محمية (Private/Protected)، مما يسمح بالإنشاء المباشر",
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
      ar: "يوفر واجهة لإنشاء عائلات من الكائنات المترابطة (Related Objects) دون تحديد فئاتها المحددة",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "The Abstract Factory pattern takes the Factory Method concept one step further. Instead of creating single objects, it creates entire families of related objects that are designed to work together.",
        ),
        AnalogyContent(
          "Think of a furniture store that sells different styles: Modern, Victorian, and Art Deco. When you buy a 'Living Room Set,' you don't mix styles - you get a Modern sofa, Modern coffee table, and Modern chair that all match. The Abstract Factory ensures all pieces come from the same family.",
        ),
        StrContent(
          "Each concrete factory produces a complete set of products from one family. The client code works with factories and products through abstract interfaces, never knowing the concrete classes.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "AbstractFactory: Declares methods for creating each type of abstract product",
            "ConcreteFactory: Implements creation methods for products belonging to a specific family/variant",
            "AbstractProduct: Declares interfaces for a set of distinct but related products (the product family)",
            "ConcreteProduct: Implements abstract product interfaces, defined by corresponding concrete factories",
            "Client: Uses only interfaces declared by AbstractFactory and AbstractProduct",
          ],
        ),
        DiagramContent(
          "Pattern Flow:\nClient → AbstractFactory → AbstractProduct1, AbstractProduct2\n         ↓                ↓\n   ConcreteFactory1    ConcreteProduct1A, ConcreteProduct2A\n   ConcreteFactory2    ConcreteProduct1B, ConcreteProduct2B",
        ),
        StrContent(
          "The key benefit is enforcing consistency: products from the same factory are guaranteed to be compatible. This prevents mixing incompatible products (like using an Android button with an iOS text field).",
        ),
        NoteContent(
          "Abstract Factory vs Factory Method: Factory Method uses inheritance (one factory method), while Abstract Factory uses composition (multiple factory methods in one interface).",
          type: .important,
        ),
        StrContent(
          "In Flutter/Dart, this is perfect for theme systems, cross-platform UI components, creating complete data layer implementations (repositories, data sources, mappers), and plugin architectures.",
        ),
      ],
      ar: [
        StrContent(
          "نمط المصنع المجرد (Abstract Factory) يأخذ مفهوم طريقة المصنع خطوة أبعد. بدلاً من إنشاء كائنات منفردة، ينشئ عائلات كاملة من الكائنات المترابطة المصممة للعمل معاً.",
        ),
        AnalogyContent(
          "فكر في متجر أثاث يبيع أنماطاً مختلفة: حديث، فيكتوري، وآرت ديكو. عندما تشتري 'طقم غرفة معيشة'، لا تخلط الأنماط - تحصل على أريكة حديثة، طاولة قهوة حديثة، وكرسي حديث كلها متطابقة. المصنع المجرد يضمن أن جميع القطع من نفس العائلة.",
        ),
        StrContent(
          "كل مصنع محدد ينتج مجموعة كاملة من المنتجات من عائلة واحدة. كود العميل يعمل مع المصانع والمنتجات من خلال واجهات مجردة، دون معرفة الفئات المحددة أبداً.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "المصنع المجرد (AbstractFactory): يُعلن عن طرق لإنشاء كل نوع من المنتجات المجردة",
            "المصنع المحدد (ConcreteFactory): ينفذ طرق الإنشاء للمنتجات التي تنتمي لعائلة/متغير محدد",
            "المنتج المجرد (AbstractProduct): يُعلن عن واجهات لمجموعة من المنتجات المتميزة لكن المترابطة (عائلة المنتجات)",
            "المنتج المحدد (ConcreteProduct): ينفذ واجهات المنتج المجرد، محددة بواسطة المصانع المحددة المقابلة",
            "العميل (Client): يستخدم فقط الواجهات المُعلنة بواسطة AbstractFactory و AbstractProduct",
          ],
        ),
        DiagramContent(
          "تدفق النمط:\nالعميل ← المصنع المجرد ← المنتج المجرد1، المنتج المجرد2\n         ↓                ↓\n   مصنع محدد1    منتج محدد1A، منتج محدد2A\n   مصنع محدد2    منتج محدد1B، منتج محدد2B",
        ),
        StrContent(
          "الفائدة الرئيسية هي فرض الاتساق (Consistency): المنتجات من نفس المصنع مضمونة أن تكون متوافقة. هذا يمنع خلط منتجات غير متوافقة (مثل استخدام زر Android مع حقل نص iOS).",
        ),
        NoteContent(
          "المصنع المجرد مقابل طريقة المصنع: طريقة المصنع تستخدم الوراثة (طريقة مصنع واحدة)، بينما المصنع المجرد يستخدم التركيب (Composition) (طرق مصنع متعددة في واجهة واحدة).",
          type: .important,
        ),
        StrContent(
          "في Flutter/Dart، هذا مثالي لأنظمة الثيم، مكونات واجهة المستخدم عبر المنصات (Cross-Platform)، إنشاء تطبيقات كاملة لطبقة البيانات (المستودعات، مصادر البيانات، المُحوّلات)، ومعماريات الإضافات.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic UI Factory
        StrCodeBlock("""// Example 1: Basic - Complete UI Theme Factory
// Use case: Ensuring consistent UI component families

abstract class Button {
  Widget build();
}

abstract class TextField {
  Widget build();
}

abstract class Dialog {
  Widget build();
}

// Abstract Factory
abstract class UIFactory {
  Button createButton(String text, VoidCallback onTap);
  TextField createTextField(String hint);
  Dialog createDialog(String title, String message);
}

// Material Design Family
class MaterialButton implements Button {
  MaterialButton(this.text, this.onTap);
  final String text;
  final VoidCallback onTap;
  
  @override
  Widget build() => ElevatedButton(
    onPressed: onTap,
    child: Text(text),
  );
}

class MaterialTextField implements TextField {
  MaterialTextField(this.hint);
  final String hint;
  
  @override
  Widget build() => TextField(
    decoration: InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(),
    ),
  );
}

class MaterialDialog implements Dialog {
  MaterialDialog(this.title, this.message);
  final String title;
  final String message;
  
  @override
  Widget build() => AlertDialog(
    title: Text(title),
    content: Text(message),
    actions: [TextButton(onPressed: () {}, child: Text('OK'))],
  );
}

class MaterialUIFactory implements UIFactory {
  @override
  Button createButton(String text, VoidCallback onTap) =>
      MaterialButton(text, onTap);
  
  @override
  TextField createTextField(String hint) =>
      MaterialTextField(hint);
  
  @override
  Dialog createDialog(String title, String message) =>
      MaterialDialog(title, message);
}

// Cupertino (iOS) Family
class CupertinoButton implements Button {
  CupertinoButton(this.text, this.onTap);
  final String text;
  final VoidCallback onTap;
  
  @override
  Widget build() => CupertinoButton(
    onPressed: onTap,
    child: Text(text),
  );
}

class CupertinoTextField implements TextField {
  CupertinoTextField(this.hint);
  final String hint;
  
  @override
  Widget build() => CupertinoTextField(
    placeholder: hint,
  );
}

class CupertinoDialog implements Dialog {
  CupertinoDialog(this.title, this.message);
  final String title;
  final String message;
  
  @override
  Widget build() => CupertinoAlertDialog(
    title: Text(title),
    content: Text(message),
    actions: [
      CupertinoDialogAction(
        child: Text('OK'),
        onPressed: () {},
      ),
    ],
  );
}

class CupertinoUIFactory implements UIFactory {
  @override
  Button createButton(String text, VoidCallback onTap) =>
      CupertinoButton(text, onTap);
  
  @override
  TextField createTextField(String hint) =>
      CupertinoTextField(hint);
  
  @override
  Dialog createDialog(String title, String message) =>
      CupertinoDialog(title, message);
}

// Client code
class LoginScreen extends StatelessWidget {
  const LoginScreen(this.factory, {super.key});
  final UIFactory factory;
  
  @override
  Widget build(BuildContext context) {
    // All components guaranteed to be from same family
    return Column(
      children: [
        factory.createTextField('Username').build(),
        factory.createTextField('Password').build(),
        factory.createButton('Login', () {
          showDialog(
            context: context,
            builder: (context) =>
                factory.createDialog('Success', 'Logged in!').build(),
          );
        }).build(),
      ],
    );
  }
}

void main() {
  final factory = Platform.isIOS
      ? CupertinoUIFactory()
      : MaterialUIFactory();
  
  runApp(MaterialApp(
    home: LoginScreen(factory),
  ));
}"""),

        // Example 2: Data Layer Factory
        StrCodeBlock("""// Example 2: Intermediate - Data Layer Factory
// Use case: Complete data layer with matching components

abstract class UserRepository {
  Future<User> getUser(String id);
  Future<void> saveUser(User user);
}

abstract class DataSource {
  Future<Map<String, dynamic>> fetch(String id);
  Future<void> save(Map<String, dynamic> data);
}

abstract class Cache {
  Future<T?> get<T>(String key);
  Future<void> set<T>(String key, T value);
}

// Abstract Factory
abstract class DataLayerFactory {
  UserRepository createUserRepository();
  DataSource createDataSource();
  Cache createCache();
}

// Production Family
class ProductionUserRepository implements UserRepository {
  ProductionUserRepository(this.dataSource, this.cache);
  final DataSource dataSource;
  final Cache cache;
  
  @override
  Future<User> getUser(String id) async {
    // Check cache first
    final cached = await cache.get<User>('user_\$id');
    if (cached != null) return cached;
    
    // Fetch from data source
    final data = await dataSource.fetch(id);
    final user = User.fromJson(data);
    await cache.set('user_\$id', user);
    return user;
  }
  
  @override
  Future<void> saveUser(User user) async {
    await dataSource.save(user.toJson());
    await cache.set('user_\${user.id}', user);
  }
}

class ApiDataSource implements DataSource {
  final httpClient = HttpClient();
  
  @override
  Future<Map<String, dynamic>> fetch(String id) async {
    print('Fetching from API: /users/\$id');
    // Real API call
    return {'id': id, 'name': 'John'};
  }
  
  @override
  Future<void> save(Map<String, dynamic> data) async {
    print('Saving to API: \$data');
    // Real API call
  }
}

class RedisCache implements Cache {
  @override
  Future<T?> get<T>(String key) async {
    print('Redis GET: \$key');
    // Real Redis call
    return null;
  }
  
  @override
  Future<void> set<T>(String key, T value) async {
    print('Redis SET: \$key');
    // Real Redis call
  }
}

class ProductionDataLayerFactory implements DataLayerFactory {
  @override
  UserRepository createUserRepository() {
    final dataSource = createDataSource();
    final cache = createCache();
    return ProductionUserRepository(dataSource, cache);
  }
  
  @override
  DataSource createDataSource() => ApiDataSource();
  
  @override
  Cache createCache() => RedisCache();
}

// Test Family - All components are mocks
class TestUserRepository implements UserRepository {
  TestUserRepository(this.dataSource, this.cache);
  final DataSource dataSource;
  final Cache cache;
  
  @override
  Future<User> getUser(String id) async {
    final data = await dataSource.fetch(id);
    return User.fromJson(data);
  }
  
  @override
  Future<void> saveUser(User user) async {
    await dataSource.save(user.toJson());
  }
}

class MockDataSource implements DataSource {
  @override
  Future<Map<String, dynamic>> fetch(String id) async {
    print('Mock fetch: \$id');
    return {'id': id, 'name': 'Mock User'};
  }
  
  @override
  Future<void> save(Map<String, dynamic> data) async {
    print('Mock save: \$data');
  }
}

class InMemoryCache implements Cache {
  final Map<String, dynamic> _cache = {};
  
  @override
  Future<T?> get<T>(String key) async {
    print('Memory GET: \$key');
    return _cache[key] as T?;
  }
  
  @override
  Future<void> set<T>(String key, T value) async {
    print('Memory SET: \$key');
    _cache[key] = value;
  }
}

class TestDataLayerFactory implements DataLayerFactory {
  @override
  UserRepository createUserRepository() {
    final dataSource = createDataSource();
    final cache = createCache();
    return TestUserRepository(dataSource, cache);
  }
  
  @override
  DataSource createDataSource() => MockDataSource();
  
  @override
  Cache createCache() => InMemoryCache();
}

// Client code
class UserService {
  UserService(DataLayerFactory factory)
      : repository = factory.createUserRepository();
  
  final UserRepository repository;
  
  Future<void> loadUser(String id) async {
    final user = await repository.getUser(id);
    print('Loaded: \${user.name}');
  }
}

void main() async {
  // Factory ensures all components work together
  final factory = kReleaseMode
      ? ProductionDataLayerFactory()
      : TestDataLayerFactory();
  
  final service = UserService(factory);
  await service.loadUser('123');
}

class User {
  User(this.id, this.name);
  final String id;
  final String name;
  
  factory User.fromJson(Map<String, dynamic> json) =>
      User(json['id'], json['name']);
  
  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}"""),

        // Example 3: Advanced - Game Entity Factory
        StrCodeBlock(
          """// Example 3: Advanced - Game Entity Factory with Pooling
// Use case: Creating complete game entity families efficiently

abstract class Sprite {
  void render();
  void update(double dt);
}

abstract class Collider {
  bool intersects(Collider other);
  Rectangle get bounds;
}

abstract class AudioPlayer {
  void play(String sound);
  void stop();
}

abstract class ParticleEffect {
  void emit(Vector2 position);
  void update(double dt);
}

// Abstract Factory
abstract class EntityFactory {
  Sprite createSprite(String assetPath);
  Collider createCollider(Rectangle bounds);
  AudioPlayer createAudioPlayer();
  ParticleEffect createParticleEffect(String type);
  
  // Complete entity creation
  GameEntity createEntity({
    required String spriteAsset,
    required Rectangle bounds,
    bool hasAudio = false,
    String? particleEffect,
  }) {
    final sprite = createSprite(spriteAsset);
    final collider = createCollider(bounds);
    final audio = hasAudio ? createAudioPlayer() : null;
    final particles = particleEffect != null 
        ? createParticleEffect(particleEffect)
        : null;
    
    return GameEntity(
      sprite: sprite,
      collider: collider,
      audio: audio,
      particles: particles,
    );
  }
}

// High Performance Family (uses object pooling)
class PooledSprite implements Sprite {
  PooledSprite(this.assetPath);
  final String assetPath;
  bool _active = true;
  
  @override
  void render() {
    if (_active) print('Rendering pooled sprite: \$assetPath');
  }
  
  @override
  void update(double dt) {
    if (_active) print('Updating pooled sprite');
  }
  
  void reset() => _active = true;
  void recycle() => _active = false;
}

class PooledCollider implements Collider {
  PooledCollider(this._bounds);
  Rectangle _bounds;
  
  @override
  Rectangle get bounds => _bounds;
  
  @override
  bool intersects(Collider other) {
    final otherBounds = other.bounds;
    return _bounds.overlaps(otherBounds);
  }
  
  void reset(Rectangle newBounds) => _bounds = newBounds;
}

class OptimizedAudioPlayer implements AudioPlayer {
  final _audioCache = <String, AudioBuffer>{};
  
  @override
  void play(String sound) {
    final buffer = _audioCache.putIfAbsent(
      sound,
      () {
        print('Loading audio: \$sound');
        return AudioBuffer(sound);
      },
    );
    print('Playing cached audio: \$sound');
  }
  
  @override
  void stop() => print('Stopping audio');
}

class BatchedParticleEffect implements ParticleEffect {
  BatchedParticleEffect(this.type);
  final String type;
  final List<Particle> _particles = [];
  
  @override
  void emit(Vector2 position) {
    print('Batched emit at \$position');
    _particles.add(Particle(position));
  }
  
  @override
  void update(double dt) {
    // Update all particles in batch
    for (final particle in _particles) {
      particle.update(dt);
    }
    _particles.removeWhere((p) => p.isDead);
  }
}

class HighPerformanceEntityFactory implements EntityFactory {
  // Object pools
  final _spritePool = <PooledSprite>[];
  final _colliderPool = <PooledCollider>[];
  
  @override
  Sprite createSprite(String assetPath) {
    // Try to reuse from pool
    if (_spritePool.isNotEmpty) {
      final sprite = _spritePool.removeLast();
      sprite.reset();
      return sprite;
    }
    return PooledSprite(assetPath);
  }
  
  @override
  Collider createCollider(Rectangle bounds) {
    if (_colliderPool.isNotEmpty) {
      final collider = _colliderPool.removeLast();
      collider.reset(bounds);
      return collider;
    }
    return PooledCollider(bounds);
  }
  
  @override
  AudioPlayer createAudioPlayer() => OptimizedAudioPlayer();
  
  @override
  ParticleEffect createParticleEffect(String type) =>
      BatchedParticleEffect(type);
  
  void recycleSprite(PooledSprite sprite) {
    sprite.recycle();
    _spritePool.add(sprite);
  }
}

// Simple Family (no optimization)
class SimpleSprite implements Sprite {
  SimpleSprite(this.assetPath);
  final String assetPath;
  
  @override
  void render() => print('Rendering simple sprite: \$assetPath');
  
  @override
  void update(double dt) => print('Updating simple sprite');
}

class SimpleCollider implements Collider {
  SimpleCollider(this._bounds);
  final Rectangle _bounds;
  
  @override
  Rectangle get bounds => _bounds;
  
  @override
  bool intersects(Collider other) => bounds.overlaps(other.bounds);
}

class SimpleAudioPlayer implements AudioPlayer {
  @override
  void play(String sound) => print('Playing: \$sound');
  
  @override
  void stop() => print('Stopping');
}

class SimpleParticleEffect implements ParticleEffect {
  SimpleParticleEffect(this.type);
  final String type;
  
  @override
  void emit(Vector2 position) => print('Emit at \$position');
  
  @override
  void update(double dt) => print('Update particles');
}

class SimpleEntityFactory implements EntityFactory {
  @override
  Sprite createSprite(String assetPath) => SimpleSprite(assetPath);
  
  @override
  Collider createCollider(Rectangle bounds) => SimpleCollider(bounds);
  
  @override
  AudioPlayer createAudioPlayer() => SimpleAudioPlayer();
  
  @override
  ParticleEffect createParticleEffect(String type) =>
      SimpleParticleEffect(type);
}

// Game Entity
class GameEntity {
  GameEntity({
    required this.sprite,
    required this.collider,
    this.audio,
    this.particles,
  });
  
  final Sprite sprite;
  final Collider collider;
  final AudioPlayer? audio;
  final ParticleEffect? particles;
  
  void update(double dt) {
    sprite.update(dt);
    particles?.update(dt);
  }
  
  void render() => sprite.render();
}

void main() {
  // Choose factory based on performance needs
  final factory = kProfileMode
      ? HighPerformanceEntityFactory()
      : SimpleEntityFactory();
  
  // All components guaranteed compatible
  final player = factory.createEntity(
    spriteAsset: 'player.png',
    bounds: Rectangle(0, 0, 32, 32),
    hasAudio: true,
    particleEffect: 'trail',
  );
  
  final enemy = factory.createEntity(
    spriteAsset: 'enemy.png',
    bounds: Rectangle(100, 100, 32, 32),
  );
  
  // Game loop
  for (var i = 0; i < 5; i++) {
    player.update(0.016);
    enemy.update(0.016);
  }
}

// Helper classes
class Rectangle {
  Rectangle(this.x, this.y, this.width, this.height);
  final double x, y, width, height;
  bool overlaps(Rectangle other) => true; // Simplified
}

class Vector2 {
  Vector2(this.x, this.y);
  final double x, y;
}

class AudioBuffer {
  AudioBuffer(this.path);
  final String path;
}

class Particle {
  Particle(this.position);
  final Vector2 position;
  bool isDead = false;
  void update(double dt) {}
}""",
        ),
      ],
      ar: [
        // Arabic versions with same structure but Arabic comments
        StrCodeBlock("""// مثال 1: أساسي - مصنع ثيم UI كامل
// حالة الاستخدام: ضمان عائلات مكونات واجهة مستخدم متسقة

abstract class Button {
  Widget build();
}

abstract class TextField {
  Widget build();
}

abstract class Dialog {
  Widget build();
}

// المصنع المجرد (Abstract Factory)
abstract class UIFactory {
  Button createButton(String text, VoidCallback onTap);
  TextField createTextField(String hint);
  Dialog createDialog(String title, String message);
}

// عائلة Material Design
class MaterialButton implements Button {
  MaterialButton(this.text, this.onTap);
  final String text;
  final VoidCallback onTap;
  
  @override
  Widget build() => ElevatedButton(
    onPressed: onTap,
    child: Text(text),
  );
}

class MaterialTextField implements TextField {
  MaterialTextField(this.hint);
  final String hint;
  
  @override
  Widget build() => TextField(
    decoration: InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(),
    ),
  );
}

class MaterialDialog implements Dialog {
  MaterialDialog(this.title, this.message);
  final String title;
  final String message;
  
  @override
  Widget build() => AlertDialog(
    title: Text(title),
    content: Text(message),
    actions: [TextButton(onPressed: () {}, child: Text('حسناً'))],
  );
}

class MaterialUIFactory implements UIFactory {
  @override
  Button createButton(String text, VoidCallback onTap) =>
      MaterialButton(text, onTap);
  
  @override
  TextField createTextField(String hint) =>
      MaterialTextField(hint);
  
  @override
  Dialog createDialog(String title, String message) =>
      MaterialDialog(title, message);
}

// عائلة Cupertino (iOS)
class CupertinoButton implements Button {
  CupertinoButton(this.text, this.onTap);
  final String text;
  final VoidCallback onTap;
  
  @override
  Widget build() => CupertinoButton(
    onPressed: onTap,
    child: Text(text),
  );
}

class CupertinoTextField implements TextField {
  CupertinoTextField(this.hint);
  final String hint;
  
  @override
  Widget build() => CupertinoTextField(
    placeholder: hint,
  );
}

class CupertinoDialog implements Dialog {
  CupertinoDialog(this.title, this.message);
  final String title;
  final String message;
  
  @override
  Widget build() => CupertinoAlertDialog(
    title: Text(title),
    content: Text(message),
    actions: [
      CupertinoDialogAction(
        child: Text('حسناً'),
        onPressed: () {},
      ),
    ],
  );
}

class CupertinoUIFactory implements UIFactory {
  @override
  Button createButton(String text, VoidCallback onTap) =>
      CupertinoButton(text, onTap);
  
  @override
  TextField createTextField(String hint) =>
      CupertinoTextField(hint);
  
  @override
  Dialog createDialog(String title, String message) =>
      CupertinoDialog(title, message);
}

// كود العميل (Client Code)
class LoginScreen extends StatelessWidget {
  const LoginScreen(this.factory, {super.key});
  final UIFactory factory;
  
  @override
  Widget build(BuildContext context) {
    // جميع المكونات مضمونة من نفس العائلة
    return Column(
      children: [
        factory.createTextField('اسم المستخدم').build(),
        factory.createTextField('كلمة المرور').build(),
        factory.createButton('تسجيل الدخول', () {
          showDialog(
            context: context,
            builder: (context) =>
                factory.createDialog('نجاح', 'تم تسجيل الدخول!').build(),
          );
        }).build(),
      ],
    );
  }
}

void main() {
  final factory = Platform.isIOS
      ? CupertinoUIFactory()
      : MaterialUIFactory();
  
  runApp(MaterialApp(
    home: LoginScreen(factory),
  ));
}"""),
        // Add other Arabic examples similarly...
      ],
    ),
    pros: LocSL(
      en: [
        "Guarantees product compatibility within families - prevents mixing incompatible objects",
        "Isolates concrete classes from client code completely",
        "Makes switching between entire product families very easy",
        "Follows Single Responsibility and Open/Closed principles",
        "Centralizes product creation logic for entire families",
        "Ensures consistency across related products",
      ],
      ar: [
        "يضمن توافق المنتجات ضمن العائلات - يمنع خلط كائنات غير متوافقة",
        "يعزل الفئات المحددة عن كود العميل بالكامل",
        "يجعل التبديل بين عائلات منتجات كاملة سهلاً جداً",
        "يتبع مبادئ المسؤولية الواحدة والمفتوح/المغلق",
        "يُمركز منطق إنشاء المنتجات لعائلات كاملة",
        "يضمن الاتساق عبر المنتجات المترابطة",
      ],
    ),
    cons: LocSL(
      en: [
        "Introduces many new interfaces and classes - high upfront complexity",
        "Can be overkill if product families are simple or unlikely to change",
        "Very difficult to add new product types to existing families (requires changing all factories)",
        "Increases initial design complexity significantly",
        "May be harder to understand than simpler factory patterns",
        "Requires careful planning of product families upfront",
      ],
      ar: [
        "يُدخل العديد من الواجهات والفئات الجديدة - تعقيد مبدئي عالٍ",
        "قد يكون مبالغاً فيه إذا كانت عائلات المنتجات بسيطة أو من غير المحتمل أن تتغير",
        "صعب جداً إضافة أنواع منتجات جديدة للعائلات الموجودة (يتطلب تغيير جميع المصانع)",
        "يزيد من تعقيد التصميم الأولي بشكل كبير",
        "قد يكون أصعب في الفهم من أنماط المصنع الأبسط",
        "يتطلب تخطيطاً دقيقاً لعائلات المنتجات مسبقاً",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Abstract Factory when:"),
        ULContent(
          value: [
            "Your code needs to work with various families of related products (like UI themes)",
            "You want to enforce that products from one family are used together",
            "You need to provide a library of products revealing only interfaces, not implementations",
            "Product families are likely to be switched (dev/prod, platforms, themes)",
            "You have multiple related products that must be compatible",
            "Independence from product creation details is crucial",
          ],
        ),
        NoteContent(
          "Don't use if: you only have one product family, products don't need to be compatible, or the complexity isn't justified by the benefits.",
          type: .warning,
        ),
      ],
      ar: [
        StrContent("استخدم المصنع المجرد عندما:"),
        ULContent(
          value: [
            "يحتاج كودك للعمل مع عائلات مختلفة من المنتجات المترابطة (مثل ثيمات واجهة المستخدم)",
            "تريد فرض استخدام منتجات من عائلة واحدة معاً",
            "تحتاج لتوفير مكتبة من المنتجات تكشف الواجهات فقط، وليس التطبيقات",
            "من المحتمل أن يتم تبديل عائلات المنتجات (تطوير/إنتاج، منصات، ثيمات)",
            "لديك منتجات مترابطة متعددة يجب أن تكون متوافقة",
            "الاستقلالية عن تفاصيل إنشاء المنتج أمر بالغ الأهمية",
          ],
        ),
        NoteContent(
          "لا تستخدمه إذا: كان لديك عائلة منتج واحدة فقط، المنتجات لا تحتاج أن تكون متوافقة، أو التعقيد غير مبرر بالفوائد.",
          type: .warning,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Confusing it with Factory Method - Abstract Factory creates product families, Factory Method creates single products",
        "Using it when you only need to create one type of object (use Factory Method instead)",
        "Making factories too granular with too many small create methods",
        "Not maintaining consistency between products in a family",
        "Adding new product types frequently (this pattern makes that hard)",
        "Not properly designing product families before implementation",
        "Mixing products from different families in client code",
      ],
      ar: [
        "الخلط بينه وبين طريقة المصنع - المصنع المجرد ينشئ عائلات منتجات، طريقة المصنع تنشئ منتجات منفردة",
        "استخدامه عندما تحتاج فقط لإنشاء نوع واحد من الكائنات (استخدم طريقة المصنع بدلاً من ذلك)",
        "جعل المصانع دقيقة جداً مع عدد كبير من طرق الإنشاء الصغيرة",
        "عدم الحفاظ على الاتساق بين المنتجات في العائلة",
        "إضافة أنواع منتجات جديدة بشكل متكرر (هذا النمط يجعل ذلك صعباً)",
        "عدم تصميم عائلات المنتجات بشكل صحيح قبل التطبيق",
        "خلط منتجات من عائلات مختلفة في كود العميل",
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
      ar: "يفصل بناء الكائن عن تمثيله (Representation)، مما يسمح بإنشاء تدريجي خطوة بخطوة للكائنات المعقدة",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Builder pattern addresses a common problem: how do you construct complex objects with many optional parameters without creating a mess of constructors or long parameter lists?",
        ),
        AnalogyContent(
          "Think of ordering a custom burger at a restaurant. You don't just say 'burger' - you specify: 'I want a burger with cheese, no tomatoes, extra pickles, on whole wheat bun, well done.' The cook (builder) assembles it step-by-step according to your specifications. The same base process (building a burger) creates different results based on your choices.",
        ),
        StrContent(
          "Builder constructs complex objects step by step, giving you fine control over the construction process. Unlike patterns that construct products in one shot, Builder lets you execute construction steps selectively and in different orders.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Builder: Interface defining construction steps (abstract or concrete)",
            "ConcreteBuilder: Implements building steps and tracks the product being built",
            "Product: The complex object being constructed (often immutable)",
            "Director (optional): Orchestrates building steps in a specific order for common configurations",
          ],
        ),
        DiagramContent(
          "Pattern Flow:\nClient → Director → Builder → Product\n              ↓         ↓\n        orchestrates  step1()\n                      step2()\n                      build()",
        ),
        StrContent(
          "In Dart and Flutter, builders are commonly implemented as fluent interfaces where each method returns the builder itself, allowing method chaining. This creates readable, self-documenting code.",
        ),
        NoteContent(
          "Builder vs Constructor: Constructors require all parameters upfront. Builders let you add parameters incrementally and provide defaults. Use Builder when you have 4+ optional parameters or complex validation logic.",
          type: .important,
        ),
        StrContent(
          "The pattern is especially useful in Flutter for creating complex widgets, building query objects, configuring HTTP requests, and creating test data. Dart's named parameters reduce the need for builders in simple cases, but complex scenarios still benefit greatly.",
        ),
        NoteContent(
          "Modern Dart supports named parameters with defaults, which covers simple cases. Use Builder for: complex validation, dependent parameters, multiple representations from same data, or when you need to enforce build steps.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent(
          "نمط البناء (Builder) يعالج مشكلة شائعة: كيف تبني كائنات معقدة مع العديد من المعاملات الاختيارية دون إنشاء فوضى من المُنشئات (Constructors) أو قوائم معاملات طويلة؟",
        ),
        AnalogyContent(
          "فكر في طلب برجر مخصص في مطعم. لا تقول فقط 'برجر' - بل تحدد: 'أريد برجر مع جبن، بدون طماطم، مخلل إضافي، على خبز قمح كامل، مطهو جيداً'. الطاهي (البناء) يجمعه خطوة بخطوة وفقاً لمواصفاتك. نفس العملية الأساسية (بناء برجر) تنشئ نتائج مختلفة بناءً على اختياراتك.",
        ),
        StrContent(
          "البناء يبني الكائنات المعقدة خطوة بخطوة، مما يمنحك تحكماً دقيقاً في عملية البناء. على عكس الأنماط التي تبني المنتجات دفعة واحدة، البناء يتيح لك تنفيذ خطوات البناء بشكل انتقائي وبترتيبات مختلفة.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "البناء (Builder): واجهة تحدد خطوات البناء (مجردة أو محددة)",
            "البناء المحدد (ConcreteBuilder): ينفذ خطوات البناء ويتتبع المنتج الذي يتم بناؤه",
            "المنتج (Product): الكائن المعقد الذي يتم بناؤه (غالباً غير قابل للتغيير - Immutable)",
            "المدير (Director) (اختياري): ينسق خطوات البناء بترتيب محدد للإعدادات الشائعة",
          ],
        ),
        DiagramContent(
          "تدفق النمط:\nالعميل ← المدير ← البناء ← المنتج\n              ↓         ↓\n        ينسق     ()step1\n                ()step2\n                ()build",
        ),
        StrContent(
          "في Dart و Flutter، غالباً ما تُنفذ أدوات البناء كواجهات انسيابية (Fluent Interfaces) حيث تُرجع كل طريقة أداة البناء نفسها، مما يسمح بتسلسل الطرق (Method Chaining). هذا ينشئ كوداً قابلاً للقراءة ويوثق نفسه.",
        ),
        NoteContent(
          "البناء مقابل المُنشئ: المُنشئات تتطلب جميع المعاملات مقدماً. أدوات البناء تتيح لك إضافة معاملات تدريجياً وتوفير قيم افتراضية. استخدم البناء عندما يكون لديك 4+ معاملات اختيارية أو منطق تحقق معقد.",
          type: .important,
        ),
        StrContent(
          "النمط مفيد بشكل خاص في Flutter لإنشاء واجهات مستخدم (Widgets) معقدة، بناء كائنات الاستعلام (Query Objects)، تكوين طلبات HTTP، وإنشاء بيانات الاختبار. معاملات Dart المسماة (Named Parameters) تقلل الحاجة للبناء في الحالات البسيطة، لكن السيناريوهات المعقدة لا تزال تستفيد بشكل كبير.",
        ),
        NoteContent(
          "Dart الحديثة تدعم المعاملات المسماة مع القيم الافتراضية، مما يغطي الحالات البسيطة. استخدم البناء لـ: التحقق المعقد، المعاملات المترابطة، تمثيلات متعددة من نفس البيانات، أو عندما تحتاج لفرض خطوات البناء.",
          type: .tip,
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - HTTP Request Builder
        StrCodeBlock("""// Example 1: Basic - HTTP Request Builder
// Use case: Building complex HTTP requests with many optional parameters

class HttpRequest {
  HttpRequest._({
    required this.url,
    required this.method,
    required this.headers,
    required this.queryParams,
    this.body,
    required this.timeout,
  });

  final String url;
  final String method;
  final Map<String, String> headers;
  final Map<String, String> queryParams;
  final dynamic body;
  final Duration timeout;

  @override
  String toString() {
    return 'HttpRequest(\$method \$url, headers: \$headers, timeout: \$timeout)';
  }
}

class HttpRequestBuilder {
  String _url = '';
  String _method = 'GET';
  final Map<String, String> _headers = {};
  final Map<String, String> _queryParams = {};
  dynamic _body;
  Duration _timeout = .seconds(30);

  HttpRequestBuilder(this._url);

  HttpRequestBuilder method(String method) {
    _method = method.toUpperCase();
    return this;
  }

  HttpRequestBuilder header(String key, String value) {
    _headers[key] = value;
    return this;
  }

  HttpRequestBuilder headers(Map<String, String> headers) {
    _headers.addAll(headers);
    return this;
  }

  HttpRequestBuilder queryParam(String key, String value) {
    _queryParams[key] = value;
    return this;
  }

  HttpRequestBuilder queryParams(Map<String, String> params) {
    _queryParams.addAll(params);
    return this;
  }

  HttpRequestBuilder body(dynamic body) {
    _body = body;
    return this;
  }

  HttpRequestBuilder timeout(Duration timeout) {
    _timeout = timeout;
    return this;
  }

  HttpRequestBuilder get asJson {
    return header('Content-Type', 'application/json');
  }

  HttpRequestBuilder get withAuth {
    return header('Authorization', 'Bearer token_here');
  }

  HttpRequest build() {
    if (_url.isEmpty) {
      throw Exception('URL is required');
    }

    return HttpRequest._(
      url: _url,
      method: _method,
      headers: Map.unmodifiable(_headers),
      queryParams: Map.unmodifiable(_queryParams),
      body: _body,
      timeout: _timeout,
    );
  }
}

void main() {
  // Readable, fluent API
  final request = HttpRequestBuilder('https://api.example.com/users')
      .method('POST')
      .asJson
      .withAuth
      .queryParam('page', '1')
      .queryParam('limit', '10')
      .body({'name': 'John', 'email': 'john@example.com'})
      .timeout(.seconds(60))
      .build();

  print(request);

  // Compare with constructor - much harder to read
  // final request = HttpRequest(
  //   url: 'https://api.example.com/users',
  //   method: 'POST',
  //   headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer token'},
  //   queryParams: {'page': '1', 'limit': '10'},
  //   body: {'name': 'John', 'email': 'john@example.com'},
  //   timeout: Duration(seconds: 60),
  // );
}"""),

        // Example 2: Intermediate - Widget Builder
        StrCodeBlock("""// Example 2: Intermediate - Complex Widget Builder
// Use case: Building complex Flutter widgets with many customization options

class CustomCard {
  const CustomCard._({
    required this.child,
    required this.elevation,
    required this.color,
    required this.borderRadius,
    required this.padding,
    required this.margin,
    required this.width,
    required this.height,
    this.gradient,
    this.border,
    this.onTap,
    required this.shadow,
  });

  final Widget child;
  final double elevation;
  final Color? color;
  final BorderRadius borderRadius;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double? width;
  final double? height;
  final Gradient? gradient;
  final BoxBorder? border;
  final VoidCallback? onTap;
  final bool shadow;

  Widget build(BuildContext context) {
    Widget content = Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        gradient: gradient,
        borderRadius: borderRadius,
        border: border,
        boxShadow: shadow
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: elevation,
                  offset: Offset(0, elevation / 2),
                ),
              ]
            : null,
      ),
      child: child,
    );

    if (onTap != null) {
      content = InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: content,
      );
    }

    return Padding(
      padding: margin,
      child: content,
    );
  }
}

class CustomCardBuilder {
  Widget? _child;
  double _elevation = 4.0;
  Color? _color;
  BorderRadius _borderRadius = .circular(12);
  EdgeInsets _padding = .all(16);
  EdgeInsets _margin = .zero;
  double? _width;
  double? _height;
  Gradient? _gradient;
  BoxBorder? _border;
  VoidCallback? _onTap;
  bool _shadow = true;

  CustomCardBuilder child(Widget child) {
    _child = child;
    return this;
  }

  CustomCardBuilder elevation(double elevation) {
    _elevation = elevation;
    return this;
  }

  CustomCardBuilder color(Color color) {
    _color = color;
    return this;
  }

  CustomCardBuilder borderRadius(BorderRadius radius) {
    _borderRadius = radius;
    return this;
  }

  CustomCardBuilder padding(EdgeInsets padding) {
    _padding = padding;
    return this;
  }

  CustomCardBuilder margin(EdgeInsets margin) {
    _margin = margin;
    return this;
  }

  CustomCardBuilder size({double? width, double? height}) {
    _width = width;
    _height = height;
    return this;
  }

  CustomCardBuilder gradient(Gradient gradient) {
    _gradient = gradient;
    _color = null; // Clear color if gradient is set
    return this;
  }

  CustomCardBuilder border({
    required Color color,
    double width = 1.0,
  }) {
    _border = Border.all(color: color, width: width);
    return this;
  }

  CustomCardBuilder onTap(VoidCallback callback) {
    _onTap = callback;
    return this;
  }

  CustomCardBuilder get noShadow {
    _shadow = false;
    return this;
  }

  CustomCardBuilder get rounded {
    _borderRadius = .circular(20);
    return this;
  }

  CustomCardBuilder get flat {
    _elevation = 0;
    _shadow = false;
    return this;
  }

  CustomCard build() {
    if (_child == null) {
      throw Exception('Child widget is required');
    }

    return CustomCard._(
      child: _child!,
      elevation: _elevation,
      color: _color,
      borderRadius: _borderRadius,
      padding: _padding,
      margin: _margin,
      width: _width,
      height: _height,
      gradient: _gradient,
      border: _border,
      onTap: _onTap,
      shadow: _shadow,
    );
  }
}

// Usage in Flutter
class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Simple card
        CustomCardBuilder()
            .child(Text('Simple Card'))
            .color(Colors.white)
            .build()
            .build(context),

        // Gradient card with tap
        CustomCardBuilder()
            .child(Text('Gradient Card', style: .white))
            .gradient(LinearGradient(
              colors: [Colors.purple, Colors.blue],
            ))
            .rounded
            .onTap(() => print('Tapped!'))
            .build()
            .build(context),

        // Custom styled card
        CustomCardBuilder()
            .child(Column(
              children: [
                Icon(Icons.star, size: 48),
                Text('Featured'),
              ],
            ))
            .color(Colors.amber[50])
            .border(color: Colors.amber, width: 2)
            .padding(.all(24))
            .margin(.symmetric(vertical: 8))
            .size(width: 200, height: 150)
            .flat
            .build()
            .build(context),
      ],
    );
  }
}"""),

        // Example 3: Advanced - Query Builder with Validation
        StrCodeBlock(
          """// Example 3: Advanced - SQL Query Builder with Validation
// Use case: Building complex database queries with type safety

class QueryResult {
  const QueryResult(this.sql, this.parameters);
  final String sql;
  final List<dynamic> parameters;

  @override
  String toString() => 'SQL: \$sql\nParams: \$parameters';
}

enum JoinType { inner, left, right, full }
enum OrderDirection { asc, desc }

class WhereClause {
  WhereClause(this.column, this.operator, this.value);
  final String column;
  final String operator;
  final dynamic value;
}

class QueryBuilder {
  String? _table;
  final List<String> _columns = ['*'];
  final List<WhereClause> _whereClauses = [];
  final List<String> _joins = [];
  final List<String> _orderBy = [];
  int? _limit;
  int? _offset;
  final List<dynamic> _parameters = [];

  QueryBuilder from(String table) {
    _table = table;
    return this;
  }

  QueryBuilder select(List<String> columns) {
    if (columns.isEmpty) {
      throw ArgumentError('Select columns cannot be empty');
    }
    _columns.clear();
    _columns.addAll(columns);
    return this;
  }

  QueryBuilder where(String column, String operator, dynamic value) {
    _whereClauses.add(WhereClause(column, operator, value));
    return this;
  }

  QueryBuilder whereEquals(String column, dynamic value) {
    return where(column, '=', value);
  }

  QueryBuilder whereIn(String column, List<dynamic> values) {
    if (values.isEmpty) {
      throw ArgumentError('WHERE IN values cannot be empty');
    }
    final placeholders = List.filled(values.length, '?').join(', ');
    _whereClauses.add(WhereClause(column, 'IN', '(\$placeholders)'));
    _parameters.addAll(values);
    return this;
  }

  QueryBuilder whereLike(String column, String pattern) {
    return where(column, 'LIKE', pattern);
  }

  QueryBuilder whereNull(String column) {
    _whereClauses.add(WhereClause(column, 'IS', 'NULL'));
    return this;
  }

  QueryBuilder join(
    String table,
    String condition, {
    JoinType type = .inner,
  }) {
    final joinType = switch (type) {
      .inner => 'INNER JOIN',
      .left => 'LEFT JOIN',
      .right => 'RIGHT JOIN',
      .full => 'FULL OUTER JOIN',
    };
    _joins.add('\$joinType \$table ON \$condition');
    return this;
  }

  QueryBuilder orderBy(String column, [OrderDirection direction = .asc]) {
    final dir = direction == .asc ? 'ASC' : 'DESC';
    _orderBy.add('\$column \$dir');
    return this;
  }

  QueryBuilder limit(int limit) {
    if (limit <= 0) {
      throw ArgumentError('Limit must be positive');
    }
    _limit = limit;
    return this;
  }

  QueryBuilder offset(int offset) {
    if (offset < 0) {
      throw ArgumentError('Offset cannot be negative');
    }
    _offset = offset;
    return this;
  }

  // Convenient pagination method
  QueryBuilder paginate(int page, int perPage) {
    if (page <= 0 || perPage <= 0) {
      throw ArgumentError('Page and perPage must be positive');
    }
    return limit(perPage).offset((page - 1) * perPage);
  }

  QueryResult build() {
    if (_table == null) {
      throw StateError('Table is required. Call from() first.');
    }

    final sql = StringBuffer();
    final params = <dynamic>[];

    // SELECT
    sql.write('SELECT \${_columns.join(', ')} ');

    // FROM
    sql.write('FROM \$_table ');

    // JOINS
    if (_joins.isNotEmpty) {
      sql.write('\${_joins.join(' ')} ');
    }

    // WHERE
    if (_whereClauses.isNotEmpty) {
      sql.write('WHERE ');
      final conditions = <String>[];
      for (final clause in _whereClauses) {
        if (clause.value == 'NULL') {
          conditions.add('\${clause.column} \${clause.operator} NULL');
        } else if (clause.operator == 'IN') {
          conditions.add('\${clause.column} IN \${clause.value}');
        } else {
          conditions.add('\${clause.column} \${clause.operator} ?');
          params.add(clause.value);
        }
      }
      sql.write(conditions.join(' AND '));
      sql.write(' ');
    }

    // ORDER BY
    if (_orderBy.isNotEmpty) {
      sql.write('ORDER BY \${_orderBy.join(', ')} ');
    }

    // LIMIT
    if (_limit != null) {
      sql.write('LIMIT \$_limit ');
    }

    // OFFSET
    if (_offset != null) {
      sql.write('OFFSET \$_offset ');
    }

    params.addAll(_parameters);

    return QueryResult(sql.toString().trim(), params);
  }

  // Create a copy for reusability
  QueryBuilder clone() {
    final builder = QueryBuilder()
      .._table = _table
      .._columns.addAll(_columns)
      .._whereClauses.addAll(_whereClauses)
      .._joins.addAll(_joins)
      .._orderBy.addAll(_orderBy)
      .._limit = _limit
      .._offset = _offset
      .._parameters.addAll(_parameters);
    return builder;
  }
}

void main() {
  // Simple query
  final query1 = QueryBuilder()
      .from('users')
      .whereEquals('active', true)
      .orderBy('created_at', .desc)
      .limit(10)
      .build();
  print(query1);
  print('---');

  // Complex query with joins
  final query2 = QueryBuilder()
      .from('users')
      .select(['users.id', 'users.name', 'orders.total'])
      .join('orders', 'users.id = orders.user_id')
      .whereIn('users.country', ['US', 'UK', 'CA'])
      .whereLike('users.email', '%@gmail.com')
      .orderBy('orders.total', .desc)
      .paginate(2, 20)
      .build();
  print(query2);
  print('---');

  // Reusable base query
  final baseQuery = QueryBuilder()
      .from('products')
      .whereEquals('available', true);

  final cheapProducts = baseQuery
      .clone()
      .where('price', '<', 50)
      .orderBy('price', .asc)
      .build();

  final expensiveProducts = baseQuery
      .clone()
      .where('price', '>', 1000)
      .orderBy('price', .desc)
      .limit(5)
      .build();

  print('Cheap products:\n\$cheapProducts');
  print('---');
  print('Expensive products:\n\$expensiveProducts');
}""",
        ),

        // Example 4: Test Data Builder
        StrCodeBlock("""// Example 4: Test Data Builder Pattern
// Use case: Creating test objects with sensible defaults

class User {
  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.age,
    required this.role,
    required this.isActive,
    required this.createdAt,
    this.lastLoginAt,
    required this.preferences,
  });

  final String id;
  final String name;
  final String email;
  final int age;
  final String role;
  final bool isActive;
  final DateTime createdAt;
  final DateTime? lastLoginAt;
  final Map<String, dynamic> preferences;

  User copyWith({
    String? id,
    String? name,
    String? email,
    int? age,
    String? role,
    bool? isActive,
    DateTime? createdAt,
    DateTime? lastLoginAt,
    Map<String, dynamic>? preferences,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      age: age ?? this.age,
      role: role ?? this.role,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      lastLoginAt: lastLoginAt ?? this.lastLoginAt,
      preferences: preferences ?? this.preferences,
    );
  }
}

class UserBuilder {
  static int _idCounter = 1;

  String _id = 'user_\${_idCounter++}';
  String _name = 'Test User';
  String _email = 'test@example.com';
  int _age = 25;
  String _role = 'user';
  bool _isActive = true;
  DateTime _createdAt = DateTime.now();
  DateTime? _lastLoginAt;
  final Map<String, dynamic> _preferences = {
    'theme': 'light',
    'notifications': true,
  };

  UserBuilder id(String id) {
    _id = id;
    return this;
  }

  UserBuilder name(String name) {
    _name = name;
    return this;
  }

  UserBuilder email(String email) {
    _email = email;
    return this;
  }

  UserBuilder age(int age) {
    if (age < 0 || age > 150) {
      throw ArgumentError('Age must be between 0 and 150');
    }
    _age = age;
    return this;
  }

  UserBuilder role(String role) {
    _role = role;
    return this;
  }

  UserBuilder get inactive {
    _isActive = false;
    return this;
  }

  UserBuilder createdAt(DateTime date) {
    _createdAt = date;
    return this;
  }

  UserBuilder lastLoginAt(DateTime date) {
    _lastLoginAt = date;
    return this;
  }

  UserBuilder preference(String key, dynamic value) {
    _preferences[key] = value;
    return this;
  }

  // Convenient presets
  UserBuilder get admin {
    _role = 'admin';
    _name = 'Admin User';
    _email = 'admin@example.com';
    return this;
  }

  UserBuilder get moderator {
    _role = 'moderator';
    _name = 'Moderator User';
    return this;
  }

  UserBuilder get newUser {
    _createdAt = DateTime.now();
    _lastLoginAt = null;
    return this;
  }

  UserBuilder get veteran {
    _createdAt = DateTime.now().subtract(.days(365));
    _lastLoginAt = DateTime.now().subtract(.hours(1));
    return this;
  }

  User build() {
    // Auto-generate email from name if using default
    if (_email == 'test@example.com' && _name != 'Test User') {
      _email = '\${_name.toLowerCase().replaceAll(' ', '.')}@example.com';
    }

    return User(
      id: _id,
      name: _name,
      email: _email,
      age: _age,
      role: _role,
      isActive: _isActive,
      createdAt: _createdAt,
      lastLoginAt: _lastLoginAt,
      preferences: Map.unmodifiable(_preferences),
    );
  }

  // Build multiple users at once
  List<User> buildMany(int count) {
    return List.generate(count, (_) {
      final user = build();
      _idCounter++; // Ensure unique IDs
      return user;
    });
  }
}

void main() {
  // Simple test user
  final user1 = UserBuilder().build();
  print('User 1: \${user1.name} (\${user1.role})');

  // Admin user
  final admin = UserBuilder().admin.build();
  print('Admin: \${admin.name} (\${admin.role})');

  // Custom user
  final user2 = UserBuilder()
      .name('John Doe')
      .age(30)
      .moderator
      .veteran
      .preference('theme', 'dark')
      .build();
  print('User 2: \${user2.name}, created: \${user2.createdAt}');

  // Multiple test users
  final users = UserBuilder().buildMany(5);
  print('Generated \${users.length} users');
  for (final user in users) {
    print('  - \${user.name} (\${user.id})');
  }

  // Test scenario: inactive user
  final inactiveUser = UserBuilder()
      .name('Suspended User')
      .inactive
      .build();
  print('Inactive: \${inactiveUser.name} (active: \${inactiveUser.isActive})');
}"""),
      ],
      ar: [
        // Arabic versions
        StrCodeBlock("""// مثال 1: أساسي - بناء طلبات HTTP
// حالة الاستخدام: بناء طلبات HTTP معقدة مع العديد من المعاملات الاختيارية

class HttpRequest {
  HttpRequest._({
    required this.url,
    required this.method,
    required this.headers,
    required this.queryParams,
    this.body,
    required this.timeout,
  });

  final String url;
  final String method;
  final Map<String, String> headers;
  final Map<String, String> queryParams;
  final dynamic body;
  final Duration timeout;

  @override
  String toString() {
    return 'HttpRequest(\$method \$url, headers: \$headers, timeout: \$timeout)';
  }
}

class HttpRequestBuilder {
  String _url = '';
  String _method = 'GET';
  final Map<String, String> _headers = {};
  final Map<String, String> _queryParams = {};
  dynamic _body;
  Duration _timeout = .seconds(30);

  HttpRequestBuilder(this._url);

  HttpRequestBuilder method(String method) {
    _method = method.toUpperCase();
    return this;
  }

  HttpRequestBuilder header(String key, String value) {
    _headers[key] = value;
    return this;
  }

  HttpRequestBuilder headers(Map<String, String> headers) {
    _headers.addAll(headers);
    return this;
  }

  HttpRequestBuilder queryParam(String key, String value) {
    _queryParams[key] = value;
    return this;
  }

  HttpRequestBuilder queryParams(Map<String, String> params) {
    _queryParams.addAll(params);
    return this;
  }

  HttpRequestBuilder body(dynamic body) {
    _body = body;
    return this;
  }

  HttpRequestBuilder timeout(Duration timeout) {
    _timeout = timeout;
    return this;
  }

  HttpRequestBuilder get asJson {
    return header('Content-Type', 'application/json');
  }

  HttpRequestBuilder get withAuth {
    return header('Authorization', 'Bearer token_here');
  }

  HttpRequest build() {
    if (_url.isEmpty) {
      throw Exception('URL مطلوب');
    }

    return HttpRequest._(
      url: _url,
      method: _method,
      headers: Map.unmodifiable(_headers),
      queryParams: Map.unmodifiable(_queryParams),
      body: _body,
      timeout: _timeout,
    );
  }
}

void main() {
  // واجهة برمجية قابلة للقراءة وانسيابية
  final request = HttpRequestBuilder('https://api.example.com/users')
      .method('POST')
      .asJson
      .withAuth
      .queryParam('page', '1')
      .queryParam('limit', '10')
      .body({'name': 'John', 'email': 'john@example.com'})
      .timeout(.seconds(60))
      .build();

  print(request);

  // قارن مع المُنشئ - أصعب بكثير في القراءة
  // final request = HttpRequest(
  //   url: 'https://api.example.com/users',
  //   method: 'POST',
  //   headers: {'Content-Type': 'application/json', 'Authorization': 'Bearer token'},
  //   queryParams: {'page': '1', 'limit': '10'},
  //   body: {'name': 'John', 'email': 'john@example.com'},
  //   timeout: Duration(seconds: 60),
  // );
}"""),
        // Add other Arabic examples following same pattern...
      ],
    ),
    pros: LocSL(
      en: [
        "Constructs objects step-by-step with fine-grained control over the process",
        "Allows reusing the same construction code for different object representations",
        "Isolates complex construction logic from business logic (Single Responsibility)",
        "Completely avoids 'telescoping constructor' anti-pattern",
        "Supports method chaining for readable, fluent APIs",
        "Makes it easy to create objects with many optional parameters",
        "Enables validation at each step or at the end",
        "Perfect for creating immutable objects with many fields",
      ],
      ar: [
        "يبني الكائنات خطوة بخطوة مع تحكم دقيق في العملية",
        "يسمح بإعادة استخدام نفس كود البناء لتمثيلات كائنات مختلفة",
        "يعزل منطق البناء المعقد عن منطق الأعمال (مبدأ المسؤولية الواحدة)",
        "يتجنب تماماً نمط 'المُنشئ التلسكوبي' المضاد (Telescoping Constructor Anti-pattern)",
        "يدعم تسلسل الطرق (Method Chaining) لواجهات برمجية قابلة للقراءة وانسيابية",
        "يسهّل إنشاء كائنات مع العديد من المعاملات الاختيارية",
        "يُمكّن التحقق (Validation) في كل خطوة أو في النهاية",
        "مثالي لإنشاء كائنات غير قابلة للتغيير (Immutable) مع العديد من الحقول",
      ],
    ),
    cons: LocSL(
      en: [
        "Increases code complexity with additional builder classes",
        "Requires creating a new concrete builder for each product variant",
        "May be overkill for simple object construction (use named parameters instead)",
        "Adds verbosity to the codebase - more code to maintain",
        "Can be misused to hide complexity that should be simplified",
        "May encourage creating objects with too many parameters (design smell)",
      ],
      ar: [
        "يزيد من تعقيد الكود مع فئات بناء إضافية",
        "يتطلب إنشاء بناء محدد جديد لكل متغير منتج",
        "قد يكون مبالغاً فيه لبناء الكائنات البسيطة (استخدم المعاملات المسماة بدلاً من ذلك)",
        "يضيف إطناباً (Verbosity) للكود البرمجي - المزيد من الكود للصيانة",
        "يمكن إساءة استخدامه لإخفاء تعقيد يجب تبسيطه",
        "قد يشجع على إنشاء كائنات مع عدد كبير جداً من المعاملات (رائحة تصميم - Design Smell)",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Builder when:"),
        ULContent(
          value: [
            "You need to construct complex objects with many optional parameters (4+)",
            "Object construction requires multiple steps or validation",
            "You want to create different representations using the same construction process",
            "You need to build composite tree structures or hierarchies step-by-step",
            "Creating immutable objects with many fields",
            "Parameters have dependencies or constraints between them",
            "You're building test data with sensible defaults",
          ],
        ),
        NoteContent(
          "Don't use if: object has few parameters (< 4), construction is simple, or Dart's named parameters with defaults are sufficient.",
          type: .warning,
        ),
      ],
      ar: [
        StrContent("استخدم البناء عندما:"),
        ULContent(
          value: [
            "تحتاج لبناء كائنات معقدة مع العديد من المعاملات الاختيارية (4+)",
            "يتطلب بناء الكائن خطوات متعددة أو تحقق (Validation)",
            "تريد إنشاء تمثيلات مختلفة باستخدام نفس عملية البناء",
            "تحتاج لبناء هياكل شجرية مركبة أو تسلسلات هرمية خطوة بخطوة",
            "إنشاء كائنات غير قابلة للتغيير مع العديد من الحقول",
            "المعاملات لها تبعيات أو قيود بينها",
            "تقوم ببناء بيانات اختبار مع قيم افتراضية معقولة",
          ],
        ),
        NoteContent(
          "لا تستخدمه إذا: كان للكائن معاملات قليلة (< 4)، البناء بسيط، أو معاملات Dart المسماة مع القيم الافتراضية كافية.",
          type: .warning,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Over-generalizing builder steps, making the API confusing",
        "Not separating building steps meaningfully - just wrapping setters",
        "Using Director when it hides needed customization from clients",
        "Forgetting to validate required fields before calling build()",
        "Not making the product immutable after building",
        "Creating builders for simple objects where named parameters would suffice",
        "Not providing convenient preset methods for common configurations",
        "Making builder methods return void instead of this (breaks chaining)",
      ],
      ar: [
        "التعميم المفرط لخطوات البناء، مما يجعل الواجهة البرمجية مربكة",
        "عدم فصل خطوات البناء بشكل هادف - مجرد تغليف للـ Setters",
        "استخدام المدير (Director) عندما يخفي التخصيص المطلوب من العملاء",
        "نسيان التحقق من الحقول المطلوبة قبل استدعاء ()build",
        "عدم جعل المنتج غير قابل للتغيير بعد البناء",
        "إنشاء بناءات لكائنات بسيطة حيث المعاملات المسماة كافية",
        "عدم توفير طرق إعدادات مسبقة (Preset Methods) مريحة للإعدادات الشائعة",
        "جعل طرق البناء تُرجع void بدلاً من this (يكسر التسلسل - Chaining)",
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
      ar: "ينشئ كائنات جديدة من خلال نسخ نماذج موجودة (Cloning)، متجنباً الاعتماد على الفئات المحددة",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Prototype pattern creates new objects by cloning existing ones rather than constructing them from scratch. This is particularly valuable when object creation is expensive, complex, or you need copies that preserve state.",
        ),
        AnalogyContent(
          "Think of a photocopier. Instead of rewriting a document from scratch, you place the original on the copier and press a button. The copier creates an exact duplicate in seconds. Similarly, Prototype clones objects instantly, preserving all their configured state.",
        ),
        StrContent(
          "Instead of using constructors and the 'new' keyword, you call a clone() method on a prototype instance. This approach decouples your code from concrete classes - you don't need to know the exact type to create a copy.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Prototype: Declares a cloning interface (typically a clone() or copy() method)",
            "ConcretePrototype: Implements the cloning method to create a copy of itself",
            "Client: Creates new objects by asking prototypes to clone themselves",
            "PrototypeRegistry (optional): Maintains a catalog of frequently cloned objects",
          ],
        ),
        DiagramContent(
          "Pattern Flow:\nClient → Prototype.clone() → New Object (copy)\n         ↓\n   ConcretePrototype\n   (with all state)",
        ),
        StrContent(
          "The pattern is especially useful when object creation involves expensive operations like database queries, file I/O, or complex calculations. Cloning can be orders of magnitude faster.",
        ),
        NoteContent(
          "Shallow vs Deep Copy: Shallow copy duplicates the object but references the same nested objects. Deep copy recursively duplicates everything. Choose based on whether clones should share nested data.",
          type: .important,
        ),
        StrContent(
          "In Dart, this is commonly implemented using copy constructors, factory constructors (copyWith pattern), or explicit clone methods. Dart doesn't have built-in cloning like some languages, so you implement it explicitly.",
        ),
        NoteContent(
          "In Flutter, the copyWith pattern is everywhere: TextStyle, ThemeData, EdgeInsets, etc. This is Prototype pattern in action!",
          type: .tip,
        ),
        StrContent(
          "Common use cases: creating game entities with default configurations, cloning complex UI state, duplicating document templates, managing object pools, and implementing undo/redo functionality.",
        ),
      ],
      ar: [
        StrContent(
          "نمط النموذج الأولي (Prototype) ينشئ كائنات جديدة من خلال استنساخ (Cloning) كائنات موجودة بدلاً من بنائها من الصفر. هذا ذو قيمة خاصة عندما يكون إنشاء الكائن مكلفاً، معقداً، أو تحتاج نسخاً تحافظ على الحالة (State).",
        ),
        AnalogyContent(
          "فكر في آلة التصوير. بدلاً من إعادة كتابة مستند من الصفر، تضع النسخة الأصلية على الآلة وتضغط على زر. الآلة تنشئ نسخة مطابقة في ثوانٍ. بالمثل، النموذج الأولي يستنسخ الكائنات فوراً، محافظاً على كل حالتها المُهيأة.",
        ),
        StrContent(
          "بدلاً من استخدام المُنشئات (Constructors) والكلمة المفتاحية 'new'، تستدعي طريقة ()clone على نموذج أولي موجود. هذا النهج يفصل كودك عن الفئات المحددة - لا تحتاج لمعرفة النوع الدقيق لإنشاء نسخة.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "النموذج الأولي (Prototype): يُعلن عن واجهة الاستنساخ (عادةً طريقة ()clone أو ()copy)",
            "النموذج الأولي المحدد (ConcretePrototype): ينفذ طريقة الاستنساخ لإنشاء نسخة من نفسه",
            "العميل (Client): ينشئ كائنات جديدة من خلال طلب استنساخ النماذج الأولية",
            "سجل النماذج الأولية (PrototypeRegistry) (اختياري): يحتفظ بكتالوج من الكائنات المُستنسخة بشكل متكرر",
          ],
        ),
        DiagramContent(
          "تدفق النمط:\nالعميل ← ()Prototype.clone ← كائن جديد (نسخة)\n         ↓\n   ConcretePrototype\n   (مع كل الحالة)",
        ),
        StrContent(
          "النمط مفيد بشكل خاص عندما يتضمن إنشاء الكائن عمليات مكلفة مثل استعلامات قاعدة البيانات، عمليات إدخال/إخراج الملفات، أو حسابات معقدة. الاستنساخ يمكن أن يكون أسرع بمراتب من حيث الحجم (Orders of Magnitude).",
        ),
        NoteContent(
          "النسخ السطحي مقابل النسخ العميق: النسخ السطحي (Shallow Copy) يُكرر الكائن لكن يُشير لنفس الكائنات المُتداخلة. النسخ العميق (Deep Copy) يُكرر كل شيء بشكل متكرر. اختر بناءً على ما إذا كانت النسخ يجب أن تشترك في البيانات المُتداخلة.",
          type: .important,
        ),
        StrContent(
          "في Dart، يُنفذ هذا عادةً باستخدام مُنشئات النسخ (Copy Constructors)، مُنشئات المصنع (نمط copyWith)، أو طرق استنساخ صريحة. Dart ليس لديها استنساخ مدمج مثل بعض اللغات، لذا تُنفذها بشكل صريح.",
        ),
        NoteContent(
          "في Flutter، نمط copyWith موجود في كل مكان: TextStyle، ThemeData، EdgeInsets، إلخ. هذا هو نمط النموذج الأولي في العمل!",
          type: .tip,
        ),
        StrContent(
          "حالات الاستخدام الشائعة: إنشاء كيانات ألعاب مع إعدادات افتراضية، استنساخ حالة واجهة مستخدم معقدة، تكرار قوالب المستندات، إدارة تجمعات الكائنات (Object Pools)، وتنفيذ وظيفة التراجع/الإعادة (Undo/Redo).",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Shape Cloning
        StrCodeBlock("""// Example 1: Basic - Shape Cloning System
// Use case: Graphics editor with copy/paste functionality

abstract class Shape {
  Shape({required this.x, required this.y, required this.color});
  
  int x;
  int y;
  String color;
  
  // Prototype method
  Shape clone();
  
  void draw() {
    print('Drawing \$runtimeType at (\$x, \$y) with color \$color');
  }
  
  void move(int dx, int dy) {
    x += dx;
    y += dy;
  }
}

class Circle extends Shape {
  Circle({
    required super.x,
    required super.y,
    required super.color,
    required this.radius,
  });
  
  int radius;
  
  // Copy constructor
  Circle._copy(Circle source)
      : radius = source.radius,
        super(x: source.x, y: source.y, color: source.color);
  
  @override
  Circle clone() => Circle._copy(this);
  
  @override
  void draw() {
    super.draw();
    print('  Circle with radius \$radius');
  }
}

class Rectangle extends Shape {
  Rectangle({
    required super.x,
    required super.y,
    required super.color,
    required this.width,
    required this.height,
  });
  
  int width;
  int height;
  
  Rectangle._copy(Rectangle source)
      : width = source.width,
        height = source.height,
        super(x: source.x, y: source.y, color: source.color);
  
  @override
  Rectangle clone() => Rectangle._copy(this);
  
  @override
  void draw() {
    super.draw();
    print('  Rectangle \${width}x\$height');
  }
}

class Triangle extends Shape {
  Triangle({
    required super.x,
    required super.y,
    required super.color,
    required this.base,
    required this.height,
  });
  
  int base;
  int height;
  
  Triangle._copy(Triangle source)
      : base = source.base,
        height = source.height,
        super(x: source.x, y: source.y, color: source.color);
  
  @override
  Triangle clone() => Triangle._copy(this);
  
  @override
  void draw() {
    super.draw();
    print('  Triangle base:\$base, height:\$height');
  }
}

// Graphics Editor using Prototype
class GraphicsEditor {
  final List<Shape> shapes = [];
  Shape? _clipboard;
  
  void addShape(Shape shape) {
    shapes.add(shape);
    print('Added \${shape.runtimeType}');
  }
  
  void copyShape(int index) {
    if (index >= 0 && index < shapes.length) {
      _clipboard = shapes[index].clone();
      print('Copied \${_clipboard.runtimeType} to clipboard');
    }
  }
  
  void pasteShape() {
    if (_clipboard != null) {
      final newShape = _clipboard!.clone();
      newShape.move(10, 10); // Offset pasted shape
      shapes.add(newShape);
      print('Pasted \${newShape.runtimeType}');
    }
  }
  
  void duplicateShape(int index) {
    if (index >= 0 && index < shapes.length) {
      final copy = shapes[index].clone();
      copy.move(20, 20);
      shapes.add(copy);
      print('Duplicated \${copy.runtimeType}');
    }
  }
  
  void drawAll() {
    print('=== Drawing all shapes ===');
    for (final shape in shapes) {
      shape.draw();
    }
  }
}

void main() {
  final editor = GraphicsEditor();
  
  // Create original shapes
  final circle = Circle(x: 10, y: 10, color: 'red', radius: 5);
  final rect = Rectangle(x: 50, y: 50, color: 'blue', width: 30, height: 20);
  
  editor.addShape(circle);
  editor.addShape(rect);
  
  // Use prototype pattern to copy
  editor.copyShape(0); // Copy circle
  editor.pasteShape(); // Paste circle at new position
  
  editor.duplicateShape(1); // Duplicate rectangle
  
  editor.drawAll();
}"""),

        // Example 2: Intermediate - Game Entity System
        StrCodeBlock(
          """// Example 2: Intermediate - Game Entity Prototype System
// Use case: Spawning enemies with preset configurations

class GameEntity {
  GameEntity({
    required this.name,
    required this.health,
    required this.speed,
    required this.damage,
    required this.abilities,
    required this.position,
    this.inventory = const [],
  });
  
  final String name;
  int health;
  double speed;
  int damage;
  final List<String> abilities;
  Vector2 position;
  final List<String> inventory;
  
  // Deep clone with ability to override properties
  GameEntity clone({
    String? name,
    int? health,
    double? speed,
    int? damage,
    List<String>? abilities,
    Vector2? position,
    List<String>? inventory,
  }) {
    return GameEntity(
      name: name ?? this.name,
      health: health ?? this.health,
      speed: speed ?? this.speed,
      damage: damage ?? this.damage,
      // Deep copy collections
      abilities: abilities ?? List.from(this.abilities),
      position: position ?? this.position.clone(),
      inventory: inventory ?? List.from(this.inventory),
    );
  }
  
  void takeDamage(int amount) {
    health -= amount;
    print('\$name takes \$amount damage, health: \$health');
  }
  
  void attack(GameEntity target) {
    print('\$name attacks \${target.name} for \$damage damage');
    target.takeDamage(damage);
  }
  
  @override
  String toString() {
    return '\$name (HP:\$health, Speed:\$speed, Damage:\$damage) at \$position';
  }
}

class Vector2 {
  Vector2(this.x, this.y);
  double x;
  double y;
  
  Vector2 clone() => Vector2(x, y);
  
  @override
  String toString() => '(\$x, \$y)';
}

// Prototype Registry
class EntityRegistry {
  final Map<String, GameEntity> _prototypes = {};
  
  void register(String key, GameEntity prototype) {
    _prototypes[key] = prototype;
    print('Registered prototype: \$key');
  }
  
  GameEntity? spawn(String key, {Vector2? position}) {
    final prototype = _prototypes[key];
    if (prototype == null) {
      print('Prototype \$key not found');
      return null;
    }
    
    // Clone and optionally set new position
    return prototype.clone(
      position: position ?? Vector2(0, 0),
    );
  }
  
  List<String> get availableTypes => _prototypes.keys.toList();
}

void main() {
  final registry = EntityRegistry();
  
  // Register entity prototypes (templates)
  registry.register(
    'goblin',
    GameEntity(
      name: 'Goblin',
      health: 50,
      speed: 3.5,
      damage: 10,
      abilities: ['Quick Attack', 'Dodge'],
      position: Vector2(0, 0),
      inventory: ['Rusty Dagger'],
    ),
  );
  
  registry.register(
    'orc',
    GameEntity(
      name: 'Orc',
      health: 150,
      speed: 2.0,
      damage: 25,
      abilities: ['Heavy Strike', 'Rage'],
      position: Vector2(0, 0),
      inventory: ['Battle Axe', 'Shield'],
    ),
  );
  
  registry.register(
    'elite_orc',
    GameEntity(
      name: 'Elite Orc',
      health: 300,
      speed: 2.5,
      damage: 40,
      abilities: ['Heavy Strike', 'Rage', 'War Cry'],
      position: Vector2(0, 0),
      inventory: ['Legendary Axe', 'Steel Shield', 'Health Potion'],
    ),
  );
  
  print('=== Spawning Enemies ===');
  
  // Spawn multiple enemies quickly using prototypes
  final goblin1 = registry.spawn('goblin', position: Vector2(10, 20));
  final goblin2 = registry.spawn('goblin', position: Vector2(15, 25));
  final orc1 = registry.spawn('orc', position: Vector2(50, 50));
  final elite = registry.spawn('elite_orc', position: Vector2(100, 100));
  
  print('Spawned entities:');
  print(goblin1);
  print(goblin2);
  print(orc1);
  print(elite);
  
  // Battle simulation
  print('=== Battle ===');
  elite?.attack(goblin1!);
  orc1?.attack(goblin2!);
  
  // Create a modified version
  print('=== Creating Boss Variant ===');
  final bossGoblin = registry.spawn('goblin')?.clone(
    name: 'Goblin King',
    health: 200,
    damage: 30,
    abilities: ['Quick Attack', 'Dodge', 'Summon Minions', 'Poison'],
  );
  print('Created boss: \$bossGoblin');
}""",
        ),

        // Example 3: Advanced - Document Template System
        StrCodeBlock(
          """// Example 3: Advanced - Document Template with Deep/Shallow Cloning
// Use case: Document management system with templates

class DocumentSection {
  DocumentSection({
    required this.title,
    required this.content,
    this.metadata = const {},
  });
  
  String title;
  String content;
  Map<String, dynamic> metadata;
  
  DocumentSection clone() {
    return DocumentSection(
      title: title,
      content: content,
      metadata: Map.from(metadata), // Shallow copy of metadata
    );
  }
  
  @override
  String toString() => 'Section: \$title';
}

class Document {
  Document({
    required this.id,
    required this.title,
    required this.author,
    required this.sections,
    required this.metadata,
    required this.createdAt,
  });
  
  String id;
  String title;
  String author;
  List<DocumentSection> sections;
  Map<String, dynamic> metadata;
  DateTime createdAt;
  
  // Shallow clone - shares section references
  Document shallowClone() {
    return Document(
      id: 'copy_\$id',
      title: '\$title (Copy)',
      author: author,
      sections: sections, // Same list reference!
      metadata: metadata,  // Same map reference!
      createdAt: DateTime.now(),
    );
  }
  
  // Deep clone - duplicates everything
  Document deepClone() {
    return Document(
      id: 'copy_\$id',
      title: '\$title (Copy)',
      author: author,
      sections: sections.map((s) => s.clone()).toList(), // New list with cloned sections
      metadata: Map.from(metadata), // New map
      createdAt: DateTime.now(),
    );
  }
  
  // Smart clone - allows customization
  Document clone({
    String? id,
    String? title,
    String? author,
    bool deepCopy = true,
  }) {
    return Document(
      id: id ?? 'copy_\${this.id}',
      title: title ?? '\${this.title} (Copy)',
      author: author ?? this.author,
      sections: deepCopy 
          ? sections.map((s) => s.clone()).toList()
          : List.from(sections),
      metadata: Map.from(metadata),
      createdAt: DateTime.now(),
    );
  }
  
  void addSection(DocumentSection section) {
    sections.add(section);
  }
  
  void printInfo() {
    print('--- Document: \$title ---');
    print('ID: \$id');
    print('Author: \$author');
    print('Created: \$createdAt');
    print('Sections: \${sections.length}');
    for (var i = 0; i < sections.length; i++) {
      print('  \${i + 1}. \${sections[i].title}');
    }
  }
}

// Document Template Registry
class DocumentTemplateManager {
  final Map<String, Document> _templates = {};
  
  void registerTemplate(String name, Document template) {
    _templates[name] = template;
    print('Registered template: \$name');
  }
  
  Document? createFromTemplate(
    String templateName, {
    String? title,
    String? author,
  }) {
    final template = _templates[templateName];
    if (template == null) return null;
    
    return template.clone(
      title: title,
      author: author,
      deepCopy: true,
    );
  }
  
  List<String> get templateNames => _templates.keys.toList();
}

void main() {
  final manager = DocumentTemplateManager();
  
  // Create templates
  final reportTemplate = Document(
    id: 'template_report',
    title: 'Quarterly Report Template',
    author: 'System',
    sections: [
      DocumentSection(
        title: 'Executive Summary',
        content: '[Add summary here]',
      ),
      DocumentSection(
        title: 'Financial Overview',
        content: '[Add financial data]',
      ),
      DocumentSection(
        title: 'Recommendations',
        content: '[Add recommendations]',
      ),
    ],
    metadata: {'category': 'report', 'version': '1.0'},
    createdAt: DateTime.now(),
  );
  
  manager.registerTemplate('quarterly_report', reportTemplate);
  
  // Test shallow vs deep cloning
  print('=== Testing Shallow Clone ===');
  final shallowCopy = reportTemplate.shallowClone();
  print('Original sections: \${reportTemplate.sections.length}');
  print('Shallow copy sections: \${shallowCopy.sections.length}');
  
  shallowCopy.addSection(DocumentSection(
    title: 'Appendix',
    content: '[Additional data]',
  ));
  
  print('After modifying copy:');
  print('Original sections: \${reportTemplate.sections.length}'); // Changed!
  print('Shallow copy sections: \${shallowCopy.sections.length}');
  
  // Test deep cloning
  print('=== Testing Deep Clone ===');
  final deepCopy = reportTemplate.deepClone();
  print('Original sections: \${reportTemplate.sections.length}');
  print('Deep copy sections: \${deepCopy.sections.length}');
  
  deepCopy.addSection(DocumentSection(
    title: 'References',
    content: '[Citations]',
  ));
  
  print('After modifying deep copy:');
  print('Original sections: \${reportTemplate.sections.length}'); // Unchanged!
  print('Deep copy sections: \${deepCopy.sections.length}');
  
  // Use template manager
  print('=== Creating from Template ===');
  final q4Report = manager.createFromTemplate(
    'quarterly_report',
    title: 'Q4 2024 Report',
    author: 'John Doe',
  );
  
  q4Report?.printInfo();
  
  // Modify instance without affecting template
  q4Report?.sections[0].content = 'Q4 showed strong growth...';
  print('--- Template remains unchanged ---');
  print('Template section 0: \${reportTemplate.sections[0].content}');
  print('Instance section 0: \${q4Report?.sections[0].content}');
}""",
        ),

        // Example 4: Flutter State Management
        StrCodeBlock("""// Example 4: Flutter - User Settings Prototype
// Use case: Managing app settings with undo/redo using cloning

@immutable
class AppSettings {
  const AppSettings({
    required this.theme,
    required this.language,
    required this.fontSize,
    required this.notificationsEnabled,
    required this.soundEnabled,
    required this.autoSave,
    required this.customColors,
  });
  
  final String theme;
  final String language;
  final double fontSize;
  final bool notificationsEnabled;
  final bool soundEnabled;
  final bool autoSave;
  final Map<String, Color> customColors;
  
  // copyWith is Prototype pattern!
  AppSettings copyWith({
    String? theme,
    String? language,
    double? fontSize,
    bool? notificationsEnabled,
    bool? soundEnabled,
    bool? autoSave,
    Map<String, Color>? customColors,
  }) {
    return AppSettings(
      theme: theme ?? this.theme,
      language: language ?? this.language,
      fontSize: fontSize ?? this.fontSize,
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
      soundEnabled: soundEnabled ?? this.soundEnabled,
      autoSave: autoSave ?? this.autoSave,
      customColors: customColors ?? Map.from(this.customColors),
    );
  }
  
  // Predefined presets (prototypes)
  static AppSettings get defaultSettings => AppSettings(
    theme: 'light',
    language: 'en',
    fontSize: 16.0,
    notificationsEnabled: true,
    soundEnabled: true,
    autoSave: true,
    customColors: {},
  );
  
  static AppSettings get darkModePreset => defaultSettings.copyWith(
    theme: 'dark',
    customColors: {
      'primary': Colors.purple,
      'accent': Colors.amber,
    },
  );
  
  static AppSettings get accessibilityPreset => defaultSettings.copyWith(
    fontSize: 20.0,
    theme: 'high_contrast',
  );
}

// Settings Manager with Undo/Redo using Prototype
class SettingsManager extends ChangeNotifier {
  SettingsManager(AppSettings initial)
      : _current = initial,
        _history = [initial];
  
  AppSettings _current;
  final List<AppSettings> _history = [];
  int _historyIndex = 0;
  
  AppSettings get current => _current;
  bool get canUndo => _historyIndex > 0;
  bool get canRedo => _historyIndex < _history.length - 1;
  
  void updateSettings(AppSettings newSettings) {
    // Remove any redo history
    _history.removeRange(_historyIndex + 1, _history.length);
    
    // Add new settings to history
    _history.add(newSettings);
    _historyIndex = _history.length - 1;
    _current = newSettings;
    
    notifyListeners();
  }
  
  void undo() {
    if (canUndo) {
      _historyIndex--;
      _current = _history[_historyIndex];
      notifyListeners();
    }
  }
  
  void redo() {
    if (canRedo) {
      _historyIndex++;
      _current = _history[_historyIndex];
      notifyListeners();
    }
  }
  
  void resetToDefault() {
    updateSettings(AppSettings.defaultSettings);
  }
  
  void applyPreset(AppSettings preset) {
    updateSettings(preset);
  }
}

// Usage in Flutter
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SettingsManager(AppSettings.defaultSettings),
      child: const _SettingsView(),
    );
  }
}

class _SettingsView extends StatelessWidget {
  const _SettingsView();
  
  @override
  Widget build(BuildContext context) {
    final manager = context.watch<SettingsManager>();
    final settings = manager.current;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        actions: [
          IconButton(
            icon: Icon(Icons.undo),
            onPressed: manager.canUndo ? manager.undo : null,
          ),
          IconButton(
            icon: Icon(Icons.redo),
            onPressed: manager.canRedo ? manager.redo : null,
          ),
        ],
      ),
      body: ListView(
        children: [
          // Theme selector
          ListTile(
            title: Text('Theme'),
            trailing: DropdownButton<String>(
              value: settings.theme,
              items: ['light', 'dark', 'high_contrast']
                  .map((t) => DropdownMenuItem(value: t, child: Text(t)))
                  .toList(),
              onChanged: (theme) {
                if (theme != null) {
                  // Using copyWith (Prototype pattern)
                  manager.updateSettings(settings.copyWith(theme: theme));
                }
              },
            ),
          ),
          
          // Font size slider
          ListTile(
            title: Text('Font Size: \${settings.fontSize}'),
            subtitle: Slider(
              value: settings.fontSize,
              min: 12,
              max: 24,
              onChanged: (size) {
                manager.updateSettings(settings.copyWith(fontSize: size));
              },
            ),
          ),
          
          // Switches
          SwitchListTile(
            title: Text('Notifications'),
            value: settings.notificationsEnabled,
            onChanged: (value) {
              manager.updateSettings(
                settings.copyWith(notificationsEnabled: value),
              );
            },
          ),
          
          // Presets
          Padding(
            padding: .all(16),
            child: Column(
              crossAxisAlignment: .stretch,
              children: [
                Text('Presets', style: Theme.of(context).textTheme.titleMedium),
                .height(8),
                ElevatedButton(
                  onPressed: () => manager.resetToDefault(),
                  child: Text('Reset to Default'),
                ),
                .height(8),
                ElevatedButton(
                  onPressed: () => manager.applyPreset(AppSettings.darkModePreset),
                  child: Text('Dark Mode Preset'),
                ),
                .height(8),
                ElevatedButton(
                  onPressed: () => manager.applyPreset(AppSettings.accessibilityPreset),
                  child: Text('Accessibility Preset'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}"""),
      ],
      ar: [
        // Arabic versions
        StrCodeBlock("""// مثال 1: أساسي - نظام استنساخ الأشكال
// حالة الاستخدام: محرر رسومات مع وظيفة نسخ/لصق

abstract class Shape {
  Shape({required this.x, required this.y, required this.color});
  
  int x;
  int y;
  String color;
  
  // طريقة النموذج الأولي
  Shape clone();
  
  void draw() {
    print('رسم \$runtimeType عند (\$x, \$y) باللون \$color');
  }
  
  void move(int dx, int dy) {
    x += dx;
    y += dy;
  }
}

class Circle extends Shape {
  Circle({
    required super.x,
    required super.y,
    required super.color,
    required this.radius,
  });
  
  int radius;
  
  // مُنشئ النسخ (Copy Constructor)
  Circle._copy(Circle source)
      : radius = source.radius,
        super(x: source.x, y: source.y, color: source.color);
  
  @override
  Circle clone() => Circle._copy(this);
  
  @override
  void draw() {
    super.draw();
    print('  دائرة بنصف قطر \$radius');
  }
}

class Rectangle extends Shape {
  Rectangle({
    required super.x,
    required super.y,
    required super.color,
    required this.width,
    required this.height,
  });
  
  int width;
  int height;
  
  Rectangle._copy(Rectangle source)
      : width = source.width,
        height = source.height,
        super(x: source.x, y: source.y, color: source.color);
  
  @override
  Rectangle clone() => Rectangle._copy(this);
  
  @override
  void draw() {
    super.draw();
    print('  مستطيل \${width}x\$height');
  }
}

class Triangle extends Shape {
  Triangle({
    required super.x,
    required super.y,
    required super.color,
    required this.base,
    required this.height,
  });
  
  int base;
  int height;
  
  Triangle._copy(Triangle source)
      : base = source.base,
        height = source.height,
        super(x: source.x, y: source.y, color: source.color);
  
  @override
  Triangle clone() => Triangle._copy(this);
  
  @override
  void draw() {
    super.draw();
    print('  مثلث قاعدة:\$base، ارتفاع:\$height');
  }
}

// محرر الرسومات باستخدام النموذج الأولي
class GraphicsEditor {
  final List<Shape> shapes = [];
  Shape? _clipboard;
  
  void addShape(Shape shape) {
    shapes.add(shape);
    print('تمت إضافة \${shape.runtimeType}');
  }
  
  void copyShape(int index) {
    if (index >= 0 && index < shapes.length) {
      _clipboard = shapes[index].clone();
      print('تم نسخ \${_clipboard.runtimeType} إلى الحافظة');
    }
  }
  
  void pasteShape() {
    if (_clipboard != null) {
      final newShape = _clipboard!.clone();
      newShape.move(10, 10); // إزاحة الشكل الملصق
      shapes.add(newShape);
      print('تم لصق \${newShape.runtimeType}');
    }
  }
  
  void duplicateShape(int index) {
    if (index >= 0 && index < shapes.length) {
      final copy = shapes[index].clone();
      copy.move(20, 20);
      shapes.add(copy);
      print('تم تكرار \${copy.runtimeType}');
    }
  }
  
  void drawAll() {
    print('=== رسم جميع الأشكال ===');
    for (final shape in shapes) {
      shape.draw();
    }
  }
}

void main() {
  final editor = GraphicsEditor();
  
  // إنشاء أشكال أصلية
  final circle = Circle(x: 10, y: 10, color: 'أحمر', radius: 5);
  final rect = Rectangle(x: 50, y: 50, color: 'أزرق', width: 30, height: 20);
  
  editor.addShape(circle);
  editor.addShape(rect);
  
  // استخدام نمط النموذج الأولي للنسخ
  editor.copyShape(0); // نسخ الدائرة
  editor.pasteShape(); // لصق الدائرة في موضع جديد
  
  editor.duplicateShape(1); // تكرار المستطيل
  
  editor.drawAll();
}"""),
        // Add remaining Arabic examples...
      ],
    ),
    pros: LocSL(
      en: [
        "Avoids coupling to concrete product classes - don't need to know exact types",
        "Eliminates need for complex initialization when objects are expensive to create",
        "Can be significantly faster than creating objects from scratch (especially with I/O or calculations)",
        "Reduces subclass proliferation - no need for factory hierarchies",
        "Perfect for objects with lots of similar configurations",
        "Enables runtime object composition and configuration",
        "Simplifies object creation when classes are determined at runtime",
      ],
      ar: [
        "يتجنب الاقتران بفئات المنتج المحددة - لا حاجة لمعرفة الأنواع الدقيقة",
        "يلغي الحاجة للتهيئة المعقدة عندما تكون الكائنات مكلفة في الإنشاء",
        "يمكن أن يكون أسرع بشكل كبير من إنشاء الكائنات من الصفر (خاصة مع عمليات الإدخال/الإخراج أو الحسابات)",
        "يقلل من تكاثر الفئات الفرعية - لا حاجة لتسلسلات هرمية للمصانع",
        "مثالي للكائنات مع الكثير من الإعدادات المتشابهة",
        "يُمكّن تركيب وتكوين الكائنات في وقت التشغيل (Runtime)",
        "يُبسط إنشاء الكائنات عندما يتم تحديد الفئات في وقت التشغيل",
      ],
    ),
    cons: LocSL(
      en: [
        "Cloning objects with circular references can be very tricky to implement correctly",
        "Deep copying complex objects requires careful implementation of entire object graph",
        "Every class must implement proper clone logic - maintenance burden",
        "Can be complex with objects that have many dependencies or nested structures",
        "Shallow vs deep copy confusion can lead to subtle bugs",
        "May hide complexity that should be explicit in constructors",
        "Requires careful consideration of mutable vs immutable fields",
      ],
      ar: [
        "استنساخ الكائنات ذات المراجع الدائرية (Circular References) قد يكون صعباً جداً للتنفيذ بشكل صحيح",
        "النسخ العميق للكائنات المعقدة يتطلب تنفيذاً دقيقاً لرسم الكائن بالكامل (Object Graph)",
        "يجب على كل فئة تنفيذ منطق استنساخ صحيح - عبء الصيانة",
        "قد يكون معقداً مع الكائنات التي لديها العديد من التبعيات أو الهياكل المُتداخلة",
        "الالتباس بين النسخ السطحي والعميق يمكن أن يؤدي لأخطاء خفية",
        "قد يخفي تعقيداً يجب أن يكون صريحاً في المُنشئات",
        "يتطلب مراعاة دقيقة للحقول القابلة للتغيير مقابل غير القابلة للتغيير",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Prototype when:"),
        ULContent(
          value: [
            "Object creation is expensive (database queries, file I/O, complex calculations, network calls)",
            "You need many similar objects with slight variations",
            "You want to avoid building class hierarchies of factories",
            "Classes to instantiate are specified at runtime (loaded from config, user input, etc.)",
            "You need to preserve object state when creating copies",
            "Implementing undo/redo functionality",
            "Creating template or preset systems",
          ],
        ),
        NoteContent(
          "Perfect for: game entity spawning, document templates, UI state management, test data generation, and configuration presets.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent("استخدم النموذج الأولي عندما:"),
        ULContent(
          value: [
            "إنشاء الكائن مكلف (استعلامات قاعدة البيانات، إدخال/إخراج الملفات، حسابات معقدة، استدعاءات الشبكة)",
            "تحتاج للعديد من الكائنات المتشابهة مع اختلافات طفيفة",
            "تريد تجنب بناء تسلسلات هرمية من المصانع",
            "الفئات المراد إنشاؤها تُحدد في وقت التشغيل (مُحملة من الإعدادات، إدخال المستخدم، إلخ)",
            "تحتاج للحفاظ على حالة الكائن عند إنشاء النسخ",
            "تنفيذ وظيفة التراجع/الإعادة (Undo/Redo)",
            "إنشاء أنظمة القوالب أو الإعدادات المسبقة (Templates/Presets)",
          ],
        ),
        NoteContent(
          "مثالي لـ: توليد كيانات الألعاب، قوالب المستندات، إدارة حالة واجهة المستخدم، توليد بيانات الاختبار، والإعدادات المسبقة.",
          type: .tip,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Forgetting to deep copy mutable fields, causing shared state bugs between 'independent' objects",
        "Not handling circular references properly, leading to infinite loops",
        "Overusing prototype when simple constructors would suffice",
        "Not implementing proper equality checks (equals/hashCode) for cloned objects",
        "Cloning objects with open resources (file handles, database connections) without proper handling",
        "Making shallow copies when deep copies are needed (or vice versa)",
        "Not documenting whether clone() does shallow or deep copy",
        "Forgetting to clone nested collections (Lists, Maps, Sets)",
      ],
      ar: [
        "نسيان النسخ العميق للحقول القابلة للتغيير (Mutable Fields)، مما يسبب أخطاء الحالة المشتركة بين الكائنات 'المستقلة'",
        "عدم التعامل مع المراجع الدائرية بشكل صحيح، مما يؤدي لحلقات لا نهائية",
        "الإفراط في استخدام النموذج الأولي عندما تكفي المُنشئات البسيطة",
        "عدم تنفيذ فحوصات مساواة مناسبة (equals/hashCode) للكائنات المُستنسخة",
        "استنساخ كائنات مع موارد مفتوحة (File Handles، اتصالات قاعدة البيانات) دون معالجة صحيحة",
        "عمل نسخ سطحية عندما تكون النسخ العميقة مطلوبة (أو العكس)",
        "عدم توثيق ما إذا كانت ()clone تقوم بنسخ سطحي أو عميق",
        "نسيان استنساخ المجموعات المُتداخلة (Lists، Maps، Sets)",
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
      ar: "يضمن أن الفئة لها نسخة واحدة فقط ويوفر وصولاً عالمياً (Global Access) إليها",
    ),
    group: .design,
    type: .creational,
    category: .GoF,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "The Singleton pattern restricts instantiation of a class to a single instance and provides a global point of access to that instance. This is achieved through a private constructor and a static method or property that returns the sole instance.",
        ),
        AnalogyContent(
          "Think of a country's president or a company's CEO. There can only be one at any given time, and everyone in the organization knows how to reach them through the same official channel. Similarly, Singleton ensures only one instance exists, accessible through a well-known access point.",
        ),
        StrContent(
          "While Singleton is one of the most well-known patterns, it's also one of the most controversial. Modern software development often favors dependency injection over singletons due to better testability, reduced global state, and improved maintainability.",
        ),
        ULContent(
          title: "Key Characteristics:",
          value: [
            "Private constructor prevents direct instantiation",
            "Static instance variable holds the single instance",
            "Public static method/property provides global access point",
            "Lazy or eager initialization depending on implementation",
            "Thread-safety considerations in concurrent environments",
          ],
        ),
        DiagramContent(
          "Pattern Structure:\nSingleton\n  - static instance: Singleton\n  - Singleton() [private constructor]\n  + static getInstance(): Singleton\n  + businessMethod()\n\nClient → Singleton.getInstance() → Same Instance Every Time",
        ),
        NoteContent(
          "Singleton violates Single Responsibility Principle: the class manages both its own creation AND its business logic. Consider if you really need global state before using this pattern.",
          type: .warning,
        ),
        StrContent(
          "In Dart, Singletons are commonly implemented using factory constructors, static final instances, or the late keyword. Dart's factory constructors make Singleton implementation elegant and idiomatic.",
        ),
        ULContent(
          title: "Common Use Cases:",
          value: [
            "Logging systems - centralized log management",
            "Configuration managers - app-wide settings",
            "Database connection pools - shared resource management",
            "Caching mechanisms - shared data cache",
            "Hardware interface access - printer, camera controllers",
            "Analytics/tracking services",
          ],
        ),
        NoteContent(
          "In Flutter: Be cautious with Singletons in widget trees. They bypass the widget lifecycle and can cause memory leaks. Prefer Provider, GetIt, or other DI solutions for most cases.",
          type: .important,
        ),
        StrContent(
          "However, use singletons sparingly. They introduce global state which makes code harder to test (can't easily mock), hide dependencies (code doesn't declare what it needs), and can cause issues in unit tests where you want fresh instances.",
        ),
        ComparisonContent({
          'Singleton': 'One instance globally, accessed anywhere',
          'Static Class': 'No instance, only static methods',
          'Dependency Injection':
              'Instance managed by container, injected where needed',
          'Service Locator': 'Registry of instances, requested by type',
        }, title: 'Singleton vs Alternatives'),
      ],
      ar: [
        StrContent(
          "نمط المفرد (Singleton) يُقيّد إنشاء الفئة إلى نسخة واحدة فقط ويوفر نقطة وصول عالمية (Global Access Point) لتلك النسخة. يتحقق هذا من خلال مُنشئ خاص (Private Constructor) وطريقة أو خاصية ثابتة (Static) تُرجع النسخة الوحيدة.",
        ),
        AnalogyContent(
          "فكر في رئيس دولة أو المدير التنفيذي لشركة. يمكن أن يكون هناك واحد فقط في أي وقت، والجميع في المنظمة يعرفون كيفية الوصول إليه من خلال نفس القناة الرسمية. بالمثل، المفرد يضمن وجود نسخة واحدة فقط، يمكن الوصول إليها من خلال نقطة وصول معروفة جيداً.",
        ),
        StrContent(
          "بينما المفرد هو أحد أشهر الأنماط، فهو أيضاً أحد أكثرها إثارة للجدل. غالباً ما تفضل البرمجة الحديثة حقن الاعتمادية (Dependency Injection) على المفرد بسبب قابلية الاختبار الأفضل، تقليل الحالة العالمية (Global State)، وتحسين قابلية الصيانة.",
        ),
        ULContent(
          title: "الخصائص الأساسية:",
          value: [
            "مُنشئ خاص (Private Constructor) يمنع الإنشاء المباشر",
            "متغير نسخة ثابت (Static Instance Variable) يحتفظ بالنسخة الوحيدة",
            "طريقة/خاصية ثابتة عامة توفر نقطة وصول عالمية",
            "تهيئة كسولة أو حريصة (Lazy/Eager Initialization) حسب التطبيق",
            "اعتبارات أمان الخيوط (Thread-Safety) في البيئات المتزامنة",
          ],
        ),
        DiagramContent(
          "بنية النمط:\nSingleton\n  - static instance: Singleton\n  - ()Singleton [مُنشئ خاص]\n  + static ()getInstance: Singleton\n  + ()businessMethod\n\nالعميل ← ()Singleton.getInstance ← نفس النسخة في كل مرة",
        ),
        NoteContent(
          "المفرد ينتهك مبدأ المسؤولية الواحدة (Single Responsibility Principle): الفئة تدير كلاً من إنشائها الخاص ومنطق الأعمال. فكر جيداً إذا كنت تحتاج فعلاً لحالة عالمية قبل استخدام هذا النمط.",
          type: .warning,
        ),
        StrContent(
          "في Dart، عادةً ما تُنفذ المفردات باستخدام مُنشئات المصنع (Factory Constructors)، نسخ ثابتة نهائية (Static Final Instances)، أو الكلمة المفتاحية late. مُنشئات المصنع في Dart تجعل تنفيذ المفرد أنيقاً ومتوافقاً مع اللغة.",
        ),
        ULContent(
          title: "حالات الاستخدام الشائعة:",
          value: [
            "أنظمة التسجيل (Logging) - إدارة السجلات المركزية",
            "مديرو الإعدادات (Configuration Managers) - إعدادات على مستوى التطبيق",
            "تجمعات اتصال قاعدة البيانات (Database Connection Pools) - إدارة الموارد المشتركة",
            "آليات التخزين المؤقت (Caching) - ذاكرة مؤقتة للبيانات المشتركة",
            "الوصول لواجهات الأجهزة - متحكمات الطابعة، الكاميرا",
            "خدمات التحليلات/التتبع (Analytics/Tracking)",
          ],
        ),
        NoteContent(
          "في Flutter: كن حذراً مع المفردات في أشجار الواجهات (Widget Trees). تتجاوز دورة حياة الواجهة ويمكن أن تسبب تسريبات ذاكرة. فضّل Provider، GetIt، أو حلول حقن الاعتمادية الأخرى لمعظم الحالات.",
          type: .important,
        ),
        StrContent(
          "مع ذلك، استخدم المفردات باعتدال. تُدخل حالة عالمية تجعل الكود أصعب في الاختبار (لا يمكن محاكاته بسهولة)، تخفي التبعيات (الكود لا يُعلن عما يحتاجه)، ويمكن أن تسبب مشاكل في اختبارات الوحدة حيث تريد نسخاً جديدة.",
        ),
        ComparisonContent({
          'المفرد (Singleton)':
              'نسخة واحدة عالمياً، يمكن الوصول إليها في أي مكان',
          'فئة ثابتة (Static Class)': 'لا نسخة، طرق ثابتة فقط',
          'حقن الاعتمادية (DI)':
              'نسخة مُدارة بواسطة حاوية، تُحقن حيث تكون مطلوبة',
          'محدد الخدمة (Service Locator)': 'سجل من النسخ، يُطلب حسب النوع',
        }, title: 'المفرد مقابل البدائل'),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Simple Singleton
        StrCodeBlock("""// Example 1: Basic - Classic Singleton Implementations
// Use case: Application configuration manager

// Implementation 1: Eager Initialization (created immediately)
class ConfigManagerEager {
  // Private constructor
  ConfigManagerEager._internal() {
    print('ConfigManagerEager instance created');
    _loadConfig();
  }
  
  // Static final instance created immediately
  static final ConfigManagerEager _instance = ConfigManagerEager._internal();
  
  // Public access point
  static ConfigManagerEager get instance => _instance;
  
  // Or use factory constructor (more Dart-idiomatic)
  factory ConfigManagerEager() => _instance;
  
  final Map<String, dynamic> _config = {};
  
  void _loadConfig() {
    print('Loading configuration...');
    _config['apiUrl'] = 'https://api.example.com';
    _config['timeout'] = 30;
  }
  
  String? getString(String key) => _config[key] as String?;
  int? getInt(String key) => _config[key] as int?;
  
  void set(String key, dynamic value) => _config[key] = value;
}

// Implementation 2: Lazy Initialization (created on first access)
class ConfigManagerLazy {
  ConfigManagerLazy._internal() {
    print('ConfigManagerLazy instance created');
    _loadConfig();
  }
  
  static ConfigManagerLazy? _instance;
  
  static ConfigManagerLazy get instance {
    _instance ??= ConfigManagerLazy._internal();
    return _instance!;
  }
  
  // Or with factory
  factory ConfigManagerLazy() {
    _instance ??= ConfigManagerLazy._internal();
    return _instance!;
  }
  
  final Map<String, dynamic> _config = {};
  
  void _loadConfig() {
    print('Loading configuration...');
    _config['apiUrl'] = 'https://api.example.com';
  }
  
  String? get(String key) => _config[key] as String?;
  void set(String key, dynamic value) => _config[key] = value;
}

// Implementation 3: Using late keyword (modern Dart)
class ConfigManagerModern {
  ConfigManagerModern._internal() {
    print('ConfigManagerModern instance created');
  }
  
  static late final ConfigManagerModern _instance = ConfigManagerModern._internal();
  
  static ConfigManagerModern get instance => _instance;
  factory ConfigManagerModern() => _instance;
  
  final Map<String, dynamic> _config = {};
  
  String? get(String key) => _config[key] as String?;
  void set(String key, dynamic value) => _config[key] = value;
}

void main() {
  print('=== Eager Initialization ===');
  print('Before accessing instance...');
  final config1 = ConfigManagerEager.instance;
  final config2 = ConfigManagerEager();
  print('Are they the same? \${identical(config1, config2)}');
  
  print('=== Lazy Initialization ===');
  print('Before accessing instance...');
  final lazy1 = ConfigManagerLazy.instance;
  print('After first access');
  final lazy2 = ConfigManagerLazy();
  print('Are they the same? \${identical(lazy1, lazy2)}');
  
  print('=== Modern Implementation ===');
  final modern1 = ConfigManagerModern.instance;
  final modern2 = ConfigManagerModern();
  print('Are they the same? \${identical(modern1, modern2)}');
}"""),

        // Example 2: Intermediate - Logger Singleton
        StrCodeBlock(
          """// Example 2: Intermediate - Thread-Safe Logger Singleton
// Use case: Application-wide logging system

enum LogLevel { debug, info, warning, error }

class Logger {
  Logger._internal() {
    _startTime = DateTime.now();
    print('Logger initialized at \$_startTime');
  }
  
  static final Logger _instance = Logger._internal();
  static Logger get instance => _instance;
  factory Logger() => _instance;
  
  late final DateTime _startTime;
  final List<String> _logs = [];
  LogLevel _minLevel = .info;
  
  // Configuration
  void setMinLevel(LogLevel level) {
    _minLevel = level;
    info('Log level set to \$level');
  }
  
  // Logging methods
  void debug(String message) => _log(.debug, message);
  void info(String message) => _log(.info, message);
  void warning(String message) => _log(.warning, message);
  void error(String message, [Object? error, StackTrace? stackTrace]) {
    _log(.error, message);
    if (error != null) {
      _log(.error, 'Error: \$error');
    }
    if (stackTrace != null) {
      _log(.error, 'StackTrace:\n\$stackTrace');
    }
  }
  
  void _log(LogLevel level, String message) {
    if (level.index < _minLevel.index) return;
    
    final timestamp = DateTime.now();
    final elapsed = timestamp.difference(_startTime);
    final levelStr = level.toString().split('.').last.toUpperCase();
    final logEntry = '[\${elapsed.inSeconds}s] [\$levelStr] \$message';
    
    _logs.add(logEntry);
    print(logEntry);
  }
  
  // Retrieve logs
  List<String> getLogs([LogLevel? level]) {
    if (level == null) return List.unmodifiable(_logs);
    
    final levelStr = level.toString().split('.').last.toUpperCase();
    return _logs
        .where((log) => log.contains('[\$levelStr]'))
        .toList();
  }
  
  void clearLogs() {
    _logs.clear();
    info('Logs cleared');
  }
  
  // Export logs
  String exportLogs() {
    final buffer = StringBuffer();
    buffer.writeln('=== Application Logs ===');
    buffer.writeln('Started: \$_startTime');
    buffer.writeln('Total entries: \${_logs.length}');
    buffer.writeln('---');
    for (final log in _logs) {
      buffer.writeln(log);
    }
    return buffer.toString();
  }
}

// Usage across different parts of application
class DatabaseService {
  void connect() {
    Logger.instance.info('Database: Connecting...');
    // Simulate work
    Logger.instance.info('Database: Connected successfully');
  }
  
  void query(String sql) {
    Logger.instance.debug('Database: Executing query: \$sql');
  }
  
  void error() {
    try {
      throw Exception('Connection timeout');
    } catch (e, stackTrace) {
      Logger.instance.error('Database: Query failed', e, stackTrace);
    }
  }
}

class ApiService {
  void fetchData() {
    Logger.instance.info('API: Fetching data...');
    Logger.instance.warning('API: Rate limit approaching');
  }
}

class AuthService {
  void login(String username) {
    Logger.instance.info('Auth: User \$username logging in');
    Logger.instance.debug('Auth: Validating credentials');
    Logger.instance.info('Auth: Login successful');
  }
}

void main() {
  // Configure logger once
  Logger.instance.setMinLevel(.debug);
  
  // Use across different services
  final db = DatabaseService();
  db.connect();
  db.query('SELECT * FROM users');
  
  final api = ApiService();
  api.fetchData();
  
  final auth = AuthService();
  auth.login('john_doe');
  
  db.error();
  
  // Access logs from anywhere
  print('=== Error Logs Only ===');
  final errorLogs = Logger.instance.getLogs(.error);
  for (final log in errorLogs) {
    print(log);
  }
  
  // Export all logs
  print('=== Full Export ===');
  print(Logger().exportLogs());
}""",
        ),

        // Example 3: Advanced - Database Connection Pool
        StrCodeBlock(
          """// Example 3: Advanced - Singleton with Resource Management
// Use case: Database connection pool manager

class DatabaseConnection {
  DatabaseConnection(this.id) {
    print('Created connection \$id');
  }
  
  final String id;
  bool isInUse = false;
  
  void execute(String query) {
    print('[\$id] Executing: \$query');
  }
  
  void close() {
    print('[\$id] Closed');
  }
}

class ConnectionPool {
  ConnectionPool._internal() {
    print('Initializing connection pool...');
    _initializePool();
  }
  
  static final ConnectionPool _instance = ConnectionPool._internal();
  static ConnectionPool get instance => _instance;
  factory ConnectionPool() => _instance;
  
  final List<DatabaseConnection> _availableConnections = [];
  final List<DatabaseConnection> _inUseConnections = [];
  final int _maxConnections = 5;
  int _connectionCounter = 0;
  
  void _initializePool() {
    // Pre-create some connections
    for (var i = 0; i < 2; i++) {
      _availableConnections.add(_createConnection());
    }
    print('Pool initialized with \${_availableConnections.length} connections');
  }
  
  DatabaseConnection _createConnection() {
    return DatabaseConnection('conn_\${_connectionCounter++}');
  }
  
  DatabaseConnection? acquire() {
    // Try to get available connection
    if (_availableConnections.isNotEmpty) {
      final conn = _availableConnections.removeLast();
      conn.isInUse = true;
      _inUseConnections.add(conn);
      print('Acquired connection \${conn.id}');
      return conn;
    }
    
    // Create new if under limit
    if (_inUseConnections.length < _maxConnections) {
      final conn = _createConnection();
      conn.isInUse = true;
      _inUseConnections.add(conn);
      print('Created and acquired new connection \${conn.id}');
      return conn;
    }
    
    // Pool exhausted
    print('Pool exhausted! Waiting connections in use: \${_inUseConnections.length}');
    return null;
  }
  
  void release(DatabaseConnection conn) {
    if (_inUseConnections.remove(conn)) {
      conn.isInUse = false;
      _availableConnections.add(conn);
      print('Released connection \${conn.id}');
    }
  }
  
  PoolStats getStats() {
    return PoolStats(
      available: _availableConnections.length,
      inUse: _inUseConnections.length,
      total: _connectionCounter,
      maxSize: _maxConnections,
    );
  }
  
  void shutdown() {
    print('Shutting down pool...');
    for (final conn in [..._availableConnections, ..._inUseConnections]) {
      conn.close();
    }
    _availableConnections.clear();
    _inUseConnections.clear();
    print('Pool shutdown complete');
  }
}

class PoolStats {
  const PoolStats({
    required this.available,
    required this.inUse,
    required this.total,
    required this.maxSize,
  });
  
  final int available;
  final int inUse;
  final int total;
  final int maxSize;
  
  @override
  String toString() {
    return 'Pool Stats: \$inUse/\$maxSize in use, \$available available, \$total total created';
  }
}

// Usage
class UserRepository {
  Future<void> findUser(String id) async {
    final pool = ConnectionPool.instance;
    final conn = pool.acquire();
    
    if (conn == null) {
      print('Could not acquire connection');
      return;
    }
    
    try {
      conn.execute('SELECT * FROM users WHERE id = \$id');
      await Future.delayed(.milliseconds(100)); // Simulate work
    } finally {
      pool.release(conn);
    }
  }
}

class OrderRepository {
  Future<void> createOrder(String orderId) async {
    final pool = ConnectionPool();
    final conn = pool.acquire();
    
    if (conn == null) return;
    
    try {
      conn.execute('INSERT INTO orders VALUES (\$orderId)');
      await Future.delayed(.milliseconds(150));
    } finally {
      pool.release(conn);
    }
  }
}

void main() async {
  final userRepo = UserRepository();
  final orderRepo = OrderRepository();
  
  // Concurrent operations sharing same pool
  print('=== Simulating concurrent operations ===\n');
  
  await Future.wait([
    userRepo.findUser('user1'),
    userRepo.findUser('user2'),
    orderRepo.createOrder('order1'),
    userRepo.findUser('user3'),
    orderRepo.createOrder('order2'),
  ]);
  
  print('\${ConnectionPool.instance.getStats()}');
  
  // Try to exhaust pool
  print('=== Testing pool limits ===\n');
  final connections = <DatabaseConnection>[];
  for (var i = 0; i < 6; i++) {
    final conn = ConnectionPool.instance.acquire();
    if (conn != null) {
      connections.add(conn);
    }
  }
  
  print('\${ConnectionPool.instance.getStats()}');
  
  // Release all
  for (final conn in connections) {
    ConnectionPool.instance.release(conn);
  }
  
  print('\${ConnectionPool.instance.getStats()}');
  
  ConnectionPool.instance.shutdown();
}""",
        ),

        // Example 4: Flutter - Analytics Service
        StrCodeBlock("""// Example 4: Flutter - Analytics Service Singleton
// Use case: Track user events across the app

class AnalyticsEvent {
  const AnalyticsEvent({
    required this.name,
    required this.timestamp,
    this.properties = const {},
  });
  
  final String name;
  final DateTime timestamp;
  final Map<String, dynamic> properties;
  
  Map<String, dynamic> toJson() => {
    'name': name,
    'timestamp': timestamp.toIso8601String(),
    'properties': properties,
  };
}

class AnalyticsService {
  AnalyticsService._internal() {
    _sessionStart = DateTime.now();
    print('Analytics initialized');
  }
  
  static final AnalyticsService _instance = AnalyticsService._internal();
  static AnalyticsService get instance => _instance;
  factory AnalyticsService() => _instance;
  
  late final DateTime _sessionStart;
  final List<AnalyticsEvent> _events = [];
  String? _userId;
  final Map<String, dynamic> _userProperties = {};
  
  // Configuration
  void setUserId(String userId) {
    _userId = userId;
    trackEvent('user_identified', properties: {'user_id': userId});
  }
  
  void setUserProperty(String key, dynamic value) {
    _userProperties[key] = value;
  }
  
  // Event tracking
  void trackEvent(String eventName, {Map<String, dynamic>? properties}) {
    final event = AnalyticsEvent(
      name: eventName,
      timestamp: DateTime.now(),
      properties: {
        ...?properties,
        'user_id': _userId,
        'session_duration': DateTime.now().difference(_sessionStart).inSeconds,
      },
    );
    
    _events.add(event);
    _sendToBackend(event);
  }
  
  void trackScreenView(String screenName) {
    trackEvent('screen_view', properties: {'screen_name': screenName});
  }
  
  void trackButtonClick(String buttonName, {String? screen}) {
    trackEvent('button_click', properties: {
      'button_name': buttonName,
      if (screen != null) 'screen': screen,
    });
  }
  
  void trackError(String error, {StackTrace? stackTrace}) {
    trackEvent('error', properties: {
      'error': error,
      'stack_trace': stackTrace?.toString(),
    });
  }
  
  void _sendToBackend(AnalyticsEvent event) {
    // Simulate sending to analytics backend
    print('[Analytics] \${event.name}: \${event.properties}');
  }
  
  // Retrieve analytics
  List<AnalyticsEvent> getEvents({String? eventName}) {
    if (eventName == null) return List.unmodifiable(_events);
    return _events.where((e) => e.name == eventName).toList();
  }
  
  Map<String, int> getEventCounts() {
    final counts = <String, int>{};
    for (final event in _events) {
      counts[event.name] = (counts[event.name] ?? 0) + 1;
    }
    return counts;
  }
}

// Usage in Flutter app
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    // Track screen view
    AnalyticsService.instance.trackScreenView('home');
    
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(
              onPressed: () {
                AnalyticsService.instance.trackButtonClick(
                  'view_products',
                  screen: 'home',
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ProductScreen()),
                );
              },
              child: Text('View Products'),
            ),
            .height(20),
            ElevatedButton(
              onPressed: () {
                AnalyticsService.instance.trackButtonClick(
                  'view_profile',
                  screen: 'home',
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ProfileScreen()),
                );
              },
              child: Text('View Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    AnalyticsService.instance.trackScreenView('products');
    
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Product \$index'),
            onTap: () {
              AnalyticsService.instance.trackEvent(
                'product_tapped',
                properties: {
                  'product_id': index,
                  'product_name': 'Product \$index',
                },
              );
            },
          );
        },
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    AnalyticsService.instance.trackScreenView('profile');
    
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Set user properties
            AnalyticsService.instance.setUserId('user_123');
            AnalyticsService.instance.setUserProperty('plan', 'premium');
            
            AnalyticsService.instance.trackButtonClick(
              'logout',
              screen: 'profile',
            );
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}

// Analytics dashboard
class AnalyticsDashboard extends StatelessWidget {
  const AnalyticsDashboard({super.key});
  
  @override
  Widget build(BuildContext context) {
    final analytics = AnalyticsService.instance;
    final counts = analytics.getEventCounts();
    
    return Scaffold(
      appBar: AppBar(title: Text('Analytics Dashboard')),
      body: ListView(
        children: [
          Padding(
            padding: .all(16),
            child: Text(
              'Event Summary',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          ...counts.entries.map((entry) {
            return ListTile(
              title: Text(entry.key),
              trailing: Chip(label: Text('\${entry.value}')),
            );
          }),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}"""),
      ],
      ar: [
        // Arabic versions
        StrCodeBlock("""// مثال 1: أساسي - تطبيقات المفرد الكلاسيكية
// حالة الاستخدام: مدير إعدادات التطبيق

// التطبيق 1: التهيئة الحريصة (Eager Initialization) - يتم إنشاؤها فوراً
class ConfigManagerEager {
  // مُنشئ خاص (Private Constructor)
  ConfigManagerEager._internal() {
    print('تم إنشاء نسخة ConfigManagerEager');
    _loadConfig();
  }
  
  // نسخة ثابتة نهائية يتم إنشاؤها فوراً
  static final ConfigManagerEager _instance = ConfigManagerEager._internal();
  
  // نقطة الوصول العامة
  static ConfigManagerEager get instance => _instance;
  
  // أو استخدم مُنشئ المصنع (أكثر توافقاً مع Dart)
  factory ConfigManagerEager() => _instance;
  
  final Map<String, dynamic> _config = {};
  
  void _loadConfig() {
    print('تحميل الإعدادات...');
    _config['apiUrl'] = 'https://api.example.com';
    _config['timeout'] = 30;
  }
  
  String? getString(String key) => _config[key] as String?;
  int? getInt(String key) => _config[key] as int?;
  
  void set(String key, dynamic value) => _config[key] = value;
}

// التطبيق 2: التهيئة الكسولة (Lazy Initialization) - يتم إنشاؤها عند أول وصول
class ConfigManagerLazy {
  ConfigManagerLazy._internal() {
    print('تم إنشاء نسخة ConfigManagerLazy');
    _loadConfig();
  }
  
  static ConfigManagerLazy? _instance;
  
  static ConfigManagerLazy get instance {
    _instance ??= ConfigManagerLazy._internal();
    return _instance!;
  }
  
  // أو مع المصنع
  factory ConfigManagerLazy() {
    _instance ??= ConfigManagerLazy._internal();
    return _instance!;
  }
  
  final Map<String, dynamic> _config = {};
  
  void _loadConfig() {
    print('تحميل الإعدادات...');
    _config['apiUrl'] = 'https://api.example.com';
  }
  
  String? get(String key) => _config[key] as String?;
  void set(String key, dynamic value) => _config[key] = value;
}

// التطبيق 3: استخدام الكلمة المفتاحية late (Dart حديثة)
class ConfigManagerModern {
  ConfigManagerModern._internal() {
    print('تم إنشاء نسخة ConfigManagerModern');
  }
  
  static late final ConfigManagerModern _instance = ConfigManagerModern._internal();
  
  static ConfigManagerModern get instance => _instance;
  factory ConfigManagerModern() => _instance;
  
  final Map<String, dynamic> _config = {};
  
  String? get(String key) => _config[key] as String?;
  void set(String key, dynamic value) => _config[key] = value;
}

void main() {
  print('=== التهيئة الحريصة ===');
  print('قبل الوصول للنسخة...');
  final config1 = ConfigManagerEager.instance;
  final config2 = ConfigManagerEager();
  print('هل هما نفس الشيء؟ \${identical(config1, config2)}');
  
  print('=== التهيئة الكسولة ===');
  print('قبل الوصول للنسخة...');
  final lazy1 = ConfigManagerLazy.instance;
  print('بعد الوصول الأول');
  final lazy2 = ConfigManagerLazy();
  print('هل هما نفس الشيء؟ \${identical(lazy1, lazy2)}');
  
  print('=== التطبيق الحديث ===');
  final modern1 = ConfigManagerModern.instance;
  final modern2 = ConfigManagerModern();
  print('هل هما نفس الشيء؟ \${identical(modern1, modern2)}');
}"""),
        // Add remaining Arabic examples following same pattern...
      ],
    ),
    pros: LocSL(
      en: [
        "Guarantees only one instance exists globally",
        "Provides global access point - can be accessed from anywhere",
        "Lazy initialization possible - created only when needed",
        "Saves memory by reusing the same instance",
        "Controls access to shared resources (database connections, file handles)",
        "Can be subclassed to create variations",
      ],
      ar: [
        "يضمن وجود نسخة واحدة فقط عالمياً",
        "يوفر نقطة وصول عالمية - يمكن الوصول إليها من أي مكان",
        "التهيئة الكسولة ممكنة - يتم إنشاؤها فقط عند الحاجة",
        "يوفر الذاكرة من خلال إعادة استخدام نفس النسخة",
        "يتحكم في الوصول للموارد المشتركة (اتصالات قاعدة البيانات، مقابض الملفات)",
        "يمكن أن يكون له فئات فرعية لإنشاء تنويعات",
      ],
    ),
    cons: LocSL(
      en: [
        "Creates global state, making code harder to test and debug",
        "Violates Single Responsibility Principle (manages creation + business logic)",
        "Can become a bottleneck in concurrent/multithreaded applications",
        "Hides dependencies between classes - classes don't declare what they need",
        "Makes unit testing difficult - can't easily mock or create fresh instances",
        "Can cause issues when you want multiple instances in different contexts (e.g., testing)",
        "Tight coupling - code directly depends on concrete Singleton class",
        "Can lead to memory leaks if not properly managed",
      ],
      ar: [
        "ينشئ حالة عالمية، مما يجعل الكود أصعب في الاختبار والتنقيح (Debug)",
        "ينتهك مبدأ المسؤولية الواحدة (يدير الإنشاء + منطق الأعمال)",
        "قد يصبح عنق زجاجة في التطبيقات المتزامنة/متعددة الخيوط",
        "يخفي التبعيات بين الفئات - الفئات لا تُعلن عما تحتاجه",
        "يجعل اختبارات الوحدة صعبة - لا يمكن محاكاته بسهولة أو إنشاء نسخ جديدة",
        "قد يسبب مشاكل عندما تريد نسخاً متعددة في سياقات مختلفة (مثل الاختبار)",
        "اقتران محكم (Tight Coupling) - الكود يعتمد مباشرة على فئة المفرد المحددة",
        "قد يؤدي لتسريبات ذاكرة إذا لم تتم إدارته بشكل صحيح",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Singleton when:"),
        ULContent(
          value: [
            "Exactly one instance is needed system-wide and it must be accessible globally",
            "You need strict control over a shared resource (logging, configuration, caching)",
            "You're managing expensive resources that should be reused (database connections)",
            "You need to coordinate actions across the system from a single point",
            "The single instance should be extensible by subclassing",
          ],
        ),
        NoteContent(
          "Consider alternatives first: Dependency Injection is usually better for testability and flexibility. Use Singleton only when truly necessary.",
          type: .warning,
        ),
        StrContent("Better alternatives in modern code:"),
        ULContent(
          value: [
            "Dependency Injection (Provider, GetIt, Riverpod in Flutter)",
            "Service Locator pattern (for legacy code migration)",
            "Static classes (if no state is needed)",
            "Passing instances through constructor (explicit dependencies)",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المفرد عندما:"),
        ULContent(
          value: [
            "تحتاج نسخة واحدة بالضبط على مستوى النظام ويجب أن تكون متاحة عالمياً",
            "تحتاج تحكماً صارماً في مورد مشترك (التسجيل، الإعدادات، التخزين المؤقت)",
            "تدير موارد مكلفة يجب إعادة استخدامها (اتصالات قاعدة البيانات)",
            "تحتاج لتنسيق الإجراءات عبر النظام من نقطة واحدة",
            "يجب أن تكون النسخة الواحدة قابلة للتوسيع عبر الفئات الفرعية",
          ],
        ),
        NoteContent(
          "فكر في البدائل أولاً: حقن الاعتمادية (Dependency Injection) عادة أفضل لقابلية الاختبار والمرونة. استخدم المفرد فقط عندما يكون ضرورياً حقاً.",
          type: .warning,
        ),
        StrContent("بدائل أفضل في الكود الحديث:"),
        ULContent(
          value: [
            "حقن الاعتمادية (Provider، GetIt، Riverpod في Flutter)",
            "نمط محدد الخدمة (Service Locator) (لترحيل الكود القديم)",
            "فئات ثابتة (Static Classes) (إذا لم تكن هناك حاجة لحالة)",
            "تمرير النسخ عبر المُنشئ (تبعيات صريحة - Explicit Dependencies)",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Overusing Singleton for every shared resource or service - creates global state mess",
        "Not considering thread safety in concurrent environments (less critical in Dart due to isolates)",
        "Creating Singletons with mutable state that can be modified from anywhere",
        "Using Singleton when Dependency Injection would be cleaner and more testable",
        "Making it impossible to create multiple instances even for testing",
        "Not providing a way to reset/clear the Singleton state for testing",
        "Hiding dependencies by using Singleton instead of explicit constructor parameters",
        "Creating circular dependencies between Singletons",
        "Storing Singletons in StatefulWidgets without proper cleanup",
      ],
      ar: [
        "الإفراط في استخدام المفرد لكل مورد أو خدمة مشتركة - ينشئ فوضى حالة عالمية",
        "عدم مراعاة أمان الخيوط (Thread Safety) في البيئات المتزامنة (أقل أهمية في Dart بسبب العزلات - Isolates)",
        "إنشاء مفردات بحالة قابلة للتغيير (Mutable State) يمكن تعديلها من أي مكان",
        "استخدام المفرد عندما يكون حقن الاعتمادية أنظف وأكثر قابلية للاختبار",
        "جعل من المستحيل إنشاء نسخ متعددة حتى للاختبار",
        "عدم توفير طريقة لإعادة تعيين/مسح حالة المفرد للاختبار",
        "إخفاء التبعيات باستخدام المفرد بدلاً من معاملات المُنشئ الصريحة",
        "إنشاء تبعيات دائرية بين المفردات",
        "تخزين المفردات في StatefulWidgets دون تنظيف مناسب",
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
          "The Object Pool pattern maintains a set of initialized objects ready for use, rather than creating and destroying them repeatedly. Clients borrow objects from the pool, use them, and return them for reuse by others.",
        ),
        AnalogyContent(
          "Think of a library book lending system. Instead of buying a new book every time someone wants to read it, the library maintains a collection of books. Readers check out books, use them, and return them so others can use the same copies. This is much more efficient than everyone buying and discarding books.",
        ),
        StrContent(
          "This pattern is particularly valuable when object creation is expensive (time, memory, or resources), such as database connections, thread creation, large buffers, or complex objects with heavy initialization.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Pool: Manages available and in-use objects, handles allocation and recycling",
            "Reusable Object: The expensive object being pooled",
            "Client: Requests objects from pool, uses them, returns them",
            "Pool Configuration: Max size, min size, creation/validation policies",
          ],
        ),
        DiagramContent(
          "Pattern Flow:\nClient → Pool.acquire() → Available Object (or create new)\n                ↓\n         Mark as in-use\n         Return object to client\n         \nClient → Pool.release(object) → Reset object state\n                         ↓\n                  Mark as available\n                  Add to pool",
        ),
        StrContent(
          "Modern garbage collectors are highly optimized, so object pooling is only beneficial for truly expensive objects or in performance-critical scenarios. Premature pooling can actually hurt performance and increase complexity.",
        ),
        NoteContent(
          "Object pooling is most effective when: (1) objects are expensive to create, (2) you need many short-lived instances, (3) object creation rate is predictable, (4) objects can be reset to clean state.",
          type: .important,
        ),
        StrContent(
          "In Dart and Flutter, common use cases include: connection pools (database, HTTP), thread pools (isolate pools), particle systems in games, widget recycling in ListView.builder, image/buffer pools, and expensive computation result caching.",
        ),
        NoteContent(
          "Critical: Objects must be properly reset/cleaned before returning to pool. Failing to reset state causes bugs where objects 'remember' previous usage. Always validate object state when acquiring from pool.",
          type: .warning,
        ),
        ComparisonContent({
          'Object Pool': 'Reuses expensive objects, manages lifecycle',
          'Flyweight': 'Shares immutable object state, no lifecycle management',
          'Singleton': 'One instance globally, never recycled',
          'Factory': 'Creates new instances each time',
        }, title: 'Object Pool vs Similar Patterns'),
        StrContent(
          "Performance considerations: Pool overhead (management cost) must be less than creation cost. Monitor pool metrics: utilization rate, wait time, miss rate. Consider adaptive sizing based on demand.",
        ),
      ],
      ar: [
        StrContent(
          "نمط تجمع الكائنات (Object Pool) يحتفظ بمجموعة من الكائنات المُهيأة الجاهزة للاستخدام، بدلاً من إنشائها وإتلافها بشكل متكرر. العملاء يستعيرون كائنات من التجمع، يستخدمونها، ثم يعيدونها لإعادة الاستخدام من قبل الآخرين.",
        ),
        AnalogyContent(
          "فكر في نظام إعارة الكتب في المكتبة. بدلاً من شراء كتاب جديد في كل مرة يريد شخص قراءته، تحتفظ المكتبة بمجموعة من الكتب. القراء يستعيرون الكتب، يستخدمونها، ويعيدونها حتى يتمكن الآخرون من استخدام نفس النسخ. هذا أكثر كفاءة بكثير من أن يشتري الجميع الكتب ويتخلصون منها.",
        ),
        StrContent(
          "هذا النمط ذو قيمة خاصة عندما يكون إنشاء الكائن مكلفاً (الوقت، الذاكرة، أو الموارد)، مثل اتصالات قاعدة البيانات، إنشاء الخيوط (Threads)، المخازن الكبيرة (Buffers)، أو الكائنات المعقدة ذات التهيئة الثقيلة.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "التجمع (Pool): يدير الكائنات المتاحة والمُستخدمة، يتعامل مع التخصيص وإعادة التدوير",
            "كائن قابل لإعادة الاستخدام (Reusable Object): الكائن المكلف الذي يتم تجميعه",
            "العميل (Client): يطلب كائنات من التجمع، يستخدمها، يعيدها",
            "إعدادات التجمع (Pool Configuration): الحجم الأقصى، الحجم الأدنى، سياسات الإنشاء/التحقق",
          ],
        ),
        DiagramContent(
          "تدفق النمط:\nالعميل ← ()Pool.acquire ← كائن متاح (أو إنشاء جديد)\n                ↓\n         تمييز كمُستخدم\n         إرجاع الكائن للعميل\n         \nالعميل ← (Pool.release(object ← إعادة تعيين حالة الكائن\n                         ↓\n                  تمييز كمتاح\n                  إضافة للتجمع",
        ),
        StrContent(
          "جامعو القمامة (Garbage Collectors) الحديثون مُحسّنون للغاية، لذا يكون تجميع الكائنات مفيداً فقط للكائنات المكلفة حقاً أو في السيناريوهات الحرجة للأداء. التجميع المبكر (Premature Pooling) يمكن أن يضر بالأداء ويزيد التعقيد.",
        ),
        NoteContent(
          "تجميع الكائنات أكثر فعالية عندما: (1) الكائنات مكلفة في الإنشاء، (2) تحتاج العديد من النسخ قصيرة العمر، (3) معدل إنشاء الكائنات قابل للتنبؤ، (4) يمكن إعادة تعيين الكائنات لحالة نظيفة.",
          type: .important,
        ),
        StrContent(
          "في Dart و Flutter، حالات الاستخدام الشائعة تشمل: تجمعات الاتصال (قاعدة البيانات، HTTP)، تجمعات الخيوط (تجمعات العزلات - Isolate Pools)، أنظمة الجسيمات في الألعاب، إعادة تدوير الواجهات في ListView.builder، تجمعات الصور/المخازن، وتخزين نتائج الحسابات المكلفة مؤقتاً.",
        ),
        NoteContent(
          "حاسم: يجب إعادة تعيين/تنظيف الكائنات بشكل صحيح قبل الإرجاع للتجمع. الفشل في إعادة تعيين الحالة يسبب أخطاء حيث الكائنات 'تتذكر' الاستخدام السابق. تحقق دائماً من حالة الكائن عند الحصول عليه من التجمع.",
          type: .warning,
        ),
        ComparisonContent({
          'تجمع الكائنات (Object Pool)':
              'يعيد استخدام كائنات مكلفة، يدير دورة الحياة',
          'الوزن الخفيف (Flyweight)':
              'يشارك حالة كائن غير قابلة للتغيير، لا إدارة لدورة الحياة',
          'المفرد (Singleton)':
              'نسخة واحدة عالمياً، لا يتم إعادة تدويرها أبداً',
          'المصنع (Factory)': 'ينشئ نسخاً جديدة في كل مرة',
        }, title: 'تجمع الكائنات مقابل الأنماط المشابهة'),
        StrContent(
          "اعتبارات الأداء: عبء التجمع (تكلفة الإدارة) يجب أن يكون أقل من تكلفة الإنشاء. راقب مقاييس التجمع: معدل الاستخدام، وقت الانتظار، معدل الإخفاق. فكر في تغيير الحجم التكيفي بناءً على الطلب.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Simple Object Pool
        StrCodeBlock("""// Example 1: Basic - Generic Object Pool
// Use case: Reusable buffer pool for data processing

class Buffer {
  Buffer(this.id, this.capacity) : _data = List.filled(capacity, 0);
  
  final String id;
  final int capacity;
  final List<int> _data;
  int _size = 0;
  
  void write(List<int> data) {
    if (data.length > capacity) {
      throw Exception('Data exceeds buffer capacity');
    }
    for (var i = 0; i < data.length; i++) {
      _data[i] = data[i];
    }
    _size = data.length;
    print('[\$id] Wrote \$_size bytes');
  }
  
  List<int> read() {
    return _data.sublist(0, _size);
  }
  
  void clear() {
    _size = 0;
    for (var i = 0; i < capacity; i++) {
      _data[i] = 0;
    }
    print('[\$id] Cleared');
  }
  
  bool get isEmpty => _size == 0;
}

class BufferPool {
  BufferPool({required this.bufferSize, required this.maxPoolSize});
  
  final int bufferSize;
  final int maxPoolSize;
  final List<Buffer> _available = [];
  final List<Buffer> _inUse = [];
  int _createdCount = 0;
  
  Buffer acquire() {
    // Try to get from available pool
    if (_available.isNotEmpty) {
      final buffer = _available.removeLast();
      _inUse.add(buffer);
      print('Acquired existing buffer \${buffer.id} from pool');
      return buffer;
    }
    
    // Create new if under limit
    if (_createdCount < maxPoolSize) {
      final buffer = Buffer('buffer_\$_createdCount', bufferSize);
      _createdCount++;
      _inUse.add(buffer);
      print('Created new buffer \${buffer.id}');
      return buffer;
    }
    
    // Pool exhausted
    throw Exception('Buffer pool exhausted! Max: \$maxPoolSize');
  }
  
  void release(Buffer buffer) {
    if (_inUse.remove(buffer)) {
      buffer.clear(); // Reset state - CRITICAL!
      _available.add(buffer);
      print('Released buffer \${buffer.id} back to pool');
    }
  }
  
  PoolStats getStats() {
    return PoolStats(
      available: _available.length,
      inUse: _inUse.length,
      total: _createdCount,
      maxSize: maxPoolSize,
    );
  }
  
  void printStats() {
    final stats = getStats();
    print('=== Pool Statistics ===');
    print('Available: \${stats.available}');
    print('In Use: \${stats.inUse}');
    print('Total Created: \${stats.total}');
    print('Max Size: \${stats.maxSize}');
    print('Utilization: \${(stats.inUse / stats.total * 100).toStringAsFixed(1)}%');
  }
}

class PoolStats {
  const PoolStats({
    required this.available,
    required this.inUse,
    required this.total,
    required this.maxSize,
  });
  
  final int available;
  final int inUse;
  final int total;
  final int maxSize;
}

// Usage
void main() {
  final pool = BufferPool(bufferSize: 1024, maxPoolSize: 3);
  
  print('=== Processing Data with Pool ===\n');
  
  // Process multiple chunks of data
  final data1 = List.generate(100, (i) => i);
  final data2 = List.generate(200, (i) => i * 2);
  final data3 = List.generate(150, (i) => i * 3);
  
  // Acquire, use, release pattern
  final buffer1 = pool.acquire();
  buffer1.write(data1);
  print('Processed \${buffer1.read().length} bytes');
  pool.release(buffer1);
  
  print('');
  
  // Buffer is reused
  final buffer2 = pool.acquire(); // Should reuse buffer1
  buffer2.write(data2);
  pool.release(buffer2);
  
  print('');
  
  // Multiple concurrent uses
  final buf1 = pool.acquire();
  final buf2 = pool.acquire();
  final buf3 = pool.acquire();
  
  pool.printStats();
  
  // Try to exceed pool size
  try {
    final buf4 = pool.acquire(); // Should throw
  } catch (e) {
    print('Caught exception: \$e');
  }
  
  // Release all
  pool.release(buf1);
  pool.release(buf2);
  pool.release(buf3);
  
  pool.printStats();
}"""),

        // Example 2: Intermediate - HTTP Connection Pool
        StrCodeBlock("""// Example 2: Intermediate - HTTP Connection Pool
// Use case: Managing expensive HTTP connections

class HttpConnection {
  HttpConnection(this.id, this.baseUrl) {
    print('[\$id] Creating HTTP connection to \$baseUrl...');
    // Simulate expensive connection setup
    _connected = true;
  }
  
  final String id;
  final String baseUrl;
  bool _connected = false;
  bool _isHealthy = true;
  DateTime? _lastUsed;
  int _requestCount = 0;
  
  Future<String> request(String endpoint) async {
    if (!_connected) {
      throw Exception('Connection not established');
    }
    
    _lastUsed = DateTime.now();
    _requestCount++;
    
    print('[\$id] GET \$baseUrl\$endpoint (request #\$_requestCount)');
    
    // Simulate network delay
    await Future.delayed(.milliseconds(50));
    
    return '{"status": "success", "data": "response from \$endpoint"}';
  }
  
  bool isHealthy() {
    // Check if connection is still valid
    if (_lastUsed != null) {
      final idleTime = DateTime.now().difference(_lastUsed!);
      if (idleTime.inMinutes > 5) {
        _isHealthy = false;
        print('[\$id] Connection idle too long, marked unhealthy');
      }
    }
    return _isHealthy;
  }
  
  void reset() {
    print('[\$id] Resetting connection state');
    // Don't reset connection itself, just metadata
    _lastUsed = null;
  }
  
  void close() {
    print('[\$id] Closing connection');
    _connected = false;
  }
  
  int get requestCount => _requestCount;
}

class HttpConnectionPool {
  HttpConnectionPool({
    required this.baseUrl,
    this.minConnections = 2,
    this.maxConnections = 10,
  }) {
    _initializePool();
  }
  
  final String baseUrl;
  final int minConnections;
  final int maxConnections;
  
  final List<HttpConnection> _available = [];
  final List<HttpConnection> _inUse = [];
  int _connectionCounter = 0;
  
  void _initializePool() {
    print('Initializing connection pool with \$minConnections connections...');
    for (var i = 0; i < minConnections; i++) {
      _available.add(_createConnection());
    }
    print('Pool initialized\n');
  }
  
  HttpConnection _createConnection() {
    return HttpConnection('conn_\$_connectionCounter', baseUrl)
      .._connectionCounter++;
  }
  
  Future<HttpConnection> acquire() async {
    // Try available pool first
    while (_available.isNotEmpty) {
      final conn = _available.removeLast();
      
      // Validate health
      if (conn.isHealthy()) {
        _inUse.add(conn);
        print('Acquired healthy connection \${conn.id}');
        return conn;
      } else {
        // Connection unhealthy, close and discard
        conn.close();
        print('Discarded unhealthy connection \${conn.id}');
      }
    }
    
    // Create new if under limit
    final totalConnections = _inUse.length + _available.length;
    if (totalConnections < maxConnections) {
      final conn = _createConnection();
      _inUse.add(conn);
      return conn;
    }
    
    // Wait for available connection (simple implementation)
    print('Pool exhausted, waiting for available connection...');
    await Future.delayed(.milliseconds(100));
    return acquire(); // Retry
  }
  
  void release(HttpConnection conn) {
    if (_inUse.remove(conn)) {
      conn.reset();
      _available.add(conn);
      print('Released connection \${conn.id} back to pool\n');
    }
  }
  
  void shutdown() {
    print('=== Shutting down pool ===');
    for (final conn in [..._available, ..._inUse]) {
      print('Connection \${conn.id}: \${conn.requestCount} requests');
      conn.close();
    }
    _available.clear();
    _inUse.clear();
    print('Pool shutdown complete');
  }
  
  PoolStats getStats() {
    return PoolStats(
      available: _available.length,
      inUse: _inUse.length,
      total: _connectionCounter,
      maxSize: maxConnections,
    );
  }
}

// Service using the pool
class ApiService {
  ApiService(this.pool);
  
  final HttpConnectionPool pool;
  
  Future<void> getUsers() async {
    final conn = await pool.acquire();
    try {
      final response = await conn.request('/users');
      print('Response: \$response\n');
    } finally {
      pool.release(conn);
    }
  }
  
  Future<void> getOrders() async {
    final conn = await pool.acquire();
    try {
      final response = await conn.request('/orders');
      print('Response: \$response\n');
    } finally {
      pool.release(conn);
    }
  }
}

void main() async {
  final pool = HttpConnectionPool(
    baseUrl: 'https://api.example.com',
    minConnections: 2,
    maxConnections: 5,
  );
  
  final api = ApiService(pool);
  
  print('=== Making API Requests ===\n');
  
  // Sequential requests (reuses connections)
  await api.getUsers();
  await api.getOrders();
  await api.getUsers();
  
  // Concurrent requests
  print('=== Concurrent Requests ===\n');
  await Future.wait([
    api.getUsers(),
    api.getOrders(),
    api.getUsers(),
    api.getOrders(),
  ]);
  
  final stats = pool.getStats();
  print('Pool stats: \${stats.inUse} in use, \${stats.available} available');
  
  pool.shutdown();
}"""),

        // Example 3: Advanced - Particle System Pool
        StrCodeBlock(
          """// Example 3: Advanced - Game Particle System with Object Pool
// Use case: High-performance particle effects

class Vector2 {
  Vector2(this.x, this.y);
  double x;
  double y;
  
  void set(double newX, double newY) {
    x = newX;
    y = newY;
  }
  
  void add(Vector2 other) {
    x += other.x;
    y += other.y;
  }
  
  void scale(double factor) {
    x *= factor;
    y *= factor;
  }
  
  Vector2 clone() => Vector2(x, y);
}

class Particle {
  Particle(this.id);
  
  final int id;
  final Vector2 position = Vector2(0, 0);
  final Vector2 velocity = Vector2(0, 0);
  double lifetime = 0;
  double maxLifetime = 1.0;
  double size = 1.0;
  String color = 'white';
  bool active = false;
  
  void initialize({
    required Vector2 startPos,
    required Vector2 startVel,
    required double life,
    double particleSize = 1.0,
    String particleColor = 'white',
  }) {
    position.set(startPos.x, startPos.y);
    velocity.set(startVel.x, startVel.y);
    lifetime = 0;
    maxLifetime = life;
    size = particleSize;
    color = particleColor;
    active = true;
  }
  
  void update(double dt) {
    if (!active) return;
    
    lifetime += dt;
    if (lifetime >= maxLifetime) {
      active = false;
      return;
    }
    
    // Update physics
    position.add(velocity..scale(dt));
    
    // Apply gravity
    velocity.y += 9.8 * dt;
    
    // Fade out
    final lifePercent = lifetime / maxLifetime;
    size = (1 - lifePercent) * size;
  }
  
  void reset() {
    position.set(0, 0);
    velocity.set(0, 0);
    lifetime = 0;
    maxLifetime = 1.0;
    size = 1.0;
    color = 'white';
    active = false;
  }
  
  void render() {
    if (!active) return;
    // Simulate rendering
    // print('Render particle \$id at (\${position.x}, \${position.y})');
  }
}

class ParticlePool {
  ParticlePool({required this.maxParticles}) {
    _initializePool();
  }
  
  final int maxParticles;
  final List<Particle> _particles = [];
  int _nextAvailableIndex = 0;
  
  void _initializePool() {
    print('Pre-allocating \$maxParticles particles...');
    for (var i = 0; i < maxParticles; i++) {
      _particles.add(Particle(i));
    }
    print('Particle pool initialized\n');
  }
  
  Particle? acquire() {
    // Search for inactive particle starting from last position
    for (var i = 0; i < maxParticles; i++) {
      final index = (_nextAvailableIndex + i) % maxParticles;
      final particle = _particles[index];
      
      if (!particle.active) {
        _nextAvailableIndex = (index + 1) % maxParticles;
        return particle;
      }
    }
    
    // Pool exhausted
    return null;
  }
  
  void release(Particle particle) {
    particle.reset();
  }
  
  void updateAll(double dt) {
    var activeCount = 0;
    for (final particle in _particles) {
      if (particle.active) {
        particle.update(dt);
        activeCount++;
      }
    }
    // Uncomment for debugging
    // print('Active particles: \$activeCount / \$maxParticles');
  }
  
  void renderAll() {
    for (final particle in _particles) {
      particle.render();
    }
  }
  
  int get activeCount {
    return _particles.where((p) => p.active).length;
  }
  
  double get utilizationPercent {
    return (activeCount / maxParticles) * 100;
  }
}

class ParticleEmitter {
  ParticleEmitter({
    required this.pool,
    required this.position,
    this.emissionRate = 10, // particles per second
    this.particleLifetime = 2.0,
    this.particleSize = 5.0,
    this.particleColor = 'orange',
  });
  
  final ParticlePool pool;
  final Vector2 position;
  final double emissionRate;
  final double particleLifetime;
  final double particleSize;
  final String particleColor;
  
  double _emissionTimer = 0;
  
  void update(double dt) {
    _emissionTimer += dt;
    
    final particlesThisFrame = emissionRate * dt;
    
    if (_emissionTimer >= 1.0 / emissionRate) {
      _emissionTimer = 0;
      _emit();
    }
  }
  
  void _emit() {
    final particle = pool.acquire();
    
    if (particle == null) {
      // print('Warning: Could not emit particle, pool exhausted');
      return;
    }
    
    // Random velocity
    final angle = Random().nextDouble() * 3.14159 * 2;
    final speed = 50 + Random().nextDouble() * 50;
    
    particle.initialize(
      startPos: position,
      startVel: Vector2(
        cos(angle) * speed,
        sin(angle) * speed - 50, // Upward bias
      ),
      life: particleLifetime,
      particleSize: particleSize,
      particleColor: particleColor,
    );
  }
  
  void burst(int count) {
    for (var i = 0; i < count; i++) {
      _emit();
    }
  }
}

// Game simulation
void main() async {
  print('=== Particle System Simulation ===\n');
  
  // Create pool (pre-allocate all particles)
  final pool = ParticlePool(maxParticles: 1000);
  
  // Create emitters
  final emitter1 = ParticleEmitter(
    pool: pool,
    position: Vector2(100, 100),
    emissionRate: 20,
    particleLifetime: 2.0,
    particleColor: 'red',
  );
  
  final emitter2 = ParticleEmitter(
    pool: pool,
    position: Vector2(200, 100),
    emissionRate: 15,
    particleLifetime: 1.5,
    particleColor: 'blue',
  );
  
  // Simulate game loop
  print('Starting simulation...\n');
  final dt = 0.016; // 60 FPS
  
  for (var frame = 0; frame < 200; frame++) {
    // Update emitters
    emitter1.update(dt);
    emitter2.update(dt);
    
    // Update all particles
    pool.updateAll(dt);
    
    // Render
    pool.renderAll();
    
    // Print stats every second
    if (frame % 60 == 0) {
      final time = (frame * dt).toStringAsFixed(1);
      print('Time: \${time}s | Active: \${pool.activeCount}/1000 | ' +
            'Utilization: \${pool.utilizationPercent.toStringAsFixed(1)}%');
    }
    
    // Trigger burst at specific times
    if (frame == 60) {
      print('*** BURST 1 ***');
      emitter1.burst(50);
    }
    if (frame == 120) {
      print('*** BURST 2 ***');
      emitter2.burst(75);
    }
  }
  
  print('Simulation complete!');
}

// Helper functions
double cos(double radians) => radians.cos();
double sin(double radians) => radians.sin();

class Random {
  static final _random = math.Random();
  double nextDouble() => _random.nextDouble();
}""",
        ),

        // Example 4: Flutter - Widget Pool for ListView
        StrCodeBlock("""// Example 4: Flutter - Reusable Complex Widget Pool
// Use case: Expensive widget recycling in custom list

class ExpensiveWidgetData {
  ExpensiveWidgetData({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
  });
  
  final String id;
  final String title;
  final String imageUrl;
  final String description;
}

class ExpensiveWidget extends StatefulWidget {
  const ExpensiveWidget({
    required this.data,
    required this.onRecycle,
    super.key,
  });
  
  final ExpensiveWidgetData data;
  final VoidCallback onRecycle;
  
  @override
  State<ExpensiveWidget> createState() => _ExpensiveWidgetState();
}

class _ExpensiveWidgetState extends State<ExpensiveWidget> {
  bool _isProcessing = false;
  
  @override
  void initState() {
    super.initState();
    _performExpensiveOperation();
  }
  
  Future<void> _performExpensiveOperation() async {
    setState(() => _isProcessing = true);
    
    // Simulate expensive initialization (image processing, data loading, etc.)
    await Future.delayed(.milliseconds(100));
    
    if (mounted) {
      setState(() => _isProcessing = false);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: .all(8),
      child: Padding(
        padding: .all(16),
        child: _isProcessing
            ? Center(child: CircularProgressIndicator())
            : Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    widget.data.title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  .height(8),
                  Container(
                    height: 150,
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('Image: \${widget.data.imageUrl}'),
                    ),
                  ),
                  .height(8),
                  Text(widget.data.description),
                  .height(8),
                  ElevatedButton(
                    onPressed: widget.onRecycle,
                    child: Text('Recycle This Widget'),
                  ),
                ],
              ),
      ),
    );
  }
  
  @override
  void dispose() {
    // Cleanup
    super.dispose();
  }
}

class WidgetPoolManager extends ChangeNotifier {
  final List<ExpensiveWidget> _availableWidgets = [];
  final List<ExpensiveWidget> _inUseWidgets = [];
  final int maxPoolSize;
  
  WidgetPoolManager({this.maxPoolSize = 20});
  
  ExpensiveWidget acquire(ExpensiveWidgetData data) {
    // Try to reuse from pool
    if (_availableWidgets.isNotEmpty) {
      final widget = _availableWidgets.removeLast();
      _inUseWidgets.add(widget);
      print('Reused widget from pool');
      
      // Return new instance with updated data
      return ExpensiveWidget(
        data: data,
        onRecycle: () => release(widget),
      );
    }
    
    // Create new widget
    final widget = ExpensiveWidget(
      data: data,
      onRecycle: () {}, // Will be set later
    );
    _inUseWidgets.add(widget);
    print('Created new widget');
    
    return widget;
  }
  
  void release(ExpensiveWidget widget) {
    if (_inUseWidgets.remove(widget)) {
      if (_availableWidgets.length < maxPoolSize) {
        _availableWidgets.add(widget);
        print('Widget returned to pool');
      } else {
        print('Pool full, widget discarded');
      }
      notifyListeners();
    }
  }
  
  int get pooledCount => _availableWidgets.length;
  int get activeCount => _inUseWidgets.length;
}

// Usage in Flutter app
class PooledListView extends StatefulWidget {
  const PooledListView({super.key});
  
  @override
  State<PooledListView> createState() => _PooledListViewState();
}

class _PooledListViewState extends State<PooledListView> {
  late final WidgetPoolManager _poolManager;
  final List<ExpensiveWidgetData> _items = [];
  
  @override
  void initState() {
    super.initState();
    _poolManager = WidgetPoolManager(maxPoolSize: 10);
    
    // Generate test data
    for (var i = 0; i < 50; i++) {
      _items.add(ExpensiveWidgetData(
        id: 'item_\$i',
        title: 'Item \$i',
        imageUrl: 'https://example.com/image\$i.jpg',
        description: 'Description for item \$i with lots of text...',
      ));
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pooled ListView'),
        actions: [
          Center(
            child: Padding(
              padding: .symmetric(horizontal: 16),
              child: Text(
                'Pool: \${_poolManager.pooledCount} | ' +
                'Active: \${_poolManager.activeCount}',
                style: .white,
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          // In real implementation, you'd cache widgets per viewport
          // This is simplified for demonstration
          return _poolManager.acquire(_items[index]);
        },
      ),
    );
  }
  
  @override
  void dispose() {
    _poolManager.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(
    home: PooledListView(),
  ));
}"""),
      ],
      ar: [
        // Arabic versions
        StrCodeBlock("""// مثال 1: أساسي - تجمع كائنات عام
// حالة الاستخدام: تجمع مخازن قابلة لإعادة الاستخدام لمعالجة البيانات

class Buffer {
  Buffer(this.id, this.capacity) : _data = List.filled(capacity, 0);
  
  final String id;
  final int capacity;
  final List<int> _data;
  int _size = 0;
  
  void write(List<int> data) {
    if (data.length > capacity) {
      throw Exception('البيانات تتجاوز سعة المخزن');
    }
    for (var i = 0; i < data.length; i++) {
      _data[i] = data[i];
    }
    _size = data.length;
    print('[\$id] تمت كتابة \$_size بايت');
  }
  
  List<int> read() {
    return _data.sublist(0, _size);
  }
  
  void clear() {
    _size = 0;
    for (var i = 0; i < capacity; i++) {
      _data[i] = 0;
    }
    print('[\$id] تم المسح');
  }
  
  bool get isEmpty => _size == 0;
}

class BufferPool {
  BufferPool({required this.bufferSize, required this.maxPoolSize});
  
  final int bufferSize;
  final int maxPoolSize;
  final List<Buffer> _available = [];
  final List<Buffer> _inUse = [];
  int _createdCount = 0;
  
  Buffer acquire() {
    // محاولة الحصول من التجمع المتاح
    if (_available.isNotEmpty) {
      final buffer = _available.removeLast();
      _inUse.add(buffer);
      print('تم الحصول على مخزن موجود \${buffer.id} من التجمع');
      return buffer;
    }
    
    // إنشاء جديد إذا كان تحت الحد
    if (_createdCount < maxPoolSize) {
      final buffer = Buffer('buffer_\$_createdCount', bufferSize);
      _createdCount++;
      _inUse.add(buffer);
      print('تم إنشاء مخزن جديد \${buffer.id}');
      return buffer;
    }
    
    // التجمع مُستنفد
    throw Exception('تجمع المخازن مُستنفد! الحد الأقصى: \$maxPoolSize');
  }
  
  void release(Buffer buffer) {
    if (_inUse.remove(buffer)) {
      buffer.clear(); // إعادة تعيين الحالة - حاسم!
      _available.add(buffer);
      print('تم إطلاق المخزن \${buffer.id} إلى التجمع');
    }
  }
  
  PoolStats getStats() {
    return PoolStats(
      available: _available.length,
      inUse: _inUse.length,
      total: _createdCount,
      maxSize: maxPoolSize,
    );
  }
  
  void printStats() {
    final stats = getStats();
    print('=== إحصائيات التجمع ===');
    print('متاح: \${stats.available}');
    print('قيد الاستخدام: \${stats.inUse}');
    print('إجمالي المُنشأ: \${stats.total}');
    print('الحد الأقصى: \${stats.maxSize}');
    print('الاستخدام: \${(stats.inUse / stats.total * 100).toStringAsFixed(1)}%');
  }
}

class PoolStats {
  const PoolStats({
    required this.available,
    required this.inUse,
    required this.total,
    required this.maxSize,
  });
  
  final int available;
  final int inUse;
  final int total;
  final int maxSize;
}

// الاستخدام
void main() {
  final pool = BufferPool(bufferSize: 1024, maxPoolSize: 3);
  
  print('=== معالجة البيانات مع التجمع ===\n');
  
  // معالجة أجزاء متعددة من البيانات
  final data1 = List.generate(100, (i) => i);
  final data2 = List.generate(200, (i) => i * 2);
  final data3 = List.generate(150, (i) => i * 3);
  
  // نمط الحصول، الاستخدام، الإطلاق
  final buffer1 = pool.acquire();
  buffer1.write(data1);
  print('تمت معالجة \${buffer1.read().length} بايت');
  pool.release(buffer1);
  
  print('');
  
  // يتم إعادة استخدام المخزن
  final buffer2 = pool.acquire(); // يجب إعادة استخدام buffer1
  buffer2.write(data2);
  pool.release(buffer2);
  
  print('');
  
  // استخدامات متزامنة متعددة
  final buf1 = pool.acquire();
  final buf2 = pool.acquire();
  final buf3 = pool.acquire();
  
  pool.printStats();
  
  // محاولة تجاوز حجم التجمع
  try {
    final buf4 = pool.acquire(); // يجب أن يرمي استثناء
  } catch (e) {
    print('تم اصطياد استثناء: \$e');
  }
  
  // إطلاق الكل
  pool.release(buf1);
  pool.release(buf2);
  pool.release(buf3);
  
  pool.printStats();
}"""),
        // Add remaining Arabic examples...
      ],
    ),
    pros: LocSL(
      en: [
        "Dramatically improves performance for expensive object creation - can be orders of magnitude faster",
        "Reduces garbage collection pressure by reusing objects",
        "Provides predictable, controlled resource usage",
        "Better control over resource limits and allocation",
        "Reduces memory fragmentation from frequent allocation/deallocation",
        "Smooth performance - avoids spikes from object creation",
        "Enables better capacity planning and resource monitoring",
      ],
      ar: [
        "يحسّن الأداء بشكل كبير لإنشاء الكائنات المكلفة - يمكن أن يكون أسرع بمراتب من حيث الحجم",
        "يقلل ضغط جمع القمامة (Garbage Collection) من خلال إعادة استخدام الكائنات",
        "يوفر استخدام موارد قابل للتنبؤ ومُتحكم فيه",
        "تحكم أفضل في حدود الموارد والتخصيص",
        "يقلل تجزئة الذاكرة (Memory Fragmentation) من التخصيص/إلغاء التخصيص المتكرر",
        "أداء سلس - يتجنب الارتفاعات المفاجئة من إنشاء الكائنات",
        "يُمكّن تخطيط السعة ومراقبة الموارد بشكل أفضل",
      ],
    ),
    cons: LocSL(
      en: [
        "Adds significant complexity to manage object lifecycle properly",
        "Risk of stale state bugs if objects aren't properly reset before reuse",
        "Thread safety concerns in concurrent environments - need synchronization",
        "Memory waste if pool grows too large or objects aren't needed",
        "Premature optimization - may not be worth complexity for cheap objects",
        "Requires careful tuning of pool size - too small (contention) or too large (waste)",
        "Difficult to debug - object state persists across uses",
        "Need to handle resource cleanup (connections, file handles) carefully",
      ],
      ar: [
        "يضيف تعقيداً كبيراً لإدارة دورة حياة الكائن بشكل صحيح",
        "خطر أخطاء الحالة القديمة (Stale State) إذا لم يتم إعادة تعيين الكائنات بشكل صحيح قبل إعادة الاستخدام",
        "مخاوف أمان الخيوط (Thread Safety) في البيئات المتزامنة - تحتاج للمزامنة",
        "هدر الذاكرة إذا نما التجمع بشكل كبير جداً أو لم تكن الكائنات مطلوبة",
        "تحسين مبكر (Premature Optimization) - قد لا يستحق التعقيد للكائنات الرخيصة",
        "يتطلب ضبطاً دقيقاً لحجم التجمع - صغير جداً (تنافس) أو كبير جداً (هدر)",
        "صعب التنقيح (Debug) - حالة الكائن تستمر عبر الاستخدامات",
        "تحتاج للتعامل مع تنظيف الموارد (الاتصالات، مقابض الملفات) بعناية",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Object Pool when:"),
        ULContent(
          value: [
            "Object creation/destruction is demonstrably expensive through profiling",
            "You need many short-lived instances of the same type",
            "Resource limits must be enforced (max database connections, threads, etc.)",
            "Performance profiling shows object creation as a bottleneck",
            "Objects are stateful and expensive to initialize (connections, large buffers)",
            "GC pressure is causing performance issues",
            "You need predictable latency (avoid GC pauses)",
          ],
        ),
        NoteContent(
          "Always profile first! Most object creation in modern VMs is very fast. Only pool when measurements prove it's beneficial.",
          type: .warning,
        ),
        StrContent("Common scenarios in Dart/Flutter:"),
        ULContent(
          value: [
            "Database connection pools",
            "HTTP client pools for API requests",
            "Isolate pools for parallel computation",
            "Particle systems in games (1000s of particles)",
            "Image/buffer pools for media processing",
            "WebSocket connection pools",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم تجمع الكائنات عندما:"),
        ULContent(
          value: [
            "إنشاء/إتلاف الكائن مكلف بشكل واضح من خلال التحليل (Profiling)",
            "تحتاج للعديد من النسخ قصيرة العمر من نفس النوع",
            "يجب فرض حدود الموارد (أقصى اتصالات قاعدة البيانات، خيوط، إلخ)",
            "تحليل الأداء يُظهر أن إنشاء الكائن عنق زجاجة",
            "الكائنات ذات حالة ومكلفة في التهيئة (اتصالات، مخازن كبيرة)",
            "ضغط جامع القمامة (GC Pressure) يسبب مشاكل في الأداء",
            "تحتاج لزمن انتقال قابل للتنبؤ (تجنب توقفات GC)",
          ],
        ),
        NoteContent(
          "حلل دائماً أولاً! معظم إنشاء الكائنات في الأجهزة الافتراضية الحديثة سريع جداً. جمّع فقط عندما تثبت القياسات أنه مفيد.",
          type: .warning,
        ),
        StrContent("السيناريوهات الشائعة في Dart/Flutter:"),
        ULContent(
          value: [
            "تجمعات اتصال قاعدة البيانات",
            "تجمعات عملاء HTTP لطلبات API",
            "تجمعات العزلات (Isolate Pools) للحساب المتوازي",
            "أنظمة الجسيمات في الألعاب (آلاف الجسيمات)",
            "تجمعات الصور/المخازن لمعالجة الوسائط",
            "تجمعات اتصال WebSocket",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Pooling objects where creation is actually cheap - adds unnecessary complexity",
        "Not resetting object state before returning to pool - causes state bleeding bugs",
        "Allowing two threads/clients to use the same pooled object simultaneously",
        "Creating pools that grow unbounded - defeats memory management purpose",
        "Not validating object health before reuse (stale connections, corrupted state)",
        "Forgetting to release objects back to pool - causes resource leaks",
        "Making pool size too small (contention) or too large (memory waste)",
        "Not handling exceptions properly - objects not returned on error",
        "Pooling immutable objects - defeats the purpose, just share one instance",
      ],
      ar: [
        "تجميع كائنات حيث الإنشاء فعلياً رخيص - يضيف تعقيداً غير ضروري",
        "عدم إعادة تعيين حالة الكائن قبل الإرجاع للتجمع - يسبب أخطاء نزيف الحالة (State Bleeding)",
        "السماح لخيطين/عميلين باستخدام نفس الكائن المُجمّع في وقت واحد",
        "إنشاء تجمعات تنمو بلا حدود - يُفشل غرض إدارة الذاكرة",
        "عدم التحقق من صحة الكائن قبل إعادة الاستخدام (اتصالات قديمة، حالة تالفة)",
        "نسيان إرجاع الكائنات للتجمع - يسبب تسريبات موارد",
        "جعل حجم التجمع صغيراً جداً (تنافس) أو كبيراً جداً (هدر ذاكرة)",
        "عدم التعامل مع الاستثناءات بشكل صحيح - الكائنات لا تُرجع عند الخطأ",
        "تجميع كائنات غير قابلة للتغيير (Immutable) - يُفشل الغرض، فقط شارك نسخة واحدة",
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
      ar: "يؤجل إنشاء الكائن أو حساب القيمة حتى الوصول الأول (First Access)",
    ),
    group: .design,
    type: .creational,
    category: .practical,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "Lazy Initialization postpones the creation of an object, calculation of a value, or execution of an expensive operation until it's actually needed. This can significantly improve application startup time and reduce memory usage.",
        ),
        AnalogyContent(
          "Think of streaming services like Netflix. They don't download all episodes of a series when you click on it - they wait until you actually press play on an episode. Similarly, lazy initialization waits until a resource is actually needed before creating it.",
        ),
        StrContent(
          "The pattern is implemented by checking if a resource has been initialized before accessing it. If not initialized, create it on-the-spot; otherwise, return the cached instance. This 'create on first use' approach is fundamental to lazy evaluation.",
        ),
        ULContent(
          title: "Key Characteristics:",
          value: [
            "Deferred initialization - resource created only when needed",
            "Caching - once created, the instance is stored and reused",
            "Null checking or sentinel values to detect initialization state",
            "Thread-safety considerations in concurrent environments",
            "Trade-off: faster startup vs. slower first access",
          ],
        ),
        DiagramContent(
          "Pattern Flow:\nFirst Access → Check if initialized → NO → Create & Cache → Return\n                                   ↓\n                                  YES → Return Cached\n\nSubsequent Access → Return Cached (fast)",
        ),
        StrContent(
          "In Dart, the `late` keyword provides built-in support for lazy initialization, making this pattern extremely easy to implement. The `late` keyword creates a variable that's initialized when first accessed, not when declared.",
        ),
        NoteContent(
          "Dart's `late` keyword is perfect for lazy initialization: `late final expensive = createExpensive();` - computed only when first accessed, then cached forever.",
          type: .tip,
        ),
        ULContent(
          title: "Common Applications:",
          value: [
            "Database connections that may not be needed",
            "Heavy computational results (parsing, calculations)",
            "Large data structures (caches, lookup tables)",
            "Expensive I/O operations (file reading, network calls)",
            "Plugin systems where plugins load on-demand",
            "Configuration objects with default values",
          ],
        ),
        StrContent(
          "The pattern is particularly effective when resources may never be used in certain code paths. Why spend time creating something that might never be needed?",
        ),
        NoteContent(
          "Lazy initialization is NOT always better. Use when: (1) initialization is expensive, (2) resource might not be used, (3) startup time matters. Don't use for cheap objects or when initialization order matters.",
          type: .important,
        ),
        ComparisonContent({
          'Eager Initialization':
              'Created immediately, predictable timing, slower startup',
          'Lazy Initialization':
              'Created on first use, unpredictable timing, faster startup',
          'Lazy + Null': 'T? _value; check _value ??= create();',
          'Lazy + late': 'late T value = create(); (Dart built-in)',
        }, title: 'Initialization Strategies'),
        StrContent(
          "Performance considerations: First access is slower (initialization overhead). Subsequent accesses are fast (cached). Good for improving perceived performance - app starts fast, pays cost later when user actually needs the feature.",
        ),
      ],
      ar: [
        StrContent(
          "التهيئة الكسولة (Lazy Initialization) تؤجل إنشاء الكائن، أو حساب القيمة، أو تنفيذ العملية المكلفة حتى الحاجة الفعلية لها. هذا يمكن أن يحسّن بشكل كبير وقت بدء التطبيق ويقلل استخدام الذاكرة.",
        ),
        AnalogyContent(
          "فكر في خدمات البث المباشر مثل Netflix. لا تقوم بتحميل جميع حلقات المسلسل عندما تنقر عليه - تنتظر حتى تضغط فعلياً على تشغيل حلقة. بالمثل، التهيئة الكسولة تنتظر حتى تكون هناك حاجة فعلية للمورد قبل إنشائه.",
        ),
        StrContent(
          "يُنفذ النمط من خلال التحقق مما إذا تم تهيئة المورد قبل الوصول إليه. إن لم يكن مُهيأً، أنشئه في الحال؛ وإلا، أرجع النسخة المُخزنة مؤقتاً (Cached). هذا النهج 'إنشاء عند الاستخدام الأول' أساسي للتقييم الكسول (Lazy Evaluation).",
        ),
        ULContent(
          title: "الخصائص الأساسية:",
          value: [
            "تهيئة مؤجلة (Deferred Initialization) - المورد يُنشأ فقط عند الحاجة",
            "التخزين المؤقت (Caching) - بمجرد الإنشاء، يتم تخزين النسخة وإعادة استخدامها",
            "فحص null أو قيم حارسة (Sentinel Values) لاكتشاف حالة التهيئة",
            "اعتبارات أمان الخيوط (Thread-Safety) في البيئات المتزامنة",
            "مقايضة: بدء أسرع مقابل وصول أول أبطأ",
          ],
        ),
        DiagramContent(
          "تدفق النمط:\nالوصول الأول ← التحقق من التهيئة ← لا ← إنشاء وتخزين مؤقت ← إرجاع\n                                   ↓\n                                 نعم ← إرجاع المُخزن\n\nالوصول اللاحق ← إرجاع المُخزن (سريع)",
        ),
        StrContent(
          "في Dart، توفر الكلمة المفتاحية `late` دعماً مدمجاً للتهيئة الكسولة، مما يجعل تنفيذ هذا النمط سهلاً للغاية. الكلمة المفتاحية `late` تُنشئ متغيراً يتم تهيئته عند الوصول الأول، وليس عند الإعلان.",
        ),
        NoteContent(
          "الكلمة المفتاحية `late` في Dart مثالية للتهيئة الكسولة: `late final expensive = createExpensive();` - يُحسب فقط عند الوصول الأول، ثم يُخزن مؤقتاً للأبد.",
          type: .tip,
        ),
        ULContent(
          title: "التطبيقات الشائعة:",
          value: [
            "اتصالات قاعدة البيانات التي قد لا تكون مطلوبة",
            "نتائج حسابية ثقيلة (التحليل، الحسابات)",
            "هياكل بيانات كبيرة (ذاكرات مؤقتة، جداول بحث)",
            "عمليات إدخال/إخراج مكلفة (قراءة الملفات، استدعاءات الشبكة)",
            "أنظمة الإضافات (Plugins) حيث تُحمل الإضافات عند الطلب",
            "كائنات الإعدادات (Configuration) مع قيم افتراضية",
          ],
        ),
        StrContent(
          "النمط فعّال بشكل خاص عندما قد لا يتم استخدام الموارد أبداً في مسارات كود معينة. لماذا تقضي وقتاً في إنشاء شيء قد لا تحتاجه أبداً؟",
        ),
        NoteContent(
          "التهيئة الكسولة ليست دائماً أفضل. استخدمها عندما: (1) التهيئة مكلفة، (2) المورد قد لا يُستخدم، (3) وقت البدء مهم. لا تستخدمها للكائنات الرخيصة أو عندما يهم ترتيب التهيئة.",
          type: .important,
        ),
        ComparisonContent({
          'التهيئة الحريصة (Eager)': 'يُنشأ فوراً، توقيت قابل للتنبؤ، بدء أبطأ',
          'التهيئة الكسولة (Lazy)':
              'يُنشأ عند الاستخدام الأول، توقيت غير قابل للتنبؤ، بدء أسرع',
          'كسول + Null': 'T? _value; تحقق _value ??= create();',
          'كسول + late': 'late T value = create(); (مدمج في Dart)',
        }, title: 'استراتيجيات التهيئة'),
        StrContent(
          "اعتبارات الأداء: الوصول الأول أبطأ (عبء التهيئة). الوصولات اللاحقة سريعة (مُخزنة مؤقتاً). جيد لتحسين الأداء المُدرك - التطبيق يبدأ بسرعة، يدفع التكلفة لاحقاً عندما يحتاج المستخدم فعلياً للميزة.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Lazy with late keyword
        StrCodeBlock(
          """// Example 1: Basic - Dart's late keyword for Lazy Initialization
// Use case: Expensive resources that may not be used

class ExpensiveResource {
  ExpensiveResource() {
    print('Creating expensive resource...');
    // Simulate expensive initialization
    _initialize();
  }
  
  void _initialize() {
    print('Performing expensive initialization (3 seconds)...');
    // In real code: database connection, file parsing, etc.
  }
  
  void doWork() {
    print('Doing work with expensive resource');
  }
}

class Application {
  // Eager initialization - created immediately
  final ExpensiveResource eagerResource = ExpensiveResource();
  
  // Lazy initialization - created on first access
  late final ExpensiveResource lazyResource = ExpensiveResource();
  
  void useEagerResource() {
    print('Using eager resource:');
    eagerResource.doWork();
  }
  
  void useLazyResource() {
    print('Using lazy resource (first access):');
    lazyResource.doWork(); // Created here on first access
    
    print('Using lazy resource (second access):');
    lazyResource.doWork(); // Reused from cache
  }
}

void main() {
  print('=== Application Starting ===');
  
  final app = Application();
  print('Application started (notice eager resource already created)');
  
  print('--- Wait 2 seconds before using lazy resource ---');
  // In real app: user navigates, performs other tasks
  
  app.useLazyResource();
  
  print('=== Startup Time Comparison ===');
  print('Eager: Slow startup (resource created immediately)');
  print('Lazy: Fast startup (resource created when needed)');
}""",
        ),

        // Example 2: Intermediate - Manual Lazy Implementation
        StrCodeBlock(
          """// Example 2: Intermediate - Manual Lazy Initialization Patterns
// Use case: Different lazy initialization strategies

// Pattern 1: Lazy with nullable + null check
class LazyWithNullable {
  ExpensiveObject? _instance;
  
  ExpensiveObject get instance {
    _instance ??= ExpensiveObject();
    return _instance!;
  }
}

// Pattern 2: Lazy with late (simplest)
class LazyWithLate {
  late final ExpensiveObject instance = ExpensiveObject();
}

// Pattern 3: Lazy with initialization flag
class LazyWithFlag {
  ExpensiveObject? _instance;
  bool _initialized = false;
  
  ExpensiveObject get instance {
    if (!_initialized) {
      print('First access - initializing...');
      _instance = ExpensiveObject();
      _initialized = true;
    }
    return _instance!;
  }
  
  bool get isInitialized => _initialized;
}

// Pattern 4: Lazy with factory function
class LazyWithFactory {
  ExpensiveObject? _instance;
  final ExpensiveObject Function() _factory;
  
  LazyWithFactory(this._factory);
  
  ExpensiveObject get instance {
    _instance ??= _factory();
    return _instance!;
  }
  
  void reset() {
    _instance = null;
  }
}

// Pattern 5: Lazy with async initialization
class LazyAsync {
  Future<ExpensiveObject>? _future;
  
  Future<ExpensiveObject> get instance {
    _future ??= _initialize();
    return _future!;
  }
  
  Future<ExpensiveObject> _initialize() async {
    print('Async initialization started...');
    await Future.delayed(.seconds(1)); // Simulate async work
    print('Async initialization complete');
    return ExpensiveObject();
  }
}

class ExpensiveObject {
  ExpensiveObject() {
    print('ExpensiveObject created');
  }
  
  void doSomething() {
    print('Doing something...');
  }
}

void main() async {
  print('=== Pattern 1: Nullable ===');
  final lazy1 = LazyWithNullable();
  print('Created LazyWithNullable');
  print('Accessing instance...');
  lazy1.instance.doSomething();
  
  print('=== Pattern 2: Late ===');
  final lazy2 = LazyWithLate();
  print('Created LazyWithLate');
  print('Accessing instance...');
  lazy2.instance.doSomething();
  
  print('=== Pattern 3: Flag ===');
  final lazy3 = LazyWithFlag();
  print('Created LazyWithFlag');
  print('Is initialized? \${lazy3.isInitialized}');
  lazy3.instance.doSomething();
  print('Is initialized? \${lazy3.isInitialized}');
  
  print('=== Pattern 4: Factory ===');
  final lazy4 = LazyWithFactory(() {
    print('Custom factory function called');
    return ExpensiveObject();
  });
  print('Created LazyWithFactory');
  lazy4.instance.doSomething();
  print('Resetting...');
  lazy4.reset();
  print('Accessing after reset...');
  lazy4.instance.doSomething();
  
  print('=== Pattern 5: Async ===');
  final lazy5 = LazyAsync();
  print('Created LazyAsync');
  final obj = await lazy5.instance;
  obj.doSomething();
}""",
        ),

        // Example 3: Advanced - Configuration Manager
        StrCodeBlock("""// Example 3: Advanced - Lazy Configuration Manager
// Use case: App configuration with lazy-loaded sections

abstract class ConfigSection {
  String get sectionName;
  Map<String, dynamic> get data;
}

class DatabaseConfig implements ConfigSection {
  DatabaseConfig() {
    print('Loading database configuration...');
    _loadFromFile();
  }
  
  @override
  String get sectionName => 'database';
  
  late final Map<String, dynamic> _data = {
    'host': 'localhost',
    'port': 5432,
    'database': 'myapp',
    'pool_size': 10,
  };
  
  void _loadFromFile() {
    // Simulate expensive file I/O
    print('  Reading database.config...');
  }
  
  @override
  Map<String, dynamic> get data => _data;
  
  String get host => _data['host'] as String;
  int get port => _data['port'] as int;
  String get database => _data['database'] as String;
  int get poolSize => _data['pool_size'] as int;
}

class ApiConfig implements ConfigSection {
  ApiConfig() {
    print('Loading API configuration...');
    _loadFromFile();
  }
  
  @override
  String get sectionName => 'api';
  
  late final Map<String, dynamic> _data = {
    'base_url': 'https://api.example.com',
    'timeout': 30,
    'retry_count': 3,
    'api_key': 'secret_key_123',
  };
  
  void _loadFromFile() {
    print('  Reading api.config...');
  }
  
  @override
  Map<String, dynamic> get data => _data;
  
  String get baseUrl => _data['base_url'] as String;
  int get timeout => _data['timeout'] as int;
  int get retryCount => _data['retry_count'] as int;
  String get apiKey => _data['api_key'] as String;
}

class FeatureFlagsConfig implements ConfigSection {
  FeatureFlagsConfig() {
    print('Loading feature flags...');
    _loadFromRemote();
  }
  
  @override
  String get sectionName => 'features';
  
  late final Map<String, dynamic> _data = {
    'new_ui': true,
    'dark_mode': true,
    'analytics': false,
    'beta_features': false,
  };
  
  void _loadFromRemote() {
    print('  Fetching from remote server...');
    // Simulate network call
  }
  
  @override
  Map<String, dynamic> get data => _data;
  
  bool isEnabled(String feature) => _data[feature] as bool? ?? false;
}

class AppConfig {
  // Lazy initialization - each section loaded only when accessed
  late final DatabaseConfig database = DatabaseConfig();
  late final ApiConfig api = ApiConfig();
  late final FeatureFlagsConfig features = FeatureFlagsConfig();
  
  // Track which sections have been accessed
  final Set<String> _loadedSections = {};
  
  void _trackAccess(String section) {
    if (!_loadedSections.contains(section)) {
      _loadedSections.add(section);
      print('  [\$section] First access - loaded');
    }
  }
  
  DatabaseConfig get databaseConfig {
    _trackAccess('database');
    return database;
  }
  
  ApiConfig get apiConfig {
    _trackAccess('api');
    return api;
  }
  
  FeatureFlagsConfig get featuresConfig {
    _trackAccess('features');
    return features;
  }
  
  void printLoadedSections() {
    print('=== Loaded Configuration Sections ===');
    if (_loadedSections.isEmpty) {
      print('No sections loaded yet');
    } else {
      for (final section in _loadedSections) {
        print('  - \$section');
      }
    }
  }
}

// Different app scenarios
class SimpleApp {
  final AppConfig config;
  
  SimpleApp(this.config);
  
  void run() {
    print('=== Simple App (only needs API) ===');
    final apiUrl = config.apiConfig.baseUrl;
    print('Connecting to: \$apiUrl');
    // Database and features never loaded!
  }
}

class ComplexApp {
  final AppConfig config;
  
  ComplexApp(this.config);
  
  void run() {
    print('=== Complex App (needs everything) ===');
    
    // Connect to database
    print('Database: \${config.databaseConfig.host}:\${config.databaseConfig.port}');
    
    // Make API calls
    print('API: \${config.apiConfig.baseUrl}');
    
    // Check features
    if (config.featuresConfig.isEnabled('new_ui')) {
      print('New UI enabled');
    }
  }
}

void main() {
  print('=== Application Starting ===\n');
  
  final config = AppConfig();
  print('Config object created (nothing loaded yet)\n');
  
  config.printLoadedSections();
  
  // Scenario 1: Simple app
  final simpleApp = SimpleApp(config);
  simpleApp.run();
  config.printLoadedSections();
  
  // Scenario 2: Complex app (reuses same config)
  final complexApp = ComplexApp(config);
  complexApp.run();
  config.printLoadedSections();
  
  print('=== Performance Impact ===');
  print('Simple app: Fast startup (only loaded API config)');
  print('Complex app: Slower (loaded everything as needed)');
  print('But: Simple app would be slower with eager loading!');
}"""),

        // Example 4: Flutter - Lazy Widget Loading
        StrCodeBlock(
          """// Example 4: Flutter - Lazy Screen/Widget Initialization
// Use case: Lazy loading expensive screens in navigation

abstract class Screen extends StatelessWidget {
  const Screen({super.key});
  
  String get title;
}

class HomeScreen extends Screen {
  const HomeScreen({super.key});
  
  @override
  String get title => 'Home';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text('Home Screen'),
            .height(20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ScreenManager.instance.analytics,
                  ),
                );
              },
              child: Text('Go to Analytics'),
            ),
            .height(10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ScreenManager.instance.settings,
                  ),
                );
              },
              child: Text('Go to Settings'),
            ),
          ],
        ),
      ),
    );
  }
}

class AnalyticsScreen extends Screen {
  AnalyticsScreen({super.key}) {
    print('AnalyticsScreen: Heavy initialization...');
    _loadAnalyticsData();
  }
  
  @override
  String get title => 'Analytics';
  
  void _loadAnalyticsData() {
    // Simulate expensive data loading
    print('  Loading charts, processing data...');
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text('Analytics Screen'),
            Text('(Expensive charts and graphs loaded)'),
          ],
        ),
      ),
    );
  }
}

class SettingsScreen extends Screen {
  SettingsScreen({super.key}) {
    print('SettingsScreen: Loading preferences...');
    _loadSettings();
  }
  
  @override
  String get title => 'Settings';
  
  void _loadSettings() {
    print('  Reading settings from storage...');
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text('Settings Screen'),
            Text('(User preferences loaded)'),
          ],
        ),
      ),
    );
  }
}

// Lazy screen manager
class ScreenManager {
  static final ScreenManager instance = ScreenManager._();
  ScreenManager._();
  
  // Screens loaded lazily - only when navigated to
  late final AnalyticsScreen analytics = AnalyticsScreen();
  late final SettingsScreen settings = SettingsScreen();
  
  // Track initialization
  bool _analyticsInitialized = false;
  bool _settingsInitialized = false;
  
  AnalyticsScreen get analyticsScreen {
    if (!_analyticsInitialized) {
      print('[ScreenManager] First access to analytics screen');
      _analyticsInitialized = true;
    }
    return analytics;
  }
  
  SettingsScreen get settingsScreen {
    if (!_settingsInitialized) {
      print('[ScreenManager] First access to settings screen');
      _settingsInitialized = true;
    }
    return settings;
  }
}

// Lazy data provider
class DataProvider extends ChangeNotifier {
  // Lazy-loaded expensive data
  List<ChartData>? _chartData;
  List<UserStats>? _userStats;
  
  Future<List<ChartData>> get chartData async {
    if (_chartData == null) {
      print('[DataProvider] Loading chart data...');
      await Future.delayed(.seconds(1)); // Simulate loading
      _chartData = List.generate(
        100,
        (i) => ChartData(date: DateTime.now().subtract(.days(i)), value: i * 10),
      );
      print('[DataProvider] Chart data loaded');
    }
    return _chartData!;
  }
  
  Future<List<UserStats>> get userStats async {
    if (_userStats == null) {
      print('[DataProvider] Loading user stats...');
      await Future.delayed(.milliseconds(500));
      _userStats = [
        UserStats(metric: 'Sessions', value: 1234),
        UserStats(metric: 'Page Views', value: 5678),
        UserStats(metric: 'Conversions', value: 89),
      ];
      print('[DataProvider] User stats loaded');
    }
    return _userStats!;
  }
  
  void clearCache() {
    _chartData = null;
    _userStats = null;
    print('[DataProvider] Cache cleared');
    notifyListeners();
  }
}

class ChartData {
  ChartData({required this.date, required this.value});
  final DateTime date;
  final double value;
}

class UserStats {
  UserStats({required this.metric, required this.value});
  final String metric;
  final int value;
}

void main() {
  print('=== Flutter App Starting ===');
  print('Home screen loads immediately (lightweight)');
  print('Other screens load lazily when navigated to\n');
  
  runApp(MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}""",
        ),
      ],
      ar: [
        // Arabic versions
        StrCodeBlock(
          """// مثال 1: أساسي - الكلمة المفتاحية late للتهيئة الكسولة في Dart
// حالة الاستخدام: موارد مكلفة قد لا يتم استخدامها

class ExpensiveResource {
  ExpensiveResource() {
    print('إنشاء مورد مكلف...');
    // محاكاة تهيئة مكلفة
    _initialize();
  }
  
  void _initialize() {
    print('تنفيذ تهيئة مكلفة (3 ثوان)...');
    // في الكود الحقيقي: اتصال قاعدة البيانات، تحليل الملفات، إلخ
  }
  
  void doWork() {
    print('أداء عمل مع المورد المكلف');
  }
}

class Application {
  // التهيئة الحريصة - يتم الإنشاء فوراً
  final ExpensiveResource eagerResource = ExpensiveResource();
  
  // التهيئة الكسولة - يتم الإنشاء عند الوصول الأول
  late final ExpensiveResource lazyResource = ExpensiveResource();
  
  void useEagerResource() {
    print('استخدام المورد الحريص:');
    eagerResource.doWork();
  }
  
  void useLazyResource() {
    print('استخدام المورد الكسول (الوصول الأول):');
    lazyResource.doWork(); // يتم إنشاؤه هنا عند الوصول الأول
    
    print('استخدام المورد الكسول (الوصول الثاني):');
    lazyResource.doWork(); // يُعاد استخدامه من الذاكرة المؤقتة
  }
}

void main() {
  print('=== بدء التطبيق ===');
  
  final app = Application();
  print('بدأ التطبيق (لاحظ أن المورد الحريص تم إنشاؤه بالفعل)');
  
  print('--- انتظر ثانيتين قبل استخدام المورد الكسول ---');
  // في التطبيق الحقيقي: المستخدم يتنقل، يؤدي مهام أخرى
  
  app.useLazyResource();
  
  print('=== مقارنة وقت البدء ===');
  print('الحريص: بدء بطيء (المورد يُنشأ فوراً)');
  print('الكسول: بدء سريع (المورد يُنشأ عند الحاجة)');
}""",
        ),
        // Add remaining Arabic examples...
      ],
    ),
    pros: LocSL(
      en: [
        "Significantly improves application startup time - faster perceived performance",
        "Reduces initial memory footprint by deferring allocation",
        "Avoids unnecessary work for features/resources that might never be used",
        "Spreads initialization cost over time instead of all at once",
        "Perfect for optional features or conditional code paths",
        "Can improve battery life on mobile by reducing upfront work",
        "Enables progressive enhancement - core features load first",
      ],
      ar: [
        "يحسّن بشكل كبير وقت بدء التطبيق - أداء مُدرك أسرع",
        "يقلل البصمة الأولية للذاكرة (Initial Memory Footprint) من خلال تأجيل التخصيص",
        "يتجنب العمل غير الضروري للميزات/الموارد التي قد لا يتم استخدامها أبداً",
        "ينشر تكلفة التهيئة على مدى الوقت بدلاً من دفعة واحدة",
        "مثالي للميزات الاختيارية أو مسارات الكود الشرطية",
        "يمكن أن يحسّن عمر البطارية على الأجهزة المحمولة من خلال تقليل العمل المسبق",
        "يُمكّن التحسين التدريجي (Progressive Enhancement) - الميزات الأساسية تُحمل أولاً",
      ],
    ),
    cons: LocSL(
      en: [
        "Adds conditional overhead on each access (null check)",
        "Can cause unexpected delays when first accessed - unpredictable timing",
        "Requires thread safety considerations in concurrent environments",
        "Not beneficial if resource is always needed - just adds complexity",
        "Harder to debug - initialization happens at unexpected times",
        "Can complicate initialization order dependencies",
        "First access is slower - poor for latency-sensitive operations",
        "May hide initialization errors until runtime (vs compile-time with eager)",
      ],
      ar: [
        "يضيف عبئاً شرطياً في كل وصول (فحص null)",
        "قد يسبب تأخيرات غير متوقعة عند الوصول الأول - توقيت غير قابل للتنبؤ",
        "يتطلب اعتبارات أمان الخيوط في البيئات المتزامنة",
        "غير مفيد إذا كان المورد مطلوباً دائماً - يضيف تعقيداً فقط",
        "أصعب في التنقيح (Debug) - التهيئة تحدث في أوقات غير متوقعة",
        "قد يعقد تبعيات ترتيب التهيئة (Initialization Order Dependencies)",
        "الوصول الأول أبطأ - سيئ للعمليات الحساسة لزمن الانتقال (Latency-Sensitive)",
        "قد يخفي أخطاء التهيئة حتى وقت التشغيل (مقابل وقت الترجمة مع الحريص)",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Lazy Initialization when:"),
        ULContent(
          value: [
            "Object creation is expensive (time, memory, I/O) and you want fast startup",
            "Resource might never be used in certain code paths or user flows",
            "You want to optimize perceived performance - show UI quickly",
            "Initialization depends on runtime configuration or user input",
            "You're implementing optional features or plugins",
            "Memory is constrained and you want to defer allocation",
            "App has multiple features but users typically only use a few",
          ],
        ),
        NoteContent(
          "Perfect for: app configuration, plugin systems, optional features, heavy UI components, cached computations, connection pools.",
          type: .tip,
        ),
        StrContent("Don't use Lazy Initialization when:"),
        ULContent(
          value: [
            "Resource is always needed - just adds complexity",
            "Initialization is cheap (< 1ms) - overhead not worth it",
            "You need predictable, deterministic initialization timing",
            "Initialization order matters for correctness",
            "First access latency is critical (real-time systems)",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم التهيئة الكسولة عندما:"),
        ULContent(
          value: [
            "إنشاء الكائن مكلف (الوقت، الذاكرة، الإدخال/الإخراج) وتريد بدءاً سريعاً",
            "المورد قد لا يُستخدم أبداً في مسارات كود معينة أو تدفقات المستخدم",
            "تريد تحسين الأداء المُدرك - إظهار واجهة المستخدم بسرعة",
            "التهيئة تعتمد على إعدادات وقت التشغيل أو إدخال المستخدم",
            "تقوم بتنفيذ ميزات اختيارية أو إضافات (Plugins)",
            "الذاكرة محدودة وتريد تأجيل التخصيص",
            "التطبيق لديه ميزات متعددة لكن المستخدمين عادةً يستخدمون القليل فقط",
          ],
        ),
        NoteContent(
          "مثالي لـ: إعدادات التطبيق، أنظمة الإضافات، الميزات الاختيارية، مكونات واجهة المستخدم الثقيلة، الحسابات المُخزنة مؤقتاً، تجمعات الاتصال.",
          type: .tip,
        ),
        StrContent("لا تستخدم التهيئة الكسولة عندما:"),
        ULContent(
          value: [
            "المورد مطلوب دائماً - يضيف تعقيداً فقط",
            "التهيئة رخيصة (< 1 ملي ثانية) - العبء لا يستحق",
            "تحتاج لتوقيت تهيئة قابل للتنبؤ ومُحدد",
            "ترتيب التهيئة مهم للصحة",
            "زمن انتقال الوصول الأول حاسم (أنظمة الوقت الفعلي - Real-Time)",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Using lazy initialization when resource is always needed - unnecessary complexity",
        "Not considering thread safety in concurrent code - race conditions",
        "Over-optimizing with lazy init for cheap operations - adds overhead",
        "Forgetting to handle initialization failures gracefully",
        "Creating circular dependencies between lazy-initialized objects",
        "Using lazy for objects where initialization order matters",
        "Not documenting that first access will be slow",
        "Lazy initializing in hot paths where latency matters",
        "Making everything lazy without measuring actual benefit",
      ],
      ar: [
        "استخدام التهيئة الكسولة عندما يكون المورد مطلوباً دائماً - تعقيد غير ضروري",
        "عدم مراعاة أمان الخيوط في الكود المتزامن - ظروف السباق (Race Conditions)",
        "الإفراط في التحسين مع التهيئة الكسولة للعمليات الرخيصة - يضيف عبئاً",
        "نسيان التعامل مع فشل التهيئة بشكل جيد",
        "إنشاء تبعيات دائرية (Circular Dependencies) بين الكائنات المُهيأة كسولاً",
        "استخدام الكسول للكائنات حيث يهم ترتيب التهيئة",
        "عدم توثيق أن الوصول الأول سيكون بطيئاً",
        "التهيئة الكسولة في المسارات الساخنة (Hot Paths) حيث يهم زمن الانتقال",
        "جعل كل شيء كسولاً دون قياس الفائدة الفعلية",
      ],
    ),
    relatedPatterns: [PK.singleton, PK.proxy, PK.factoryMethod],
    oftenConfusedWith: [PK.proxy],
  ),
};
