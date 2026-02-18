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
          "The Adapter pattern (also known as Wrapper) converts the interface of a class into another interface that clients expect. It lets classes work together that couldn't otherwise because of incompatible interfaces, acting as a bridge between two incompatible interfaces.",
        ),
        AnalogyContent(
          "Think of a power adapter for international travel. Your laptop has a US plug, but you're in Europe with different outlets. The adapter doesn't change your laptop or the wall outlet - it simply translates between them. Similarly, the Adapter pattern translates one interface to another without changing the underlying objects.",
        ),
        StrContent(
          "This pattern is particularly useful when integrating third-party libraries, working with legacy code, or when you need to make existing classes work with others without modifying their source code.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Target: The interface that the client expects and works with",
            "Adaptee: The existing class with an incompatible interface that needs adapting",
            "Adapter: Wraps the Adaptee and implements the Target interface, translating calls",
            "Client: Works with objects through the Target interface without knowing about adaptation",
          ],
        ),
        DiagramContent(
          "Pattern Flow:\nClient → Target Interface → Adapter → Adaptee\n                                   ↓\n                         (translates interface)",
        ),
        StrContent(
          "Adapters can be implemented using two approaches: Class Adapter (using multiple inheritance, not available in Dart) or Object Adapter (using composition, recommended in Dart). Object adapters hold a reference to the adaptee and delegate calls to it.",
        ),
        NoteContent(
          "Adapter changes the interface but keeps the same behavior. Facade simplifies the interface. Decorator enhances behavior. Don't confuse these three patterns - they serve different purposes!",
          type: .important,
        ),
        ComparisonContent({
          'Adapter': 'Changes interface to match expected one',
          'Facade': 'Simplifies a complex subsystem',
          'Decorator': 'Adds new behavior',
          'Proxy': 'Controls access, same interface',
        }, title: 'Adapter vs Similar Patterns'),
        StrContent(
          "Common use cases in Dart/Flutter: wrapping platform-specific APIs, integrating third-party packages with incompatible interfaces, adapting legacy code to new systems, creating testable wrappers around external dependencies, and converting data formats.",
        ),
      ],
      ar: [
        StrContent(
          "نمط المُحوّل (المعروف أيضاً بالغلاف - Wrapper) يحوّل واجهة فئة إلى واجهة أخرى يتوقعها العملاء. يتيح للفئات العمل معاً التي لا يمكنها ذلك بسبب الواجهات غير المتوافقة، عاملاً كجسر بين واجهتين غير متوافقتين.",
        ),
        AnalogyContent(
          "فكر في محول طاقة للسفر الدولي. اللابتوب لديه قابس أمريكي، لكنك في أوروبا بمنافذ مختلفة. المحول لا يغير اللابتوب أو منفذ الحائط - ببساطة يترجم بينهما. بالمثل، نمط المُحوّل يترجم واجهة إلى أخرى دون تغيير الكائنات الأساسية.",
        ),
        StrContent(
          "هذا النمط مفيد بشكل خاص عند دمج مكتبات طرف ثالث، العمل مع كود قديم، أو عندما تحتاج لجعل الفئات الموجودة تعمل مع أخرى دون تعديل كودها المصدري.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "الهدف (Target): الواجهة التي يتوقعها العميل ويعمل معها",
            "المُحوّل إليه (Adaptee): الفئة الموجودة بواجهة غير متوافقة تحتاج للتحويل",
            "المُحوّل (Adapter): يلف المُحوّل إليه وينفذ واجهة الهدف، يترجم الاستدعاءات",
            "العميل (Client): يعمل مع الكائنات من خلال واجهة الهدف دون معرفة التحويل",
          ],
        ),
        DiagramContent(
          "تدفق النمط:\nالعميل ← واجهة الهدف ← المُحوّل ← المُحوّل إليه\n                                   ↓\n                         (يترجم الواجهة)",
        ),
        StrContent(
          "يمكن تنفيذ المُحوّلات باستخدام نهجين: مُحوّل الفئة (Class Adapter) (باستخدام الوراثة المتعددة، غير متاح في Dart) أو مُحوّل الكائن (Object Adapter) (باستخدام التركيب، موصى به في Dart). مُحوّلات الكائن تحتفظ بمرجع للمُحوّل إليه وتفوض الاستدعاءات له.",
        ),
        NoteContent(
          "المُحوّل يغير الواجهة لكن يحافظ على نفس السلوك. الواجهة (Facade) تُبسط الواجهة. المُزخرف (Decorator) يعزز السلوك. لا تخلط بين هذه الأنماط الثلاثة - تخدم أغراضاً مختلفة!",
          type: .important,
        ),
        ComparisonContent({
          'المُحوّل (Adapter)': 'يغير الواجهة لتطابق المتوقعة',
          'الواجهة (Facade)': 'يُبسط نظاماً فرعياً معقداً',
          'المُزخرف (Decorator)': 'يضيف سلوكاً جديداً',
          'الوكيل (Proxy)': 'يتحكم في الوصول، نفس الواجهة',
        }, title: 'المُحوّل مقابل الأنماط المشابهة'),
        StrContent(
          "حالات الاستخدام الشائعة في Dart/Flutter: لف واجهات APIs الخاصة بالمنصة، دمج حزم طرف ثالث بواجهات غير متوافقة، تكييف كود قديم مع أنظمة جديدة، إنشاء أغلفة قابلة للاختبار حول التبعيات الخارجية، وتحويل تنسيقات البيانات.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Third-Party Library Adaptation
        StrCodeBlock(r'''import 'dart:async';

// Example 1: Basic - Adapting Third-Party Payment Library
// Use case: Integrating external payment processor with incompatible interface

// Your application's expected interface
abstract class PaymentProcessor {
  Future<PaymentResult> processPayment(double amount, String currency);
  Future<bool> refund(String transactionId);
}

class PaymentResult {
  final bool success;
  final String transactionId;
  final String? errorMessage;
  
  PaymentResult({
    required this.success,
    required this.transactionId,
    this.errorMessage,
  });
}

// Third-party library with different interface (you can't modify this)
class StripePaymentSDK {
  Map<String, dynamic> charge(int amountInCents, String currencyCode) {
    print('Stripe: Charging $amountInCents $currencyCode');
    return {
      'success': true,
      'charge_id': 'ch_${DateTime.now().millisecondsSinceEpoch}',
      'amount': amountInCents,
    };
  }
  
  bool refundCharge(String chargeId) {
    print('Stripe: Refunding $chargeId');
    return true;
  }
}

// Adapter: Makes StripePaymentSDK work with PaymentProcessor interface
class StripeAdapter implements PaymentProcessor {
  final StripePaymentSDK _stripe;
  
  StripeAdapter(this._stripe);
  
  @override
  Future<PaymentResult> processPayment(double amount, String currency) async {
    try {
      // Convert dollars to cents (Stripe expects cents)
      final amountInCents = (amount * 100).toInt();
      
      // Call Stripe's method with adapted parameters
      final result = _stripe.charge(amountInCents, currency.toUpperCase());
      
      // Convert Stripe's response to our interface
      return PaymentResult(
        success: result['success'] as bool,
        transactionId: result['charge_id'] as String,
      );
    } catch (e) {
      return PaymentResult(
        success: false,
        transactionId: '',
        errorMessage: e.toString(),
      );
    }
  }
  
  @override
  Future<bool> refund(String transactionId) async {
    try {
      return _stripe.refundCharge(transactionId);
    } catch (e) {
      print('Refund failed: $e');
      return false;
    }
  }
}

// Another third-party library with yet another different interface
class PayPalSDK {
  Future<String> makePayment(String amount, String currency) async {
    print('PayPal: Processing $amount $currency');
    await Future.delayed(Duration(milliseconds: 100));
    return 'PAYPAL-${DateTime.now().millisecondsSinceEpoch}';
  }
  
  Future<void> cancelTransaction(String txnId) async {
    print('PayPal: Cancelling $txnId');
    await Future.delayed(Duration(milliseconds: 50));
  }
}

// Adapter for PayPal
class PayPalAdapter implements PaymentProcessor {
  final PayPalSDK _paypal;
  
  PayPalAdapter(this._paypal);
  
  @override
  Future<PaymentResult> processPayment(double amount, String currency) async {
    try {
      final txnId = await _paypal.makePayment(amount.toString(), currency);
      
      return PaymentResult(
        success: true,
        transactionId: txnId,
      );
    } catch (e) {
      return PaymentResult(
        success: false,
        transactionId: '',
        errorMessage: e.toString(),
      );
    }
  }
  
  @override
  Future<bool> refund(String transactionId) async {
    try {
      await _paypal.cancelTransaction(transactionId);
      return true;
    } catch (e) {
      print('Refund failed: $e');
      return false;
    }
  }
}

// Your application code works with the common interface
class CheckoutService {
  final PaymentProcessor _processor;
  
  CheckoutService(this._processor);
  
  Future<void> checkout(double amount) async {
    print('=== Processing checkout: \$$amount ===');
    
    final result = await _processor.processPayment(amount, 'USD');
    
    if (result.success) {
      print('✓ Payment successful! Transaction: ${result.transactionId}');
    } else {
      print('✗ Payment failed: ${result.errorMessage}');
    }
  }
}

void main() async {
  // Your code doesn't know or care which payment provider is used
  print('Using Stripe:');
  final stripeCheckout = CheckoutService(
    StripeAdapter(StripePaymentSDK()),
  );
  await stripeCheckout.checkout(99.99);
  
  print('\nUsing PayPal:');
  final paypalCheckout = CheckoutService(
    PayPalAdapter(PayPalSDK()),
  );
  await paypalCheckout.checkout(149.99);
}'''),

        // Example 2: Intermediate - Data Format Adapter
        StrCodeBlock(r'''// Example 2: Intermediate - Adapting Data Formats
// Use case: Making old XML-based system work with new JSON-based code

// Modern interface your app uses (JSON-based)
abstract class DataProvider {
  Map<String, dynamic> getData(String id);
  List<Map<String, dynamic>> searchData(String query);
}

// Legacy XML-based system (can't modify)
class LegacyXmlDatabase {
  String fetchRecord(String recordId) {
    // Returns XML string
    return """
      <record>
        <id>$recordId</id>
        <name>Product $recordId</name>
        <price>99.99</price>
        <stock>42</stock>
      </record>
    """;
  }
  
  List<String> queryRecords(String searchTerm) {
    // Returns list of XML strings
    return [
      '<record><id>1</id><name>Product 1</name></record>',
      '<record><id>2</id><name>Product 2</name></record>',
    ];
  }
}

// Adapter: Converts XML to JSON
class XmlToJsonAdapter implements DataProvider {
  final LegacyXmlDatabase _xmlDb;
  
  XmlToJsonAdapter(this._xmlDb);
  
  @override
  Map<String, dynamic> getData(String id) {
    final xmlString = _xmlDb.fetchRecord(id);
    return _parseXmlToJson(xmlString);
  }
  
  @override
  List<Map<String, dynamic>> searchData(String query) {
    final xmlRecords = _xmlDb.queryRecords(query);
    return xmlRecords.map((xml) => _parseXmlToJson(xml)).toList();
  }
  
  // Private helper method to convert XML to JSON
  Map<String, dynamic> _parseXmlToJson(String xml) {
    // Simple XML parsing (in real code, use xml package)
    final result = <String, dynamic>{};
    
    // Extract id
    final idMatch = RegExp(r'<id>(.*?)</id>').firstMatch(xml);
    if (idMatch != null) result['id'] = idMatch.group(1);
    
    // Extract name
    final nameMatch = RegExp(r'<name>(.*?)</name>').firstMatch(xml);
    if (nameMatch != null) result['name'] = nameMatch.group(1);
    
    // Extract price
    final priceMatch = RegExp(r'<price>(.*?)</price>').firstMatch(xml);
    if (priceMatch != null) {
      result['price'] = double.tryParse(priceMatch.group(1) ?? '0') ?? 0;
    }
    
    // Extract stock
    final stockMatch = RegExp(r'<stock>(.*?)</stock>').firstMatch(xml);
    if (stockMatch != null) {
      result['stock'] = int.tryParse(stockMatch.group(1) ?? '0') ?? 0;
    }
    
    return result;
  }
}

// Modern REST API implementation (also implements DataProvider)
class RestApiProvider implements DataProvider {
  @override
  Map<String, dynamic> getData(String id) {
    // In real code, make HTTP request
    return {
      'id': id,
      'name': 'Product $id',
      'price': 149.99,
      'stock': 100,
    };
  }
  
  @override
  List<Map<String, dynamic>> searchData(String query) {
    return [
      {'id': '1', 'name': 'Modern Product 1'},
      {'id': '2', 'name': 'Modern Product 2'},
    ];
  }
}

// Your application code works with DataProvider interface
class ProductService {
  final DataProvider _dataProvider;
  
  ProductService(this._dataProvider);
  
  void displayProduct(String id) {
    final product = _dataProvider.getData(id);
    print('\nProduct Details:');
    print('  ID: ${product['id']}');
    print('  Name: ${product['name']}');
    print('  Price: $${product['price']}');
    print('  Stock: ${product['stock']} units');
  }
  
  void searchProducts(String query) {
    final results = _dataProvider.searchData(query);
    print('\nSearch Results for "$query":');
    for (final product in results) {
      print('  - ${product['id']}: ${product['name']}');
    }
  }
}

void main() {
  print('=== Using Legacy XML System (Adapted) ===');
  final legacyService = ProductService(
    XmlToJsonAdapter(LegacyXmlDatabase()),
  );
  legacyService.displayProduct('12345');
  legacyService.searchProducts('product');
  
  print('=== Using Modern REST API ===');
  final modernService = ProductService(
    RestApiProvider(),
  );
  modernService.displayProduct('67890');
  modernService.searchProducts('product');
}'''),

        // Example 3: Advanced - Multiple Interface Adaptation
        StrCodeBlock(r'''import 'dart:io';
import 'dart:async';

// Example 3: Advanced - Two-Way Adapter Pattern
// Use case: Adapting between different logging frameworks

// Your application's logging interface
abstract class AppLogger {
  void debug(String message);
  void info(String message);
  void warning(String message, [Exception? exception]);
  void error(String message, Exception exception, StackTrace stackTrace);
  void setLevel(LogLevel level);
}

enum LogLevel { debug, info, warning, error }

// Third-party logging framework 1 (different method names and signatures)
class Log4DartLogger {
  String _levelFilter = 'INFO';
  
  void d(String tag, String msg) {
    if (_shouldLog('DEBUG')) print('[DEBUG][$tag] $msg');
  }
  
  void i(String tag, String msg) {
    if (_shouldLog('INFO')) print('[INFO][$tag] $msg');
  }
  
  void w(String tag, String msg, [Object? throwable]) {
    if (_shouldLog('WARN')) {
      print('[WARN][$tag] $msg');
      if (throwable != null) print('  Caused by: $throwable');
    }
  }
  
  void e(String tag, String msg, Object throwable, [Object? trace]) {
    if (_shouldLog('ERROR')) {
      print('[ERROR][$tag] $msg');
      print('  Exception: $throwable');
      if (trace != null) print('  Trace: $trace');
    }
  }
  
  void setFilter(String level) {
    _levelFilter = level;
  }
  
  bool _shouldLog(String level) {
    const levels = ['DEBUG', 'INFO', 'WARN', 'ERROR'];
    return levels.indexOf(level) >= levels.indexOf(_levelFilter);
  }
}

// Adapter for Log4Dart
class Log4DartAdapter implements AppLogger {
  final Log4DartLogger _logger;
  final String _tag;
  
  Log4DartAdapter(this._logger, {String tag = 'APP'}) : _tag = tag;
  
  @override
  void debug(String message) => _logger.d(_tag, message);
  
  @override
  void info(String message) => _logger.i(_tag, message);
  
  @override
  void warning(String message, [Exception? exception]) {
    _logger.w(_tag, message, exception);
  }
  
  @override
  void error(String message, Exception exception, StackTrace stackTrace) {
    _logger.e(_tag, message, exception, stackTrace);
  }
  
  @override
  void setLevel(LogLevel level) {
    final levelMap = {
      LogLevel.debug: 'DEBUG',
      LogLevel.info: 'INFO',
      LogLevel.warning: 'WARN',
      LogLevel.error: 'ERROR',
    };
    _logger.setFilter(levelMap[level]!);
  }
}

// Third-party logging framework 2 (callback-based)
class SimpleLogger {
  void Function(String level, String message)? onLog;
  int minSeverity = 1; // 0=DEBUG, 1=INFO, 2=WARN, 3=ERROR
  
  void log(int severity, String message, [Map<String, dynamic>? context]) {
    if (severity >= minSeverity) {
      final levelNames = ['DEBUG', 'INFO', 'WARN', 'ERROR'];
      final level = levelNames[severity];
      final fullMessage = context != null 
          ? '$message | Context: $context' 
          : message;
      
      if (onLog != null) {
        onLog!(level, fullMessage);
      } else {
        print('[$level] $fullMessage');
      }
    }
  }
  
  void updateMinSeverity(int severity) {
    minSeverity = severity;
  }
}

// Adapter for SimpleLogger
class SimpleLoggerAdapter implements AppLogger {
  final SimpleLogger _logger;
  
  SimpleLoggerAdapter(this._logger);
  
  @override
  void debug(String message) {
    _logger.log(0, message);
  }
  
  @override
  void info(String message) {
    _logger.log(1, message);
  }
  
  @override
  void warning(String message, [Exception? exception]) {
    final context = exception != null ? {'exception': exception.toString()} : null;
    _logger.log(2, message, context);
  }
  
  @override
  void error(String message, Exception exception, StackTrace stackTrace) {
    _logger.log(3, message, {
      'exception': exception.toString(),
      'stackTrace': stackTrace.toString(),
    });
  }
  
  @override
  void setLevel(LogLevel level) {
    final levelMap = {
      LogLevel.debug: 0,
      LogLevel.info: 1,
      LogLevel.warning: 2,
      LogLevel.error: 3,
    };
    _logger.updateMinSeverity(levelMap[level]!);
  }
}

// Your application code
class UserService {
  final AppLogger _logger;
  
  UserService(this._logger);
  
  Future<void> createUser(String username) async {
    _logger.info('Creating user: $username');
    
    try {
      // Simulate work
      await Future.delayed(Duration(milliseconds: 100));
      
      if (username.isEmpty) {
        throw Exception('Username cannot be empty');
      }
      
      _logger.debug('User created successfully');
    } catch (e, stackTrace) {
      _logger.error('Failed to create user', e as Exception, stackTrace);
      rethrow;
    }
  }
}

void main() async {
  print('=== Using Log4Dart (Adapted) ===');
  final log4dart = Log4DartAdapter(Log4DartLogger(), tag: 'USER_SERVICE');
  log4dart.setLevel(.debug);
  
  final userService1 = UserService(log4dart);
  await userService1.createUser('alice');
  
  print('=== Using SimpleLogger (Adapted) ===');
  final simpleLogger = SimpleLoggerAdapter(SimpleLogger());
  simpleLogger.setLevel(.info);
  
  final userService2 = UserService(simpleLogger);
  await userService2.createUser('bob');
  
  print('=== Testing Error Handling ===');
  try {
    await userService1.createUser('');
  } catch (e) {
    print('Caught error (as expected)');
  }
}'''),

        // Example 4: Flutter - Platform Adapter
        StrCodeBlock(
          r'''// Example 4: Flutter - Platform-Specific Storage Adapter
// Use case: Unified storage interface across different platforms

// Your app's unified storage interface
abstract class StorageService {
  Future<void> saveString(String key, String value);
  Future<String?> getString(String key);
  Future<void> saveInt(String key, int value);
  Future<int?> getInt(String key);
  Future<void> remove(String key);
  Future<void> clear();
}

// Platform-specific implementation 1: SharedPreferences (mobile)
class SharedPreferencesWrapper {
  final Map<String, dynamic> _data = {};
  
  Future<bool> setString(String key, String value) async {
    _data[key] = value;
    return true;
  }
  
  String? getString(String key) => _data[key] as String?;
  
  Future<bool> setInt(String key, int value) async {
    _data[key] = value;
    return true;
  }
  
  int? getInt(String key) => _data[key] as int?;
  
  Future<bool> remove(String key) async {
    _data.remove(key);
    return true;
  }
  
  Future<bool> clear() async {
    _data.clear();
    return true;
  }
}

// Adapter for SharedPreferences
class SharedPreferencesAdapter implements StorageService {
  final SharedPreferencesWrapper _prefs;
  
  SharedPreferencesAdapter(this._prefs);
  
  @override
  Future<void> saveString(String key, String value) async {
    await _prefs.setString(key, value);
  }
  
  @override
  Future<String?> getString(String key) async {
    return _prefs.getString(key);
  }
  
  @override
  Future<void> saveInt(String key, int value) async {
    await _prefs.setInt(key, value);
  }
  
  @override
  Future<int?> getInt(String key) async {
    return _prefs.getInt(key);
  }
  
  @override
  Future<void> remove(String key) async {
    await _prefs.remove(key);
  }
  
  @override
  Future<void> clear() async {
    await _prefs.clear();
  }
}

// Platform-specific implementation 2: LocalStorage (web)
class LocalStorageWrapper {
  final Map<String, String> _storage = {};
  
  void setItem(String key, String value) {
    _storage[key] = value;
  }
  
  String? getItem(String key) => _storage[key];
  
  void removeItem(String key) {
    _storage.remove(key);
  }
  
  void clear() {
    _storage.clear();
  }
}

// Adapter for LocalStorage (handles type conversion)
class LocalStorageAdapter implements StorageService {
  final LocalStorageWrapper _localStorage;
  
  LocalStorageAdapter(this._localStorage);
  
  @override
  Future<void> saveString(String key, String value) async {
    _localStorage.setItem(key, value);
  }
  
  @override
  Future<String?> getString(String key) async {
    return _localStorage.getItem(key);
  }
  
  @override
  Future<void> saveInt(String key, int value) async {
    // LocalStorage only stores strings, so convert
    _localStorage.setItem(key, value.toString());
  }
  
  @override
  Future<int?> getInt(String key) async {
    final value = _localStorage.getItem(key);
    return value != null ? int.tryParse(value) : null;
  }
  
  @override
  Future<void> remove(String key) async {
    _localStorage.removeItem(key);
  }
  
  @override
  Future<void> clear() async {
    _localStorage.clear();
  }
}

// Your Flutter app code (platform-agnostic)
class SettingsService {
  final StorageService _storage;
  
  SettingsService(this._storage);
  
  Future<void> saveUserPreferences({
    required String username,
    required int theme,
  }) async {
    await _storage.saveString('username', username);
    await _storage.saveInt('theme', theme);
    print('Saved preferences: $username, theme $theme');
  }
  
  Future<Map<String, dynamic>> loadUserPreferences() async {
    final username = await _storage.getString('username') ?? 'Guest';
    final theme = await _storage.getInt('theme') ?? 0;
    
    print('Loaded preferences: $username, theme $theme');
    return {'username': username, 'theme': theme};
  }
}

void main() async {
  print('=== Mobile Platform (SharedPreferences) ===');
  final mobileStorage = SharedPreferencesAdapter(
    SharedPreferencesWrapper(),
  );
  final mobileSettings = SettingsService(mobileStorage);
  
  await mobileSettings.saveUserPreferences(
    username: 'alice',
    theme: 1,
  );
  await mobileSettings.loadUserPreferences();
  
  print('=== Web Platform (LocalStorage) ===');
  final webStorage = LocalStorageAdapter(
    LocalStorageWrapper(),
  );
  final webSettings = SettingsService(webStorage);
  
  await webSettings.saveUserPreferences(
    username: 'bob',
    theme: 2,
  );
  await webSettings.loadUserPreferences();
  
  print('\n✓ Same SettingsService code works on both platforms!');
}''',
        ),
      ],
      // TODO: Add examples
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Allows incompatible interfaces to work together without modifying existing code",
        "Follows Single Responsibility Principle - separates interface conversion from business logic",
        "Follows Open/Closed Principle - can introduce new adapters without changing existing code",
        "Makes third-party libraries work with your interfaces",
        "Enables gradual migration from legacy systems",
        "Increases code reusability - existing classes can work in new contexts",
        "Provides flexibility to switch implementations at runtime",
      ],
      ar: [
        "يسمح للواجهات غير المتوافقة بالعمل معاً دون تعديل الكود الموجود",
        "يتبع مبدأ المسؤولية الواحدة - يفصل تحويل الواجهة عن منطق العمل",
        "يتبع مبدأ المفتوح/المغلق - يمكن تقديم مُحوّلات جديدة دون تغيير الكود الموجود",
        "يجعل مكتبات الطرف الثالث تعمل مع واجهاتك",
        "يُمكّن من الانتقال التدريجي من الأنظمة القديمة",
        "يزيد من إعادة استخدام الكود - الفئات الموجودة يمكن أن تعمل في سياقات جديدة",
        "يوفر مرونة لتبديل التطبيقات في وقت التشغيل",
      ],
    ),
    cons: LocSL(
      en: [
        "Increases overall code complexity by introducing additional classes",
        "Can be overkill if you control both interfaces - direct modification might be simpler",
        "May add slight performance overhead due to extra method calls",
        "Multiple layers of adapters can make code harder to understand and debug",
        "Need to maintain adapters when wrapped interfaces change",
        "Adapter code can become complex when bridging very different interfaces",
      ],
      ar: [
        "يزيد من التعقيد الإجمالي للكود بإدخال فئات إضافية",
        "قد يكون مبالغاً فيه إذا كنت تتحكم في كلا الواجهتين - التعديل المباشر قد يكون أبسط",
        "قد يضيف عبئاً طفيفاً على الأداء بسبب استدعاءات الطرق الإضافية",
        "طبقات متعددة من المُحوّلات قد تجعل الكود أصعب في الفهم والتنقيح",
        "تحتاج للحفاظ على المُحوّلات عندما تتغير الواجهات الملفوفة",
        "كود المُحوّل قد يصبح معقداً عند الربط بين واجهات مختلفة جداً",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Adapter when:"),
        ULContent(
          value: [
            "You want to use an existing class with an incompatible interface",
            "Integrating third-party libraries or APIs that don't match your interfaces",
            "Working with legacy code that can't be modified",
            "Need to convert between different data formats or protocols",
            "Creating a reusable class that cooperates with unrelated or unforeseen classes",
            "Making multiple classes work together through a common interface",
            "Platform-specific implementations need a unified interface",
          ],
        ),
        NoteContent(
          "Adapter is a retrofit pattern - use it when dealing with existing code. If designing from scratch, you probably don't need Adapter. Consider Facade for simplifying, not adapting.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent("استخدم المُحوّل عندما:"),
        ULContent(
          value: [
            "تريد استخدام فئة موجودة بواجهة غير متوافقة",
            "دمج مكتبات أو APIs طرف ثالث لا تطابق واجهاتك",
            "العمل مع كود قديم لا يمكن تعديله",
            "تحتاج للتحويل بين تنسيقات أو بروتوكولات بيانات مختلفة",
            "إنشاء فئة قابلة لإعادة الاستخدام تتعاون مع فئات غير مرتبطة أو غير متوقعة",
            "جعل فئات متعددة تعمل معاً من خلال واجهة مشتركة",
            "التطبيقات الخاصة بالمنصة تحتاج لواجهة موحدة",
          ],
        ),
        NoteContent(
          "المُحوّل نمط تحديث بأثر رجعي (Retrofit Pattern) - استخدمه عند التعامل مع كود موجود. إذا كنت تصمم من الصفر، ربما لا تحتاج للمُحوّل. فكر في الواجهة (Facade) للتبسيط، وليس التحويل.",
          type: .tip,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Confusing Adapter with Facade - Adapter changes interface to match expected one, Facade simplifies a complex subsystem",
        "Creating deep adapter chains that make debugging difficult",
        "Over-adapting when direct modification of the source would be simpler and acceptable",
        "Not handling all interface methods properly - incomplete adaptation",
        "Making the adapter do too much - it should only adapt, not add new functionality",
        "Not considering two-way adaptation when needed",
        "Forgetting to handle error cases during conversion",
        "Creating adapter when you actually need Decorator (adding behavior vs changing interface)",
      ],
      ar: [
        "الخلط بين المُحوّل والواجهة (Facade) - المُحوّل يغير الواجهة لتطابق المتوقعة، الواجهة تُبسّط نظاماً فرعياً معقداً",
        "إنشاء سلاسل مُحوّل عميقة تجعل التنقيح صعباً",
        "الإفراط في التحويل عندما يكون التعديل المباشر للمصدر أبسط ومقبولاً",
        "عدم التعامل مع جميع طرق الواجهة بشكل صحيح - تحويل غير كامل",
        "جعل المُحوّل يقوم بالكثير - يجب أن يُحوّل فقط، وليس إضافة وظائف جديدة",
        "عدم النظر في التحويل ثنائي الاتجاه عند الحاجة",
        "نسيان التعامل مع حالات الخطأ أثناء التحويل",
        "إنشاء مُحوّل عندما تحتاج فعلياً لمُزخرف (Decorator) (إضافة سلوك مقابل تغيير الواجهة)",
      ],
    ),
    relatedPatterns: [PK.bridge, PK.decorator, PK.proxy, PK.facade],
    oftenConfusedWith: [PK.facade, PK.decorator, PK.proxy],
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
          "The Bridge pattern decouples an abstraction from its implementation so that the two can vary independently. Instead of creating a multiplicative class hierarchy for every combination of features, you separate concerns into two independent hierarchies connected by a bridge.",
        ),
        AnalogyContent(
          "Think of a TV remote control. The remote (abstraction) works with any TV brand (implementation) through a standard interface. You can change the remote design without changing the TV, and you can upgrade the TV without changing the remote. They're connected by a bridge (infrared or Bluetooth protocol), allowing both to evolve independently.",
        ),
        StrContent(
          "This pattern is about preferring composition over inheritance. For example, if you have shapes (Circle, Square) and rendering methods (Vector, Raster), instead of creating VectorCircle, RasterCircle, VectorSquare, RasterSquare (4 classes), you create Shape with a Renderer reference (2+2 classes that can combine freely).",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Abstraction: High-level control layer defining the interface for clients",
            "Refined Abstraction: Extends the abstraction with variants of control logic",
            "Implementation: Platform or low-level operations interface",
            "Concrete Implementation: Specific platform implementations of the interface",
          ],
        ),
        DiagramContent(
          "Pattern Structure:\nAbstraction ←→ Implementation\n     ↓              ↓\nRefined       Concrete\nAbstraction   Implementation\n\n(Bridge connects the two hierarchies)",
        ),
        StrContent(
          "The key insight is recognizing when you have two orthogonal dimensions of variation. Without Bridge, you get N×M classes. With Bridge, you get N+M classes that can be freely combined.",
        ),
        NoteContent(
          "Bridge is designed upfront for systems you know will have multiple implementations. Adapter is applied to existing code to make incompatible interfaces work together. Both use composition, but Bridge is proactive, Adapter is reactive.",
          type: .important,
        ),
        ComparisonContent({
          'Bridge': 'Designed upfront, separates orthogonal hierarchies',
          'Adapter': 'Applied to existing code, makes interfaces compatible',
          'Strategy': 'Encapsulates algorithms, single hierarchy',
          'State': 'Encapsulates state-dependent behavior',
        }, title: 'Bridge vs Similar Patterns'),
        StrContent(
          "Common use cases in Flutter/Dart: cross-platform UI (abstraction) with platform-specific rendering (implementation), theme system with multiple render engines, database abstraction with multiple drivers, drawing API with multiple graphics backends, and notification systems with multiple channels.",
        ),
      ],
      ar: [
        StrContent(
          "نمط الجسر يفصل التجريد عن تنفيذه بحيث يمكن للاثنين التغير بشكل مستقل. بدلاً من إنشاء تسلسل هرمي ضربي للفئات لكل مجموعة من الميزات، تفصل الاهتمامات إلى تسلسلين هرميين مستقلين متصلين بجسر.",
        ),
        AnalogyContent(
          "فكر في جهاز التحكم عن بعد للتلفاز. جهاز التحكم (التجريد) يعمل مع أي ماركة تلفاز (التنفيذ) من خلال واجهة موحدة. يمكنك تغيير تصميم جهاز التحكم دون تغيير التلفاز، ويمكنك ترقية التلفاز دون تغيير جهاز التحكم. إنهما متصلان بجسر (بروتوكول الأشعة تحت الحمراء أو البلوتوث)، مما يسمح لكليهما بالتطور بشكل مستقل.",
        ),
        StrContent(
          "هذا النمط يفضل التركيب على الوراثة. على سبيل المثال، إذا كان لديك أشكال (دائرة، مربع) وطرق عرض (متجه، نقطي)، بدلاً من إنشاء VectorCircle وRasterCircle وVectorSquare وRasterSquare (4 فئات)، تنشئ Shape مع مرجع Renderer (2+2 فئات يمكن دمجها بحرية).",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "التجريد (Abstraction): طبقة التحكم عالية المستوى تُحدد الواجهة للعملاء",
            "التجريد المُحسّن (Refined Abstraction): يوسع التجريد بمتغيرات من منطق التحكم",
            "التنفيذ (Implementation): واجهة المنصة أو العمليات منخفضة المستوى",
            "التنفيذ المحدد (Concrete Implementation): تنفيذات منصة محددة للواجهة",
          ],
        ),
        DiagramContent(
          "بنية النمط:\nالتجريد ←→ التنفيذ\n     ↓              ↓\nالتجريد       التنفيذ\nالمُحسّن       المحدد\n\n(الجسر يربط التسلسلين الهرميين)",
        ),
        StrContent(
          "الرؤية الأساسية هي التعرف على متى يكون لديك بُعدان متعامدان من التنوع. بدون الجسر، تحصل على N×M فئة. مع الجسر، تحصل على N+M فئة يمكن دمجها بحرية.",
        ),
        NoteContent(
          "الجسر مُصمم مسبقاً للأنظمة التي تعرف أنها ستكون لها تطبيقات متعددة. المُحوّل يُطبق على كود موجود لجعل الواجهات غير المتوافقة تعمل معاً. كلاهما يستخدم التركيب، لكن الجسر استباقي، والمُحوّل تفاعلي.",
          type: .important,
        ),
        ComparisonContent({
          'الجسر (Bridge)': 'مُصمم مسبقاً، يفصل تسلسلات هرمية متعامدة',
          'المُحوّل (Adapter)': 'يُطبق على كود موجود، يجعل الواجهات متوافقة',
          'الاستراتيجية (Strategy)': 'يُغلف الخوارزميات، تسلسل هرمي واحد',
          'الحالة (State)': 'يُغلف السلوك المعتمد على الحالة',
        }, title: 'الجسر مقابل الأنماط المشابهة'),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: واجهة المستخدم عبر المنصات (التجريد) مع عرض خاص بالمنصة (التنفيذ)، نظام الثيم مع محركات عرض متعددة، تجريد قاعدة البيانات مع برامج تشغيل متعددة، API الرسم مع خلفيات رسومات متعددة، وأنظمة الإشعارات مع قنوات متعددة.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Shape Rendering
        StrCodeBlock(r'''import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';

// Example 1: Basic - Shape Rendering with Multiple Backends
// Use case: Drawing shapes with different rendering technologies

// Implementation hierarchy: How to render
abstract class Renderer {
  void renderCircle(double x, double y, double radius);
  void renderRectangle(double x, double y, double width, double height);
  void renderTriangle(double x1, double y1, double x2, double y2, double x3, double y3);
}

class VectorRenderer implements Renderer {
  @override
  void renderCircle(double x, double y, double radius) {
    print('Vector: Drawing circle at ($x, $y) with radius $radius');
    print('  <circle cx="$x" cy="$y" r="$radius" />');
  }
  
  @override
  void renderRectangle(double x, double y, double width, double height) {
    print('Vector: Drawing rectangle at ($x, $y) size ${width}x$height');
    print('  <rect x="$x" y="$y" width="$width" height="$height" />');
  }
  
  @override
  void renderTriangle(double x1, double y1, double x2, double y2, double x3, double y3) {
    print('Vector: Drawing triangle');
    print('  <polygon points="$x1,$y1 $x2,$y2 $x3,$y3" />');
  }
}

class RasterRenderer implements Renderer {
  @override
  void renderCircle(double x, double y, double radius) {
    print('Raster: Plotting circle pixels at ($x, $y) radius $radius');
    // Simulate pixel-by-pixel rendering
    print('  Filling pixels using Bresenham's circle algorithm');
  }
  
  @override
  void renderRectangle(double x, double y, double width, double height) {
    print('Raster: Plotting rectangle pixels at ($x, $y) size ${width}x$height');
    print('  Filling pixels row by row');
  }
  
  @override
  void renderTriangle(double x1, double y1, double x2, double y2, double x3, double y3) {
    print('Raster: Plotting triangle pixels');
    print('  Filling pixels using scanline algorithm');
  }
}

class CanvasRenderer implements Renderer {
  @override
  void renderCircle(double x, double y, double radius) {
    print('Canvas: ctx.arc($x, $y, $radius, 0, 2*PI)');
    print('Canvas: ctx.fill()');
  }
  
  @override
  void renderRectangle(double x, double y, double width, double height) {
    print('Canvas: ctx.fillRect($x, $y, $width, $height)');
  }
  
  @override
  void renderTriangle(double x1, double y1, double x2, double y2, double x3, double y3) {
    print('Canvas: ctx.beginPath()');
    print('Canvas: ctx.moveTo($x1, $y1)');
    print('Canvas: ctx.lineTo($x2, $y2)');
    print('Canvas: ctx.lineTo($x3, $y3)');
    print('Canvas: ctx.fill()');
  }
}

// Abstraction hierarchy: What to render
abstract class Shape {
  final Renderer renderer; // Bridge to implementation
  
  Shape(this.renderer);
  
  void draw();
  void resize(double factor);
}

class Circle extends Shape {
  double x, y, radius;
  
  Circle(super.renderer, this.x, this.y, this.radius);
  
  @override
  void draw() {
    renderer.renderCircle(x, y, radius);
  }
  
  @override
  void resize(double factor) {
    radius *= factor;
    print('Circle resized to radius $radius');
  }
}

class Rectangle extends Shape {
  double x, y, width, height;
  
  Rectangle(super.renderer, this.x, this.y, this.width, this.height);
  
  @override
  void draw() {
    renderer.renderRectangle(x, y, width, height);
  }
  
  @override
  void resize(double factor) {
    width *= factor;
    height *= factor;
    print('Rectangle resized to ${width}x$height');
  }
}

class Triangle extends Shape {
  double x1, y1, x2, y2, x3, y3;
  
  Triangle(super.renderer, this.x1, this.y1, this.x2, this.y2, this.x3, this.y3);
  
  @override
  void draw() {
    renderer.renderTriangle(x1, y1, x2, y2, x3, y3);
  }
  
  @override
  void resize(double factor) {
    x1 *= factor; y1 *= factor;
    x2 *= factor; y2 *= factor;
    x3 *= factor; y3 *= factor;
    print('Triangle resized by factor $factor');
  }
}

void main() {
  // Without Bridge: Would need VectorCircle, RasterCircle, CanvasCircle, etc. (3×3=9 classes)
  // With Bridge: Just 3 shapes + 3 renderers = 6 classes, freely combinable!
  
  print('=== Vector Rendering ===');
  final vectorRenderer = VectorRenderer();
  final circle1 = Circle(vectorRenderer, 10, 10, 5);
  final rect1 = Rectangle(vectorRenderer, 20, 20, 30, 40);
  
  circle1.draw();
  print('');
  rect1.draw();
  
  print('=== Raster Rendering ===');
  final rasterRenderer = RasterRenderer();
  final circle2 = Circle(rasterRenderer, 10, 10, 5);
  final triangle2 = Triangle(rasterRenderer, 0, 0, 10, 0, 5, 10);
  
  circle2.draw();
  print('');
  triangle2.draw();
  
  print('=== Canvas Rendering ===');
  final canvasRenderer = CanvasRenderer();
  final rect3 = Rectangle(canvasRenderer, 50, 50, 100, 80);
  
  rect3.draw();
  rect3.resize(1.5);
  rect3.draw();
  
  print('\n✓ Shapes and renderers vary independently!');
}'''),

        // Example 2: Intermediate - Cross-Platform UI
        StrCodeBlock(
          r'''// Example 2: Intermediate - Cross-Platform UI Components
// Use case: Building UI that works across different platforms

// Implementation: Platform-specific rendering
abstract class UIPlatform {
  void renderButton(String label, bool enabled);
  void renderTextField(String placeholder, String value);
  void renderCheckbox(String label, bool checked);
}

class AndroidUI implements UIPlatform {
  @override
  void renderButton(String label, bool enabled) {
    print('Android: <Button');
    print('  android:text="$label"');
    print('  android:enabled="$enabled"');
    print('  style="@style/MaterialButton" />');
  }
  
  @override
  void renderTextField(String placeholder, String value) {
    print('Android: <EditText');
    print('  android:hint="$placeholder"');
    print('  android:text="$value"');
    print('  style="@style/MaterialTextField" />');
  }
  
  @override
  void renderCheckbox(String label, bool checked) {
    print('Android: <CheckBox');
    print('  android:text="$label"');
    print('  android:checked="$checked"');
    print('  style="@style/MaterialCheckBox" />');
  }
}

class iOSUI implements UIPlatform {
  @override
  void renderButton(String label, bool enabled) {
    print('iOS: UIButton(');
    print('  title: "$label",');
    print('  isEnabled: $enabled,');
    print('  style: .system)');
  }
  
  @override
  void renderTextField(String placeholder, String value) {
    print('iOS: UITextField(');
    print('  placeholder: "$placeholder",');
    print('  text: "$value",');
    print('  borderStyle: .roundedRect)');
  }
  
  @override
  void renderCheckbox(String label, bool checked) {
    print('iOS: UISwitch( // iOS uses switches for checkboxes');
    print('  label: "$label",');
    print('  isOn: $checked)');
  }
}

class WebUI implements UIPlatform {
  @override
  void renderButton(String label, bool enabled) {
    final disabled = enabled ? '' : 'disabled';
    print('Web: <button $disabled class="btn">$label</button>');
  }
  
  @override
  void renderTextField(String placeholder, String value) {
    print('Web: <input type="text" placeholder="$placeholder" value="$value" />');
  }
  
  @override
  void renderCheckbox(String label, bool checked) {
    final checkedAttr = checked ? 'checked' : '';
    print('Web: <input type="checkbox" $checkedAttr /> <label>$label</label>');
  }
}

// Abstraction: High-level UI components
abstract class UIComponent {
  final UIPlatform platform; // Bridge
  
  UIComponent(this.platform);
  
  void render();
}

class Button extends UIComponent {
  final String label;
  bool enabled;
  
  Button(super.platform, this.label, {this.enabled = true});
  
  @override
  void render() {
    platform.renderButton(label, enabled);
  }
  
  void setEnabled(bool value) {
    enabled = value;
  }
}

class TextField extends UIComponent {
  final String placeholder;
  String value;
  
  TextField(super.platform, this.placeholder, {this.value = ''});
  
  @override
  void render() {
    platform.renderTextField(placeholder, value);
  }
  
  void setValue(String newValue) {
    value = newValue;
  }
}

class Checkbox extends UIComponent {
  final String label;
  bool checked;
  
  Checkbox(super.platform, this.label, {this.checked = false});
  
  @override
  void render() {
    platform.renderCheckbox(label, checked);
  }
  
  void toggle() {
    checked = !checked;
  }
}

// Refined abstraction: Complex component built from primitives
class LoginForm extends UIComponent {
  late final TextField usernameField;
  late final TextField passwordField;
  late final Checkbox rememberMe;
  late final Button loginButton;
  
  LoginForm(super.platform) {
    usernameField = TextField(platform, 'Username');
    passwordField = TextField(platform, 'Password');
    rememberMe = Checkbox(platform, 'Remember me');
    loginButton = Button(platform, 'Login');
  }
  
  @override
  void render() {
    print('\n--- Login Form ---');
    usernameField.render();
    passwordField.render();
    rememberMe.render();
    loginButton.render();
    print('------------------');
  }
}

void main() {
  print('=== Android Platform ===');
  final androidPlatform = AndroidUI();
  final androidForm = LoginForm(androidPlatform);
  androidForm.render();
  
  print('=== iOS Platform ===');
  final iosPlatform = iOSUI();
  final iosForm = LoginForm(iosPlatform);
  iosForm.render();
  
  print('=== Web Platform ===');
  final webPlatform = WebUI();
  final webForm = LoginForm(webPlatform);
  webForm.render();
  
  print('✓ Same form components, different platform rendering!');
}''',
        ),

        // Example 3: Advanced - Database Abstraction
        StrCodeBlock(r'''import 'package:flutter/material.dart';
import 'dart:async';

// Example 3: Advanced - Database Access Layer with Multiple Drivers
// Use case: Application that supports multiple database backends

// Implementation: Database-specific operations
abstract class DatabaseDriver {
  Future<void> connect(String connectionString);
  Future<void> disconnect();
  Future<List<Map<String, dynamic>>> executeQuery(String query, List<dynamic> params);
  Future<int> executeUpdate(String query, List<dynamic> params);
  Future<void> beginTransaction();
  Future<void> commit();
  Future<void> rollback();
  String escapeIdentifier(String identifier);
  String getPlaceholder(int index);
}

class PostgreSQLDriver implements DatabaseDriver {
  bool _connected = false;
  bool _inTransaction = false;
  
  @override
  Future<void> connect(String connectionString) async {
    print('PostgreSQL: Connecting to $connectionString');
    await Future.delayed(Duration(milliseconds: 100));
    _connected = true;
    print('PostgreSQL: Connected');
  }
  
  @override
  Future<void> disconnect() async {
    print('PostgreSQL: Disconnecting');
    _connected = false;
  }
  
  @override
  Future<List<Map<String, dynamic>>> executeQuery(String query, List<dynamic> params) async {
    print('PostgreSQL: $query with params $params');
    await Future.delayed(Duration(milliseconds: 50));
    return [
      {'id': 1, 'name': 'Alice'},
      {'id': 2, 'name': 'Bob'},
    ];
  }
  
  @override
  Future<int> executeUpdate(String query, List<dynamic> params) async {
    print('PostgreSQL: $query with params $params');
    await Future.delayed(Duration(milliseconds: 50));
    return 1; // rows affected
  }
  
  @override
  Future<void> beginTransaction() async {
    print('PostgreSQL: BEGIN');
    _inTransaction = true;
  }
  
  @override
  Future<void> commit() async {
    print('PostgreSQL: COMMIT');
    _inTransaction = false;
  }
  
  @override
  Future<void> rollback() async {
    print('PostgreSQL: ROLLBACK');
    _inTransaction = false;
  }
  
  @override
  String escapeIdentifier(String identifier) => '"$identifier"';
  
  @override
  String getPlaceholder(int index) => '\$${index + 1}'; // $1, $2, etc.
}

class MySQLDriver implements DatabaseDriver {
  bool _connected = false;
  bool _inTransaction = false;
  
  @override
  Future<void> connect(String connectionString) async {
    print('MySQL: Connecting to $connectionString');
    await Future.delayed(Duration(milliseconds: 100));
    _connected = true;
    print('MySQL: Connected');
  }
  
  @override
  Future<void> disconnect() async {
    print('MySQL: Disconnecting');
    _connected = false;
  }
  
  @override
  Future<List<Map<String, dynamic>>> executeQuery(String query, List<dynamic> params) async {
    print('MySQL: $query with params $params');
    await Future.delayed(Duration(milliseconds: 50));
    return [
      {'id': 1, 'name': 'Alice'},
      {'id': 2, 'name': 'Bob'},
    ];
  }
  
  @override
  Future<int> executeUpdate(String query, List<dynamic> params) async {
    print('MySQL: $query with params $params');
    await Future.delayed(Duration(milliseconds: 50));
    return 1;
  }
  
  @override
  Future<void> beginTransaction() async {
    print('MySQL: START TRANSACTION');
    _inTransaction = true;
  }
  
  @override
  Future<void> commit() async {
    print('MySQL: COMMIT');
    _inTransaction = false;
  }
  
  @override
  Future<void> rollback() async {
    print('MySQL: ROLLBACK');
    _inTransaction = false;
  }
  
  @override
  String escapeIdentifier(String identifier) => '`$identifier`';
  
  @override
  String getPlaceholder(int index) => '?'; // MySQL uses ? for all params
}

class SQLiteDriver implements DatabaseDriver {
  bool _connected = false;
  
  @override
  Future<void> connect(String connectionString) async {
    print('SQLite: Opening database at $connectionString');
    await Future.delayed(Duration(milliseconds: 50));
    _connected = true;
    print('SQLite: Database opened');
  }
  
  @override
  Future<void> disconnect() async {
    print('SQLite: Closing database');
    _connected = false;
  }
  
  @override
  Future<List<Map<String, dynamic>>> executeQuery(String query, List<dynamic> params) async {
    print('SQLite: $query with params $params');
    await Future.delayed(Duration(milliseconds: 30));
    return [
      {'id': 1, 'name': 'Alice'},
      {'id': 2, 'name': 'Bob'},
    ];
  }
  
  @override
  Future<int> executeUpdate(String query, List<dynamic> params) async {
    print('SQLite: $query with params $params');
    await Future.delayed(Duration(milliseconds: 30));
    return 1;
  }
  
  @override
  Future<void> beginTransaction() async {
    print('SQLite: BEGIN TRANSACTION');
  }
  
  @override
  Future<void> commit() async {
    print('SQLite: COMMIT');
  }
  
  @override
  Future<void> rollback() async {
    print('SQLite: ROLLBACK');
  }
  
  @override
  String escapeIdentifier(String identifier) => '"$identifier"';
  
  @override
  String getPlaceholder(int index) => '?';
}

// Abstraction: High-level database operations
abstract class Repository {
  final DatabaseDriver driver; // Bridge
  
  Repository(this.driver);
  
  Future<void> connect(String connectionString) => driver.connect(connectionString);
  Future<void> disconnect() => driver.disconnect();
}

class UserRepository extends Repository {
  UserRepository(super.driver);
  
  Future<List<Map<String, dynamic>>> findAll() async {
    final table = driver.escapeIdentifier('users');
    final query = 'SELECT * FROM $table';
    return await driver.executeQuery(query, []);
  }
  
  Future<Map<String, dynamic>?> findById(int id) async {
    final table = driver.escapeIdentifier('users');
    final ph = driver.getPlaceholder(0);
    final query = 'SELECT * FROM $table WHERE id = $ph';
    
    final results = await driver.executeQuery(query, [id]);
    return results.isNotEmpty ? results.first : null;
  }
  
  Future<void> insert(String name, String email) async {
    final table = driver.escapeIdentifier('users');
    final col1 = driver.escapeIdentifier('name');
    final col2 = driver.escapeIdentifier('email');
    final ph1 = driver.getPlaceholder(0);
    final ph2 = driver.getPlaceholder(1);
    
    final query = 'INSERT INTO $table ($col1, $col2) VALUES ($ph1, $ph2)';
    await driver.executeUpdate(query, [name, email]);
  }
  
  Future<void> transferUser(int userId, String newDepartment) async {
    // Transaction example - works across all drivers
    await driver.beginTransaction();
    
    try {
      final table = driver.escapeIdentifier('users');
      final deptCol = driver.escapeIdentifier('department');
      final ph1 = driver.getPlaceholder(0);
      final ph2 = driver.getPlaceholder(1);
      
      final query = 'UPDATE $table SET $deptCol = $ph1 WHERE id = $ph2';
      await driver.executeUpdate(query, [newDepartment, userId]);
      
      await driver.commit();
      print('✓ User transferred successfully');
    } catch (e) {
      await driver.rollback();
      print('✗ Transfer failed, rolled back');
      rethrow;
    }
  }
}

void main() async {
  print('=== PostgreSQL ===');
  final pgRepo = UserRepository(PostgreSQLDriver());
  await pgRepo.connect('postgresql://localhost/mydb');
  await pgRepo.findAll();
  await pgRepo.insert('Charlie', 'charlie@example.com');
  await pgRepo.disconnect();
  
  print('=== MySQL ===');
  final mysqlRepo = UserRepository(MySQLDriver());
  await mysqlRepo.connect('mysql://localhost/mydb');
  await mysqlRepo.findById(1);
  await mysqlRepo.disconnect();
  
  print('=== SQLite ===');
  final sqliteRepo = UserRepository(SQLiteDriver());
  await sqliteRepo.connect('./app.db');
  await sqliteRepo.transferUser(1, 'Engineering');
  await sqliteRepo.disconnect();
  
  print('\n✓ Same repository code works with all database drivers!');
}'''),

        // Example 4: Flutter - Theme System
        StrCodeBlock(
          r'''// Example 4: Flutter - Theme System with Multiple Renderers
// Use case: Applying themes with different rendering strategies

// Implementation: How to apply theme
abstract class ThemeRenderer {
  Color getPrimaryColor();
  Color getBackgroundColor();
  TextStyle getHeadlineStyle();
  TextStyle getBodyStyle();
  BoxDecoration getCardDecoration();
}

class MaterialThemeRenderer implements ThemeRenderer {
  final Brightness brightness;
  
  MaterialThemeRenderer(this.brightness);
  
  @override
  Color getPrimaryColor() => brightness == .light 
      ? Colors.blue 
      : Colors.blueAccent;
  
  @override
  Color getBackgroundColor() => brightness == .light 
      ? Colors.white 
      : Colors.grey[900]!;
  
  @override
  TextStyle getHeadlineStyle() => TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: brightness == .light ? Colors.black87 : Colors.white,
  );
  
  @override
  TextStyle getBodyStyle() => TextStyle(
    fontSize: 16,
    color: brightness == .light ? Colors.black87 : Colors.white70,
  );
  
  @override
  BoxDecoration getCardDecoration() => BoxDecoration(
    color: brightness == .light ? Colors.white : Colors.grey[800],
    borderRadius: BorderRadius.circular(8),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1),
        blurRadius: 4,
        offset: Offset(0, 2),
      ),
    ],
  );
}

class CupertinoThemeRenderer implements ThemeRenderer {
  final Brightness brightness;
  
  CupertinoThemeRenderer(this.brightness);
  
  @override
  Color getPrimaryColor() => CupertinoColors.systemBlue;
  
  @override
  Color getBackgroundColor() => brightness == .light 
      ? CupertinoColors.systemBackground 
      : CupertinoColors.darkBackgroundGray;
  
  @override
  TextStyle getHeadlineStyle() => TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: brightness == .light 
        ? CupertinoColors.label 
        : CupertinoColors.white,
  );
  
  @override
  TextStyle getBodyStyle() => TextStyle(
    fontSize: 17,
    color: brightness == .light 
        ? CupertinoColors.label 
        : CupertinoColors.white,
  );
  
  @override
  BoxDecoration getCardDecoration() => BoxDecoration(
    color: brightness == .light 
        ? CupertinoColors.systemBackground 
        : CupertinoColors.darkBackgroundGray,
    borderRadius: BorderRadius.circular(12),
  );
}

class CustomGlassThemeRenderer implements ThemeRenderer {
  @override
  Color getPrimaryColor() => Colors.purpleAccent;
  
  @override
  Color getBackgroundColor() => Colors.black.withOpacity(0.3);
  
  @override
  TextStyle getHeadlineStyle() => TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    shadows: [
      Shadow(
        color: Colors.purpleAccent.withOpacity(0.5),
        blurRadius: 10,
      ),
    ],
  );
  
  @override
  TextStyle getBodyStyle() => TextStyle(
    fontSize: 16,
    color: Colors.white70,
  );
  
  @override
  BoxDecoration getCardDecoration() => BoxDecoration(
    color: Colors.white.withOpacity(0.1),
    borderRadius: BorderRadius.circular(16),
    border: Border.all(
      color: Colors.white.withOpacity(0.2),
      width: 1,
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.purpleAccent.withOpacity(0.2),
        blurRadius: 20,
      ),
    ],
  );
}

// Abstraction: Themed components
abstract class ThemedWidget extends StatelessWidget {
  final ThemeRenderer renderer; // Bridge
  
  const ThemedWidget(this.renderer, {super.key});
}

class ThemedCard extends ThemedWidget {
  final String title;
  final String content;
  
  const ThemedCard(super.renderer, {
    required this.title,
    required this.content,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: renderer.getCardDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: renderer.getHeadlineStyle()),
          SizedBox(height: 8),
          Text(content, style: renderer.getBodyStyle()),
        ],
      ),
    );
  }
}

class ThemedScreen extends ThemedWidget {
  final List<ThemedCard> cards;
  
  const ThemedScreen(super.renderer, {
    required this.cards,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: renderer.getBackgroundColor(),
      appBar: AppBar(
        title: Text('Bridge Pattern Demo'),
        backgroundColor: renderer.getPrimaryColor(),
      ),
      body: ListView(
        children: cards,
      ),
    );
  }
}

class ThemeSwitcherDemo extends StatefulWidget {
  const ThemeSwitcherDemo({super.key});
  
  @override
  State<ThemeSwitcherDemo> createState() => _ThemeSwitcherDemoState();
}

class _ThemeSwitcherDemoState extends State<ThemeSwitcherDemo> {
  ThemeRenderer _renderer = MaterialThemeRenderer(.light);
  
  void _switchTheme(String theme) {
    setState(() {
      _renderer = switch (theme) {
        'material_light' => MaterialThemeRenderer(.light),
        'material_dark' => MaterialThemeRenderer(.dark),
        'cupertino_light' => CupertinoThemeRenderer(.light),
        'cupertino_dark' => CupertinoThemeRenderer(.dark),
        'glass' => CustomGlassThemeRenderer(),
        _ => MaterialThemeRenderer(.light),
      };
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final cards = [
      ThemedCard(
        _renderer,
        title: 'Welcome',
        content: 'This is a themed card using the Bridge pattern',
      ),
      ThemedCard(
        _renderer,
        title: 'Bridge Pattern',
        content: 'Themes (abstraction) are separate from renderers (implementation)',
      ),
    ];
    
    return Column(
      children: [
        // Theme selector
        Container(
          padding: EdgeInsets.all(8),
          child: Wrap(
            spacing: 8,
            children: [
              ElevatedButton(
                onPressed: () => _switchTheme('material_light'),
                child: Text('Material Light'),
              ),
              ElevatedButton(
                onPressed: () => _switchTheme('material_dark'),
                child: Text('Material Dark'),
              ),
              ElevatedButton(
                onPressed: () => _switchTheme('cupertino_light'),
                child: Text('Cupertino Light'),
              ),
              ElevatedButton(
                onPressed: () => _switchTheme('glass'),
                child: Text('Glass'),
              ),
            ],
          ),
        ),
        Expanded(
          child: ThemedScreen(_renderer, cards: cards),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ThemeSwitcherDemo(),
  ));
}''',
        ),
      ],
      ar: [
        // Arabic versions would go here
      ],
    ),
    pros: LocSL(
      en: [
        "Platform-independent code - abstraction doesn't depend on specific implementations",
        "Abstraction and implementation can vary independently - change one without affecting the other",
        "Prevents class explosion from combinatorial inheritance (N+M instead of N×M classes)",
        "Follows Open/Closed Principle - can add new implementations without changing abstractions",
        "Follows Single Responsibility Principle - separates high-level logic from platform details",
        "Runtime binding - can switch implementations at runtime",
        "Better maintainability - changes isolated to specific hierarchies",
      ],
      ar: [
        "كود مستقل عن المنصة - التجريد لا يعتمد على تطبيقات محددة",
        "التجريد والتنفيذ يمكن أن يتغيرا بشكل مستقل - غيّر أحدهما دون التأثير على الآخر",
        "يمنع انفجار الفئات من الوراثة التوافقية (N+M بدلاً من N×M فئة)",
        "يتبع مبدأ المفتوح/المغلق - يمكن إضافة تطبيقات جديدة دون تغيير التجريدات",
        "يتبع مبدأ المسؤولية الواحدة - يفصل المنطق عالي المستوى عن تفاصيل المنصة",
        "الربط في وقت التشغيل - يمكن تبديل التطبيقات في وقت التشغيل",
        "قابلية صيانة أفضل - التغييرات معزولة في تسلسلات هرمية محددة",
      ],
    ),
    cons: LocSL(
      en: [
        "Increases complexity for simple cases that don't need abstraction",
        "Requires many classes and interfaces upfront",
        "Not needed unless you truly have multiple independent dimensions of variation",
        "Can be over-engineered for cohesive classes that don't need separation",
        "Requires careful interface design between abstraction and implementation",
        "May be harder to understand initially compared to simple inheritance",
      ],
      ar: [
        "يزيد التعقيد للحالات البسيطة التي لا تحتاج للتجريد",
        "يتطلب العديد من الفئات والواجهات مسبقاً",
        "غير مطلوب ما لم يكن لديك أبعاد متعددة مستقلة حقاً من التنوع",
        "قد يكون مُفرط الهندسة للفئات المتماسكة التي لا تحتاج للفصل",
        "يتطلب تصميم واجهة دقيق بين التجريد والتنفيذ",
        "قد يكون أصعب في الفهم في البداية مقارنة بالوراثة البسيطة",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Bridge when:"),
        ULContent(
          value: [
            "You want to avoid permanent binding between abstraction and implementation",
            "Both abstraction and implementation should be extensible independently by subclassing",
            "You have multiple orthogonal dimensions of variation (would lead to class explosion)",
            "Changes in implementation should not affect clients using the abstraction",
            "You want to hide implementation details completely from clients",
            "You need to share an implementation among multiple objects (reference counting)",
            "Building cross-platform applications with platform-specific backends",
          ],
        ),
        NoteContent(
          "Bridge is about design - use it when designing systems from scratch with known variation dimensions. Adapter is about retrofitting - use it when adapting existing incompatible code.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent("استخدم الجسر عندما:"),
        ULContent(
          value: [
            "تريد تجنب الربط الدائم بين التجريد والتنفيذ",
            "كل من التجريد والتنفيذ يجب أن يكونا قابلين للتوسيع بشكل مستقل عبر الفئات الفرعية",
            "لديك أبعاد متعددة متعامدة من التنوع (ستؤدي لانفجار الفئات)",
            "التغييرات في التنفيذ لا يجب أن تؤثر على العملاء الذين يستخدمون التجريد",
            "تريد إخفاء تفاصيل التنفيذ تماماً عن العملاء",
            "تحتاج لمشاركة تطبيق بين عدة كائنات (عد المراجع)",
            "بناء تطبيقات عبر المنصات مع خلفيات خاصة بالمنصة",
          ],
        ),
        NoteContent(
          "الجسر يتعلق بالتصميم - استخدمه عند تصميم الأنظمة من الصفر مع أبعاد تنوع معروفة. المُحوّل يتعلق بالتحديث بأثر رجعي - استخدمه عند تكييف كود موجود غير متوافق.",
          type: .tip,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Applying Bridge to highly cohesive classes with no real independent dimensions",
        "Using when only one dimension varies - simple inheritance or Strategy suffices",
        "Confusing with Adapter - Bridge is designed upfront, Adapter retrofits existing code",
        "Over-complicating simple designs that don't need abstraction layers",
        "Not identifying the two dimensions clearly - leads to poor separation",
        "Creating too many abstraction levels - keep it simple with two hierarchies",
        "Making implementation details leak into abstraction interface",
      ],
      ar: [
        "تطبيق الجسر على فئات متماسكة جداً بدون أبعاد مستقلة حقيقية",
        "الاستخدام عندما يتنوع بُعد واحد فقط - الوراثة البسيطة أو الاستراتيجية تكفي",
        "الخلط مع المُحوّل - الجسر مُصمم مسبقاً، المُحوّل يُحدّث كوداً موجوداً",
        "التعقيد المفرط للتصاميم البسيطة التي لا تحتاج لطبقات تجريد",
        "عدم تحديد البُعدين بوضوح - يؤدي لفصل سيء",
        "إنشاء مستويات تجريد كثيرة جداً - أبقها بسيطة مع تسلسلين هرميين",
        "جعل تفاصيل التنفيذ تتسرب إلى واجهة التجريد",
      ],
    ),
    relatedPatterns: [PK.abstractFactory, PK.adapter, PK.strategy, PK.state],
    oftenConfusedWith: [PK.adapter, PK.strategy],
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
          "The Composite pattern lets you compose objects into tree structures to represent part-whole hierarchies. The key innovation is that it allows clients to treat individual objects and compositions of objects uniformly - the same operations work on both leaves and branches.",
        ),
        AnalogyContent(
          "Think of a military organizational structure. A soldier is a leaf node. A squad contains soldiers. A platoon contains squads. A company contains platoons. When a commander gives an order \"Move forward!\", it doesn't matter if they're commanding a single soldier or an entire company - the same command propagates down the hierarchy. Each level handles the command the same way.",
        ),
        StrContent(
          "This pattern is perfect for representing recursive tree-like structures where containers and contents should be treated the same way: file systems (files/folders), UI component trees (widgets/containers), organizational charts (employees/departments), or mathematical expressions (numbers/operations).",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Component: Common interface for both simple and complex objects, declares operations",
            "Leaf: Basic element that has no children, implements Component operations",
            "Composite: Element that may have children, implements Component and manages children",
            "Client: Works with all elements through the Component interface uniformly",
          ],
        ),
        DiagramContent(
          "Pattern Structure:\n        Component\n       /         \\\n    Leaf      Composite\n                   |\n                children[]\n                   |\n              (recursive)",
        ),
        StrContent(
          "Both Leaf and Composite implement the same Component interface. The Composite delegates operations to its children and may add or combine their results. This recursive structure allows unlimited nesting depth.",
        ),
        NoteContent(
          "Composite makes the client code simple - it doesn't need to know if it's dealing with a leaf or a composite. However, this uniformity can make designs overly general. Be careful not to force dissimilar elements into the same interface.",
          type: .important,
        ),
        ComparisonContent({
          'Composite':
              'Tree structure, uniform treatment of leaves and branches',
          'Decorator': 'Linear wrapping, adds behavior layer by layer',
          'Chain of Responsibility': 'Linked list, passes request along chain',
          'Iterator': 'Traverses collection, doesn\'t define structure',
        }, title: 'Composite vs Similar Patterns'),
        StrContent(
          "Common use cases in Flutter/Dart: Widget trees (every Flutter app!), file system representations, menu systems, organization charts, mathematical expression trees, scene graphs in games, and document object models.",
        ),
        NoteContent(
          "In Flutter, the entire widget system is a Composite pattern! Containers can hold other widgets (composites) or be simple widgets (leaves). StatelessWidget/StatefulWidget is the Component interface.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent(
          "نمط المُركب يتيح لك تركيب الكائنات في بنى شجرية لتمثيل تسلسلات هرمية جزء-كل. الابتكار الأساسي هو أنه يسمح للعملاء بمعاملة الكائنات الفردية وتركيبات الكائنات بشكل موحد - نفس العمليات تعمل على كل من الأوراق والفروع.",
        ),
        AnalogyContent(
          "فكر في هيكل تنظيمي عسكري. الجندي عقدة ورقة. الفرقة تحتوي على جنود. الفصيلة تحتوي على فرق. السرية تحتوي على فصائل. عندما يعطي القائد أمراً \"تقدموا للأمام!\"، لا يهم إذا كان يقود جندياً واحداً أو سرية كاملة - نفس الأمر ينتشر أسفل التسلسل الهرمي. كل مستوى يتعامل مع الأمر بنفس الطريقة.",
        ),
        StrContent(
          "هذا النمط مثالي لتمثيل البنى الشجرية التكرارية حيث يجب معاملة الحاويات والمحتويات بنفس الطريقة: أنظمة الملفات (ملفات/مجلدات)، أشجار مكونات واجهة المستخدم (واجهات/حاويات)، المخططات التنظيمية (موظفون/أقسام)، أو التعبيرات الرياضية (أرقام/عمليات).",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "المكون (Component): واجهة مشتركة للكائنات البسيطة والمعقدة، تُعلن عن العمليات",
            "الورقة (Leaf): عنصر أساسي ليس له أطفال، ينفذ عمليات المكون",
            "المُركب (Composite): عنصر قد يكون له أطفال، ينفذ المكون ويدير الأطفال",
            "العميل (Client): يعمل مع جميع العناصر من خلال واجهة المكون بشكل موحد",
          ],
        ),
        DiagramContent(
          "بنية النمط:\n        المكون\n       /         \\\n    الورقة      المُركب\n                   |\n                []children\n                   |\n              (تكراري)",
        ),
        StrContent(
          "كل من Leaf وComposite ينفذان نفس واجهة Component. المُركب يُفوض العمليات لأطفاله وقد يضيف أو يدمج نتائجهم. هذه البنية التكرارية تسمح بعمق تداخل غير محدود.",
        ),
        NoteContent(
          "المُركب يجعل كود العميل بسيطاً - لا يحتاج لمعرفة ما إذا كان يتعامل مع ورقة أو مُركب. مع ذلك، هذا التوحيد يمكن أن يجعل التصاميم عامة بشكل مفرط. كن حذراً من إجبار عناصر مختلفة في نفس الواجهة.",
          type: .important,
        ),
        ComparisonContent({
          'المُركب (Composite)': 'بنية شجرية، معاملة موحدة للأوراق والفروع',
          'المُزخرف (Decorator)': 'التفاف خطي، يضيف سلوكاً طبقة تلو الأخرى',
          'سلسلة المسؤولية (Chain)': 'قائمة مرتبطة، يمرر الطلب على طول السلسلة',
          'المُكرر (Iterator)': 'يجتاز المجموعة، لا يُحدد البنية',
        }, title: 'المُركب مقابل الأنماط المشابهة'),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: أشجار الواجهات (Widget Trees) (كل تطبيق Flutter!)، تمثيلات نظام الملفات، أنظمة القوائم، المخططات التنظيمية، أشجار التعبيرات الرياضية، رسوم المشاهد في الألعاب، ونماذج كائنات المستندات.",
        ),
        NoteContent(
          "في Flutter، نظام الواجهات بالكامل هو نمط مُركب! الحاويات يمكن أن تحتوي على واجهات أخرى (مُركبات) أو تكون واجهات بسيطة (أوراق). StatelessWidget/StatefulWidget هي واجهة المكون.",
          type: .tip,
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - File System
        StrCodeBlock(r'''import 'dart:io';

// Example 1: Basic - File System Hierarchy
// Use case: Representing files and folders with uniform operations

// Component: Common interface for files and folders
abstract class FileSystemEntity {
  String get name;
  int getSize();
  void display([int depth = 0]);
  void search(String query, List<FileSystemEntity> results);
}

// Leaf: Individual file
class File implements FileSystemEntity {
  @override
  final String name;
  final int size;
  final String content;
  
  File(this.name, this.size, {this.content = ''});
  
  @override
  int getSize() => size;
  
  @override
  void display([int depth = 0]) {
    final indent = '  ' * depth;
    print('$indent📄 $name ($size bytes)');
  }
  
  @override
  void search(String query, List<FileSystemEntity> results) {
    if (name.toLowerCase().contains(query.toLowerCase()) ||
        content.toLowerCase().contains(query.toLowerCase())) {
      results.add(this);
    }
  }
}

// Composite: Directory containing files and subdirectories
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
  
  List<FileSystemEntity> get children => List.unmodifiable(_children);
  
  @override
  int getSize() {
    // Composite operation: sum of all children's sizes
    return _children.fold(0, (sum, child) => sum + child.getSize());
  }
  
  @override
  void display([int depth = 0]) {
    final indent = '  ' * depth;
    print('$indent📁 $name/');
    for (final child in _children) {
      child.display(depth + 1);
    }
  }
  
  @override
  void search(String query, List<FileSystemEntity> results) {
    // Search this directory name
    if (name.toLowerCase().contains(query.toLowerCase())) {
      results.add(this);
    }
    
    // Recursively search all children
    for (final child in _children) {
      child.search(query, results);
    }
  }
  
  int getFileCount() {
    int count = 0;
    for (final child in _children) {
      if (child is File) {
        count++;
      } else if (child is Directory) {
        count += child.getFileCount();
      }
    }
    return count;
  }
}

// Client code works uniformly with files and directories
class FileSystemExplorer {
  void printTree(FileSystemEntity entity) {
    print('=== File System Tree ===');
    entity.display();
  }
  
  void showSize(FileSystemEntity entity) {
    print('\n${entity.name} total size: ${entity.getSize()} bytes');
  }
  
  void searchFiles(FileSystemEntity root, String query) {
    final results = <FileSystemEntity>[];
    root.search(query, results);
    
    print('=== Search results for "$query" ===');
    if (results.isEmpty) {
      print('No results found');
    } else {
      for (final result in results) {
        print('Found: ${result.name}');
      }
    }
  }
}

void main() {
  // Build file system structure
  final root = Directory('root');
  
  final documents = Directory('documents');
  documents.add(File('resume.pdf', 1024, content: 'My resume'));
  documents.add(File('cover_letter.docx', 512, content: 'Cover letter'));
  
  final pictures = Directory('pictures');
  pictures.add(File('vacation.jpg', 2048));
  pictures.add(File('family.jpg', 2560));
  
  final work = Directory('work');
  final projects = Directory('projects');
  projects.add(File('project1.dart', 4096, content: 'Dart code'));
  projects.add(File('README.md', 256, content: 'Project readme'));
  work.add(projects);
  work.add(File('notes.txt', 128, content: 'Work notes'));
  
  root.add(documents);
  root.add(pictures);
  root.add(work);
  root.add(File('readme.txt', 256));
  
  // Client code treats files and folders uniformly
  final explorer = FileSystemExplorer();
  
  explorer.printTree(root);
  explorer.showSize(root);
  explorer.showSize(documents);
  explorer.showSize(pictures.children[0]); // Single file
  
  explorer.searchFiles(root, 'project');
  explorer.searchFiles(root, 'readme');
  
  print('\nTotal files in root: ${root.getFileCount()}');
}'''),

        // Example 2: Intermediate - UI Component Tree
        StrCodeBlock(r'''// Example 2: Intermediate - UI Component Hierarchy
import 'package:flutter/material.dart';
// Use case: Building complex UI from simple and composite components

// Component: Base UI element
abstract class UIComponent {
  String get name;
  void render([int depth = 0]);
  void enable();
  void disable();
  bool get isEnabled;
  List<String> validate();
}

// Leaf: Button
class Button implements UIComponent {
  @override
  final String name;
  final String label;
  bool _enabled;
  
  Button(this.name, this.label, {bool enabled = true}) : _enabled = enabled;
  
  @override
  void render([int depth = 0]) {
    final indent = '  ' * depth;
    final state = _enabled ? 'enabled' : 'disabled';
    print('$indent<Button name="$name" state="$state">$label</Button>');
  }
  
  @override
  void enable() => _enabled = true;
  
  @override
  void disable() => _enabled = false;
  
  @override
  bool get isEnabled => _enabled;
  
  @override
  List<String> validate() => []; // Buttons don't need validation
}

// Leaf: Text Input
class TextInput implements UIComponent {
  @override
  final String name;
  final String placeholder;
  String value;
  final bool required;
  bool _enabled;
  
  TextInput(
    this.name,
    this.placeholder, {
    this.value = '',
    this.required = false,
    bool enabled = true,
  }) : _enabled = enabled;
  
  @override
  void render([int depth = 0]) {
    final indent = '  ' * depth;
    final state = _enabled ? 'enabled' : 'disabled';
    final req = required ? 'required' : 'optional';
    print('$indent<Input name="$name" state="$state" $req placeholder="$placeholder" value="$value" />');
  }
  
  @override
  void enable() => _enabled = true;
  
  @override
  void disable() => _enabled = false;
  
  @override
  bool get isEnabled => _enabled;
  
  @override
  List<String> validate() {
    if (required && value.isEmpty) {
      return ['$name is required'];
    }
    return [];
  }
}

// Leaf: Checkbox
class Checkbox implements UIComponent {
  @override
  final String name;
  final String label;
  bool checked;
  bool _enabled;
  
  Checkbox(
    this.name,
    this.label, {
    this.checked = false,
    bool enabled = true,
  }) : _enabled = enabled;
  
  @override
  void render([int depth = 0]) {
    final indent = '  ' * depth;
    final state = _enabled ? 'enabled' : 'disabled';
    final check = checked ? 'checked' : 'unchecked';
    print('$indent<Checkbox name="$name" state="$state" $check>$label</Checkbox>');
  }
  
  @override
  void enable() => _enabled = true;
  
  @override
  void disable() => _enabled = false;
  
  @override
  bool get isEnabled => _enabled;
  
  @override
  List<String> validate() => []; // Checkboxes don't need validation
}

// Composite: Container for multiple components
class Panel implements UIComponent {
  @override
  final String name;
  final List<UIComponent> _components = [];
  bool _enabled;
  
  Panel(this.name, {bool enabled = true}) : _enabled = enabled;
  
  void add(UIComponent component) {
    _components.add(component);
  }
  
  void remove(UIComponent component) {
    _components.remove(component);
  }
  
  @override
  void render([int depth = 0]) {
    final indent = '  ' * depth;
    final state = _enabled ? 'enabled' : 'disabled';
    print('$indent<Panel name="$name" state="$state">');
    for (final component in _components) {
      component.render(depth + 1);
    }
    print('$indent</Panel>');
  }
  
  @override
  void enable() {
    _enabled = true;
    for (final component in _components) {
      component.enable();
    }
  }
  
  @override
  void disable() {
    _enabled = false;
    for (final component in _components) {
      component.disable();
    }
  }
  
  @override
  bool get isEnabled => _enabled;
  
  @override
  List<String> validate() {
    final errors = <String>[];
    for (final component in _components) {
      errors.addAll(component.validate());
    }
    return errors;
  }
  
  int get componentCount {
    int count = _components.length;
    for (final component in _components) {
      if (component is Panel) {
        count += component.componentCount;
      }
    }
    return count;
  }
}

// Complex composite: Form (specialized panel)
class Form extends Panel {
  Form(super.name);
  
  bool submit() {
    final errors = validate();
    
    if (errors.isEmpty) {
      print('\n✓ Form "$name" submitted successfully');
      return true;
    } else {
      print('\n✗ Form "$name" validation failed:');
      for (final error in errors) {
        print('  - $error');
      }
      return false;
    }
  }
}

void main() {
  // Build complex UI from simple and composite components
  final loginForm = Form('loginForm');
  
  loginForm.add(TextInput(
    'username',
    'Enter username',
    required: true,
  ));
  
  loginForm.add(TextInput(
    'password',
    'Enter password',
    required: true,
  ));
  
  final rememberPanel = Panel('rememberPanel');
  rememberPanel.add(Checkbox('remember', 'Remember me'));
  rememberPanel.add(Checkbox('terms', 'I agree to terms'));
  
  loginForm.add(rememberPanel);
  loginForm.add(Button('submit', 'Login'));
  loginForm.add(Button('cancel', 'Cancel'));
  
  // Render entire form
  print('=== Initial Form ===');
  loginForm.render();
  
  // Fill in some values
  (loginForm._components[0] as TextInput).value = 'john_doe';
  (loginForm._components[1] as TextInput).value = 'secret123';
  
  print('=== After filling values ===');
  loginForm.render();
  
  // Try to submit
  loginForm.submit();
  
  // Disable entire form (affects all children)
  print('=== Disabled Form ===');
  loginForm.disable();
  loginForm.render();
  
  // Re-enable
  loginForm.enable();
  
  print('\nTotal components in form: ${loginForm.componentCount}');
}'''),

        // Example 3: Advanced - Mathematical Expression Tree
        StrCodeBlock(
          r'''// Example 3: Advanced - Mathematical Expression Evaluator
// Use case: Building and evaluating complex mathematical expressions

// Component: Expression element
abstract class Expression {
  double evaluate();
  String toInfix();
  String toPostfix();
  List<String> getVariables();
}

// Leaf: Number literal
class Number implements Expression {
  final double value;
  
  Number(this.value);
  
  @override
  double evaluate() => value;
  
  @override
  String toInfix() => value.toString();
  
  @override
  String toPostfix() => value.toString();
  
  @override
  List<String> getVariables() => [];
}

// Leaf: Variable
class Variable implements Expression {
  final String name;
  final Map<String, double> _context;
  
  Variable(this.name, this._context);
  
  @override
  double evaluate() {
    if (!_context.containsKey(name)) {
      throw Exception('Variable $name is not defined');
    }
    return _context[name]!;
  }
  
  @override
  String toInfix() => name;
  
  @override
  String toPostfix() => name;
  
  @override
  List<String> getVariables() => [name];
}

// Composite: Binary operation
abstract class BinaryOperation implements Expression {
  final Expression left;
  final Expression right;
  String get operator;
  double compute(double leftValue, double rightValue);
  
  BinaryOperation(this.left, this.right);
  
  @override
  double evaluate() {
    return compute(left.evaluate(), right.evaluate());
  }
  
  @override
  String toInfix() {
    return '(${left.toInfix()} $operator ${right.toInfix()})';
  }
  
  @override
  String toPostfix() {
    return '${left.toPostfix()} ${right.toPostfix()} $operator';
  }
  
  @override
  List<String> getVariables() {
    return [...left.getVariables(), ...right.getVariables()];
  }
}

class Addition extends BinaryOperation {
  Addition(super.left, super.right);
  
  @override
  String get operator => '+';
  
  @override
  double compute(double leftValue, double rightValue) => leftValue + rightValue;
}

class Subtraction extends BinaryOperation {
  Subtraction(super.left, super.right);
  
  @override
  String get operator => '-';
  
  @override
  double compute(double leftValue, double rightValue) => leftValue - rightValue;
}

class Multiplication extends BinaryOperation {
  Multiplication(super.left, super.right);
  
  @override
  String get operator => '*';
  
  @override
  double compute(double leftValue, double rightValue) => leftValue * rightValue;
}

class Division extends BinaryOperation {
  Division(super.left, super.right);
  
  @override
  String get operator => '/';
  
  @override
  double compute(double leftValue, double rightValue) {
    if (rightValue == 0) {
      throw Exception('Division by zero');
    }
    return leftValue / rightValue;
  }
}

class Power extends BinaryOperation {
  Power(super.left, super.right);
  
  @override
  String get operator => '^';
  
  @override
  double compute(double leftValue, double rightValue) {
    return pow(leftValue, rightValue).toDouble();
  }
}

// Composite: Unary operation
abstract class UnaryOperation implements Expression {
  final Expression operand;
  String get operator;
  double compute(double value);
  
  UnaryOperation(this.operand);
  
  @override
  double evaluate() {
    return compute(operand.evaluate());
  }
  
  @override
  String toInfix() => '$operator(${operand.toInfix()})';
  
  @override
  String toPostfix() => '${operand.toPostfix()} $operator';
  
  @override
  List<String> getVariables() => operand.getVariables();
}

class Negation extends UnaryOperation {
  Negation(super.operand);
  
  @override
  String get operator => '-';
  
  @override
  double compute(double value) => -value;
}

class SquareRoot extends UnaryOperation {
  SquareRoot(super.operand);
  
  @override
  String get operator => 'sqrt';
  
  @override
  double compute(double value) {
    if (value < 0) {
      throw Exception('Cannot take square root of negative number');
    }
    return sqrt(value);
  }
}

// Expression builder helper
class ExpressionBuilder {
  final Map<String, double> _context = {};
  
  void setVariable(String name, double value) {
    _context[name] = value;
  }
  
  Number num(double value) => Number(value);
  Variable variable(String name) => Variable(name, _context);
  Addition add(Expression left, Expression right) => Addition(left, right);
  Subtraction sub(Expression left, Expression right) => Subtraction(left, right);
  Multiplication mul(Expression left, Expression right) => Multiplication(left, right);
  Division div(Expression left, Expression right) => Division(left, right);
  Power pow(Expression left, Expression right) => Power(left, right);
  Negation neg(Expression operand) => Negation(operand);
  SquareRoot sqrt(Expression operand) => SquareRoot(operand);
}

void main() {
  final builder = ExpressionBuilder();
  
  // Build expression: (5 + 3) * 2 - 4
  print('=== Example 1: (5 + 3) * 2 - 4 ===');
  final expr1 = builder.sub(
    builder.mul(
      builder.add(builder.num(5), builder.num(3)),
      builder.num(2),
    ),
    builder.num(4),
  );
  
  print('Infix: ${expr1.toInfix()}');
  print('Postfix: ${expr1.toPostfix()}');
  print('Result: ${expr1.evaluate()}');
  
  // Build expression with variables: x^2 + 2*x + 1
  print('=== Example 2: x^2 + 2*x + 1 ===');
  builder.setVariable('x', 3);
  
  final x = builder.variable('x');
  final expr2 = builder.add(
    builder.add(
      builder.pow(x, builder.num(2)),
      builder.mul(builder.num(2), builder.variable('x')),
    ),
    builder.num(1),
  );
  
  print('Infix: ${expr2.toInfix()}');
  print('Variables: ${expr2.getVariables().toSet()}');
  print('When x=3: ${expr2.evaluate()}');
  
  builder.setVariable('x', 5);
  print('When x=5: ${expr2.evaluate()}');
  
  // Complex expression: sqrt(a^2 + b^2) (Pythagorean theorem)
  print('=== Example 3: sqrt(a^2 + b^2) ===');
  builder.setVariable('a', 3);
  builder.setVariable('b', 4);
  
  final expr3 = builder.sqrt(
    builder.add(
      builder.pow(builder.variable('a'), builder.num(2)),
      builder.pow(builder.variable('b'), builder.num(2)),
    ),
  );
  
  print('Infix: ${expr3.toInfix()}');
  print('Postfix: ${expr3.toPostfix()}');
  print('When a=3, b=4: ${expr3.evaluate()}');
  
  // Expression with negation: -(x - 5)
  print('=== Example 4: -(x - 5) ===');
  builder.setVariable('x', 10);
  
  final expr4 = builder.neg(
    builder.sub(builder.variable('x'), builder.num(5)),
  );
  
  print('Infix: ${expr4.toInfix()}');
  print('When x=10: ${expr4.evaluate()}');
}

// Import for math functions
import 'dart:math';''',
        ),

        // Example 4: Flutter - Nested Menu System
        StrCodeBlock(r'''// Example 4: Flutter - Hierarchical Menu System
import 'dart:io';
import 'package:flutter/material.dart';
// Use case: Building complex nested menus with uniform operations

// Component: Menu item
abstract class MenuItem {
  String get label;
  IconData? get icon;
  void execute();
  Widget build(BuildContext context);
  bool get hasChildren;
}

// Leaf: Action menu item
class ActionMenuItem implements MenuItem {
  @override
  final String label;
  @override
  final IconData? icon;
  final VoidCallback onTap;
  final bool enabled;
  
  ActionMenuItem({
    required this.label,
    this.icon,
    required this.onTap,
    this.enabled = true,
  });
  
  @override
  void execute() {
    if (enabled) {
      onTap();
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon != null ? Icon(icon, size: 20) : null,
      title: Text(label),
      enabled: enabled,
      onTap: execute,
    );
  }
  
  @override
  bool get hasChildren => false;
}

// Leaf: Divider
class MenuDivider implements MenuItem {
  @override
  String get label => '';
  
  @override
  IconData? get icon => null;
  
  @override
  void execute() {}
  
  @override
  Widget build(BuildContext context) {
    return Divider(height: 1);
  }
  
  @override
  bool get hasChildren => false;
}

// Composite: Submenu
class SubMenu implements MenuItem {
  @override
  final String label;
  @override
  final IconData? icon;
  final List<MenuItem> _items = [];
  
  SubMenu({
    required this.label,
    this.icon,
  });
  
  void add(MenuItem item) {
    _items.add(item);
  }
  
  void remove(MenuItem item) {
    _items.remove(item);
  }
  
  @override
  void execute() {
    // Opening a submenu doesn't execute, it shows children
  }
  
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: icon != null ? Icon(icon, size: 20) : null,
      title: Text(label),
      children: _items.map((item) => item.build(context)).toList(),
    );
  }
  
  @override
  bool get hasChildren => _items.isNotEmpty;
  
  int get totalItems {
    int count = _items.length;
    for (final item in _items) {
      if (item is SubMenu) {
        count += item.totalItems;
      }
    }
    return count;
  }
}

// Menu builder
class MenuBuilder {
  final List<MenuItem> _items = [];
  
  void addAction(String label, VoidCallback onTap, {IconData? icon}) {
    _items.add(ActionMenuItem(
      label: label,
      icon: icon,
      onTap: onTap,
    ));
  }
  
  void addDivider() {
    _items.add(MenuDivider());
  }
  
  SubMenu addSubMenu(String label, {IconData? icon}) {
    final submenu = SubMenu(label: label, icon: icon);
    _items.add(submenu);
    return submenu;
  }
  
  List<MenuItem> build() => List.unmodifiable(_items);
}

// Demo app
class MenuDemo extends StatelessWidget {
  const MenuDemo({super.key});
  
  @override
  Widget build(BuildContext context) {
    final builder = MenuBuilder();
    
    // File menu
    final fileMenu = builder.addSubMenu('File', icon: Icons.folder);
    fileMenu.add(ActionMenuItem(
      label: 'New',
      icon: Icons.note_add,
      onTap: () => print('New file'),
    ));
    fileMenu.add(ActionMenuItem(
      label: 'Open',
      icon: Icons.folder_open,
      onTap: () => print('Open file'),
    ));
    
    final recentSubmenu = SubMenu(label: 'Recent', icon: Icons.history);
    recentSubmenu.add(ActionMenuItem(
      label: 'document1.txt',
      onTap: () => print('Open document1'),
    ));
    recentSubmenu.add(ActionMenuItem(
      label: 'document2.txt',
      onTap: () => print('Open document2'),
    ));
    fileMenu.add(recentSubmenu);
    
    fileMenu.add(MenuDivider());
    fileMenu.add(ActionMenuItem(
      label: 'Save',
      icon: Icons.save,
      onTap: () => print('Save file'),
    ));
    fileMenu.add(ActionMenuItem(
      label: 'Exit',
      icon: Icons.exit_to_app,
      onTap: () => print('Exit app'),
    ));
    
    // Edit menu
    final editMenu = builder.addSubMenu('Edit', icon: Icons.edit);
    editMenu.add(ActionMenuItem(
      label: 'Undo',
      icon: Icons.undo,
      onTap: () => print('Undo'),
    ));
    editMenu.add(ActionMenuItem(
      label: 'Redo',
      icon: Icons.redo,
      onTap: () => print('Redo'),
    ));
    editMenu.add(MenuDivider());
    editMenu.add(ActionMenuItem(
      label: 'Cut',
      icon: Icons.content_cut,
      onTap: () => print('Cut'),
    ));
    editMenu.add(ActionMenuItem(
      label: 'Copy',
      icon: Icons.content_copy,
      onTap: () => print('Copy'),
    ));
    editMenu.add(ActionMenuItem(
      label: 'Paste',
      icon: Icons.content_paste,
      onTap: () => print('Paste'),
    ));
    
    // Help menu
    builder.addAction(
      'Help',
      () => print('Show help'),
      icon: Icons.help,
    );
    
    final items = builder.build();
    
    return Scaffold(
      appBar: AppBar(title: Text('Composite Menu Demo')),
      body: ListView(
        children: items.map((item) => item.build(context)).toList(),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8),
        child: Text(
          'Total menu items: ${_countItems(items)}',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
  
  int _countItems(List<MenuItem> items) {
    int count = items.length;
    for (final item in items) {
      if (item is SubMenu) {
        count += item.totalItems;
      }
    }
    return count;
  }
}

void main() {
  runApp(MaterialApp(
    home: MenuDemo(),
  ));
}'''),
      ],
      ar: [
        // Arabic versions would go here
      ],
    ),
    pros: LocSL(
      en: [
        "Simplifies client code - uniform treatment of individual and composite objects",
        "Makes adding new component types easy - follows Open/Closed Principle",
        "Natural fit for recursive algorithms and tree traversal",
        "Works well with hierarchical structures like file systems, UI trees, organizations",
        "Can perform operations on entire tree branches with single method call",
        "Makes it easy to build complex structures from simple parts",
        "Follows Single Responsibility Principle when properly designed",
      ],
      ar: [
        "يبسط كود العميل - معاملة موحدة للكائنات الفردية والمُركبة",
        "يسهّل إضافة أنواع مكونات جديدة - يتبع مبدأ المفتوح/المغلق",
        "ملائم طبيعي للخوارزميات التكرارية واجتياز الشجرة",
        "يعمل جيداً مع البنى الهرمية مثل أنظمة الملفات، أشجار واجهة المستخدم، المنظمات",
        "يمكن إجراء عمليات على فروع شجرة كاملة باستدعاء طريقة واحدة",
        "يسهّل بناء بنى معقدة من أجزاء بسيطة",
        "يتبع مبدأ المسؤولية الواحدة عند التصميم بشكل صحيح",
      ],
    ),
    cons: LocSL(
      en: [
        "Can make design overly general - forces common interface on dissimilar elements",
        "Difficult to restrict component types in composites (any component can contain any other)",
        "May be hard to design common interface for very different leaf types",
        "Can violate Interface Segregation Principle - leaves implement methods they don't need",
        "Runtime type checking might be needed to handle specific component types differently",
        "Can be overkill for simple hierarchies that don't need uniform treatment",
      ],
      ar: [
        "قد يجعل التصميم عاماً بشكل مفرط - يفرض واجهة مشتركة على عناصر مختلفة",
        "صعوبة تقييد أنواع المكونات في المُركبات (أي مكون يمكن أن يحتوي على أي آخر)",
        "قد يكون صعباً تصميم واجهة مشتركة لأنواع أوراق مختلفة جداً",
        "قد ينتهك مبدأ فصل الواجهة - الأوراق تنفذ طرقاً لا تحتاجها",
        "قد تكون هناك حاجة للتحقق من النوع في وقت التشغيل للتعامل مع أنواع مكونات محددة بشكل مختلف",
        "قد يكون مبالغاً فيه للتسلسلات الهرمية البسيطة التي لا تحتاج لمعاملة موحدة",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Composite when:"),
        ULContent(
          value: [
            "You have part-whole hierarchies of objects (tree structures)",
            "You want clients to treat individual objects and compositions uniformly",
            "You're building tree structures like file systems, UI components, or menus",
            "Recursive composition makes sense for your domain",
            "You want to implement operations that work on entire hierarchies",
            "The structure can be represented as a tree with uniform operations",
            "You want to simplify client code by treating leaves and branches the same",
          ],
        ),
        NoteContent(
          "Composite is perfect for trees where operations apply uniformly. Don't force it on hierarchies where leaves and branches are fundamentally different and need different operations.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent("استخدم المُركب عندما:"),
        ULContent(
          value: [
            "لديك تسلسلات هرمية جزء-كل للكائنات (بنى شجرية)",
            "تريد أن يعامل العملاء الكائنات الفردية والتركيبات بشكل موحد",
            "تبني بنى شجرية مثل أنظمة ملفات، مكونات واجهة مستخدم، أو قوائم",
            "التركيب التكراري منطقي لمجالك",
            "تريد تنفيذ عمليات تعمل على تسلسلات هرمية كاملة",
            "يمكن تمثيل البنية كشجرة مع عمليات موحدة",
            "تريد تبسيط كود العميل بمعاملة الأوراق والفروع بنفس الطريقة",
          ],
        ),
        NoteContent(
          "المُركب مثالي للأشجار حيث تُطبق العمليات بشكل موحد. لا تفرضه على تسلسلات هرمية حيث الأوراق والفروع مختلفة بشكل أساسي وتحتاج لعمليات مختلفة.",
          type: .tip,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Forcing a common interface on dissimilar components that shouldn't be treated uniformly",
        "Not exposing child management methods (add/remove) properly in the composite",
        "Allowing circular references in the tree structure (parent contains child that contains parent)",
        "Not considering who owns and manages child lifecycle and memory",
        "Making the Component interface too complex trying to satisfy all concrete types",
        "Not handling null or empty composites properly",
        "Forgetting that operations may need to accumulate results from children",
        "Putting too much logic in leaves when it should be in composites",
      ],
      ar: [
        "فرض واجهة مشتركة على مكونات مختلفة لا يجب معاملتها بشكل موحد",
        "عدم كشف طرق إدارة الأطفال (إضافة/إزالة) بشكل صحيح في المُركب",
        "السماح بمراجع دائرية في بنية الشجرة (الأب يحتوي على طفل يحتوي على الأب)",
        "عدم النظر في من يملك ويدير دورة حياة الأطفال والذاكرة",
        "جعل واجهة المكون معقدة جداً في محاولة لإرضاء جميع الأنواع المحددة",
        "عدم التعامل مع المُركبات الفارغة أو null بشكل صحيح",
        "نسيان أن العمليات قد تحتاج لتجميع النتائج من الأطفال",
        "وضع الكثير من المنطق في الأوراق عندما يجب أن يكون في المُركبات",
      ],
    ),
    relatedPatterns: [PK.iterator, PK.visitor, PK.decorator, PK.flyweight],
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
          "The Decorator pattern allows you to attach new behaviors to objects by placing them inside wrapper objects that contain the behaviors. It provides a flexible alternative to subclassing for extending functionality at runtime without modifying the original class.",
        ),
        AnalogyContent(
          "Think of getting dressed. You start with basic clothing (the component). When it's cold, you add a sweater (first decorator). If it's raining, you add a raincoat on top (second decorator). If it's really cold, you add a winter jacket (third decorator). Each layer adds functionality while keeping the base clothes unchanged. You can add or remove layers in any combination.",
        ),
        StrContent(
          "Decorators wrap a component and add their own behavior before and/or after delegating to the component. Multiple decorators can be stacked to add multiple behaviors. The key is that decorators implement the same interface as the components they wrap, making decoration transparent to clients.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Component: Common interface for both wrappers and wrapped objects",
            "Concrete Component: The base object being decorated",
            "Decorator: Base decorator class maintaining reference to wrapped component",
            "Concrete Decorators: Add specific behaviors before/after delegating to component",
          ],
        ),
        DiagramContent(
          "Pattern Structure:\n    Component\n    /      \\\n Concrete   Decorator (wraps Component)\n Component      |\n           Concrete Decorators\n           (add behavior)",
        ),
        StrContent(
          "Unlike inheritance which adds behavior at compile time, decorators add behavior at runtime and can be combined in various ways. The same object can be decorated multiple times with different decorators or the same decorator multiple times.",
        ),
        NoteContent(
          "Decorator changes behavior but keeps the same interface. Adapter changes the interface. Proxy controls access but doesn't change behavior. These are often confused, but serve different purposes!",
          type: .important,
        ),
        ComparisonContent({
          'Decorator': 'Adds behavior, same interface, stackable',
          'Adapter': 'Changes interface to match expected one',
          'Proxy': 'Controls access, same interface, not stackable',
          'Composite': 'Tree structure, combines objects',
        }, title: 'Decorator vs Similar Patterns'),
        StrContent(
          "Common use cases in Flutter/Dart: stream transformers (adding operators), data validation layers, caching layers, logging wrappers, encryption/compression wrappers, UI enhancements (borders, shadows, padding), and middleware chains.",
        ),
        NoteContent(
          "In Dart, extension methods might seem similar but are different: extensions add compile-time methods, decorators add runtime behavior. Use decorators when you need dynamic, stackable behavior.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent(
          "نمط المُزخرف يسمح لك بإلحاق سلوكيات جديدة بالكائنات من خلال وضعها داخل كائنات غلاف تحتوي على السلوكيات. يوفر بديلاً مرناً للفئات الفرعية لتوسيع الوظائف في وقت التشغيل دون تعديل الفئة الأصلية.",
        ),
        AnalogyContent(
          "فكر في ارتداء الملابس. تبدأ بملابس أساسية (المكون). عندما يكون الجو بارداً، تضيف سترة (مُزخرف أول). إذا كانت تمطر، تضيف معطف مطر في الأعلى (مُزخرف ثانٍ). إذا كان بارداً جداً، تضيف جاكيت شتوي (مُزخرف ثالث). كل طبقة تضيف وظيفة مع الحفاظ على الملابس الأساسية دون تغيير. يمكنك إضافة أو إزالة الطبقات في أي مجموعة.",
        ),
        StrContent(
          "المُزخرفات تلف مكوناً وتضيف سلوكها الخاص قبل و/أو بعد التفويض للمكون. يمكن تكديس عدة مُزخرفات لإضافة سلوكيات متعددة. المفتاح هو أن المُزخرفات تنفذ نفس واجهة المكونات التي تلفها، مما يجعل التزيين شفافاً للعملاء.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "المكون (Component): واجهة مشتركة للأغلفة والكائنات الملفوفة",
            "المكون المحدد (Concrete Component): الكائن الأساسي الذي يتم تزيينه",
            "المُزخرف (Decorator): فئة مُزخرف أساسية تحتفظ بمرجع للمكون الملفوف",
            "المُزخرفات المحددة (Concrete Decorators): تضيف سلوكيات محددة قبل/بعد التفويض للمكون",
          ],
        ),
        DiagramContent(
          "بنية النمط:\n    المكون\n    /      \\\n المكون   المُزخرف (يلف المكون)\n المحدد      |\n           المُزخرفات المحددة\n           (تضيف سلوكاً)",
        ),
        StrContent(
          "على عكس الوراثة التي تضيف السلوك في وقت الترجمة، المُزخرفات تضيف السلوك في وقت التشغيل ويمكن دمجها بطرق مختلفة. نفس الكائن يمكن تزيينه عدة مرات بمُزخرفات مختلفة أو نفس المُزخرف عدة مرات.",
        ),
        NoteContent(
          "المُزخرف يغير السلوك لكن يحافظ على نفس الواجهة. المُحوّل يغير الواجهة. الوكيل يتحكم في الوصول لكن لا يغير السلوك. غالباً ما تُخلط هذه، لكنها تخدم أغراضاً مختلفة!",
          type: .important,
        ),
        ComparisonContent({
          'المُزخرف (Decorator)': 'يضيف سلوكاً، نفس الواجهة، قابل للتكديس',
          'المُحوّل (Adapter)': 'يغير الواجهة لتطابق المتوقعة',
          'الوكيل (Proxy)': 'يتحكم في الوصول، نفس الواجهة، غير قابل للتكديس',
          'المُركب (Composite)': 'بنية شجرية، يدمج الكائنات',
        }, title: 'المُزخرف مقابل الأنماط المشابهة'),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: محوّلات التدفق (Stream Transformers) (إضافة عمليات)، طبقات التحقق من البيانات، طبقات التخزين المؤقت، أغلفة التسجيل، أغلفة التشفير/الضغط، تحسينات واجهة المستخدم (حدود، ظلال، حشو)، وسلاسل الوسيطة (Middleware Chains).",
        ),
        NoteContent(
          "في Dart، طرق التوسيع (Extension Methods) قد تبدو مشابهة لكنها مختلفة: التوسيعات تضيف طرقاً في وقت الترجمة، المُزخرفات تضيف سلوكاً في وقت التشغيل. استخدم المُزخرفات عندما تحتاج لسلوك ديناميكي قابل للتكديس.",
          type: .tip,
        ),
      ],
    ),
    // ... continues with examples
    // TODO: Add examples
    examples: LocV(en: [StrCodeBlock(r'''// MISSING EXAMPLES''')], ar: []),
    pros: LocSL(
      en: [
        "More flexible than static inheritance - add behavior at runtime",
        "Can add/remove responsibilities dynamically",
        "Can combine behaviors in different ways by stacking decorators",
        "Follows Single Responsibility Principle - each decorator has one concern",
        "Follows Open/Closed Principle - extend behavior without modifying original",
        "Avoids feature-laden classes by dividing functionality among decorators",
        "Can wrap objects multiple times with different combinations",
      ],
      ar: [
        "أكثر مرونة من الوراثة الثابتة - إضافة سلوك في وقت التشغيل",
        "يمكن إضافة/إزالة المسؤوليات ديناميكياً",
        "يمكن دمج السلوكيات بطرق مختلفة بتكديس المُزخرفات",
        "يتبع مبدأ المسؤولية الواحدة - كل مُزخرف لديه اهتمام واحد",
        "يتبع مبدأ المفتوح/المغلق - توسيع السلوك دون تعديل الأصل",
        "يتجنب الفئات المحملة بالميزات بتقسيم الوظائف بين المُزخرفات",
        "يمكن لف الكائنات عدة مرات بمجموعات مختلفة",
      ],
    ),
    cons: LocSL(
      en: [
        "Many small objects can complicate the design",
        "Hard to debug with multiple layers of wrapping",
        "Decorators must implement same interface as component",
        "Order of decorators can matter and affect behavior",
        "Hard to remove specific decorator from stack",
        "Can be confusing to understand wrapped object's actual type",
      ],
      ar: [
        "العديد من الكائنات الصغيرة قد تعقد التصميم",
        "صعب التنقيح مع طبقات متعددة من الالتفاف",
        "يجب على المُزخرفات تنفيذ نفس واجهة المكون",
        "ترتيب المُزخرفات قد يكون مهماً ويؤثر على السلوك",
        "صعب إزالة مُزخرف محدد من المكدس",
        "قد يكون مُربكاً فهم النوع الفعلي للكائن الملفوف",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Decorator when:"),
        ULContent(
          value: [
            "You need to add responsibilities to individual objects dynamically and transparently",
            "Extension by subclassing is impractical or would cause class explosion",
            "You want to add features that can be combined in various ways",
            "You want to keep classes focused with features in separate decorators",
            "Responsibilities should be reversible (can be added and removed)",
            "Need to add behavior to objects without affecting other objects of same class",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المُزخرف عندما:"),
        ULContent(
          value: [
            "تحتاج لإضافة مسؤوليات لكائنات فردية ديناميكياً وبشفافية",
            "التوسع عبر الفئات الفرعية غير عملي أو سيسبب انفجار الفئات",
            "تريد إضافة ميزات يمكن دمجها بطرق مختلفة",
            "تريد إبقاء الفئات مركزة مع ميزات في مُزخرفات منفصلة",
            "المسؤوليات يجب أن تكون قابلة للعكس (يمكن إضافتها وإزالتها)",
            "تحتاج لإضافة سلوك لكائنات دون التأثير على كائنات أخرى من نفس الفئة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Changing the interface instead of just adding behavior",
        "Using decorators when simple inheritance suffices",
        "Not considering decorator order dependencies",
        "Creating decorators that change core functionality rather than enhance it",
        "Forgetting to delegate to wrapped component",
        "Making decorator hierarchy too complex",
      ],
      ar: [
        "تغيير الواجهة بدلاً من مجرد إضافة السلوك",
        "استخدام المُزخرفات عندما تكفي الوراثة البسيطة",
        "عدم النظر في تبعيات ترتيب المُزخرف",
        "إنشاء مُزخرفات تغير الوظيفة الأساسية بدلاً من تحسينها",
        "نسيان التفويض للمكون الملفوف",
        "جعل تسلسل المُزخرف معقداً جداً",
      ],
    ),
    relatedPatterns: [PK.adapter, PK.composite, PK.strategy, PK.proxy],
    oftenConfusedWith: [PK.adapter, PK.proxy, PK.composite],
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
          "The Facade pattern provides a simple, unified interface to a complex subsystem. It doesn't hide the subsystem - clients can still access it directly if needed - but it offers a convenient high-level interface for the most common tasks, making the subsystem easier to use.",
        ),
        AnalogyContent(
          "Think of a car's steering wheel and pedals. Under the hood, starting and driving a car involves coordinating the fuel injection system, ignition, transmission, engine, cooling system, and hundreds of other components. But you don't interact with all that complexity - the steering wheel and pedals are a facade that simplifies the interface to 'turn', 'accelerate', and 'brake'. The complex subsystems are still there, but you rarely need to access them directly.",
        ),
        StrContent(
          "Facade is about convenience and simplification, not hiding. It provides shortcuts to common operations that would otherwise require multiple steps. It's particularly useful when integrating third-party libraries, working with legacy systems, or organizing your own code into clearer layers.",
        ),
        ULContent(
          title: "Key Characteristics:",
          value: [
            "Simplification: Reduces complexity by providing a simple interface to complex systems",
            "Convenience: Offers easy-to-use methods for common tasks",
            "Decoupling: Reduces client dependencies on subsystem details",
            "Optional: Clients can bypass the facade and access subsystems directly if needed",
            "Delegation: Facade delegates work to subsystem classes but doesn't add new functionality",
          ],
        ),
        DiagramContent(
          "Pattern Structure:\nClient → Facade → [Complex Subsystem]\n                    ├─ ClassA\n                    ├─ ClassB\n                    ├─ ClassC\n                    └─ ClassD\n\n(Facade simplifies access)",
        ),
        StrContent(
          "A facade is a single point of entry to a subsystem. It knows which subsystem classes are responsible for a request and delegates to them. The facade doesn't add new functionality - it just makes existing functionality easier to access.",
        ),
        NoteContent(
          "Facade vs Adapter: Facade simplifies a complex interface. Adapter makes incompatible interfaces compatible. Facade is about convenience, Adapter is about compatibility. Don't confuse them!",
          type: .important,
        ),
        ComparisonContent({
          'Facade': 'Simplifies complex subsystem, convenience interface',
          'Adapter': 'Makes incompatible interfaces compatible',
          'Proxy': 'Controls access to an object, same interface',
          'Mediator': 'Simplifies communication between objects',
        }, title: 'Facade vs Similar Patterns'),
        StrContent(
          "Common use cases in Flutter/Dart: wrapping complex APIs (like camera, location, or sensors), simplifying database operations, creating service layers, providing simple interfaces to plugin packages, abstracting platform-specific code, and organizing business logic.",
        ),
        NoteContent(
          "In Flutter, packages like `shared_preferences`, `http`, and `path_provider` often use facade-like interfaces to hide platform complexity. You call simple methods without worrying about iOS vs Android vs Web implementations.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent(
          "نمط الواجهة يوفر واجهة بسيطة وموحدة لنظام فرعي معقد. لا يخفي النظام الفرعي - لا يزال بإمكان العملاء الوصول إليه مباشرة إذا لزم الأمر - لكنه يوفر واجهة عالية المستوى مريحة للمهام الأكثر شيوعاً، مما يجعل النظام الفرعي أسهل في الاستخدام.",
        ),
        AnalogyContent(
          "فكر في عجلة القيادة ودواسات السيارة. تحت الغطاء، بدء وقيادة السيارة يتضمن تنسيق نظام حقن الوقود، الإشعال، ناقل الحركة، المحرك، نظام التبريد، ومئات المكونات الأخرى. لكنك لا تتفاعل مع كل هذا التعقيد - عجلة القيادة والدواسات هي واجهة تُبسط الواجهة إلى 'انعطف'، 'سرّع'، و'كبح'. الأنظمة الفرعية المعقدة لا تزال هناك، لكنك نادراً ما تحتاج للوصول إليها مباشرة.",
        ),
        StrContent(
          "الواجهة تتعلق بالراحة والتبسيط، وليس الإخفاء. توفر اختصارات للعمليات الشائعة التي ستتطلب خطوات متعددة بخلاف ذلك. مفيدة بشكل خاص عند دمج مكتبات طرف ثالث، العمل مع أنظمة قديمة، أو تنظيم كودك الخاص في طبقات أوضح.",
        ),
        ULContent(
          title: "الخصائص الأساسية:",
          value: [
            "التبسيط (Simplification): يقلل التعقيد بتوفير واجهة بسيطة للأنظمة المعقدة",
            "الراحة (Convenience): يوفر طرقاً سهلة الاستخدام للمهام الشائعة",
            "فك الارتباط (Decoupling): يقلل تبعيات العميل على تفاصيل النظام الفرعي",
            "اختياري (Optional): يمكن للعملاء تجاوز الواجهة والوصول للأنظمة الفرعية مباشرة إذا لزم الأمر",
            "التفويض (Delegation): الواجهة تُفوض العمل لفئات النظام الفرعي لكن لا تضيف وظائف جديدة",
          ],
        ),
        DiagramContent(
          "بنية النمط:\nالعميل ← الواجهة ← [نظام فرعي معقد]\n                    ├─ ClassA\n                    ├─ ClassB\n                    ├─ ClassC\n                    └─ ClassD\n\n(الواجهة تُبسط الوصول)",
        ),
        StrContent(
          "الواجهة هي نقطة دخول واحدة لنظام فرعي. تعرف أي فئات نظام فرعي مسؤولة عن طلب وتُفوض لها. الواجهة لا تضيف وظائف جديدة - فقط تجعل الوظائف الموجودة أسهل في الوصول.",
        ),
        NoteContent(
          "الواجهة مقابل المُحوّل: الواجهة تُبسط واجهة معقدة. المُحوّل يجعل الواجهات غير المتوافقة متوافقة. الواجهة تتعلق بالراحة، المُحوّل يتعلق بالتوافق. لا تخلط بينهما!",
          type: .important,
        ),
        ComparisonContent({
          'الواجهة (Facade)': 'يُبسط نظاماً فرعياً معقداً، واجهة راحة',
          'المُحوّل (Adapter)': 'يجعل الواجهات غير المتوافقة متوافقة',
          'الوكيل (Proxy)': 'يتحكم في الوصول لكائن، نفس الواجهة',
          'الوسيط (Mediator)': 'يُبسط الاتصال بين الكائنات',
        }, title: 'الواجهة مقابل الأنماط المشابهة'),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: لف APIs معقدة (مثل الكاميرا، الموقع، أو المستشعرات)، تبسيط عمليات قاعدة البيانات، إنشاء طبقات خدمة، توفير واجهات بسيطة لحزم الإضافات، تجريد كود خاص بالمنصة، وتنظيم منطق العمل.",
        ),
        NoteContent(
          "في Flutter، حزم مثل `shared_preferences` و`http` و`path_provider` غالباً ما تستخدم واجهات شبيهة بالواجهة (Facade) لإخفاء تعقيد المنصة. تستدعي طرقاً بسيطة دون القلق بشأن تطبيقات iOS مقابل Android مقابل Web.",
          type: .tip,
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Home Theater System
        StrCodeBlock(r'''// Example 1: Basic - Home Theater Facade
// Use case: Simplifying complex home theater setup

// Complex subsystem classes
class Amplifier {
  void on() => print('Amplifier: Powering on');
  void off() => print('Amplifier: Powering off');
  void setVolume(int level) => print('Amplifier: Setting volume to $level');
  void setSurroundSound() => print('Amplifier: Surround sound mode activated');
}

class DVDPlayer {
  void on() => print('DVD Player: Powering on');
  void off() => print('DVD Player: Powering off');
  void play(String movie) => print('DVD Player: Playing "$movie"');
  void stop() => print('DVD Player: Stopped');
  void eject() => print('DVD Player: Ejecting disc');
}

class Projector {
  void on() => print('Projector: Powering on');
  void off() => print('Projector: Powering off');
  void wideScreenMode() => print('Projector: Wide screen mode (16:9)');
  void setInput(String source) => print('Projector: Setting input to $source');
}

class Lights {
  void dim(int level) => print('Lights: Dimming to $level%');
  void on() => print('Lights: Full brightness');
}

class Screen {
  void down() => print('Screen: Lowering screen');
  void up() => print('Screen: Raising screen');
}

class SoundSystem {
  void on() => print('Sound System: Powering on');
  void off() => print('Sound System: Powering off');
  void setMode(String mode) => print('Sound System: Mode set to $mode');
}

// Facade: Simplifies the complex subsystem
class HomeTheaterFacade {
  final Amplifier _amp;
  final DVDPlayer _dvd;
  final Projector _projector;
  final Lights _lights;
  final Screen _screen;
  final SoundSystem _sound;
  
  HomeTheaterFacade(
    this._amp,
    this._dvd,
    this._projector,
    this._lights,
    this._screen,
    this._sound,
  );
  
  // Simple interface for common operations
  void watchMovie(String movie) {
    print('=== Get ready to watch "$movie" ===\n');
    
    _lights.dim(10);
    _screen.down();
    _projector.on();
    _projector.wideScreenMode();
    _amp.on();
    _amp.setSurroundSound();
    _amp.setVolume(5);
    _dvd.on();
    _dvd.play(movie);
  }
  
  void endMovie() {
    print('=== Shutting down movie theater ===\n');
    
    _dvd.stop();
    _dvd.eject();
    _dvd.off();
    _amp.off();
    _projector.off();
    _screen.up();
    _lights.on();
  }
  
  void listenToMusic(String source) {
    print('=== Setting up music from $source ===\n');
    
    _lights.dim(30);
    _amp.on();
    _amp.setVolume(7);
    _sound.on();
    _sound.setMode('Music');
    print('Ready to play music!');
  }
  
  void endMusic() {
    print('=== Ending music session ===\n');
    
    _sound.off();
    _amp.off();
    _lights.on();
  }
}

void main() {
  // Create subsystem components
  final amp = Amplifier();
  final dvd = DVDPlayer();
  final projector = Projector();
  final lights = Lights();
  final screen = Screen();
  final sound = SoundSystem();
  
  // Create facade
  final homeTheater = HomeTheaterFacade(
    amp,
    dvd,
    projector,
    lights,
    screen,
    sound,
  );
  
  // Simple interface - client doesn't need to know about all the subsystem complexity
  homeTheater.watchMovie('Inception');
  
  print('\n... Movie is playing ...\n');
  
  homeTheater.endMovie();
  
  // Another simple operation
  homeTheater.listenToMusic('Spotify');
  
  print('\n... Music is playing ...\n');
  
  homeTheater.endMusic();
  
  // Client can still access subsystems directly if needed
  print('=== Direct subsystem access ===');
  projector.on();
  projector.setInput('HDMI-2');
}'''),

        // Example 2: Intermediate - Database Facade
        StrCodeBlock(r'''import 'dart:async';

// Example 2: Intermediate - Database Operations Facade
// Use case: Simplifying complex database operations

// Complex subsystem: Connection management
class ConnectionPool {
  final List<DatabaseConnection> _connections = [];
  int _maxConnections = 10;
  
  DatabaseConnection acquire() {
    if (_connections.isEmpty) {
      print('ConnectionPool: Creating new connection');
      return DatabaseConnection();
    }
    print('ConnectionPool: Reusing connection');
    return _connections.removeLast();
  }
  
  void release(DatabaseConnection conn) {
    if (_connections.length < _maxConnections) {
      print('ConnectionPool: Returning connection to pool');
      _connections.add(conn);
    } else {
      print('ConnectionPool: Closing excess connection');
      conn.close();
    }
  }
  
  void closeAll() {
    print('ConnectionPool: Closing all connections');
    for (final conn in _connections) {
      conn.close();
    }
    _connections.clear();
  }
}

class DatabaseConnection {
  bool _isOpen = true;
  
  QueryResult execute(String sql, List<dynamic> params) {
    if (!_isOpen) {
      throw Exception('Connection is closed');
    }
    print('Connection: Executing query');
    return QueryResult([
      {'id': 1, 'name': 'Alice'},
      {'id': 2, 'name': 'Bob'},
    ]);
  }
  
  void beginTransaction() {
    print('Connection: BEGIN TRANSACTION');
  }
  
  void commit() {
    print('Connection: COMMIT');
  }
  
  void rollback() {
    print('Connection: ROLLBACK');
  }
  
  void close() {
    print('Connection: Closing');
    _isOpen = false;
  }
}

class QueryResult {
  final List<Map<String, dynamic>> rows;
  
  QueryResult(this.rows);
  
  int get count => rows.length;
  Map<String, dynamic>? get firstOrNull => rows.isNotEmpty ? rows.first : null;
}

// Complex subsystem: Query builder
class QueryBuilder {
  String _table = '';
  List<String> _columns = ['*'];
  String? _where;
  List<String> _orderBy = [];
  int? _limit;
  
  QueryBuilder table(String name) {
    _table = name;
    return this;
  }
  
  QueryBuilder select(List<String> columns) {
    _columns = columns;
    return this;
  }
  
  QueryBuilder where(String condition) {
    _where = condition;
    return this;
  }
  
  QueryBuilder orderBy(String column, {bool desc = false}) {
    _orderBy.add('$column ${desc ? 'DESC' : 'ASC'}');
    return this;
  }
  
  QueryBuilder limit(int count) {
    _limit = count;
    return this;
  }
  
  String build() {
    final cols = _columns.join(', ');
    var sql = 'SELECT $cols FROM $_table';
    
    if (_where != null) {
      sql += ' WHERE $_where';
    }
    
    if (_orderBy.isNotEmpty) {
      sql += ' ORDER BY ${_orderBy.join(', ')}';
    }
    
    if (_limit != null) {
      sql += ' LIMIT $_limit';
    }
    
    return sql;
  }
}

// Complex subsystem: Cache
class QueryCache {
  final Map<String, QueryResult> _cache = {};
  final Duration _ttl = .minutes(5);
  final Map<String, DateTime> _timestamps = {};
  
  void put(String key, QueryResult result) {
    print('Cache: Storing result for key: $key');
    _cache[key] = result;
    _timestamps[key] = DateTime.now();
  }
  
  QueryResult? get(String key) {
    if (!_cache.containsKey(key)) {
      print('Cache: MISS for key: $key');
      return null;
    }
    
    final timestamp = _timestamps[key]!;
    if (DateTime.now().difference(timestamp) > _ttl) {
      print('Cache: EXPIRED for key: $key');
      _cache.remove(key);
      _timestamps.remove(key);
      return null;
    }
    
    print('Cache: HIT for key: $key');
    return _cache[key];
  }
  
  void clear() {
    print('Cache: Clearing all entries');
    _cache.clear();
    _timestamps.clear();
  }
}

// Facade: Simplifies database operations
class DatabaseFacade {
  final ConnectionPool _pool;
  final QueryCache _cache;
  
  DatabaseFacade(this._pool, this._cache);
  
  // Simple interface for common operations
  Future<List<Map<String, dynamic>>> findAll(String table) async {
    final cacheKey = 'findAll_$table';
    
    // Check cache
    final cached = _cache.get(cacheKey);
    if (cached != null) {
      return cached.rows;
    }
    
    // Execute query
    final conn = _pool.acquire();
    try {
      final sql = QueryBuilder()
          .table(table)
          .select(['*'])
          .build();
      
      final result = conn.execute(sql, []);
      _cache.put(cacheKey, result);
      
      return result.rows;
    } finally {
      _pool.release(conn);
    }
  }
  
  Future<Map<String, dynamic>?> findById(String table, int id) async {
    final cacheKey = 'findById_${table}_$id';
    
    final cached = _cache.get(cacheKey);
    if (cached != null) {
      return cached.firstOrNull;
    }
    
    final conn = _pool.acquire();
    try {
      final sql = QueryBuilder()
          .table(table)
          .where('id = $id')
          .limit(1)
          .build();
      
      final result = conn.execute(sql, [id]);
      _cache.put(cacheKey, result);
      
      return result.firstOrNull;
    } finally {
      _pool.release(conn);
    }
  }
  
  Future<List<Map<String, dynamic>>> search(
    String table,
    String column,
    String value,
  ) async {
    final conn = _pool.acquire();
    try {
      final sql = QueryBuilder()
          .table(table)
          .where('$column LIKE '%$value%'')
          .orderBy(column)
          .build();
      
      final result = conn.execute(sql, []);
      return result.rows;
    } finally {
      _pool.release(conn);
    }
  }
  
  Future<bool> insert(String table, Map<String, dynamic> data) async {
    final conn = _pool.acquire();
    try {
      conn.beginTransaction();
      
      final columns = data.keys.join(', ');
      final placeholders = List.filled(data.length, '?').join(', ');
      final sql = 'INSERT INTO $table ($columns) VALUES ($placeholders)';
      
      conn.execute(sql, data.values.toList());
      conn.commit();
      
      // Clear cache for this table
      _cache.clear();
      
      return true;
    } catch (e) {
      conn.rollback();
      return false;
    } finally {
      _pool.release(conn);
    }
  }
  
  void shutdown() {
    print('=== Shutting down database ===');
    _cache.clear();
    _pool.closeAll();
  }
}

void main() async {
  print('=== Database Facade Example ===\n');
  
  // Create complex subsystems
  final pool = ConnectionPool();
  final cache = QueryCache();
  
  // Create simple facade
  final db = DatabaseFacade(pool, cache);
  
  // Simple interface - client doesn't need to know about pools, caching, query building
  print('--- Find all users ---');
  await db.findAll('users');
  
  print('\n--- Find user by ID (from cache) ---');
  await db.findById('users', 1);
  
  print('\n--- Search users ---');
  await db.search('users', 'name', 'Alice');
  
  print('\n--- Insert new user ---');
  await db.insert('users', {'name': 'Charlie', 'email': 'charlie@example.com'});
  
  print('');
  db.shutdown();
}'''),

        // Example 3: Advanced - Payment Processing Facade
        StrCodeBlock(r'''// Example 3: Advanced - Multi-Provider Payment System
import 'dart:async';
// Use case: Simplifying payment processing across multiple providers

// Complex subsystem: Payment providers
abstract class PaymentProvider {
  String get name;
  Future<PaymentResponse> charge(PaymentRequest request);
  Future<bool> refund(String transactionId);
}

class StripeProvider implements PaymentProvider {
  @override
  String get name => 'Stripe';
  
  @override
  Future<PaymentResponse> charge(PaymentRequest request) async {
    print('Stripe: Processing charge for $${request.amount}');
    await Future.delayed(Duration(milliseconds: 100));
    
    // Simulate Stripe-specific validation
    if (request.amount > 10000) {
      return PaymentResponse(
        success: false,
        message: 'Amount exceeds Stripe limit',
      );
    }
    
    return PaymentResponse(
      success: true,
      transactionId: 'stripe_${DateTime.now().millisecondsSinceEpoch}',
      message: 'Charged via Stripe',
    );
  }
  
  @override
  Future<bool> refund(String transactionId) async {
    print('Stripe: Refunding $transactionId');
    await Future.delayed(Duration(milliseconds: 50));
    return true;
  }
}

class PayPalProvider implements PaymentProvider {
  @override
  String get name => 'PayPal';
  
  @override
  Future<PaymentResponse> charge(PaymentRequest request) async {
    print('PayPal: Processing charge for $${request.amount}');
    await Future.delayed(Duration(milliseconds: 150));
    
    return PaymentResponse(
      success: true,
      transactionId: 'paypal_${DateTime.now().millisecondsSinceEpoch}',
      message: 'Charged via PayPal',
    );
  }
  
  @override
  Future<bool> refund(String transactionId) async {
    print('PayPal: Refunding $transactionId');
    await Future.delayed(Duration(milliseconds: 50));
    return true;
  }
}

// Complex subsystem: Fraud detection
class FraudDetector {
  Future<FraudCheckResult> check(PaymentRequest request) async {
    print('FraudDetector: Checking transaction');
    await Future.delayed(Duration(milliseconds: 50));
    
    // Simulate fraud checks
    if (request.amount > 5000) {
      return FraudCheckResult(
        risk: RiskLevel.high,
        message: 'High amount transaction',
      );
    }
    
    return FraudCheckResult(
      risk: RiskLevel.low,
      message: 'Transaction looks safe',
    );
  }
}

enum RiskLevel { low, medium, high }

class FraudCheckResult {
  final RiskLevel risk;
  final String message;
  
  FraudCheckResult({required this.risk, required this.message});
}

// Complex subsystem: Transaction logger
class TransactionLogger {
  final List<TransactionLog> _logs = [];
  
  void log(TransactionLog entry) {
    print('Logger: Recording transaction ${entry.transactionId}');
    _logs.add(entry);
  }
  
  List<TransactionLog> getHistory() => List.unmodifiable(_logs);
  
  void exportToFile(String filename) {
    print('Logger: Exporting ${_logs.length} transactions to $filename');
  }
}

class TransactionLog {
  final String transactionId;
  final double amount;
  final String provider;
  final bool success;
  final DateTime timestamp;
  
  TransactionLog({
    required this.transactionId,
    required this.amount,
    required this.provider,
    required this.success,
    required this.timestamp,
  });
}

// Complex subsystem: Currency converter
class CurrencyConverter {
  final Map<String, double> _rates = {
    'USD': 1.0,
    'EUR': 0.85,
    'GBP': 0.73,
    'JPY': 110.0,
  };
  
  double convert(double amount, String from, String to) {
    print('CurrencyConverter: Converting $amount from $from to $to');
    final amountInUSD = amount / _rates[from]!;
    return amountInUSD * _rates[to]!;
  }
}

// Data models
class PaymentRequest {
  final double amount;
  final String currency;
  final String cardNumber;
  final String customerEmail;
  
  PaymentRequest({
    required this.amount,
    required this.currency,
    required this.cardNumber,
    required this.customerEmail,
  });
}

class PaymentResponse {
  final bool success;
  final String? transactionId;
  final String message;
  
  PaymentResponse({
    required this.success,
    this.transactionId,
    required this.message,
  });
}

// Facade: Simplifies payment processing
class PaymentFacade {
  final List<PaymentProvider> _providers;
  final FraudDetector _fraudDetector;
  final TransactionLogger _logger;
  final CurrencyConverter _currencyConverter;
  
  PaymentFacade({
    required List<PaymentProvider> providers,
    required FraudDetector fraudDetector,
    required TransactionLogger logger,
    required CurrencyConverter currencyConverter,
  })  : _providers = providers,
        _fraudDetector = fraudDetector,
        _logger = logger,
        _currencyConverter = currencyConverter;
  
  // Simple interface for payment processing
  Future<PaymentResponse> processPayment({
    required double amount,
    required String currency,
    required String cardNumber,
    required String customerEmail,
    String? preferredProvider,
  }) async {
    print('=== Processing Payment ===');
    print('Amount: $amount $currency');
    print('Customer: $customerEmail\n');
    
    // Step 1: Convert to USD if needed
    double amountInUSD = amount;
    if (currency != 'USD') {
      amountInUSD = _currencyConverter.convert(amount, currency, 'USD');
      print('Converted to USD: $${amountInUSD.toStringAsFixed(2)}\n');
    }
    
    final request = PaymentRequest(
      amount: amountInUSD,
      currency: 'USD',
      cardNumber: cardNumber,
      customerEmail: customerEmail,
    );
    
    // Step 2: Fraud check
    final fraudCheck = await _fraudDetector.check(request);
    print('Fraud check: ${fraudCheck.message}');
    
    if (fraudCheck.risk == RiskLevel.high) {
      print('⚠️  Transaction blocked due to high risk\n');
      
      _logger.log(TransactionLog(
        transactionId: 'blocked_${DateTime.now().millisecondsSinceEpoch}',
        amount: amountInUSD,
        provider: 'none',
        success: false,
        timestamp: DateTime.now(),
      ));
      
      return PaymentResponse(
        success: false,
        message: 'Transaction blocked: High fraud risk',
      );
    }
    
    // Step 3: Select provider
    PaymentProvider provider;
    if (preferredProvider != null) {
      provider = _providers.firstWhere((p) => p.name == preferredProvider);
    } else {
      // Use first available provider
      provider = _providers.first;
    }
    
    print('Using provider: ${provider.name}\n');
    
    // Step 4: Process payment
    final response = await provider.charge(request);
    
    // Step 5: Log transaction
    _logger.log(TransactionLog(
      transactionId: response.transactionId ?? 'failed',
      amount: amountInUSD,
      provider: provider.name,
      success: response.success,
      timestamp: DateTime.now(),
    ));
    
    if (response.success) {
      print('✓ Payment successful!');
    } else {
      print('✗ Payment failed: ${response.message}');
    }
    
    return response;
  }
  
  Future<bool> refundPayment(String transactionId) async {
    print('=== Processing Refund ===');
    print('Transaction: $transactionId\n');
    
    // Find original transaction
    final log = _logger.getHistory()
        .firstWhere((l) => l.transactionId == transactionId);
    
    // Find provider
    final provider = _providers.firstWhere((p) => p.name == log.provider);
    
    // Process refund
    final success = await provider.refund(transactionId);
    
    if (success) {
      print('✓ Refund successful!');
      _logger.log(TransactionLog(
        transactionId: 'refund_$transactionId',
        amount: -log.amount,
        provider: log.provider,
        success: true,
        timestamp: DateTime.now(),
      ));
    } else {
      print('✗ Refund failed');
    }
    
    return success;
  }
  
  void generateReport() {
    print('=== Transaction Report ===');
    final history = _logger.getHistory();
    
    print('Total transactions: ${history.length}');
    
    final successful = history.where((l) => l.success).length;
    print('Successful: $successful');
    print('Failed: ${history.length - successful}');
    
    final totalAmount = history
        .where((l) => l.success && l.amount > 0)
        .fold(0.0, (sum, log) => sum + log.amount);
    print('Total processed: $${totalAmount.toStringAsFixed(2)} USD');
  }
}

void main() async {
  // Create complex subsystems
  final providers = [
    StripeProvider(),
    PayPalProvider(),
  ];
  final fraudDetector = FraudDetector();
  final logger = TransactionLogger();
  final currencyConverter = CurrencyConverter();
  
  // Create simple facade
  final payment = PaymentFacade(
    providers: providers,
    fraudDetector: fraudDetector,
    logger: logger,
    currencyConverter: currencyConverter,
  );
  
  // Simple interface - client doesn't need to know about fraud checks,
  // currency conversion, logging, provider selection, etc.
  
  await payment.processPayment(
    amount: 99.99,
    currency: 'USD',
    cardNumber: '4242-4242-4242-4242',
    customerEmail: 'alice@example.com',
  );
  
  await payment.processPayment(
    amount: 149.99,
    currency: 'EUR',
    cardNumber: '5555-5555-5555-4444',
    customerEmail: 'bob@example.com',
    preferredProvider: 'PayPal',
  );
  
  // High-risk transaction (will be blocked)
  await payment.processPayment(
    amount: 8000.00,
    currency: 'USD',
    cardNumber: '3782-8224-6310-005',
    customerEmail: 'suspicious@example.com',
  );
  
  payment.generateReport();
}'''),

        // Example 4: Flutter - Camera Facade
        StrCodeBlock(r'''import 'package:flutter/material.dart';
import 'dart:async';

// Example 4: Flutter - Camera Operations Facade
// Use case: Simplifying complex camera API

// Complex subsystem classes (simulated)
class CameraController {
  bool _isInitialized = false;
  
  Future<void> initialize() async {
    print('CameraController: Initializing camera');
    await Future.delayed(Duration(milliseconds: 500));
    _isInitialized = true;
    print('CameraController: Initialized');
  }
  
  Future<void> dispose() async {
    print('CameraController: Disposing camera');
    _isInitialized = false;
  }
  
  Future<String> takePicture() async {
    if (!_isInitialized) throw Exception('Camera not initialized');
    print('CameraController: Capturing image');
    await Future.delayed(Duration(milliseconds: 200));
    return '/path/to/image_${DateTime.now().millisecondsSinceEpoch}.jpg';
  }
  
  void setFlashMode(FlashMode mode) {
    print('CameraController: Flash mode set to $mode');
  }
  
  void setFocusMode(FocusMode mode) {
    print('CameraController: Focus mode set to $mode');
  }
  
  void setZoom(double level) {
    print('CameraController: Zoom set to $level');
  }
}

enum FlashMode { off, auto, always }
enum FocusMode { auto, locked, continuous }

class ImageProcessor {
  Future<String> compress(String path, int quality) async {
    print('ImageProcessor: Compressing image (quality: $quality)');
    await Future.delayed(Duration(milliseconds: 100));
    return path.replaceAll('.jpg', '_compressed.jpg');
  }
  
  Future<String> crop(String path, int width, int height) async {
    print('ImageProcessor: Cropping to ${width}x$height');
    await Future.delayed(Duration(milliseconds: 100));
    return path.replaceAll('.jpg', '_cropped.jpg');
  }
  
  Future<String> rotate(String path, int degrees) async {
    print('ImageProcessor: Rotating $degrees degrees');
    await Future.delayed(Duration(milliseconds: 50));
    return path.replaceAll('.jpg', '_rotated.jpg');
  }
  
  Future<String> addWatermark(String path, String text) async {
    print('ImageProcessor: Adding watermark: $text');
    await Future.delayed(Duration(milliseconds: 80));
    return path.replaceAll('.jpg', '_watermarked.jpg');
  }
}

class StorageService {
  Future<String> saveToGallery(String path) async {
    print('StorageService: Saving to gallery');
    await Future.delayed(Duration(milliseconds: 150));
    return '/gallery/${path.split('/').last}';
  }
  
  Future<String> uploadToCloud(String path) async {
    print('StorageService: Uploading to cloud');
    await Future.delayed(Duration(milliseconds: 300));
    return 'https://cloud.example.com/${path.split('/').last}';
  }
  
  Future<void> deleteLocal(String path) async {
    print('StorageService: Deleting local file: $path');
  }
}

class PermissionHandler {
  Future<bool> requestCameraPermission() async {
    print('PermissionHandler: Requesting camera permission');
    await Future.delayed(Duration(milliseconds: 100));
    return true; // Simulate granted
  }
  
  Future<bool> requestStoragePermission() async {
    print('PermissionHandler: Requesting storage permission');
    await Future.delayed(Duration(milliseconds: 100));
    return true; // Simulate granted
  }
}

// Facade: Simple camera interface
class SimpleCameraFacade {
  final CameraController _camera;
  final ImageProcessor _processor;
  final StorageService _storage;
  final PermissionHandler _permissions;
  
  SimpleCameraFacade({
    required CameraController camera,
    required ImageProcessor processor,
    required StorageService storage,
    required PermissionHandler permissions,
  })  : _camera = camera,
        _processor = processor,
        _storage = storage,
        _permissions = permissions;
  
  // Simple method: Take photo and save
  Future<String?> captureAndSave({
    bool flash = false,
    bool saveToGallery = true,
  }) async {
    print('=== Capture and Save ===\n');
    
    // Handle all the complexity internally
    final cameraGranted = await _permissions.requestCameraPermission();
    if (!cameraGranted) {
      print('✗ Camera permission denied');
      return null;
    }
    
    final storageGranted = await _permissions.requestStoragePermission();
    if (!storageGranted) {
      print('✗ Storage permission denied');
      return null;
    }
    
    await _camera.initialize();
    _camera.setFlashMode(flash ? FlashMode.always : FlashMode.off);
    _camera.setFocusMode(FocusMode.auto);
    
    final imagePath = await _camera.takePicture();
    
    String? savedPath;
    if (saveToGallery) {
      savedPath = await _storage.saveToGallery(imagePath);
    }
    
    await _camera.dispose();
    
    print('\n✓ Photo captured and saved!');
    return savedPath ?? imagePath;
  }
  
  // Simple method: Take photo with processing
  Future<String?> captureWithProcessing({
    int quality = 85,
    int? cropWidth,
    int? cropHeight,
    String? watermark,
  }) async {
    print('=== Capture with Processing ===\n');
    
    await _permissions.requestCameraPermission();
    
    await _camera.initialize();
    _camera.setFocusMode(FocusMode.auto);
    
    var imagePath = await _camera.takePicture();
    
    // Process image
    imagePath = await _processor.compress(imagePath, quality);
    
    if (cropWidth != null && cropHeight != null) {
      imagePath = await _processor.crop(imagePath, cropWidth, cropHeight);
    }
    
    if (watermark != null) {
      imagePath = await _processor.addWatermark(imagePath, watermark);
    }
    
    await _camera.dispose();
    
    print('\n✓ Photo captured and processed!');
    return imagePath;
  }
  
  // Simple method: Take photo and upload
  Future<String?> captureAndUpload() async {
    print('=== Capture and Upload ===\n');
    
    await _permissions.requestCameraPermission();
    
    await _camera.initialize();
    final imagePath = await _camera.takePicture();
    await _camera.dispose();
    
    // Compress before upload
    final compressed = await _processor.compress(imagePath, 70);
    
    // Upload
    final cloudUrl = await _storage.uploadToCloud(compressed);
    
    // Delete local
    await _storage.deleteLocal(imagePath);
    await _storage.deleteLocal(compressed);
    
    print('\n✓ Photo uploaded to cloud!');
    return cloudUrl;
  }
}

// Demo widget
class CameraDemo extends StatelessWidget {
  const CameraDemo({super.key});
  
  @override
  Widget build(BuildContext context) {
    // Create subsystems
    final camera = CameraController();
    final processor = ImageProcessor();
    final storage = StorageService();
    final permissions = PermissionHandler();
    
    // Create facade
    final simpleCam = SimpleCameraFacade(
      camera: camera,
      processor: processor,
      storage: storage,
      permissions: permissions,
    );
    
    return Scaffold(
      appBar: AppBar(title: Text('Camera Facade Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final path = await simpleCam.captureAndSave(flash: true);
                print('Result: $path');
              },
              child: Text('Quick Photo'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                final path = await simpleCam.captureWithProcessing(
                  quality: 80,
                  cropWidth: 800,
                  cropHeight: 600,
                  watermark: '© 2026',
                );
                print('Result: $path');
              },
              child: Text('Photo with Processing'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                final url = await simpleCam.captureAndUpload();
                print('Result: $url');
              },
              child: Text('Photo to Cloud'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CameraDemo(),
  ));
}'''),
      ],
      ar: [
        // Arabic versions would go here
      ],
    ),
    pros: LocSL(
      en: [
        "Simplifies usage of complex systems - provides easy-to-use interface",
        "Reduces dependencies on subsystem classes - decouples client from subsystem",
        "Provides a single, clear entry point to subsystem functionality",
        "Easy to understand and use - hides complexity behind simple methods",
        "Makes code more maintainable - changes to subsystem don't affect facade interface",
        "Can combine multiple subsystem operations into convenient methods",
        "Doesn't prevent direct subsystem access when advanced control is needed",
      ],
      ar: [
        "يبسط استخدام الأنظمة المعقدة - يوفر واجهة سهلة الاستخدام",
        "يقلل التبعيات على فئات النظام الفرعي - يفصل العميل عن النظام الفرعي",
        "يوفر نقطة دخول واحدة واضحة لوظائف النظام الفرعي",
        "سهل الفهم والاستخدام - يخفي التعقيد خلف طرق بسيطة",
        "يجعل الكود أكثر قابلية للصيانة - التغييرات في النظام الفرعي لا تؤثر على واجهة الواجهة",
        "يمكن دمج عدة عمليات للنظام الفرعي في طرق مريحة",
        "لا يمنع الوصول المباشر للنظام الفرعي عندما يكون التحكم المتقدم مطلوباً",
      ],
    ),
    cons: LocSL(
      en: [
        "Can become a god object if given too many responsibilities",
        "May limit flexibility if facade is too opinionated or restrictive",
        "Can hide too much, making advanced usage difficult",
        "Additional layer of abstraction adds slight complexity",
        "Need to maintain facade when subsystem changes",
        "Multiple competing facades for same subsystem can cause confusion",
      ],
      ar: [
        "قد يصبح كائناً إلهياً (God Object) إذا أُعطي مسؤوليات كثيرة جداً",
        "قد يحد من المرونة إذا كانت الواجهة متحيزة جداً أو مقيدة",
        "قد تخفي الكثير، مما يجعل الاستخدام المتقدم صعباً",
        "طبقة تجريد إضافية تضيف تعقيداً طفيفاً",
        "تحتاج للحفاظ على الواجهة عندما يتغير النظام الفرعي",
        "واجهات متنافسة متعددة لنفس النظام الفرعي قد تسبب ارتباكاً",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Facade when:"),
        ULContent(
          value: [
            "You need a simple interface to a complex subsystem",
            "You want to layer your system - provide clear boundaries between layers",
            "You want to reduce coupling between client and subsystem implementation",
            "You're integrating legacy code or third-party libraries with complex APIs",
            "You want to provide different levels of access (simple facade vs direct subsystem)",
            "Common operations require coordinating multiple subsystem classes",
          ],
        ),
        NoteContent(
          "Facade is about simplification and convenience, not mandatory. Clients should still be able to access subsystems directly for advanced use cases.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent("استخدم الواجهة عندما:"),
        ULContent(
          value: [
            "تحتاج واجهة بسيطة لنظام فرعي معقد",
            "تريد تطبيق طبقات على نظامك - توفير حدود واضحة بين الطبقات",
            "تريد تقليل الاقتران بين العميل وتطبيق النظام الفرعي",
            "تدمج كوداً قديماً أو مكتبات طرف ثالث بواجهات APIs معقدة",
            "تريد توفير مستويات وصول مختلفة (واجهة بسيطة مقابل نظام فرعي مباشر)",
            "العمليات الشائعة تتطلب تنسيق فئات نظام فرعي متعددة",
          ],
        ),
        NoteContent(
          "الواجهة تتعلق بالتبسيط والراحة، وليست إلزامية. يجب أن يظل بإمكان العملاء الوصول للأنظمة الفرعية مباشرة لحالات الاستخدام المتقدمة.",
          type: .tip,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Making facade too complex with too many responsibilities - keep it focused",
        "Exposing too much internal structure through facade interface",
        "Not allowing direct subsystem access when advanced control is needed",
        "Creating multiple competing facades for the same subsystem",
        "Putting business logic in facade - it should only coordinate subsystems",
        "Making facade stateful when it should be stateless",
        "Not documenting when direct subsystem access is appropriate",
      ],
      ar: [
        "جعل الواجهة معقدة جداً مع مسؤوليات كثيرة - أبقها مركزة",
        "كشف الكثير من البنية الداخلية من خلال واجهة الواجهة",
        "عدم السماح بالوصول المباشر للنظام الفرعي عندما يكون التحكم المتقدم مطلوباً",
        "إنشاء واجهات متنافسة متعددة لنفس النظام الفرعي",
        "وضع منطق عمل في الواجهة - يجب أن تنسق الأنظمة الفرعية فقط",
        "جعل الواجهة حالية (Stateful) عندما يجب أن تكون عديمة الحالة (Stateless)",
        "عدم توثيق متى يكون الوصول المباشر للنظام الفرعي مناسباً",
      ],
    ),
    relatedPatterns: [
      PK.adapter,
      PK.singleton,
      PK.abstractFactory,
      PK.mediator,
    ],
    oftenConfusedWith: [PK.adapter, PK.mediator],
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
          "The Flyweight pattern minimizes memory usage by sharing as much data as possible with similar objects. It separates object state into intrinsic state (shared and immutable) and extrinsic state (context-specific and passed in). Instead of storing all data in every object, shared data is stored once and referenced by many objects.",
        ),
        AnalogyContent(
          "Think of characters in a text editor. The letter 'A' appears thousands of times in a document, but you don't need thousands of separate objects storing the font, size, and shape of 'A'. Instead, one Flyweight 'A' object stores the character design (intrinsic), and each instance just stores its position and color (extrinsic). Memory: 1 design + 1000 positions, not 1000 complete characters.",
        ),
        StrContent(
          "This pattern is particularly effective when you need to create a large number of similar objects. The key is identifying which state can be shared (intrinsic - same for all instances) vs which must be unique (extrinsic - different per instance). The memory savings can be dramatic: from megabytes to kilobytes.",
        ),
        ULContent(
          title: "Key Concepts:",
          value: [
            "Intrinsic state: Shared, immutable data stored in the flyweight object",
            "Extrinsic state: Context-specific, variable data passed to flyweight methods",
            "Flyweight factory: Manages and reuses flyweight instances, ensures sharing",
            "Context: Stores extrinsic state and uses flyweights for operations",
            "Sharing: Same flyweight instance is used by many contexts",
          ],
        ),
        DiagramContent(
          "Memory Comparison:\nWithout Flyweight:\n  Object1 [intrinsic + extrinsic]\n  Object2 [intrinsic + extrinsic]\n  Object3 [intrinsic + extrinsic]\n  ... (N objects = N × full data)\n\nWith Flyweight:\n  Flyweight [intrinsic] ← shared\n  Context1 [extrinsic only]\n  Context2 [extrinsic only]\n  Context3 [extrinsic only]\n  ... (1 flyweight + N contexts)",
        ),
        StrContent(
          "The flyweight factory is crucial - it maintains a pool of flyweights and ensures that the same intrinsic state always returns the same flyweight instance. Without this sharing mechanism, you'd just have regular objects.",
        ),
        NoteContent(
          "Flyweight is about memory optimization through sharing immutable state. Object Pool is about reusing expensive-to-create objects. Both reduce object creation, but Flyweight focuses on memory, Pool focuses on creation cost.",
          type: .important,
        ),
        ComparisonContent({
          'Flyweight':
              'Shares immutable state, many logical objects, memory optimization',
          'Object Pool':
              'Reuses mutable objects, fewer actual objects, creation optimization',
          'Singleton': 'One instance globally, not about sharing state',
          'Prototype': 'Clones objects, doesn\'t share state',
        }, title: 'Flyweight vs Similar Patterns'),
        StrContent(
          "Common use cases in Flutter/Dart: text rendering (character glyphs), game sprites (shared textures/meshes), icons (shared image data), map markers (shared marker designs), particle systems, and any scenario with thousands of similar objects.",
        ),
        NoteContent(
          "Flyweight trades CPU time (looking up shared objects) for memory. Only use when: (1) you have many objects, (2) memory is constrained, (3) most state can be shared. Profile first - premature optimization is the root of all evil!",
          type: .warning,
        ),
      ],
      ar: [
        StrContent(
          "نمط وزن الريشة يقلل استخدام الذاكرة من خلال مشاركة أكبر قدر ممكن من البيانات مع كائنات مشابهة. يفصل حالة الكائن إلى حالة جوهرية (Intrinsic State) (مشتركة وثابتة) وحالة خارجية (Extrinsic State) (خاصة بالسياق ومُمررة). بدلاً من تخزين جميع البيانات في كل كائن، تُخزن البيانات المشتركة مرة واحدة ويُشار إليها من قبل كائنات كثيرة.",
        ),
        AnalogyContent(
          "فكر في الأحرف في محرر نصوص. الحرف 'أ' يظهر آلاف المرات في مستند، لكنك لا تحتاج لآلاف الكائنات المنفصلة التي تخزن الخط والحجم وشكل 'أ'. بدلاً من ذلك، كائن وزن ريشة واحد 'أ' يخزن تصميم الحرف (جوهري)، وكل نسخة تخزن فقط موضعها ولونها (خارجي). الذاكرة: 1 تصميم + 1000 موضع، وليس 1000 حرف كامل.",
        ),
        StrContent(
          "هذا النمط فعال بشكل خاص عندما تحتاج لإنشاء عدد كبير من الكائنات المتشابهة. المفتاح هو تحديد أي حالة يمكن مشاركتها (جوهرية - نفس الشيء لجميع النسخ) مقابل أي يجب أن تكون فريدة (خارجية - مختلفة لكل نسخة). يمكن أن تكون وفورات الذاكرة درامية: من ميجابايت إلى كيلوبايت.",
        ),
        ULContent(
          title: "المفاهيم الأساسية:",
          value: [
            "الحالة الجوهرية (Intrinsic State): بيانات مشتركة وثابتة مُخزنة في كائن وزن الريشة",
            "الحالة الخارجية (Extrinsic State): بيانات خاصة بالسياق ومتغيرة تُمرر لطرق وزن الريشة",
            "مصنع وزن الريشة (Flyweight Factory): يدير ويعيد استخدام نسخ وزن الريشة، يضمن المشاركة",
            "السياق (Context): يخزن الحالة الخارجية ويستخدم أوزان الريشة للعمليات",
            "المشاركة (Sharing): نفس نسخة وزن الريشة تُستخدم من قبل سياقات كثيرة",
          ],
        ),
        DiagramContent(
          "مقارنة الذاكرة:\nبدون وزن الريشة:\n  Object1 [جوهري + خارجي]\n  Object2 [جوهري + خارجي]\n  Object3 [جوهري + خارجي]\n  ... (N كائنات = N × بيانات كاملة)\n\nمع وزن الريشة:\n  Flyweight [جوهري] ← مشترك\n  Context1 [خارجي فقط]\n  Context2 [خارجي فقط]\n  Context3 [خارجي فقط]\n  ... (1 وزن ريشة + N سياقات)",
        ),
        StrContent(
          "مصنع وزن الريشة حاسم - يحتفظ بمجموعة من أوزان الريشة ويضمن أن نفس الحالة الجوهرية تُرجع دائماً نفس نسخة وزن الريشة. بدون آلية المشاركة هذه، ستكون لديك فقط كائنات عادية.",
        ),
        NoteContent(
          "وزن الريشة يتعلق بتحسين الذاكرة من خلال مشاركة الحالة الثابتة. تجمع الكائنات (Object Pool) يتعلق بإعادة استخدام كائنات مكلفة الإنشاء. كلاهما يقلل إنشاء الكائنات، لكن وزن الريشة يركز على الذاكرة، التجمع يركز على تكلفة الإنشاء.",
          type: .important,
        ),
        ComparisonContent({
          'وزن الريشة (Flyweight)':
              'يشارك الحالة الثابتة، كائنات منطقية كثيرة، تحسين الذاكرة',
          'تجمع الكائنات (Object Pool)':
              'يعيد استخدام كائنات قابلة للتغيير، كائنات فعلية أقل، تحسين الإنشاء',
          'المفرد (Singleton)': 'نسخة واحدة عالمياً، لا يتعلق بمشاركة الحالة',
          'النموذج الأولي (Prototype)': 'يستنسخ الكائنات، لا يشارك الحالة',
        }, title: 'وزن الريشة مقابل الأنماط المشابهة'),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: عرض النص (رموز الأحرف - Glyphs)، رموز الألعاب (Sprites) (أنسجة/شبكات مشتركة)، الأيقونات (بيانات صورة مشتركة)، علامات الخريطة (تصاميم علامة مشتركة)، أنظمة الجسيمات (Particle Systems)، وأي سيناريو به آلاف الكائنات المتشابهة.",
        ),
        NoteContent(
          "وزن الريشة يتاجر بوقت المعالج (CPU) (البحث عن كائنات مشتركة) مقابل الذاكرة. استخدم فقط عندما: (1) لديك كائنات كثيرة، (2) الذاكرة محدودة، (3) معظم الحالة يمكن مشاركتها. قم بالتحليل أولاً - التحسين المبكر هو جذر كل الشرور!",
          type: .warning,
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Character Rendering
        StrCodeBlock(r'''// Example 1: Basic - Text Character Flyweights
import 'package:flutter/material.dart';
// Use case: Rendering thousands of characters efficiently

// Flyweight: Shared character glyph (intrinsic state)
class CharacterGlyph {
  final String character;
  final String fontFamily;
  final int fontSize;
  final bool bold;
  final bool italic;
  
  // This data is shared among all instances of this character
  CharacterGlyph({
    required this.character,
    required this.fontFamily,
    required this.fontSize,
    required this.bold,
    required this.italic,
  }) {
    print('Creating glyph for "$character" (font: $fontFamily, size: $fontSize)');
  }
  
  // Render using extrinsic state (position, color)
  void render(int x, int y, String color) {
    final style = [
      if (bold) 'bold',
      if (italic) 'italic',
    ].join(' ');
    
    print('Rendering "$character" at ($x, $y) in $color $style');
  }
  
  int getMemorySize() {
    // Approximate memory: character + font info
    return character.length * 2 + fontFamily.length * 2 + 20;
  }
}

// Flyweight Factory: Manages and shares glyphs
class GlyphFactory {
  final Map<String, CharacterGlyph> _glyphs = {};
  
  CharacterGlyph getGlyph({
    required String character,
    String fontFamily = 'Arial',
    int fontSize = 12,
    bool bold = false,
    bool italic = false,
  }) {
    // Create unique key for this combination
    final key = '$character-$fontFamily-$fontSize-$bold-$italic';
    
    // Return existing or create new
    return _glyphs.putIfAbsent(
      key,
      () => CharacterGlyph(
        character: character,
        fontFamily: fontFamily,
        fontSize: fontSize,
        bold: bold,
        italic: italic,
      ),
    );
  }
  
  int get glyphCount => _glyphs.length;
  
  int getTotalMemory() {
    return _glyphs.values.fold(0, (sum, glyph) => sum + glyph.getMemorySize());
  }
}

// Context: Stores extrinsic state (position, color)
class CharacterInstance {
  final CharacterGlyph glyph; // Reference to shared flyweight
  final int x, y; // Extrinsic state
  final String color; // Extrinsic state
  
  CharacterInstance(this.glyph, this.x, this.y, this.color);
  
  void render() {
    glyph.render(x, y, color);
  }
  
  int getMemorySize() {
    // Only extrinsic state: position + color reference
    return 12; // 2 ints + 1 reference
  }
}

// Document using flyweight pattern
class TextDocument {
  final List<CharacterInstance> _characters = [];
  final GlyphFactory _glyphFactory = GlyphFactory();
  
  void addText(String text, int startX, int startY, {String color = 'black'}) {
    int x = startX;
    for (final char in text.split('')) {
      if (char == ' ') {
        x += 8; // Space width
        continue;
      }
      
      final glyph = _glyphFactory.getGlyph(character: char);
      _characters.add(CharacterInstance(glyph, x, startY, color));
      x += 10; // Character width
    }
  }
  
  void render() {
    print('=== Rendering Document ===');
    for (final char in _characters) {
      char.render();
    }
  }
  
  void printMemoryStats() {
    final glyphMemory = _glyphFactory.getTotalMemory();
    final contextMemory = _characters.fold(0, (sum, c) => sum + c.getMemorySize());
    final totalMemory = glyphMemory + contextMemory;
    
    // Calculate memory without flyweight
    final withoutFlyweight = _characters.length * 50; // Approximate full object size
    
    print('=== Memory Statistics ===');
    print('Characters: ${_characters.length}');
    print('Unique glyphs: ${_glyphFactory.glyphCount}');
    print('');
    print('With Flyweight:');
    print('  Glyph memory: $glyphMemory bytes');
    print('  Context memory: $contextMemory bytes');
    print('  Total: $totalMemory bytes');
    print('');
    print('Without Flyweight (estimated): $withoutFlyweight bytes');
    print('Memory saved: ${withoutFlyweight - totalMemory} bytes');
    print('Reduction: ${((1 - totalMemory / withoutFlyweight) * 100).toStringAsFixed(1)}%');
  }
}

void main() {
  final doc = TextDocument();
  
  // Add some text (many repeated characters)
  doc.addText('Hello World', 0, 0);
  doc.addText('Hello Again', 0, 20, color: 'blue');
  doc.addText('World of Flyweights', 0, 40, color: 'red');
  
  doc.render();
  doc.printMemoryStats();
}'''),

        // Example 2: Intermediate - Game Particle System
        StrCodeBlock(
          r'''// Example 2: Intermediate - Particle System with Flyweight
// Use case: Rendering thousands of particles efficiently

import 'dart:math';
import 'package:flutter/material.dart';

// Flyweight: Shared particle appearance (intrinsic state)
class ParticleType {
  final String name;
  final String texture; // Image path
  final double baseSize;
  final Color baseColor;
  
  ParticleType({
    required this.name,
    required this.texture,
    required this.baseSize,
    required this.baseColor,
  }) {
    print('Created particle type: $name (texture: $texture)');
  }
  
  // Render using extrinsic state
  void render({
    required double x,
    required double y,
    required double rotation,
    required double scale,
    required double opacity,
  }) {
    final size = baseSize * scale;
    print('Draw $name at (${x.toStringAsFixed(1)}, ${y.toStringAsFixed(1)}) '
        'size: ${size.toStringAsFixed(1)} opacity: ${opacity.toStringAsFixed(2)}');
  }
}

// Flyweight Factory
class ParticleTypeFactory {
  final Map<String, ParticleType> _types = {};
  
  ParticleType getType(String name) {
    return _types.putIfAbsent(name, () {
      // Create different particle types
      return switch (name) {
        'fire' => ParticleType(
          name: 'fire',
          texture: 'fire.png',
          baseSize: 16.0,
          baseColor: Colors.orange,
        ),
        'smoke' => ParticleType(
          name: 'smoke',
          texture: 'smoke.png',
          baseSize: 24.0,
          baseColor: Colors.grey,
        ),
        'spark' => ParticleType(
          name: 'spark',
          texture: 'spark.png',
          baseSize: 8.0,
          baseColor: Colors.yellow,
        ),
        'magic' => ParticleType(
          name: 'magic',
          texture: 'magic.png',
          baseSize: 12.0,
          baseColor: Colors.purple,
        ),
        _ => throw Exception('Unknown particle type: $name'),
      };
    });
  }
  
  int get typeCount => _types.length;
}

// Context: Individual particle instance (extrinsic state)
class Particle {
  final ParticleType type; // Reference to shared flyweight
  
  // Extrinsic state - unique per particle
  double x, y;
  double velocityX, velocityY;
  double rotation;
  double rotationSpeed;
  double scale;
  double opacity;
  double life; // 0.0 to 1.0
  
  Particle({
    required this.type,
    required this.x,
    required this.y,
    required this.velocityX,
    required this.velocityY,
    this.rotation = 0.0,
    this.rotationSpeed = 0.0,
    this.scale = 1.0,
    this.opacity = 1.0,
    this.life = 1.0,
  });
  
  void update(double deltaTime) {
    // Update physics
    x += velocityX * deltaTime;
    y += velocityY * deltaTime;
    rotation += rotationSpeed * deltaTime;
    
    // Fade out over life
    life -= deltaTime * 0.5;
    opacity = life.clamp(0.0, 1.0);
    
    // Apply gravity
    velocityY += 9.8 * deltaTime;
  }
  
  void render() {
    if (life > 0) {
      type.render(
        x: x,
        y: y,
        rotation: rotation,
        scale: scale,
        opacity: opacity,
      );
    }
  }
  
  bool get isDead => life <= 0;
}

// Particle System
class ParticleSystem {
  final ParticleTypeFactory _typeFactory = ParticleTypeFactory();
  final List<Particle> _particles = [];
  final Random _random = Random();
  
  void emit(String typeName, double x, double y, int count) {
    final type = _typeFactory.getType(typeName);
    
    for (int i = 0; i < count; i++) {
      _particles.add(Particle(
        type: type,
        x: x,
        y: y,
        velocityX: (_random.nextDouble() - 0.5) * 100,
        velocityY: _random.nextDouble() * -100,
        rotationSpeed: (_random.nextDouble() - 0.5) * 360,
        scale: 0.5 + _random.nextDouble() * 0.5,
        life: 0.5 + _random.nextDouble() * 0.5,
      ));
    }
    
    print('Emitted $count $typeName particles');
  }
  
  void update(double deltaTime) {
    for (final particle in _particles) {
      particle.update(deltaTime);
    }
    
    // Remove dead particles
    _particles.removeWhere((p) => p.isDead);
  }
  
  void render() {
    for (final particle in _particles) {
      particle.render();
    }
  }
  
  void printStats() {
    print('=== Particle System Stats ===');
    print('Active particles: ${_particles.length}');
    print('Particle types: ${_typeFactory.typeCount}');
    print('Memory efficiency: ${_particles.length} particles share ${_typeFactory.typeCount} textures');
  }
}

void main() {
  final system = ParticleSystem();
  
  print('=== Particle System Demo ===\n');
  
  // Emit different types of particles
  system.emit('fire', 100, 100, 50);
  system.emit('smoke', 150, 100, 30);
  system.emit('spark', 200, 100, 100);
  system.emit('fire', 120, 120, 50); // Reuses 'fire' flyweight
  system.emit('magic', 180, 120, 40);
  
  system.printStats();
  
  print('=== Simulating one frame ===');
  system.update(0.016); // ~60 FPS
  system.render();
  
  print('\nNote: All fire particles share the same ParticleType object!');
  print('Without Flyweight: 270 particles × ~1KB = 270KB');
  print('With Flyweight: 4 types × 1KB + 270 particles × 64 bytes = ~21KB');
  print('Memory saved: ~92%!');
}''',
        ),

        // Example 3: Advanced - Forest Rendering
        StrCodeBlock(r'''// Example 3: Advanced - Forest with Millions of Trees
// Use case: Rendering massive number of similar objects

import 'dart:math';

// Flyweight: Tree model (intrinsic state)
class TreeModel {
  final String species;
  final String meshData; // 3D model data
  final String textureData; // Texture data
  final double baseHeight;
  final double baseWidth;
  
  TreeModel({
    required this.species,
    required this.meshData,
    required this.textureData,
    required this.baseHeight,
    required this.baseWidth,
  }) {
    print('Loading tree model: $species (mesh: ${meshData.length} bytes)');
  }
  
  void render({
    required double x,
    required double y,
    required double z,
    required double height,
    required double rotation,
    required Color tint,
  }) {
    // Simulate rendering with scaled model
    print('Render $species at (${x.toStringAsFixed(1)}, ${y.toStringAsFixed(1)}, ${z.toStringAsFixed(1)}) '
        'h:${height.toStringAsFixed(1)}m rot:${rotation.toStringAsFixed(0)}°');
  }
  
  int getMemorySize() {
    // Model + texture data
    return meshData.length + textureData.length + 100;
  }
}

// Flyweight Factory
class TreeModelFactory {
  final Map<String, TreeModel> _models = {};
  
  TreeModel getModel(String species) {
    return _models.putIfAbsent(species, () => _createModel(species));
  }
  
  TreeModel _createModel(String species) {
    return switch (species) {
      'oak' => TreeModel(
        species: 'oak',
        meshData: 'OAK_MESH_DATA' * 100, // Simulate large mesh
        textureData: 'OAK_TEXTURE_DATA' * 200,
        baseHeight: 15.0,
        baseWidth: 3.0,
      ),
      'pine' => TreeModel(
        species: 'pine',
        meshData: 'PINE_MESH_DATA' * 100,
        textureData: 'PINE_TEXTURE_DATA' * 200,
        baseHeight: 20.0,
        baseWidth: 2.0,
      ),
      'birch' => TreeModel(
        species: 'birch',
        meshData: 'BIRCH_MESH_DATA' * 100,
        textureData: 'BIRCH_TEXTURE_DATA' * 200,
        baseHeight: 12.0,
        baseWidth: 1.5,
      ),
      'maple' => TreeModel(
        species: 'maple',
        meshData: 'MAPLE_MESH_DATA' * 100,
        textureData: 'MAPLE_TEXTURE_DATA' * 200,
        baseHeight: 18.0,
        baseWidth: 3.5,
      ),
      _ => throw Exception('Unknown species: $species'),
    };
  }
  
  int get modelCount => _models.length;
  
  int getTotalMemory() {
    return _models.values.fold(0, (sum, model) => sum + model.getMemorySize());
  }
}

// Context: Individual tree instance (extrinsic state)
class Tree {
  final TreeModel model; // Reference to shared flyweight
  
  // Extrinsic state - unique per tree
  final double x, y, z; // Position
  final double height; // Variation in height
  final double rotation; // Rotation angle
  final Color tint; // Slight color variation
  
  Tree({
    required this.model,
    required this.x,
    required this.y,
    required this.z,
    required this.height,
    required this.rotation,
    required this.tint,
  });
  
  void render() {
    model.render(
      x: x,
      y: y,
      z: z,
      height: height,
      rotation: rotation,
      tint: tint,
    );
  }
  
  int getMemorySize() {
    // Position + height + rotation + tint = ~32 bytes
    return 32;
  }
}

// Forest with many trees
class Forest {
  final TreeModelFactory _modelFactory = TreeModelFactory();
  final List<Tree> _trees = [];
  final Random _random = Random();
  
  void plantTree(String species, double x, double z) {
    final model = _modelFactory.getModel(species);
    
    // Add natural variation
    final heightVariation = 0.8 + _random.nextDouble() * 0.4;
    final rotation = _random.nextDouble() * 360;
    final tintVariation = _random.nextInt(30) - 15;
    
    _trees.add(Tree(
      model: model,
      x: x,
      y: 0,
      z: z,
      height: model.baseHeight * heightVariation,
      rotation: rotation,
      tint: Color.fromARGB(255, 
        (100 + tintVariation).clamp(0, 255),
        (150 + tintVariation).clamp(0, 255),
        (100 + tintVariation).clamp(0, 255),
      ),
    ));
  }
  
  void generateForest(int treeCount, double areaSize) {
    print('Generating forest with $treeCount trees...');
    
    final speciesList = ['oak', 'pine', 'birch', 'maple'];
    
    for (int i = 0; i < treeCount; i++) {
      final species = speciesList[_random.nextInt(speciesList.length)];
      final x = _random.nextDouble() * areaSize;
      final z = _random.nextDouble() * areaSize;
      
      plantTree(species, x, z);
    }
    
    print('Forest generated!');
  }
  
  void renderVisibleTrees(double cameraX, double cameraZ, double viewDistance) {
    int rendered = 0;
    
    print('=== Rendering Trees ===');
    for (final tree in _trees) {
      final dx = tree.x - cameraX;
      final dz = tree.z - cameraZ;
      final distance = sqrt(dx * dx + dz * dz);
      
      if (distance <= viewDistance) {
        tree.render();
        rendered++;
        
        if (rendered >= 5) {
          print('... (${_trees.length - rendered} more trees)');
          break;
        }
      }
    }
  }
  
  void printMemoryStats() {
    final modelMemory = _modelFactory.getTotalMemory();
    final treeMemory = _trees.fold(0, (sum, tree) => sum + tree.getMemorySize());
    final totalMemory = modelMemory + treeMemory;
    
    // Without flyweight: each tree stores full model data
    final withoutFlyweight = _trees.fold(0, (sum, tree) => 
      sum + tree.getMemorySize() + tree.model.getMemorySize());
    
    print('=== Forest Memory Statistics ===');
    print('Total trees: ${_trees.length}');
    print('Unique species: ${_modelFactory.modelCount}');
    print('');
    print('With Flyweight:');
    print('  Model memory: ${(modelMemory / 1024).toStringAsFixed(1)} KB');
    print('  Tree instance memory: ${(treeMemory / 1024).toStringAsFixed(1)} KB');
    print('  Total: ${(totalMemory / 1024).toStringAsFixed(1)} KB');
    print('');
    print('Without Flyweight (estimated):');
    print('  Total: ${(withoutFlyweight / 1024).toStringAsFixed(1)} KB');
    print('');
    print('Memory saved: ${((withoutFlyweight - totalMemory) / 1024).toStringAsFixed(1)} KB');
    print('Reduction: ${((1 - totalMemory / withoutFlyweight) * 100).toStringAsFixed(1)}%');
  }
}

void main() {
  print('=== Forest Flyweight Demo ===\n');
  
  final forest = Forest();
  
  // Generate a large forest
  forest.generateForest(10000, 1000.0);
  
  // Render visible trees from camera position
  forest.renderVisibleTrees(500, 500, 50);
  
  forest.printMemoryStats();
  
  print('\n📊 Analysis:');
  print('With 10,000 trees of 4 species:');
  print('  - Without Flyweight: Each tree stores full model (~100KB each) = ~1GB');
  print('  - With Flyweight: 4 models (~100KB each) + 10,000 instances (32 bytes each) = ~712KB');
  print('  - Memory reduction: 99.93%!');
}

import 'dart:math';'''),

        // Example 4: Flutter - Icon System
        StrCodeBlock(r'''import 'package:flutter/material.dart';

// Example 4: Flutter - Shared Icon System
// Use case: Efficient icon rendering in Flutter apps

// Flyweight: Icon data (intrinsic state)
class IconData {
  final String name;
  final String svgPath; // Vector path data
  final int codePoint; // Icon font codepoint
  
  IconData({
    required this.name,
    required this.svgPath,
    required this.codePoint,
  }) {
    print('Loaded icon: $name');
  }
  
  Widget build({
    required double size,
    required Color color,
  }) {
    // Simulate rendering icon
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        border: Border.all(color: color, width: 2),
        borderRadius: BorderRadius.circular(size / 4),
      ),
      child: Center(
        child: Text(
          String.fromCharCode(codePoint),
          style: TextStyle(
            fontSize: size * 0.6,
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  
  int getMemorySize() {
    return svgPath.length * 2 + 20;
  }
}

// Flyweight Factory
class IconRegistry {
  final Map<String, IconData> _icons = {};
  
  static final IconRegistry _instance = IconRegistry._();
  factory IconRegistry() => _instance;
  IconRegistry._() {
    _loadDefaultIcons();
  }
  
  void _loadDefaultIcons() {
    // Simulate loading icon data
    register('home', IconData(
      name: 'home',
      svgPath: 'M10 20v-6h4v6h5v-8h3L12 3 2 12h3v8z',
      codePoint: 0xe88a,
    ));
    
    register('settings', IconData(
      name: 'settings',
      svgPath: 'M19.14,12.94c0.04-0.3,0.06-0.61,0.06-0.94c0-0.32...',
      codePoint: 0xe8b8,
    ));
    
    register('search', IconData(
      name: 'search',
      svgPath: 'M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11...',
      codePoint: 0xe8b6,
    ));
    
    register('favorite', IconData(
      name: 'favorite',
      svgPath: 'M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5...',
      codePoint: 0xe87d,
    ));
  }
  
  void register(String name, IconData icon) {
    _icons[name] = icon;
  }
  
  IconData? get(String name) => _icons[name];
  
  int get iconCount => _icons.length;
  
  int getTotalMemory() {
    return _icons.values.fold(0, (sum, icon) => sum + icon.getMemorySize());
  }
}

// Context: Icon instance (extrinsic state)
class AppIcon extends StatelessWidget {
  final String iconName;
  final double size;
  final Color color;
  
  const AppIcon(
    this.iconName, {
    this.size = 24.0,
    this.color = Colors.black,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    final iconData = IconRegistry().get(iconName);
    
    if (iconData == null) {
      return Icon(Icons.error, size: size, color: Colors.red);
    }
    
    return iconData.build(size: size, color: color);
  }
}

// Demo app
class IconFlyweightDemo extends StatelessWidget {
  const IconFlyweightDemo({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Flyweight Demo'),
        actions: [
          AppIcon('search', color: Colors.white),
          SizedBox(width: 16),
          AppIcon('settings', color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            'Same icon data shared across all instances:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 24),
          
          // Many icons of same type (share flyweight)
          Text('100 home icons (share 1 IconData):'),
          SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List.generate(100, (i) {
              return AppIcon(
                'home',
                size: 32,
                color: Colors.primaries[i % Colors.primaries.length],
              );
            }),
          ),
          
          SizedBox(height: 24),
          
          Text('Mixed icons (share 4 IconData objects):'),
          SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ...List.generate(25, (_) => AppIcon('home', size: 32, color: Colors.blue)),
              ...List.generate(25, (_) => AppIcon('favorite', size: 32, color: Colors.red)),
              ...List.generate(25, (_) => AppIcon('search', size: 32, color: Colors.green)),
              ...List.generate(25, (_) => AppIcon('settings', size: 32, color: Colors.orange)),
            ],
          ),
          
          SizedBox(height: 24),
          
          _buildMemoryStats(),
        ],
      ),
    );
  }
  
  Widget _buildMemoryStats() {
    final registry = IconRegistry();
    final iconDataMemory = registry.getTotalMemory();
    final instanceCount = 200; // Approximate from above
    final instanceMemory = instanceCount * 24; // size + color + reference
    final totalMemory = iconDataMemory + instanceMemory;
    
    final withoutFlyweight = instanceCount * (iconDataMemory ~/ registry.iconCount + 24);
    
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Memory Statistics',

            ),
            SizedBox(height: 8),
            Text('Icon instances: $instanceCount'),
            Text('Shared IconData objects: ${registry.iconCount}'),
            SizedBox(height: 8),
            Text('With Flyweight: ~${(totalMemory / 1024).toStringAsFixed(1)} KB'),
            Text('Without Flyweight: ~${(withoutFlyweight / 1024).toStringAsFixed(1)} KB'),
            Text(
              'Memory saved: ${((1 - totalMemory / withoutFlyweight) * 100).toStringAsFixed(0)}%',
              style: TextStyle(color: Colors.green),
            ),
            SizedBox(height: 8),
            Text('Icon instances: $instanceCount'),
            Text('Shared IconData objects: ${registry.iconCount}'),
            SizedBox(height: 8),
            Text('With Flyweight: ~${(totalMemory / 1024).toStringAsFixed(1)} KB'),
            Text('Without Flyweight: ~${(withoutFlyweight / 1024).toStringAsFixed(1)} KB'),
            Text(
              'Memory saved: ${((1 - totalMemory / withoutFlyweight) * 100).toStringAsFixed(0)}%',
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IconFlyweightDemo(),
  ));
}'''),
      ],
      ar: [
        // Arabic versions would go here
      ],
    ),
    pros: LocSL(
      en: [
        "Dramatically reduces memory usage when dealing with many similar objects",
        "Can handle massive numbers of objects efficiently (millions vs thousands)",
        "Reduces garbage collection pressure - fewer objects created",
        "Improves cache performance - shared data accessed frequently stays in cache",
        "Makes applications scalable to larger datasets",
        "Performance improvement from reduced memory allocation",
        "Clear separation of shared vs unique state",
      ],
      ar: [
        "يقلل استخدام الذاكرة بشكل كبير عند التعامل مع كائنات كثيرة متشابهة",
        "يمكنه التعامل مع أعداد هائلة من الكائنات بكفاءة (ملايين مقابل آلاف)",
        "يقلل ضغط جمع القمامة - كائنات أقل تم إنشاؤها",
        "يحسن أداء الذاكرة المؤقتة (Cache) - البيانات المشتركة المُستخدمة بكثرة تبقى في الذاكرة المؤقتة",
        "يجعل التطبيقات قابلة للتوسع لمجموعات بيانات أكبر",
        "تحسين الأداء من تخصيص ذاكرة أقل",
        "فصل واضح بين الحالة المشتركة والفريدة",
      ],
    ),
    cons: LocSL(
      en: [
        "Increases code complexity - need to separate intrinsic from extrinsic state",
        "Extrinsic state management can be tricky and error-prone",
        "Only beneficial when you have many similar objects - premature optimization otherwise",
        "Requires careful separation of state types - wrong separation negates benefits",
        "Slight runtime overhead from factory lookups and method calls",
        "Makes code harder to understand - indirection through flyweight factory",
        "Not thread-safe by default - need synchronization for concurrent access",
      ],
      ar: [
        "يزيد تعقيد الكود - تحتاج لفصل الحالة الجوهرية عن الخارجية",
        "إدارة الحالة الخارجية قد تكون صعبة وعرضة للأخطاء",
        "مفيد فقط عندما يكون لديك كائنات كثيرة متشابهة - تحسين مبكر بخلاف ذلك",
        "يتطلب فصلاً دقيقاً لأنواع الحالة - الفصل الخاطئ ينفي الفوائد",
        "عبء طفيف في وقت التشغيل من عمليات بحث المصنع واستدعاءات الطرق",
        "يجعل الكود أصعب في الفهم - عدم المباشرة من خلال مصنع وزن الريشة",
        "ليس آمناً للخيوط (Thread-Safe) افتراضياً - تحتاج للمزامنة للوصول المتزامن",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Flyweight when:"),
        ULContent(
          value: [
            "Application uses large numbers of similar objects",
            "Memory usage is a significant concern or constraint",
            "Most of an object's state can be made extrinsic (shared)",
            "Object identity is not important - objects are interchangeable",
            "You've profiled and confirmed memory is the bottleneck",
            "Objects have significant amounts of shareable intrinsic state",
          ],
        ),
        NoteContent(
          "Profile first! Flyweight adds complexity. Only use when measurements prove memory is actually a problem. Don't optimize prematurely based on assumptions.",
          type: .warning,
        ),
      ],
      ar: [
        StrContent("استخدم وزن الريشة عندما:"),
        ULContent(
          value: [
            "يستخدم التطبيق أعداداً كبيرة من الكائنات المتشابهة",
            "استخدام الذاكرة مصدر قلق أو قيد كبير",
            "معظم حالة الكائن يمكن جعلها خارجية (مشتركة)",
            "هوية الكائن ليست مهمة - الكائنات قابلة للتبديل",
            "قمت بالتحليل وأكدت أن الذاكرة هي الاختناق",
            "الكائنات لديها كميات كبيرة من الحالة الجوهرية القابلة للمشاركة",
          ],
        ),
        NoteContent(
          "قم بالتحليل أولاً! وزن الريشة يضيف تعقيداً. استخدم فقط عندما تثبت القياسات أن الذاكرة مشكلة فعلية. لا تُحسّن مبكراً بناءً على افتراضات.",
          type: .warning,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Using when object count is small - adds complexity without benefit",
        "Not properly separating intrinsic and extrinsic state - defeats purpose",
        "Making flyweights mutable - breaks sharing assumption",
        "Over-complicating simple scenarios that don't need optimization",
        "Forgetting to use factory - creating flyweights directly",
        "Storing extrinsic state in flyweight - wastes memory",
        "Not profiling first - optimizing based on guesses",
        "Using for objects with mostly unique state - little to share",
      ],
      ar: [
        "الاستخدام عندما يكون عدد الكائنات صغيراً - يضيف تعقيداً بدون فائدة",
        "عدم فصل الحالة الجوهرية والخارجية بشكل صحيح - يُفشل الغرض",
        "جعل أوزان الريشة قابلة للتغيير - يكسر افتراض المشاركة",
        "التعقيد المفرط للسيناريوهات البسيطة التي لا تحتاج للتحسين",
        "نسيان استخدام المصنع - إنشاء أوزان الريشة مباشرة",
        "تخزين الحالة الخارجية في وزن الريشة - يُهدر الذاكرة",
        "عدم التحليل أولاً - التحسين بناءً على تخمينات",
        "الاستخدام للكائنات ذات الحالة الفريدة في الغالب - قليل للمشاركة",
      ],
    ),
    relatedPatterns: [PK.singleton, PK.objectPool, PK.composite, PK.state],
    oftenConfusedWith: [PK.objectPool, PK.singleton],
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
          "The Proxy pattern provides a substitute or placeholder for another object. A proxy controls access to the original object, allowing you to perform something either before or after the request gets through to the original object - without the client knowing.",
        ),
        AnalogyContent(
          "Think of a celebrity's manager. Fans can't directly contact the celebrity - requests go through the manager (proxy) first. The manager checks who's calling, screens requests, schedules appearances, and handles routine matters. For important requests, they forward to the celebrity. The manager and celebrity have the same 'public interface' - both can respond to requests - but the manager adds control, filtering, and convenience.",
        ),
        StrContent(
          "Proxy implements the same interface as the real subject, making it transparent to clients. This is the key difference from Decorator (which adds behavior) and Adapter (which changes interface). Proxy controls access while maintaining the same interface.",
        ),
        ULContent(
          title: "Common Proxy Types:",
          value: [
            "Virtual Proxy: Defers expensive object creation until actually needed (lazy initialization)",
            "Remote Proxy: Represents object in different address space, handles communication",
            "Protection Proxy: Controls access based on permissions or authentication",
            "Caching Proxy: Caches results of expensive operations to avoid repetition",
            "Logging Proxy: Records all interactions for debugging or auditing",
            "Smart Reference: Manages lifecycle, reference counting, or locking",
          ],
        ),
        DiagramContent(
          "Pattern Structure:\nClient → Subject Interface\n             ↙          ↘\n      RealSubject      Proxy\n                          ↓\n               (wraps RealSubject)\n                  before/after\n                    logic",
        ),
        StrContent(
          "All proxy types share the same structure: they implement the Subject interface and hold a reference to the RealSubject. The difference is in what they do before/after forwarding the request: Virtual Proxy creates the object, Protection Proxy checks permissions, Caching Proxy checks cache, etc.",
        ),
        NoteContent(
          "Proxy vs Decorator: Both wrap an object with the same interface. Proxy controls ACCESS (who can call, when to call, whether to call at all). Decorator adds BEHAVIOR (do something extra around the call). Proxy is about control, Decorator is about enhancement.",
          type: .important,
        ),
        ComparisonContent({
          'Proxy':
              'Controls access, same interface, usually one proxy per object',
          'Decorator':
              'Adds behavior, same interface, stackable multiple times',
          'Facade': 'Simplifies interface to subsystem',
          'Adapter': 'Changes interface to match expected one',
        }, title: 'Proxy vs Similar Patterns'),
        StrContent(
          "Common use cases in Flutter/Dart: lazy loading of expensive resources, API request caching, authentication/authorization guards, network request interceptors, service locators, mock objects in testing, and logging/monitoring wrappers.",
        ),
        NoteContent(
          "In Flutter, packages like `dio` use interceptors (a proxy-like mechanism) to add auth headers, logging, and retry logic transparently. Riverpod providers act as virtual proxies for lazily-created services.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent(
          "نمط الوكيل يوفر بديلاً أو عنصراً نائباً لكائن آخر. الوكيل يتحكم في الوصول للكائن الأصلي، مما يسمح لك بتنفيذ شيء ما قبل أو بعد وصول الطلب للكائن الأصلي - دون علم العميل.",
        ),
        AnalogyContent(
          "فكر في مدير نجم مشهور. المعجبون لا يمكنهم الاتصال بالنجم مباشرة - الطلبات تمر أولاً عبر المدير (الوكيل). المدير يتحقق من المتصل، يفحص الطلبات، يجدول الظهور، ويتعامل مع الأمور الروتينية. للطلبات المهمة، يحيل للنجم. المدير والنجم لديهما نفس 'الواجهة العامة' - كلاهما يمكنه الاستجابة للطلبات - لكن المدير يضيف التحكم والتصفية والراحة.",
        ),
        StrContent(
          "الوكيل ينفذ نفس واجهة الموضوع الحقيقي، مما يجعله شفافاً للعملاء. هذا هو الفرق الأساسي عن المُزخرف (الذي يضيف سلوكاً) والمُحوّل (الذي يغير الواجهة). الوكيل يتحكم في الوصول مع الحفاظ على نفس الواجهة.",
        ),
        ULContent(
          title: "أنواع الوكيل الشائعة:",
          value: [
            "الوكيل الافتراضي (Virtual Proxy): يؤجل إنشاء الكائنات المكلفة حتى الحاجة الفعلية (تهيئة كسولة)",
            "الوكيل البعيد (Remote Proxy): يمثل كائناً في مساحة عنوان مختلفة، يتعامل مع الاتصال",
            "وكيل الحماية (Protection Proxy): يتحكم في الوصول بناءً على الأذونات أو المصادقة",
            "وكيل التخزين المؤقت (Caching Proxy): يخزن نتائج العمليات المكلفة مؤقتاً لتجنب التكرار",
            "وكيل التسجيل (Logging Proxy): يسجل جميع التفاعلات للتنقيح أو التدقيق",
            "المرجع الذكي (Smart Reference): يدير دورة الحياة، عد المراجع، أو القفل",
          ],
        ),
        DiagramContent(
          "بنية النمط:\nالعميل ← واجهة الموضوع\n             ↙          ↘\n      الموضوع الحقيقي      الوكيل\n                          ↓\n               (يلف الموضوع الحقيقي)\n                  منطق قبل/بعد",
        ),
        StrContent(
          "جميع أنواع الوكيل تشارك نفس البنية: تنفذ واجهة الموضوع وتحتفظ بمرجع للموضوع الحقيقي. الفرق في ما تفعله قبل/بعد توجيه الطلب: الوكيل الافتراضي ينشئ الكائن، وكيل الحماية يتحقق من الأذونات، وكيل التخزين المؤقت يتحقق من الذاكرة المؤقتة، إلخ.",
        ),
        NoteContent(
          "الوكيل مقابل المُزخرف: كلاهما يلف كائناً بنفس الواجهة. الوكيل يتحكم في الوصول (من يمكنه الاستدعاء، متى يستدعي، هل يستدعي أصلاً). المُزخرف يضيف سلوكاً (يقوم بشيء إضافي حول الاستدعاء). الوكيل يتعلق بالتحكم، المُزخرف يتعلق بالتحسين.",
          type: .important,
        ),
        ComparisonContent({
          'الوكيل (Proxy)':
              'يتحكم في الوصول، نفس الواجهة، عادةً وكيل واحد لكل كائن',
          'المُزخرف (Decorator)':
              'يضيف سلوكاً، نفس الواجهة، قابل للتكديس عدة مرات',
          'الواجهة (Facade)': 'يُبسط الواجهة لنظام فرعي',
          'المُحوّل (Adapter)': 'يغير الواجهة لتطابق المتوقعة',
        }, title: 'الوكيل مقابل الأنماط المشابهة'),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: التحميل الكسول للموارد المكلفة، تخزين طلبات API مؤقتاً، حراس المصادقة/التفويض، معترضات طلبات الشبكة، محددات موقع الخدمة، كائنات وهمية في الاختبار، وأغلفة التسجيل/المراقبة.",
        ),
        NoteContent(
          "في Flutter، حزم مثل `dio` تستخدم المعترضات (Interceptors) (آلية شبيهة بالوكيل) لإضافة رؤوس المصادقة والتسجيل ومنطق إعادة المحاولة بشفافية. موفرو Riverpod يعملون كوكلاء افتراضيين للخدمات التي يتم إنشاؤها بكسل.",
          type: .tip,
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Virtual Proxy (Lazy Loading)
        StrCodeBlock(r'''// Example 1: Basic - Virtual Proxy (Lazy Loading)
// Use case: Defer expensive image loading until actually needed

// Subject: Common interface
abstract class Image {
  String get filename;
  void display();
  int get width;
  int get height;
}

// Real Subject: Expensive to create
class HighResolutionImage implements Image {
  @override
  final String filename;
  late final int _width;
  late final int _height;
  late final String _imageData;
  
  HighResolutionImage(this.filename) {
    _loadFromDisk();
  }
  
  void _loadFromDisk() {
    print('Loading high-res image from disk: $filename (expensive!)');
    // Simulate expensive loading
    _width = 4000;
    _height = 3000;
    _imageData = 'BINARY_IMAGE_DATA_$filename';
    print('Image loaded: ${_imageData.length} bytes');
  }
  
  @override
  void display() {
    print('Displaying $filename (${_width}x$_height)');
  }
  
  @override
  int get width => _width;
  
  @override
  int get height => _height;
}

// Virtual Proxy: Creates real image only when needed
class ImageProxy implements Image {
  @override
  final String filename;
  HighResolutionImage? _realImage; // null until accessed
  
  ImageProxy(this.filename) {
    print('Proxy created for: $filename (image NOT loaded yet)');
  }
  
  // Lazy initialization - create real image only on demand
  HighResolutionImage get _image {
    _realImage ??= HighResolutionImage(filename);
    return _realImage!;
  }
  
  @override
  void display() {
    print('\n--- Proxy: display() called ---');
    _image.display(); // Load real image now
  }
  
  @override
  int get width => _image.width;
  
  @override
  int get height => _image.height;
  
  bool get isLoaded => _realImage != null;
}

// Image gallery using proxies
class ImageGallery {
  final List<Image> _images = [];
  
  void addImage(String filename) {
    // Add proxy, not real image - very fast!
    _images.add(ImageProxy(filename));
  }
  
  void displayImageAt(int index) {
    if (index < _images.length) {
      _images[index].display(); // Only this image gets loaded
    }
  }
  
  void displayAll() {
    for (final image in _images) {
      image.display();
    }
  }
  
  void showStatus() {
    print('\n=== Gallery Status ===');
    for (final image in _images) {
      if (image is ImageProxy) {
        print('${image.filename}: ${image.isLoaded ? "loaded" : "not loaded"}');
      }
    }
  }
}

void main() {
  print('=== Virtual Proxy Demo ===\n');
  
  final gallery = ImageGallery();
  
  // Add 5 images - all proxies, no loading yet
  print('--- Adding images to gallery ---');
  gallery.addImage('photo1.jpg');
  gallery.addImage('photo2.jpg');
  gallery.addImage('photo3.jpg');
  gallery.addImage('photo4.jpg');
  gallery.addImage('photo5.jpg');
  
  gallery.showStatus();
  
  // Display only image 2 - only that one loads
  print('\n--- User views image 2 ---');
  gallery.displayImageAt(1);
  
  print('\n--- User views image 4 ---');
  gallery.displayImageAt(3);
  
  gallery.showStatus();
  
  print('\n✓ Images 1, 3, 5 were never loaded - saving memory and time!');
}'''),

        // Example 2: Intermediate - Protection Proxy
        StrCodeBlock(r'''import 'dart:io';
import 'dart:convert';

// Example 2: Intermediate - Protection Proxy (Access Control)
// Use case: Role-based access control for sensitive operations

enum UserRole { guest, user, admin, superAdmin }

class User {
  final String name;
  final UserRole role;
  
  User(this.name, this.role);
  
  @override
  String toString() => '$name ($role)';
}

// Subject: File system operations
abstract class FileSystem {
  List<String> listFiles(String path);
  String readFile(String path);
  void writeFile(String path, String content);
  void deleteFile(String path);
  void createDirectory(String path);
}

// Real Subject
class LocalFileSystem implements FileSystem {
  final Map<String, String> _files = {
    '/public/readme.txt': 'Welcome to the system',
    '/private/config.json': '{"api_key": "secret123"}',
    '/admin/users.db': 'admin:password\nuser:pass123',
  };
  
  @override
  List<String> listFiles(String path) {
    print('FileSystem: Listing files in $path');
    return _files.keys
        .where((k) => k.startsWith(path))
        .toList();
  }
  
  @override
  String readFile(String path) {
    print('FileSystem: Reading $path');
    return _files[path] ?? 'File not found';
  }
  
  @override
  void writeFile(String path, String content) {
    print('FileSystem: Writing to $path');
    _files[path] = content;
  }
  
  @override
  void deleteFile(String path) {
    print('FileSystem: Deleting $path');
    _files.remove(path);
  }
  
  @override
  void createDirectory(String path) {
    print('FileSystem: Creating directory $path');
  }
}

// Protection Proxy: Enforces access rules
class ProtectedFileSystem implements FileSystem {
  final FileSystem _realFileSystem;
  final User _currentUser;
  
  ProtectedFileSystem(this._realFileSystem, this._currentUser);
  
  void _checkPermission(String operation, String path) {
    final hasAccess = switch (_currentUser.role) {
      UserRole.superAdmin => true, // Full access
      UserRole.admin => !path.startsWith('/system'), // Can't touch /system
      UserRole.user => path.startsWith('/public') || path.startsWith('/user'), // Limited
      UserRole.guest => path.startsWith('/public'), // Read-only public
    };
    
    if (!hasAccess) {
      throw UnauthorizedException(
        'User $_currentUser does not have permission to $operation: $path',
      );
    }
    
    // Additional write restrictions
    if (['write', 'delete', 'create'].contains(operation)) {
      if (_currentUser.role == UserRole.guest) {
        throw UnauthorizedException(
          'Guests cannot perform write operations',
        );
      }
    }
    
    print('✓ Permission granted: $_currentUser can $operation $path');
  }
  
  @override
  List<String> listFiles(String path) {
    _checkPermission('list', path);
    return _realFileSystem.listFiles(path);
  }
  
  @override
  String readFile(String path) {
    _checkPermission('read', path);
    return _realFileSystem.readFile(path);
  }
  
  @override
  void writeFile(String path, String content) {
    _checkPermission('write', path);
    _realFileSystem.writeFile(path, content);
  }
  
  @override
  void deleteFile(String path) {
    _checkPermission('delete', path);
    _realFileSystem.deleteFile(path);
  }
  
  @override
  void createDirectory(String path) {
    _checkPermission('create', path);
    _realFileSystem.createDirectory(path);
  }
}

class UnauthorizedException implements Exception {
  final String message;
  UnauthorizedException(this.message);
  
  @override
  String toString() => '🚫 Unauthorized: $message';
}

// Client code
void testAccess(FileSystem fs, String label) {
  print('\n=== $label ===');
  
  final operations = [
    () => print('List /public: ${fs.listFiles('/public')}'),
    () => print('Read /public/readme.txt: ${fs.readFile('/public/readme.txt')}'),
    () => print('Read /private/config.json: ${fs.readFile('/private/config.json')}'),
    () => print('Read /admin/users.db: ${fs.readFile('/admin/users.db')}'),
    () { fs.writeFile('/public/test.txt', 'test'); print('Write: success'); },
    () { fs.deleteFile('/admin/users.db'); print('Delete admin file: success'); },
  ];
  
  for (final op in operations) {
    try {
      op();
    } catch (e) {
      print(e);
    }
  }
}

void main() {
  final realFileSystem = LocalFileSystem();
  
  // Test with different user roles
  testAccess(
    ProtectedFileSystem(realFileSystem, User('Alice', UserRole.guest)),
    'Guest Access',
  );
  
  testAccess(
    ProtectedFileSystem(realFileSystem, User('Bob', UserRole.user)),
    'Regular User Access',
  );
  
  testAccess(
    ProtectedFileSystem(realFileSystem, User('Carol', UserRole.admin)),
    'Admin Access',
  );
  
  testAccess(
    ProtectedFileSystem(realFileSystem, User('Dave', UserRole.superAdmin)),
    'Super Admin Access',
  );
}'''),

        // Example 3: Advanced - Caching + Logging Proxy
        StrCodeBlock(r'''// Example 3: Advanced - Caching and Logging Proxy
import 'dart:async';
// Use case: Transparent caching and audit logging for API calls

// Subject: Data service interface
abstract class UserDataService {
  Future<Map<String, dynamic>> getUser(int id);
  Future<List<Map<String, dynamic>>> searchUsers(String query);
  Future<bool> updateUser(int id, Map<String, dynamic> data);
  Future<bool> deleteUser(int id);
}

// Real Subject: Actual API calls
class RemoteUserService implements UserDataService {
  int _callCount = 0;
  
  @override
  Future<Map<String, dynamic>> getUser(int id) async {
    _callCount++;
    print('API: GET /users/$id (call #$_callCount)');
    await Future.delayed(.milliseconds(200)); // Simulate network
    
    return {
      'id': id,
      'name': 'User $id',
      'email': 'user$id@example.com',
      'role': 'user',
      'createdAt': DateTime.now().toIso8601String(),
    };
  }
  
  @override
  Future<List<Map<String, dynamic>>> searchUsers(String query) async {
    _callCount++;
    print('API: GET /users?q=$query (call #$_callCount)');
    await Future.delayed(.milliseconds(300));
    
    return [
      {'id': 1, 'name': 'Alice $query'},
      {'id': 2, 'name': 'Bob $query'},
    ];
  }
  
  @override
  Future<bool> updateUser(int id, Map<String, dynamic> data) async {
    _callCount++;
    print('API: PUT /users/$id (call #$_callCount)');
    await Future.delayed(.milliseconds(150));
    return true;
  }
  
  @override
  Future<bool> deleteUser(int id) async {
    _callCount++;
    print('API: DELETE /users/$id (call #$_callCount)');
    await Future.delayed(.milliseconds(150));
    return true;
  }
  
  int get callCount => _callCount;
}

// Caching Proxy: Transparent caching layer
class CachingUserServiceProxy implements UserDataService {
  final UserDataService _realService;
  final Map<String, dynamic> _cache = {};
  final Map<String, DateTime> _cacheTimestamps = {};
  final Duration _cacheDuration;
  
  int _cacheHits = 0;
  int _cacheMisses = 0;
  
  CachingUserServiceProxy(
    this._realService, {
    Duration cacheDuration = const Duration(minutes: 5),
  }) : _cacheDuration = cacheDuration;
  
  bool _isCacheValid(String key) {
    if (!_cache.containsKey(key)) return false;
    final age = DateTime.now().difference(_cacheTimestamps[key]!);
    return age < _cacheDuration;
  }
  
  T _getFromCache<T>(String key) {
    _cacheHits++;
    print('Cache HIT: $key');
    return _cache[key] as T;
  }
  
  void _storeInCache(String key, dynamic value) {
    _cacheMisses++;
    _cache[key] = value;
    _cacheTimestamps[key] = DateTime.now();
    print('Cache STORED: $key');
  }
  
  void _invalidateUserCache(int id) {
    final keysToRemove = _cache.keys
        .where((k) => k.contains('user_$id') || k.contains('search_'))
        .toList();
    
    for (final key in keysToRemove) {
      _cache.remove(key);
      _cacheTimestamps.remove(key);
    }
    
    print('Cache INVALIDATED: keys for user $id');
  }
  
  @override
  Future<Map<String, dynamic>> getUser(int id) async {
    final key = 'user_$id';
    
    if (_isCacheValid(key)) {
      return _getFromCache(key);
    }
    
    final user = await _realService.getUser(id);
    _storeInCache(key, user);
    return user;
  }
  
  @override
  Future<List<Map<String, dynamic>>> searchUsers(String query) async {
    final key = 'search_$query';
    
    if (_isCacheValid(key)) {
      return _getFromCache(key);
    }
    
    final results = await _realService.searchUsers(query);
    _storeInCache(key, results);
    return results;
  }
  
  @override
  Future<bool> updateUser(int id, Map<String, dynamic> data) async {
    final result = await _realService.updateUser(id, data);
    if (result) {
      _invalidateUserCache(id);
    }
    return result;
  }
  
  @override
  Future<bool> deleteUser(int id) async {
    final result = await _realService.deleteUser(id);
    if (result) {
      _invalidateUserCache(id);
    }
    return result;
  }
  
  void printStats() {
    print('\n=== Cache Statistics ===');
    print('Cache hits: $_cacheHits');
    print('Cache misses: $_cacheMisses');
    final total = _cacheHits + _cacheMisses;
    if (total > 0) {
      print('Hit rate: ${(_cacheHits / total * 100).toStringAsFixed(1)}%');
    }
    print('Cached entries: ${_cache.length}');
  }
}

// Logging Proxy: Transparent audit logging layer
class LoggingUserServiceProxy implements UserDataService {
  final UserDataService _realService;
  final String _userId; // Who's making the requests
  final List<AuditLog> _auditLog = [];
  
  LoggingUserServiceProxy(this._realService, this._userId);
  
  Future<T> _logOperation<T>(
    String operation,
    String resource,
    Future<T> Function() action,
  ) async {
    final start = DateTime.now();
    print('AUDIT: $_userId performing $operation on $resource');
    
    try {
      final result = await action();
      final duration = DateTime.now().difference(start);
      
      _auditLog.add(AuditLog(
        userId: _userId,
        operation: operation,
        resource: resource,
        success: true,
        duration: duration,
        timestamp: start,
      ));
      
      print('AUDIT: $operation $resource completed in ${duration.inMilliseconds}ms');
      return result;
    } catch (e) {
      _auditLog.add(AuditLog(
        userId: _userId,
        operation: operation,
        resource: resource,
        success: false,
        error: e.toString(),
        timestamp: start,
      ));
      
      print('AUDIT: $operation $resource FAILED: $e');
      rethrow;
    }
  }
  
  @override
  Future<Map<String, dynamic>> getUser(int id) {
    return _logOperation('READ', 'users/$id', () => _realService.getUser(id));
  }
  
  @override
  Future<List<Map<String, dynamic>>> searchUsers(String query) {
    return _logOperation('SEARCH', 'users?q=$query', () => _realService.searchUsers(query));
  }
  
  @override
  Future<bool> updateUser(int id, Map<String, dynamic> data) {
    return _logOperation('UPDATE', 'users/$id', () => _realService.updateUser(id, data));
  }
  
  @override
  Future<bool> deleteUser(int id) {
    return _logOperation('DELETE', 'users/$id', () => _realService.deleteUser(id));
  }
  
  void printAuditLog() {
    print('\n=== Audit Log ===');
    for (final log in _auditLog) {
      print(log);
    }
  }
}

class AuditLog {
  final String userId;
  final String operation;
  final String resource;
  final bool success;
  final String? error;
  final Duration? duration;
  final DateTime timestamp;
  
  AuditLog({
    required this.userId,
    required this.operation,
    required this.resource,
    required this.success,
    this.error,
    this.duration,
    required this.timestamp,
  });
  
  @override
  String toString() {
    final status = success ? '✓' : '✗';
    final durationStr = duration != null ? '${duration!.inMilliseconds}ms' : '';
    return '[$timestamp] $status $userId | $operation $resource $durationStr ${error ?? ''}';
  }
}

void main() async {
  print('=== Proxy Chain Demo ===\n');
  
  // Chain proxies: Client → Logging → Caching → Real Service
  final realService = RemoteUserService();
  final cachingService = CachingUserServiceProxy(realService);
  final loggingService = LoggingUserServiceProxy(cachingService, 'admin@example.com');
  
  // Use as if it's a simple service
  print('--- First requests (cache misses) ---');
  await loggingService.getUser(1);
  await loggingService.getUser(2);
  await loggingService.searchUsers('alice');
  
  print('\n--- Same requests (cache hits!) ---');
  await loggingService.getUser(1); // Cache hit
  await loggingService.getUser(1); // Cache hit again
  await loggingService.searchUsers('alice'); // Cache hit
  
  print('\n--- Write operation (invalidates cache) ---');
  await loggingService.updateUser(1, {'name': 'Alice Updated'});
  
  print('\n--- Re-fetch after update (cache miss - was invalidated) ---');
  await loggingService.getUser(1); // Cache miss after invalidation
  
  // Print stats from each proxy layer
  cachingService.printStats();
  loggingService.printAuditLog();
  
  print('\nDirect API calls made: ${realService.callCount}');
  print('Total requests made: 7');
  print('API calls saved by cache: ${7 - realService.callCount}');
}'''),

        // Example 4: Flutter - Network Request Proxy
        StrCodeBlock(r'''import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';

// Example 4: Flutter - Smart API Client Proxy
// Use case: Transparent retry, auth, and offline support

// Subject: API client interface
abstract class ApiClient {
  Future<Map<String, dynamic>> get(String endpoint);
  Future<Map<String, dynamic>> post(String endpoint, Map<String, dynamic> body);
  Future<Map<String, dynamic>> put(String endpoint, Map<String, dynamic> body);
  Future<bool> delete(String endpoint);
}

// Real Subject: Basic HTTP client
class HttpApiClient implements ApiClient {
  final String baseUrl;
  String? _authToken;
  
  HttpApiClient(this.baseUrl);
  
  void setAuthToken(String token) {
    _authToken = token;
  }
  
  Map<String, String> get _headers => {
    'Content-Type': 'application/json',
    if (_authToken != null) 'Authorization': 'Bearer $_authToken',
  };
  
  @override
  Future<Map<String, dynamic>> get(String endpoint) async {
    print('HTTP GET: $baseUrl$endpoint');
    await Future.delayed(.milliseconds(100));
    return {'data': 'GET response from $endpoint', 'status': 200};
  }
  
  @override
  Future<Map<String, dynamic>> post(String endpoint, Map<String, dynamic> body) async {
    print('HTTP POST: $baseUrl$endpoint body: $body');
    await Future.delayed(.milliseconds(150));
    return {'data': 'POST response', 'status': 201};
  }
  
  @override
  Future<Map<String, dynamic>> put(String endpoint, Map<String, dynamic> body) async {
    print('HTTP PUT: $baseUrl$endpoint body: $body');
    await Future.delayed(.milliseconds(150));
    return {'data': 'PUT response', 'status': 200};
  }
  
  @override
  Future<bool> delete(String endpoint) async {
    print('HTTP DELETE: $baseUrl$endpoint');
    await Future.delayed(.milliseconds(100));
    return true;
  }
}

// Smart Proxy: Adds retry, offline cache, and request deduplication
class SmartApiClientProxy implements ApiClient {
  final ApiClient _realClient;
  final int _maxRetries;
  final Duration _retryDelay;
  
  // Offline cache
  final Map<String, Map<String, dynamic>> _offlineCache = {};
  bool _isOnline = true;
  
  // Request deduplication (in-flight requests)
  final Map<String, Future<Map<String, dynamic>>> _pendingRequests = {};
  
  SmartApiClientProxy(
    this._realClient, {
    int maxRetries = 3,
    Duration retryDelay = const Duration(seconds: 1),
  })  : _maxRetries = maxRetries,
        _retryDelay = retryDelay;
  
  void setOnlineStatus(bool isOnline) {
    _isOnline = isOnline;
    print('Network status: ${isOnline ? 'ONLINE' : 'OFFLINE'}');
  }
  
  Future<Map<String, dynamic>> _withRetry(
    String key,
    Future<Map<String, dynamic>> Function() request,
  ) async {
    // Deduplication: if same request is in-flight, reuse it
    if (_pendingRequests.containsKey(key)) {
      print('Dedup: Reusing in-flight request for $key');
      return _pendingRequests[key]!;
    }
    
    final future = _executeWithRetry(key, request);
    _pendingRequests[key] = future;
    
    try {
      final result = await future;
      return result;
    } finally {
      _pendingRequests.remove(key);
    }
  }
  
  Future<Map<String, dynamic>> _executeWithRetry(
    String key,
    Future<Map<String, dynamic>> Function() request,
  ) async {
    // Offline: return cached data
    if (!_isOnline) {
      if (_offlineCache.containsKey(key)) {
        print('Offline: Returning cached data for $key');
        return {..._offlineCache[key]!, '_cached': true};
      }
      throw Exception('Offline and no cached data for $key');
    }
    
    // Retry logic
    for (int attempt = 1; attempt <= _maxRetries; attempt++) {
      try {
        final result = await request();
        
        // Cache successful GET responses
        if (key.startsWith('GET:')) {
          _offlineCache[key] = result;
        }
        
        return result;
      } catch (e) {
        if (attempt < _maxRetries) {
          print('Request failed (attempt $attempt/$_maxRetries): $e');
          print('Retrying in ${_retryDelay.inSeconds}s...');
          await Future.delayed(_retryDelay);
        } else {
          print('All $_maxRetries attempts failed');
          
          // Last resort: return cached data if available
          if (_offlineCache.containsKey(key)) {
            print('Returning stale cached data as fallback');
            return {..._offlineCache[key]!, '_stale': true};
          }
          
          rethrow;
        }
      }
    }
    
    throw Exception('Unreachable');
  }
  
  @override
  Future<Map<String, dynamic>> get(String endpoint) {
    return _withRetry(
      'GET:$endpoint',
      () => _realClient.get(endpoint),
    );
  }
  
  @override
  Future<Map<String, dynamic>> post(
    String endpoint,
    Map<String, dynamic> body,
  ) {
    return _withRetry(
      'POST:$endpoint:${body.hashCode}',
      () => _realClient.post(endpoint, body),
    );
  }
  
  @override
  Future<Map<String, dynamic>> put(
    String endpoint,
    Map<String, dynamic> body,
  ) {
    return _withRetry(
      'PUT:$endpoint',
      () => _realClient.put(endpoint, body),
    );
  }
  
  @override
  Future<bool> delete(String endpoint) async {
    if (!_isOnline) throw Exception('Cannot delete while offline');
    
    for (int attempt = 1; attempt <= _maxRetries; attempt++) {
      try {
        return await _realClient.delete(endpoint);
      } catch (e) {
        if (attempt >= _maxRetries) rethrow;
        await Future.delayed(_retryDelay);
      }
    }
    return false;
  }
  
  int get cachedEndpoints => _offlineCache.length;
}

// Demo widget
class ApiProxyDemo extends StatefulWidget {
  const ApiProxyDemo({super.key});
  
  @override
  State<ApiProxyDemo> createState() => _ApiProxyDemoState();
}

class _ApiProxyDemoState extends State<ApiProxyDemo> {
  late final SmartApiClientProxy _api;
  final List<String> _log = [];
  bool _isOnline = true;
  
  @override
  void initState() {
    super.initState();
    final httpClient = HttpApiClient('https://api.example.com');
    _api = SmartApiClientProxy(
      httpClient,
      maxRetries: 3,
      retryDelay: .milliseconds(500),
    );
  }
  
  void _addLog(String message) {
    setState(() => _log.insert(0, message));
  }
  
  Future<void> _fetchUser() async {
    try {
      final result = await _api.get('/users/1');
      _addLog('✓ GET /users/1: ${result['_stale'] == true ? "(stale)" : ""}');
    } catch (e) {
      _addLog('✗ GET failed: $e');
    }
  }
  
  void _toggleNetwork() {
    setState(() {
      _isOnline = !_isOnline;
      _api.setOnlineStatus(_isOnline);
    });
    _addLog('Network: ${_isOnline ? "ONLINE" : "OFFLINE"}');
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Smart API Proxy Demo')),
      body: Column(
        children: [
          // Controls
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _fetchUser,
                  child: Text('GET /users/1'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    // Parallel same requests (dedup demo)
                    await Future.wait([
                      _api.get('/users/1'),
                      _api.get('/users/1'),
                      _api.get('/users/1'),
                    ]);
                    _addLog('✓ 3 parallel requests deduped to 1');
                  },
                  child: Text('Dedup Test'),
                ),
                ElevatedButton(
                  onPressed: _toggleNetwork,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _isOnline ? Colors.green : Colors.red,
                  ),
                  child: Text(_isOnline ? 'Go Offline' : 'Go Online'),
                ),
              ],
            ),
          ),
          
          // Status
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.grey[100],
            child: Row(
              children: [
                Icon(
                  _isOnline ? Icons.wifi : Icons.wifi_off,
                  color: _isOnline ? Colors.green : Colors.red,
                ),
                SizedBox(width: 8),
                Text(_isOnline ? 'Online' : 'Offline'),
                Spacer(),
                Text('Cached: ${_api.cachedEndpoints} endpoints'),
              ],
            ),
          ),
          
          // Log
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: _log.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: Text(_log[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ApiProxyDemo(),
  ));
}'''),
      ],
      ar: [
        // Arabic versions would go here
      ],
    ),
    pros: LocSL(
      en: [
        "Controls access to objects transparently - client doesn't know about proxy",
        "Can introduce new behavior without changing service or client",
        "Supports lazy initialization - expensive objects created only when needed",
        "Can add security, caching, logging without touching real implementation",
        "Open/Closed Principle - add new behavior without modifying existing code",
        "Enables remote object access as if it were local",
        "Useful for testing - mock proxy can replace real service",
      ],
      ar: [
        "يتحكم في الوصول للكائنات بشفافية - العميل لا يعلم بوجود الوكيل",
        "يمكن تقديم سلوك جديد دون تغيير الخدمة أو العميل",
        "يدعم التهيئة الكسولة - الكائنات المكلفة تُنشأ فقط عند الحاجة",
        "يمكن إضافة الأمان والتخزين المؤقت والتسجيل دون المساس بالتطبيق الحقيقي",
        "مبدأ المفتوح/المغلق - إضافة سلوك جديد دون تعديل الكود الموجود",
        "يُمكّن الوصول للكائنات البعيدة كأنها محلية",
        "مفيد للاختبار - وكيل وهمي يمكن أن يستبدل الخدمة الحقيقية",
      ],
    ),
    cons: LocSL(
      en: [
        "Adds extra layer and complexity to the codebase",
        "Response time may increase due to proxy overhead",
        "Need to keep proxy and real object interface in sync",
        "Can make debugging harder - need to trace through proxy",
        "Virtual proxy delays errors until first use - harder to diagnose",
        "Too many proxy layers can create performance issues",
      ],
      ar: [
        "يضيف طبقة إضافية وتعقيداً للكود",
        "قد يزيد وقت الاستجابة بسبب عبء الوكيل",
        "تحتاج للحفاظ على تزامن واجهة الوكيل والكائن الحقيقي",
        "قد يجعل التنقيح أصعب - تحتاج لتتبع من خلال الوكيل",
        "الوكيل الافتراضي يؤخر الأخطاء حتى الاستخدام الأول - أصعب في التشخيص",
        "طبقات وكيل كثيرة جداً يمكن أن تخلق مشاكل أداء",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Proxy when:"),
        ULContent(
          value: [
            "You need lazy initialization for expensive-to-create objects",
            "Access control is required - only authorized clients should use the object",
            "Need caching for expensive operations that are called frequently",
            "Logging or auditing of object usage is required",
            "Working with remote objects that need local representation",
            "Smart reference counting or lifecycle management is needed",
            "You need to mock objects for testing purposes",
          ],
        ),
        NoteContent(
          "Choose proxy type based on need: Virtual for lazy init, Protection for auth, Caching for performance, Logging for auditing, Remote for distributed systems.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent("استخدم الوكيل عندما:"),
        ULContent(
          value: [
            "تحتاج لتهيئة كسولة للكائنات المكلفة الإنشاء",
            "التحكم في الوصول مطلوب - فقط العملاء المصرح لهم يجب أن يستخدموا الكائن",
            "تحتاج لتخزين مؤقت للعمليات المكلفة التي تُستدعى بكثرة",
            "التسجيل أو التدقيق لاستخدام الكائن مطلوب",
            "العمل مع كائنات بعيدة تحتاج لتمثيل محلي",
            "عد المراجع الذكي أو إدارة دورة الحياة مطلوب",
            "تحتاج لمحاكاة الكائنات لأغراض الاختبار",
          ],
        ),
        NoteContent(
          "اختر نوع الوكيل بناءً على الحاجة: افتراضي للتهيئة الكسولة، حماية للمصادقة، تخزين مؤقت للأداء، تسجيل للتدقيق، بعيد للأنظمة الموزعة.",
          type: .tip,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Not implementing same interface as real object - breaks transparency",
        "Adding too much logic to proxy - it should control access, not implement business logic",
        "Using when simple direct access suffices",
        "Not handling proxy initialization errors gracefully",
        "Creating too many proxy layers reducing performance",
        "Confusing with Decorator - Proxy controls access, Decorator adds behavior",
        "Making proxy stateful in ways that cause issues with multiple clients",
      ],
      ar: [
        "عدم تنفيذ نفس واجهة الكائن الحقيقي - يكسر الشفافية",
        "إضافة الكثير من المنطق للوكيل - يجب أن يتحكم في الوصول، وليس تنفيذ منطق العمل",
        "الاستخدام عندما يكفي الوصول المباشر البسيط",
        "عدم التعامل مع أخطاء تهيئة الوكيل بلطف",
        "إنشاء طبقات وكيل كثيرة جداً مما يقلل الأداء",
        "الخلط مع المُزخرف - الوكيل يتحكم في الوصول، المُزخرف يضيف سلوكاً",
        "جعل الوكيل حالياً بطرق تسبب مشاكل مع عملاء متعددين",
      ],
    ),
    relatedPatterns: [PK.adapter, PK.decorator, PK.facade, PK.flyweight],
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
          "Wrapper is a general concept (not a standalone GoF pattern) that encompasses Adapter, Decorator, and Proxy. Any object that contains another object and delegates some work to it is a wrapper. Understanding wrapper as a concept helps you reason about when and why to use these related patterns.",
        ),
        AnalogyContent(
          "Think of gift wrapping. The gift inside doesn't change - the box it came in is still there. But the wrapper changes how it looks (Decorator), or makes it compatible with the gift-giving protocol (Adapter), or controls who can open it (Proxy). All three are wrappers - they contain and delegate to the original - but each serves a different purpose.",
        ),
        StrContent(
          "The wrapper concept is fundamental to composition over inheritance. Instead of modifying a class directly or extending it via inheritance, you create a new class that wraps the original, intercepting calls and optionally modifying behavior. This allows runtime flexibility that compile-time inheritance cannot provide.",
        ),
        ULContent(
          title: "Wrapper Variants and Their Purpose:",
          value: [
            "Adapter: Wrap to change the interface - 'make it fit'",
            "Decorator: Wrap to add behavior - 'make it better'",
            "Proxy: Wrap to control access - 'make it safe/smart'",
            "Facade: Wrap a subsystem to simplify - 'make it easy'",
          ],
        ),
        DiagramContent(
          "Wrapper Concept:\n┌─────────────────┐\n│    Wrapper      │\n│  ┌───────────┐  │\n│  │  Wrapped  │  │\n│  │  Object   │  │\n│  └───────────┘  │\n│ + extra logic   │\n└─────────────────┘\n\nAdapter: changes interface\nDecorator: adds behavior\nProxy: controls access",
        ),
        StrContent(
          "All wrapper patterns follow the same structural template: implement the same interface as the wrapped object, store a reference to the wrapped object, delegate calls to the wrapped object, and optionally do something before/after the delegation.",
        ),
        NoteContent(
          "When choosing which wrapper pattern to use: Adapter if the interface doesn't match. Decorator if you want to add new behavior. Proxy if you want to control how/when the object is accessed. Facade if you want to simplify a complex subsystem.",
          type: .important,
        ),
        ComparisonContent({
          'Adapter':
              'Changes interface → compatible, different output interface',
          'Decorator':
              'Same interface + new behavior → enhanced, same output interface',
          'Proxy':
              'Same interface + access control → controlled, same output interface',
          'Facade':
              'New simpler interface → simplified, hides subsystem details',
        }, title: 'Choosing the Right Wrapper'),
        StrContent(
          "In Dart/Flutter, wrapper patterns are everywhere: StreamTransformer wraps streams (Decorator), http.BaseClient wraps HTTP (Decorator/Proxy), Scaffold wraps body content (Facade), Platform.isAndroid checks wrap native calls (Adapter), and Riverpod providers wrap services (Proxy).",
        ),
        NoteContent(
          "Prefer composition (wrapping) over inheritance when: you don't own the source class, you need runtime flexibility, you want to combine multiple behaviors, or the class is final and can't be extended.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent(
          "الغلاف مفهوم عام (وليس نمط GoF مستقلاً) يشمل المُحوّل والمُزخرف والوكيل. أي كائن يحتوي على كائن آخر ويُفوض بعض العمل له هو غلاف. فهم الغلاف كمفهوم يساعدك على التفكير في متى ولماذا تستخدم هذه الأنماط المترابطة.",
        ),
        AnalogyContent(
          "فكر في تغليف الهدايا. الهدية بالداخل لا تتغير - الصندوق الذي جاءت فيه لا يزال موجوداً. لكن الغلاف يغير مظهرها (مُزخرف)، أو يجعلها متوافقة مع بروتوكول إعطاء الهدايا (مُحوّل)، أو يتحكم في من يمكنه فتحها (وكيل). الثلاثة جميعها أغلفة - تحتوي وتُفوض للأصل - لكن كل منها يخدم غرضاً مختلفاً.",
        ),
        StrContent(
          "مفهوم الغلاف أساسي للتركيب على الوراثة. بدلاً من تعديل فئة مباشرة أو توسيعها عبر الوراثة، تنشئ فئة جديدة تلف الأصلية، تعترض الاستدعاءات وتعدل السلوك اختيارياً. هذا يسمح بمرونة وقت التشغيل التي لا يمكن للوراثة في وقت الترجمة توفيرها.",
        ),
        ULContent(
          title: "متغيرات الغلاف وأغراضها:",
          value: [
            "المُحوّل (Adapter): يلف لتغيير الواجهة - 'اجعلها تناسب'",
            "المُزخرف (Decorator): يلف لإضافة سلوك - 'اجعلها أفضل'",
            "الوكيل (Proxy): يلف للتحكم في الوصول - 'اجعلها آمنة/ذكية'",
            "الواجهة (Facade): يلف نظاماً فرعياً للتبسيط - 'اجعلها سهلة'",
          ],
        ),
        DiagramContent(
          "مفهوم الغلاف:\n┌─────────────────┐\n│    الغلاف       │\n│  ┌───────────┐  │\n│  │  الكائن   │  │\n│  │  الملفوف  │  │\n│  └───────────┘  │\n│ + منطق إضافي   │\n└─────────────────┘\n\nمُحوّل: يغير الواجهة\nمُزخرف: يضيف سلوكاً\nوكيل: يتحكم في الوصول",
        ),
        StrContent(
          "جميع أنماط الغلاف تتبع نفس القالب الهيكلي: تنفذ نفس واجهة الكائن الملفوف، تخزن مرجعاً للكائن الملفوف، تُفوض الاستدعاءات للكائن الملفوف، وتفعل شيئاً اختيارياً قبل/بعد التفويض.",
        ),
        NoteContent(
          "عند اختيار نمط الغلاف المناسب: مُحوّل إذا كانت الواجهة لا تتطابق. مُزخرف إذا أردت إضافة سلوك جديد. وكيل إذا أردت التحكم في كيفية/وقت الوصول للكائن. واجهة إذا أردت تبسيط نظام فرعي معقد.",
          type: .important,
        ),
        ComparisonContent({
          'المُحوّل (Adapter)': 'يغير الواجهة ← متوافق، واجهة إخراج مختلفة',
          'المُزخرف (Decorator)':
              'نفس الواجهة + سلوك جديد ← مُحسّن، نفس واجهة الإخراج',
          'الوكيل (Proxy)':
              'نفس الواجهة + التحكم في الوصول ← محكوم، نفس واجهة الإخراج',
          'الواجهة (Facade)':
              'واجهة أبسط جديدة ← مُبسّط، يخفي تفاصيل النظام الفرعي',
        }, title: 'اختيار الغلاف المناسب'),
        StrContent(
          "في Dart/Flutter، أنماط الغلاف في كل مكان: StreamTransformer يلف التدفقات (مُزخرف)، http.BaseClient يلف HTTP (مُزخرف/وكيل)، Scaffold يلف محتوى الجسم (واجهة)، فحوصات Platform.isAndroid تلف الاستدعاءات الأصلية (مُحوّل)، وموفرو Riverpod يلفون الخدمات (وكيل).",
        ),
        NoteContent(
          "فضّل التركيب (الالتفاف) على الوراثة عندما: لا تملك الفئة المصدر، تحتاج لمرونة وقت التشغيل، تريد دمج سلوكيات متعددة، أو الفئة نهائية (final) ولا يمكن توسيعها.",
          type: .tip,
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Comparing all wrapper types
        StrCodeBlock(r'''// Example 1: All Wrapper Types Side by Side
// Use case: Understanding the difference between wrapper patterns

// Original class (the thing being wrapped)
abstract class DataService {
  String fetchData(String query);
}

class RealDataService implements DataService {
  @override
  String fetchData(String query) {
    print('Fetching data for: $query');
    return 'Data for $query';
  }
}

// ── ADAPTER WRAPPER ──────────────────────────────────────────
// Wraps to CHANGE INTERFACE: Legacy XML service → new JSON interface

class LegacyXmlService {
  // Incompatible interface
  String getXmlData(String searchTerm) {
    return '<data><result>$searchTerm result</result></data>';
  }
}

// Adapter wraps LegacyXmlService, exposes DataService interface
class XmlToJsonAdapter implements DataService {
  final LegacyXmlService _xmlService;
  
  XmlToJsonAdapter(this._xmlService);
  
  @override
  String fetchData(String query) {
    // Translate interface
    final xml = _xmlService.getXmlData(query);
    final jsonData = _parseXmlToJson(xml);
    return jsonData;
  }
  
  String _parseXmlToJson(String xml) {
    final match = RegExp(r'<result>(.*?)</result>').firstMatch(xml);
    return '{"result": "${match?.group(1) ?? ''}"}';
  }
}

// ── DECORATOR WRAPPER ─────────────────────────────────────────
// Wraps to ADD BEHAVIOR: same interface + caching on top

class CachingDecorator implements DataService {
  final DataService _service;
  final Map<String, String> _cache = {};
  
  CachingDecorator(this._service);
  
  @override
  String fetchData(String query) {
    if (_cache.containsKey(query)) {
      print('Cache HIT for: $query');
      return _cache[query]!;
    }
    
    print('Cache MISS - fetching...');
    final data = _service.fetchData(query); // Delegate
    _cache[query] = data; // Add behavior: cache result
    return data;
  }
}

// ── PROXY WRAPPER ─────────────────────────────────────────────
// Wraps to CONTROL ACCESS: same interface + auth check

class AuthProxy implements DataService {
  final DataService _service;
  final String? _token;
  
  AuthProxy(this._service, this._token);
  
  @override
  String fetchData(String query) {
    // Control access: check auth before delegating
    if (_token == null || _token.isEmpty) {
      throw UnauthorizedException('Authentication required');
    }
    
    print('Auth OK - forwarding request');
    return _service.fetchData(query);
  }
}

class UnauthorizedException implements Exception {
  final String message;
  UnauthorizedException(this.message);
  @override
  String toString() => 'Unauthorized: $message';
}

void main() {
  print('=== Wrapper Patterns Comparison ===\n');
  
  // ── Adapter ──
  print('--- Adapter: Changes incompatible interface ---');
  final xmlAdapter = XmlToJsonAdapter(LegacyXmlService());
  // Works with new interface even though source uses old interface
  final result1 = xmlAdapter.fetchData('flutter');
  print('Result: $result1\n');
  
  // ── Decorator ──
  print('--- Decorator: Adds caching behavior ---');
  final cached = CachingDecorator(RealDataService());
  cached.fetchData('dart'); // Miss
  cached.fetchData('dart'); // Hit - behavior added
  cached.fetchData('dart'); // Hit - behavior added
  print('');
  
  // ── Proxy ──
  print('--- Proxy: Controls access ---');
  final withAuth = AuthProxy(RealDataService(), 'valid_token_123');
  final noAuth = AuthProxy(RealDataService(), null);
  
  withAuth.fetchData('dart'); // Allowed
  
  try {
    noAuth.fetchData('dart'); // Blocked by proxy
  } catch (e) {
    print('$e');
  }
  print('');
  
  // ── Combined Wrappers ──
  print('--- Combined: Auth + Cache + Real Service ---');
  final combined = AuthProxy(
    CachingDecorator(RealDataService()),
    'valid_token',
  );
  combined.fetchData('flutter'); // Auth check → cache miss → fetch
  combined.fetchData('flutter'); // Auth check → cache hit
}'''),

        // Example 2: Intermediate - Progressive Enhancement
        StrCodeBlock(r'''import 'package:flutter/material.dart';
import 'dart:async';

// Example 2: Intermediate - Progressive Enhancement with Wrappers
// Use case: Building up a service with multiple wrapper layers

abstract class HttpClient {
  Future<String> get(String url);
  Future<String> post(String url, String body);
}

// Base implementation
class BasicHttpClient implements HttpClient {
  @override
  Future<String> get(String url) async {
    print('HTTP GET: $url');
    await Future.delayed(.milliseconds(50));
    return 'Response from $url';
  }
  
  @override
  Future<String> post(String url, String body) async {
    print('HTTP POST: $url | $body');
    await Future.delayed(.milliseconds(80));
    return 'Created at $url';
  }
}

// Layer 1: Logging Decorator
class LoggingHttpClient implements HttpClient {
  final HttpClient _inner;
  final List<String> _requestLog = [];
  
  LoggingHttpClient(this._inner);
  
  @override
  Future<String> get(String url) async {
    _requestLog.add('GET $url');
    print('LOG: GET $url');
    final response = await _inner.get(url);
    print('LOG: Response: ${response.substring(0, 20)}...');
    return response;
  }
  
  @override
  Future<String> post(String url, String body) async {
    _requestLog.add('POST $url');
    print('LOG: POST $url');
    final response = await _inner.post(url, body);
    print('LOG: Response: ${response.substring(0, 20)}...');
    return response;
  }
  
  List<String> get requestLog => List.unmodifiable(_requestLog);
}

// Layer 2: Auth Decorator
class AuthHttpClient implements HttpClient {
  final HttpClient _inner;
  final String _token;
  
  AuthHttpClient(this._inner, this._token);
  
  @override
  Future<String> get(String url) {
    print('AUTH: Adding token to GET $url');
    return _inner.get('$url?token=$_token');
  }
  
  @override
  Future<String> post(String url, String body) {
    print('AUTH: Adding token to POST $url');
    return _inner.post(url, '{"token": "$_token", "data": $body}');
  }
}

// Layer 3: Retry Decorator
class RetryHttpClient implements HttpClient {
  final HttpClient _inner;
  final int maxRetries;
  int _attemptCount = 0;
  
  RetryHttpClient(this._inner, {this.maxRetries = 3});
  
  Future<T> _withRetry<T>(Future<T> Function() request) async {
    for (int i = 1; i <= maxRetries; i++) {
      try {
        _attemptCount++;
        return await request();
      } catch (e) {
        if (i < maxRetries) {
          print('RETRY: Attempt $i failed, retrying...');
          await Future.delayed(Duration(milliseconds: 100 * i));
        } else {
          rethrow;
        }
      }
    }
    throw Exception('Unreachable');
  }
  
  @override
  Future<String> get(String url) => _withRetry(() => _inner.get(url));
  
  @override
  Future<String> post(String url, String body) =>
      _withRetry(() => _inner.post(url, body));
  
  int get totalAttempts => _attemptCount;
}

// Layer 4: Cache Decorator
class CacheHttpClient implements HttpClient {
  final HttpClient _inner;
  final Map<String, String> _cache = {};
  
  CacheHttpClient(this._inner);
  
  @override
  Future<String> get(String url) async {
    if (_cache.containsKey(url)) {
      print('CACHE: HIT for $url');
      return _cache[url]!;
    }
    print('CACHE: MISS for $url');
    final response = await _inner.get(url);
    _cache[url] = response;
    return response;
  }
  
  @override
  Future<String> post(String url, String body) {
    // Don't cache POST
    return _inner.post(url, body);
  }
  
  int get cacheSize => _cache.length;
}

void main() async {
  print('=== Progressive Wrapper Enhancement ===\n');
  
  // Build up the stack layer by layer
  final base = BasicHttpClient();
  final logged = LoggingHttpClient(base);
  final authed = AuthHttpClient(logged, 'token_abc123');
  final retried = RetryHttpClient(authed, maxRetries: 3);
  final cached = CacheHttpClient(retried);
  
  // Final client has: caching + retry + auth + logging
  print('--- Request 1 (cache miss) ---');
  await cached.get('https://api.example.com/users');
  
  print('\n--- Request 2 (cache hit) ---');
  await cached.get('https://api.example.com/users');
  
  print('\n--- POST request ---');
  await cached.post('https://api.example.com/users', '{"name": "Alice"}');
  
  print('\n=== Statistics ===');
  print('Log entries: ${logged.requestLog.length}');
  print('Cache size: ${cached.cacheSize}');
  print('Total HTTP attempts: ${retried.totalAttempts}');
}'''),

        // Example 3: Advanced - Flutter Widget Wrapper
        StrCodeBlock(r'''// Example 3: Advanced - Flutter Widget Wrappers
import 'dart:math';
import 'package:flutter/material.dart';
// Use case: Applying the wrapper concept to Flutter widgets

// Subject: Widget interface (Flutter's Widget IS the interface)
// All Flutter widgets are essentially components in a Composite/Decorator pattern

// ── DECORATOR: Adding behavior to widgets ────────────────────

// Analytics Decorator - tracks taps on any widget
class AnalyticsWrapper extends StatelessWidget {
  final Widget child;
  final String eventName;
  final Map<String, dynamic>? properties;
  
  const AnalyticsWrapper({
    required this.child,
    required this.eventName,
    this.properties,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Analytics: Event "$eventName" ${properties ?? ''}');
      },
      child: child, // Delegate to original widget
    );
  }
}

// Loading State Decorator - adds loading overlay to any widget
class LoadingWrapper extends StatelessWidget {
  final Widget child;
  final bool isLoading;
  final String? loadingMessage;
  
  const LoadingWrapper({
    required this.child,
    required this.isLoading,
    this.loadingMessage,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child, // Delegate to original widget
        if (isLoading)
          Container(
            color: Colors.black38,
            child: Center(
              child: Column(
                mainAxisSize: .min,
                children: [
                  CircularProgressIndicator(),
                  if (loadingMessage != null) ...[
                    SizedBox(height: 16),
                    Text(
                      loadingMessage!,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ],
              ),
            ),
          ),
      ],
    );
  }
}

// Error Boundary Decorator - catches and displays errors
class ErrorBoundary extends StatefulWidget {
  final Widget child;
  final Widget Function(Object error)? errorBuilder;
  
  const ErrorBoundary({
    required this.child,
    this.errorBuilder,
    super.key,
  });
  
  @override
  State<ErrorBoundary> createState() => _ErrorBoundaryState();
}

class _ErrorBoundaryState extends State<ErrorBoundary> {
  Object? _error;
  
  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return widget.errorBuilder?.call(_error!) ??
          Center(
            child: Column(
              mainAxisSize: .min,
              children: [
                Icon(Icons.error, color: Colors.red, size: 48),
                Text('Something went wrong'),
                TextButton(
                  onPressed: () => setState(() => _error = null),
                  child: Text('Retry'),
                ),
              ],
            ),
          );
    }
    
    return widget.child;
  }
}

// ── PROXY: Controlling access to widgets ─────────────────────

// Auth Guard - shows login screen if not authenticated
class AuthGuard extends StatelessWidget {
  final Widget child;
  final Widget loginWidget;
  final bool isAuthenticated;
  
  const AuthGuard({
    required this.child,
    required this.loginWidget,
    required this.isAuthenticated,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    if (!isAuthenticated) {
      return loginWidget; // Block access, show alternative
    }
    return child; // Grant access
  }
}

// Permission Guard - shows permission request if not granted
class PermissionGuard extends StatelessWidget {
  final Widget child;
  final String permissionName;
  final bool hasPermission;
  final VoidCallback onRequestPermission;
  
  const PermissionGuard({
    required this.child,
    required this.permissionName,
    required this.hasPermission,
    required this.onRequestPermission,
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    if (!hasPermission) {
      return Center(
        child: Column(
          mainAxisSize: .min,
          children: [
            Icon(Icons.lock, size: 48),
            Text('$permissionName required'),
            ElevatedButton(
              onPressed: onRequestPermission,
              child: Text('Grant Permission'),
            ),
          ],
        ),
      );
    }
    return child;
  }
}

// Demo App
class WrapperDemo extends StatefulWidget {
  const WrapperDemo({super.key});
  
  @override
  State<WrapperDemo> createState() => _WrapperDemoState();
}

class _WrapperDemoState extends State<WrapperDemo> {
  bool _isLoading = false;
  bool _isAuthenticated = true;
  bool _hasPermission = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget Wrapper Demo')),
      body: Column(
        children: [
          // Controls
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => _isLoading = !_isLoading),
                  child: Text(_isLoading ? 'Stop Loading' : 'Show Loading'),
                ),
                ElevatedButton(
                  onPressed: () => setState(() => _isAuthenticated = !_isAuthenticated),
                  child: Text(_isAuthenticated ? 'Logout' : 'Login'),
                ),
                ElevatedButton(
                  onPressed: () => setState(() => _hasPermission = !_hasPermission),
                  child: Text(_hasPermission ? 'Revoke' : 'Grant'),
                ),
              ],
            ),
          ),
          
          Expanded(
            // Proxy: Auth Guard
            child: AuthGuard(
              isAuthenticated: _isAuthenticated,
              loginWidget: Center(child: Text('Please login')),
              
              // Proxy: Permission Guard
              child: PermissionGuard(
                permissionName: 'Camera',
                hasPermission: _hasPermission,
                onRequestPermission: () => setState(() => _hasPermission = true),
                
                // Decorator: Loading wrapper
                child: LoadingWrapper(
                  isLoading: _isLoading,
                  loadingMessage: 'Processing...',
                  
                  // Decorator: Analytics wrapper
                  child: AnalyticsWrapper(
                    eventName: 'main_content_tap',
                    properties: {'screen': 'home'},
                    
                    // The actual content
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Protected Content',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 16),
                          Text('Tap anywhere to track analytics'),
                        ],
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

void main() {
  runApp(MaterialApp(home: WrapperDemo()));
}'''),
      ],
      ar: [
        // Arabic versions would go here
      ],
    ),
    pros: LocSL(
      en: [
        "Composition over inheritance - more flexible at runtime",
        "Can add/remove behavior without modifying original class",
        "Follows Open/Closed Principle - extend without modifying",
        "Multiple behaviors can be combined by stacking wrappers",
        "Works with classes you don't own or can't modify (final classes, libraries)",
        "Enables testing through mock wrappers",
        "Clear separation of concerns - each wrapper has one responsibility",
      ],
      ar: [
        "التركيب على الوراثة - أكثر مرونة في وقت التشغيل",
        "يمكن إضافة/إزالة السلوك دون تعديل الفئة الأصلية",
        "يتبع مبدأ المفتوح/المغلق - يوسع دون تعديل",
        "يمكن دمج سلوكيات متعددة بتكديس الأغلفة",
        "يعمل مع الفئات التي لا تملكها أو لا يمكنك تعديلها (فئات final، مكتبات)",
        "يُمكّن الاختبار من خلال أغلفة وهمية",
        "فصل واضح للاهتمامات - كل غلاف لديه مسؤولية واحدة",
      ],
    ),
    cons: LocSL(
      en: [
        "Can add complexity with multiple wrapper layers",
        "May impact performance due to extra method calls",
        "Can make debugging harder - need to trace through layers",
        "Need to maintain all wrappers when wrapped class changes",
        "Order of wrappers matters and can be confusing",
        "Runtime type checking issues - instanceof checks may not work as expected",
      ],
      ar: [
        "قد يضيف تعقيداً مع طبقات غلاف متعددة",
        "قد يؤثر على الأداء بسبب استدعاءات طرق إضافية",
        "قد يجعل التنقيح أصعب - تحتاج لتتبع عبر الطبقات",
        "تحتاج للحفاظ على جميع الأغلفة عندما تتغير الفئة الملفوفة",
        "ترتيب الأغلفة مهم ويمكن أن يكون مُربكاً",
        "مشاكل التحقق من النوع في وقت التشغيل - فحوصات instanceof قد لا تعمل كما هو متوقع",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use the Wrapper concept when:"),
        ULContent(
          value: [
            "You need to extend functionality without modifying the original class",
            "You want to add cross-cutting concerns (logging, caching, auth) transparently",
            "You can't modify the source class (third-party, final, legacy)",
            "You need runtime flexibility to add/remove behaviors",
            "You want to combine multiple behaviors in different ways",
            "You're testing and need to mock dependencies",
          ],
        ),
        NoteContent(
          "Choose the specific wrapper pattern based on intent: Adapter (compatibility), Decorator (enhancement), Proxy (control), Facade (simplification).",
          type: .tip,
        ),
      ],
      ar: [
        StrContent("استخدم مفهوم الغلاف عندما:"),
        ULContent(
          value: [
            "تحتاج لتوسيع الوظائف دون تعديل الفئة الأصلية",
            "تريد إضافة اهتمامات شاملة (تسجيل، تخزين مؤقت، مصادقة) بشفافية",
            "لا يمكنك تعديل الفئة المصدر (طرف ثالث، نهائي، قديم)",
            "تحتاج لمرونة وقت التشغيل لإضافة/إزالة السلوكيات",
            "تريد دمج سلوكيات متعددة بطرق مختلفة",
            "تختبر وتحتاج لمحاكاة التبعيات",
          ],
        ),
        NoteContent(
          "اختر نمط الغلاف المحدد بناءً على النية: مُحوّل (التوافق)، مُزخرف (التحسين)، وكيل (التحكم)، واجهة (التبسيط).",
          type: .tip,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Creating too many wrapper layers reducing readability",
        "Not maintaining interface consistency across wrappers",
        "Using wrappers when simple inheritance would be cleaner",
        "Forgetting to forward all necessary methods to wrapped object",
        "Mixing different wrapper concerns in one class (e.g., caching + logging + auth)",
        "Not documenting wrapper behavior clearly for team members",
      ],
      ar: [
        "إنشاء طبقات غلاف كثيرة جداً مما يقلل من قابلية القراءة",
        "عدم الحفاظ على اتساق الواجهة عبر الأغلفة",
        "استخدام الأغلفة عندما تكون الوراثة البسيطة أوضح",
        "نسيان توجيه جميع الطرق الضرورية للكائن الملفوف",
        "خلط اهتمامات غلاف مختلفة في فئة واحدة (مثل تخزين مؤقت + تسجيل + مصادقة)",
        "عدم توثيق سلوك الغلاف بوضوح لأعضاء الفريق",
      ],
    ),
    relatedPatterns: [PK.adapter, PK.decorator, PK.proxy, PK.facade],
    oftenConfusedWith: [PK.decorator, PK.proxy],
  ),
  PK.dataMapper: DesignPattern(
    id: PK.dataMapper,
    title: LocS(en: "Data Mapper", ar: "مُعيّن البيانات (Data Mapper)"),
    description: LocS(
      en: "Separates domain objects from database representation using a mapper layer",
      ar: "يفصل كائنات النطاق عن تمثيل قاعدة البيانات باستخدام طبقة تعيين",
    ),
    group: .design,
    type: .structural,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Data Mapper pattern separates the in-memory objects from the database. Domain objects know nothing about the database structure. A separate mapper layer handles all data translation between the two representations, keeping domain logic clean and persistence concerns isolated.",
        ),
        AnalogyContent(
          "Think of a professional translator working at the UN. Delegates speak their own language freely (domain objects). The translator (mapper) converts speech to/from the official UN language (database format). The delegates don't need to learn UN protocol, and the UN doesn't need to understand every language - the translator handles everything in between.",
        ),
        StrContent(
          "Unlike Active Record (where objects know how to save themselves), Data Mapper completely decouples domain logic from persistence. Your User class has no save(), find(), or database-related methods. All that responsibility belongs to the UserMapper. This makes domain objects pure and testable without a database.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Domain Object: Pure business object with no database knowledge",
            "Mapper: Translates between domain objects and database rows",
            "Data Source: Database, API, or any external storage",
            "Identity Map: Optional - tracks loaded objects to prevent duplicates",
            "Unit of Work: Optional - tracks changes for batch persistence",
          ],
        ),
        DiagramContent(
          "Pattern Structure:\nDomain Object  ←→  Mapper  ←→  Database\n(pure business)    (translate)   (storage)\n\nUser            UserMapper    users table\n- name          map()         - user_id\n- email         unmap()       - email_addr\n- address       findById()    - created_at",
        ),
        NoteContent(
          "Data Mapper vs Active Record: Active Record is simpler (object knows how to persist itself). Data Mapper is more powerful (complete separation). Use Active Record for simple CRUD apps. Use Data Mapper when domain logic is complex and shouldn't be polluted with persistence concerns.",
          type: .important,
        ),
        ComparisonContent({
          'Data Mapper':
              'Separate mapper class, domain objects are pure, more complex',
          'Active Record':
              'Object maps itself, simpler, domain mixed with persistence',
          'Repository':
              'Collection-like interface, often uses Data Mapper internally',
          'DAO':
              'Data Access Object, similar but less strict about domain purity',
        }, title: 'Data Mapper vs Similar Patterns'),
        StrContent(
          "Common use cases in Flutter/Dart: JSON API response mapping, SQLite/database ORM mapping, converting between API models and domain models, mapping GraphQL responses, and any scenario where external data format differs from your domain model.",
        ),
        NoteContent(
          "In Flutter, this pattern appears in packages like `floor`, `drift`, and `isar`. Every time you write fromJson()/toJson() in a separate service class (not in the model itself), you're applying Data Mapper thinking.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent(
          "نمط مُعيّن البيانات يفصل الكائنات في الذاكرة عن قاعدة البيانات. كائنات النطاق لا تعرف شيئاً عن بنية قاعدة البيانات. طبقة تعيين منفصلة تتعامل مع جميع ترجمات البيانات بين التمثيلين، مما يبقي منطق النطاق نظيفاً واهتمامات الاستمرارية معزولة.",
        ),
        AnalogyContent(
          "فكر في مترجم محترف يعمل في الأمم المتحدة. المندوبون يتحدثون بلغتهم الخاصة بحرية (كائنات النطاق). المترجم (المُعيّن) يحوّل الكلام من/إلى اللغة الرسمية للأمم المتحدة (تنسيق قاعدة البيانات). المندوبون لا يحتاجون لتعلم بروتوكول الأمم المتحدة، والأمم المتحدة لا تحتاج لفهم كل لغة - المترجم يتعامل مع كل شيء في المنتصف.",
        ),
        StrContent(
          "على عكس Active Record (حيث تعرف الكائنات كيفية حفظ نفسها)، مُعيّن البيانات يفصل تماماً منطق النطاق عن الاستمرارية. فئة User لديك لا تحتوي على save() أو find() أو طرق متعلقة بقاعدة البيانات. كل تلك المسؤولية تنتمي لـ UserMapper. هذا يجعل كائنات النطاق نقية وقابلة للاختبار دون قاعدة بيانات.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "كائن النطاق (Domain Object): كائن أعمال نقي بدون معرفة بقاعدة البيانات",
            "المُعيّن (Mapper): يترجم بين كائنات النطاق وصفوف قاعدة البيانات",
            "مصدر البيانات (Data Source): قاعدة البيانات، API، أو أي تخزين خارجي",
            "خريطة الهوية (Identity Map): اختيارية - تتتبع الكائنات المحملة لمنع التكرار",
            "وحدة العمل (Unit of Work): اختيارية - تتتبع التغييرات للاستمرارية الدُفعية",
          ],
        ),
        DiagramContent(
          "بنية النمط:\nكائن النطاق  ←→  المُعيّن  ←→  قاعدة البيانات\n(أعمال نقية)    (ترجمة)      (تخزين)\n\nUser           UserMapper    جدول users\n- name         map()         - user_id\n- email        unmap()       - email_addr\n- address      findById()    - created_at",
        ),
        NoteContent(
          "مُعيّن البيانات مقابل Active Record: Active Record أبسط (الكائن يعرف كيفية استمراريته). مُعيّن البيانات أقوى (فصل كامل). استخدم Active Record للتطبيقات البسيطة ذات CRUD. استخدم مُعيّن البيانات عندما يكون منطق النطاق معقداً ولا يجب أن يتلوث باهتمامات الاستمرارية.",
          type: .important,
        ),
        ComparisonContent({
          'مُعيّن البيانات (Data Mapper)':
              'فئة مُعيّن منفصلة، كائنات النطاق نقية، أكثر تعقيداً',
          'Active Record':
              'الكائن يعيّن نفسه، أبسط، النطاق مختلط مع الاستمرارية',
          'المستودع (Repository)':
              'واجهة تشبه المجموعة، غالباً تستخدم مُعيّن البيانات داخلياً',
          'DAO': 'كائن وصول البيانات، مشابه لكن أقل صرامة حول نقاء النطاق',
        }, title: 'مُعيّن البيانات مقابل الأنماط المشابهة'),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: تعيين استجابات JSON API، تعيين SQLite/ORM، التحويل بين نماذج API ونماذج النطاق، تعيين استجابات GraphQL، وأي سيناريو يختلف فيه تنسيق البيانات الخارجية عن نموذج نطاقك.",
        ),
        NoteContent(
          "في Flutter، يظهر هذا النمط في حزم مثل `floor` و`drift` و`isar`. في كل مرة تكتب فيها fromJson()/toJson() في فئة خدمة منفصلة (وليس في النموذج نفسه)، فأنت تطبق تفكير مُعيّن البيانات.",
          type: .tip,
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - JSON API Mapper
        StrCodeBlock(r'''import 'dart:convert';

// Example 1: Basic - JSON API Response Mapper
// Use case: Mapping API responses to clean domain objects

// Domain Objects: Pure business logic, no JSON knowledge
class User {
  final String id;
  final String name;
  final String email;
  final Address address;
  final DateTime createdAt;
  final bool isPremium;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.address,
    required this.createdAt,
    required this.isPremium,
  });

  // Pure business logic methods
  bool canAccessPremiumContent() => isPremium;
  String get displayName => name.split(' ').first;
  bool get isNewUser =>
      DateTime.now().difference(createdAt).inDays < 30;

  @override
  String toString() =>
      'User(id: $id, name: $name, email: $email, premium: $isPremium)';
}

class Address {
  final String street;
  final String city;
  final String country;
  final String zipCode;

  Address({
    required this.street,
    required this.city,
    required this.country,
    required this.zipCode,
  });

  String get fullAddress => '$street, $city, $country $zipCode';
}

// Mapper: Handles all translation between JSON and domain objects
class UserMapper {
  // Map from API response (JSON) to domain object
  User fromJson(Map<String, dynamic> json) {
    return User(
      // API uses snake_case, domain uses camelCase
      id: json['user_id'] as String,
      name: json['full_name'] as String,
      email: json['email_address'] as String,
      address: _mapAddress(json['home_address'] as Map<String, dynamic>),
      // API stores as Unix timestamp, domain uses DateTime
      createdAt: DateTime.fromMillisecondsSinceEpoch(
        (json['created_timestamp'] as int) * 1000,
      ),
      // API uses int (0/1), domain uses bool
      isPremium: (json['premium_tier'] as int) == 1,
    );
  }

  // Map from domain object to API payload (for creating/updating)
  Map<String, dynamic> toJson(User user) {
    return {
      'user_id': user.id,
      'full_name': user.name,
      'email_address': user.email,
      'home_address': _addressToJson(user.address),
      'created_timestamp':
          user.createdAt.millisecondsSinceEpoch ~/ 1000,
      'premium_tier': user.isPremium ? 1 : 0,
    };
  }

  // Map list of users
  List<User> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map((json) => fromJson(json as Map<String, dynamic>))
        .toList();
  }

  Address _mapAddress(Map<String, dynamic> json) {
    return Address(
      street: json['street_line_1'] as String,
      city: json['city_name'] as String,
      country: json['country_code'] as String,
      zipCode: json['postal_code'] as String,
    );
  }

  Map<String, dynamic> _addressToJson(Address address) {
    return {
      'street_line_1': address.street,
      'city_name': address.city,
      'country_code': address.country,
      'postal_code': address.zipCode,
    };
  }
}

void main() {
  final mapper = UserMapper();

  // Simulate raw API response (messy, API-specific format)
  final apiResponse = {
    'user_id': 'usr_abc123',
    'full_name': 'Alice Johnson',
    'email_address': 'alice@example.com',
    'home_address': {
      'street_line_1': '123 Main St',
      'city_name': 'Springfield',
      'country_code': 'US',
      'postal_code': '12345',
    },
    'created_timestamp': 1700000000,
    'premium_tier': 1,
  };

  print('=== API Response → Domain Object ===');
  final user = mapper.fromJson(apiResponse);
  print(user);
  print('Display name: ${user.displayName}');
  print('Is new user: ${user.isNewUser}');
  print('Can access premium: ${user.canAccessPremiumContent()}');
  print('Full address: ${user.address.fullAddress}');

  print('=== Domain Object → API Payload ===');
  final payload = mapper.toJson(user);
  print('Payload: $payload');

  print('=== Mapping a list ===');
  final apiList = [
    apiResponse,
    {
      'user_id': 'usr_def456',
      'full_name': 'Bob Smith',
      'email_address': 'bob@example.com',
      'home_address': {
        'street_line_1': '456 Oak Ave',
        'city_name': 'Shelbyville',
        'country_code': 'US',
        'postal_code': '67890',
      },
      'created_timestamp': 1710000000,
      'premium_tier': 0,
    },
  ];

  final users = mapper.fromJsonList(apiList);
  for (final u in users) {
    print(u);
  }
}'''),

        // Example 2: Intermediate - SQLite Database Mapper
        StrCodeBlock(r'''// Example 2: Intermediate - SQLite Database Mapper
import 'dart:async';
import 'package:flutter/material.dart';
// Use case: Mapping between domain objects and database rows

// Domain Objects: No SQL knowledge whatsoever
class Product {
  final String id;
  final String name;
  final String description;
  final Money price;
  final Category category;
  final int stockQuantity;
  final List<String> tags;
  final DateTime? deletedAt;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    required this.stockQuantity,
    required this.tags,
    this.deletedAt,
  });

  bool get isAvailable => stockQuantity > 0 && deletedAt == null;
  bool get isLowStock => stockQuantity > 0 && stockQuantity < 10;
  bool get isDeleted => deletedAt != null;

  Product copyWith({
    String? name,
    String? description,
    Money? price,
    int? stockQuantity,
    List<String>? tags,
  }) {
    return Product(
      id: id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      category: category,
      stockQuantity: stockQuantity ?? this.stockQuantity,
      tags: tags ?? this.tags,
      deletedAt: deletedAt,
    );
  }
}

class Money {
  final int amountCents; // Always store as cents to avoid float issues
  final String currency;

  Money(this.amountCents, this.currency);

  double get amount => amountCents / 100;

  @override
  String toString() =>
      '${currency}${amount.toStringAsFixed(2)}';
}

enum Category { electronics, clothing, food, books, sports }

// Database row representation (what SQLite actually stores)
class ProductRow {
  final String id;
  final String name;
  final String description;
  final int priceAmountCents;
  final String priceCurrency;
  final String categoryName;
  final int stockQuantity;
  final String tagsJson; // Stored as JSON string in SQLite
  final int? deletedAtMs; // Stored as milliseconds

  ProductRow({
    required this.id,
    required this.name,
    required this.description,
    required this.priceAmountCents,
    required this.priceCurrency,
    required this.categoryName,
    required this.stockQuantity,
    required this.tagsJson,
    this.deletedAtMs,
  });

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'description': description,
    'price_amount_cents': priceAmountCents,
    'price_currency': priceCurrency,
    'category_name': categoryName,
    'stock_quantity': stockQuantity,
    'tags_json': tagsJson,
    'deleted_at_ms': deletedAtMs,
  };

  factory ProductRow.fromMap(Map<String, dynamic> map) => ProductRow(
    id: map['id'] as String,
    name: map['name'] as String,
    description: map['description'] as String,
    priceAmountCents: map['price_amount_cents'] as int,
    priceCurrency: map['price_currency'] as String,
    categoryName: map['category_name'] as String,
    stockQuantity: map['stock_quantity'] as int,
    tagsJson: map['tags_json'] as String,
    deletedAtMs: map['deleted_at_ms'] as int?,
  );
}

// Mapper: Translates between Product domain objects and ProductRows
class ProductMapper {
  static const _tagsSeparator = '|';

  Product toDomain(ProductRow row) {
    return Product(
      id: row.id,
      name: row.name,
      description: row.description,
      price: Money(row.priceAmountCents, row.priceCurrency),
      category: Category.values.firstWhere(
        (c) => c.name == row.categoryName,
      ),
      stockQuantity: row.stockQuantity,
      tags: row.tagsJson.isEmpty
          ? []
          : row.tagsJson.split(_tagsSeparator),
      deletedAt: row.deletedAtMs != null
          ? DateTime.fromMillisecondsSinceEpoch(row.deletedAtMs!)
          : null,
    );
  }

  ProductRow fromDomain(Product product) {
    return ProductRow(
      id: product.id,
      name: product.name,
      description: product.description,
      priceAmountCents: product.price.amountCents,
      priceCurrency: product.price.currency,
      categoryName: product.category.name,
      stockQuantity: product.stockQuantity,
      tagsJson: product.tags.join(_tagsSeparator),
      deletedAtMs: product.deletedAt?.millisecondsSinceEpoch,
    );
  }

  List<Product> toDomainList(List<ProductRow> rows) =>
      rows.map(toDomain).toList();

  List<ProductRow> fromDomainList(List<Product> products) =>
      products.map(fromDomain).toList();

  // Map directly from raw database map
  Product fromMap(Map<String, dynamic> map) =>
      toDomain(ProductRow.fromMap(map));
}

// Repository using the mapper (separation of concerns in action)
class ProductRepository {
  final ProductMapper _mapper = ProductMapper();

  // Simulated database
  final List<Map<String, dynamic>> _db = [];

  Future<void> save(Product product) async {
    final row = _mapper.fromDomain(product);
    print('DB: INSERT/UPDATE product ${product.id}');
    print('    Row: ${row.toMap()}');
    _db.removeWhere((r) => r['id'] == product.id);
    _db.add(row.toMap());
  }

  Future<Product?> findById(String id) async {
    print('DB: SELECT * FROM products WHERE id = $id');
    final map = _db.cast<Map<String, dynamic>?>().firstWhere(
      (r) => r?['id'] == id,
      orElse: () => null,
    );
    return map != null ? _mapper.fromMap(map) : null;
  }

  Future<List<Product>> findAll() async {
    print('DB: SELECT * FROM products WHERE deleted_at_ms IS NULL');
    return _db
        .where((r) => r['deleted_at_ms'] == null)
        .map((r) => _mapper.fromMap(r))
        .toList();
  }

  Future<List<Product>> findByCategory(Category category) async {
    print('DB: SELECT * FROM products WHERE category_name = ${category.name}');
    return _db
        .where((r) =>
            r['category_name'] == category.name &&
            r['deleted_at_ms'] == null)
        .map((r) => _mapper.fromMap(r))
        .toList();
  }
}

void main() async {
  final repo = ProductRepository();

  // Domain objects know nothing about the database
  final laptop = Product(
    id: 'prod_001',
    name: 'MacBook Pro',
    description: 'Powerful laptop for developers',
    price: Money(249900, 'USD'),
    category: .electronics,
    stockQuantity: 50,
    tags: ['laptop', 'apple', 'developer'],
  );

  final shirt = Product(
    id: 'prod_002',
    name: 'Flutter T-Shirt',
    description: 'Show your love for Flutter',
    price: Money(2999, 'USD'),
    category: .clothing,
    stockQuantity: 5,
    tags: ['flutter', 'developer', 'tshirt'],
  );

  print('=== Saving Products ===');
  await repo.save(laptop);
  await repo.save(shirt);

  print('=== Finding Products ===');
  final found = await repo.findById('prod_001');
  print('Found: $found');
  print('Is available: ${found?.isAvailable}');
  print('Price: ${found?.price}');

  print('=== Finding by Category ===');
  final electronics = await repo.findByCategory(.electronics);
  print('Electronics count: ${electronics.length}');
  for (final p in electronics) {
    print('  - ${p.name} (${p.price}) stock: ${p.stockQuantity}');
    if (p.isLowStock) print('    ⚠️ Low stock!');
  }
}'''),

        // Example 3: Advanced - Multi-Source Mapper with Identity Map
        StrCodeBlock(r'''import 'dart:convert';

// Example 3: Advanced - Multi-Source Mapper with Identity Map
// Use case: Mapping from multiple sources with object identity tracking

// Domain Objects
class Order {
  final String id;
  final Customer customer;
  final List<OrderItem> items;
  final OrderStatus status;
  final DateTime placedAt;
  final Address? shippingAddress;

  Order({
    required this.id,
    required this.customer,
    required this.items,
    required this.status,
    required this.placedAt,
    this.shippingAddress,
  });

  Money get total => items.fold(
    Money(0, 'USD'),
    (sum, item) => Money(
      sum.amountCents + item.totalPrice.amountCents,
      sum.currency,
    ),
  );

  bool get canBeCancelled =>
      status == OrderStatus.pending || status == OrderStatus.confirmed;
}

class Customer {
  final String id;
  final String name;
  final String email;

  Customer({required this.id, required this.name, required this.email});
}

class OrderItem {
  final String productId;
  final String productName;
  final int quantity;
  final Money unitPrice;

  OrderItem({
    required this.productId,
    required this.productName,
    required this.quantity,
    required this.unitPrice,
  });

  Money get totalPrice =>
      Money(unitPrice.amountCents * quantity, unitPrice.currency);
}

enum OrderStatus { pending, confirmed, shipped, delivered, cancelled }

// Identity Map: Prevents loading same object twice
class IdentityMap<T> {
  final Map<String, T> _map = {};

  bool has(String id) => _map.containsKey(id);
  T? get(String id) => _map[id];
  void put(String id, T object) => _map[id] = object;
  void remove(String id) => _map.remove(id);
  void clear() => _map.clear();

  int get size => _map.length;
}

// Mapper with identity map support
class OrderMapper {
  final IdentityMap<Order> _identityMap = IdentityMap();
  final IdentityMap<Customer> _customerMap = IdentityMap();

  Order fromOrderApiResponse(Map<String, dynamic> json) {
    final orderId = json['order_id'] as String;

    // Check identity map first
    if (_identityMap.has(orderId)) {
      print('IdentityMap: Returning cached Order $orderId');
      return _identityMap.get(orderId)!;
    }

    print('IdentityMap: Mapping new Order $orderId');

    final customer = _mapCustomer(
      json['customer'] as Map<String, dynamic>,
    );

    final items = (json['line_items'] as List<dynamic>)
        .map((item) => _mapOrderItem(item as Map<String, dynamic>))
        .toList();

    final order = Order(
      id: orderId,
      customer: customer,
      items: items,
      status: _parseStatus(json['order_status'] as String),
      placedAt: DateTime.parse(json['placed_at'] as String),
      shippingAddress: json['shipping'] != null
          ? _mapAddress(json['shipping'] as Map<String, dynamic>)
          : null,
    );

    _identityMap.put(orderId, order);
    return order;
  }

  List<Order> fromOrderList(List<dynamic> jsonList) {
    return jsonList
        .map((j) => fromOrderApiResponse(j as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toApiPayload(Order order) {
    return {
      'order_id': order.id,
      'customer': {
        'customer_id': order.customer.id,
        'full_name': order.customer.name,
        'email_address': order.customer.email,
      },
      'line_items': order.items.map((item) => {
        'product_id': item.productId,
        'product_name': item.productName,
        'qty': item.quantity,
        'unit_price_cents': item.unitPrice.amountCents,
        'unit_price_currency': item.unitPrice.currency,
      }).toList(),
      'order_status': order.status.name,
      'placed_at': order.placedAt.toIso8601String(),
      'total_cents': order.total.amountCents,
    };
  }

  Customer _mapCustomer(Map<String, dynamic> json) {
    final customerId = json['customer_id'] as String;

    if (_customerMap.has(customerId)) {
      print('IdentityMap: Reusing Customer $customerId');
      return _customerMap.get(customerId)!;
    }

    final customer = Customer(
      id: customerId,
      name: json['full_name'] as String,
      email: json['email_address'] as String,
    );

    _customerMap.put(customerId, customer);
    return customer;
  }

  OrderItem _mapOrderItem(Map<String, dynamic> json) {
    return OrderItem(
      productId: json['product_id'] as String,
      productName: json['product_name'] as String,
      quantity: json['qty'] as int,
      unitPrice: Money(
        json['unit_price_cents'] as int,
        json['unit_price_currency'] as String,
      ),
    );
  }

  OrderStatus _parseStatus(String status) {
    return OrderStatus.values.firstWhere(
      (s) => s.name == status,
      orElse: () => .pending,
    );
  }

  Address _mapAddress(Map<String, dynamic> json) {
    return Address(
      street: json['street'] as String,
      city: json['city'] as String,
      country: json['country'] as String,
      zipCode: json['zip'] as String,
    );
  }

  void clearCache() {
    _identityMap.clear();
    _customerMap.clear();
    print('IdentityMap: Cleared');
  }

  void printStats() {
    print('IdentityMap: ${_identityMap.size} orders, ${_customerMap.size} customers cached');
  }
}

void main() {
  final mapper = OrderMapper();

  // Simulate API responses with shared customer
  final sharedCustomer = {
    'customer_id': 'cust_001',
    'full_name': 'Alice Johnson',
    'email_address': 'alice@example.com',
  };

  final apiOrders = [
    {
      'order_id': 'ord_001',
      'customer': sharedCustomer,
      'line_items': [
        {
          'product_id': 'prod_001',
          'product_name': 'Laptop',
          'qty': 1,
          'unit_price_cents': 99900,
          'unit_price_currency': 'USD',
        },
      ],
      'order_status': 'confirmed',
      'placed_at': '2024-01-15T10:30:00Z',
      'shipping': {
        'street': '123 Main St',
        'city': 'Springfield',
        'country': 'US',
        'zip': '12345',
      },
    },
    {
      'order_id': 'ord_002',
      'customer': sharedCustomer, // Same customer!
      'line_items': [
        {
          'product_id': 'prod_002',
          'product_name': 'Mouse',
          'qty': 2,
          'unit_price_cents': 2999,
          'unit_price_currency': 'USD',
        },
      ],
      'order_status': 'pending',
      'placed_at': '2024-01-16T14:00:00Z',
      'shipping': null,
    },
  ];

  print('=== Mapping Orders ===');
  final orders = mapper.fromOrderList(apiOrders);

  print('=== Loading Same Order Again ===');
  mapper.fromOrderApiResponse(apiOrders[0] as Map<String, dynamic>);

  mapper.printStats();

  print('=== Order Details ===');
  for (final order in orders) {
    print('Order ${order.id}:');
    print('  Customer: ${order.customer.name}');
    print('  Items: ${order.items.length}');
    print('  Total: ${order.total}');
    print('  Can cancel: ${order.canBeCancelled}');
  }

  print('=== Same Customer Object? ===');
  // Both orders share exact same Customer instance
  print('Same instance: ${identical(orders[0].customer, orders[1].customer)}');
}'''),

        // Example 4: Flutter - API to Domain Model Mapper
        StrCodeBlock(
          r'''// Example 4: Flutter - Complete Feature with Data Mapper
// Use case: News feed with clean domain layer

// Domain Objects: Purely business focused
class Article {
  final String id;
  final String title;
  final String summary;
  final String content;
  final Author author;
  final DateTime publishedAt;
  final List<String> tags;
  final ArticleCategory category;
  final int readTimeMinutes;
  final Uri? imageUrl;
  final int viewCount;

  Article({
    required this.id,
    required this.title,
    required this.summary,
    required this.content,
    required this.author,
    required this.publishedAt,
    required this.tags,
    required this.category,
    required this.readTimeMinutes,
    this.imageUrl,
    required this.viewCount,
  });

  bool get isTrending => viewCount > 10000;
  bool get isNew =>
      DateTime.now().difference(publishedAt).inHours < 24;
  String get timeAgo {
    final diff = DateTime.now().difference(publishedAt);
    if (diff.inMinutes < 60) return '${diff.inMinutes}m ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    return '${diff.inDays}d ago';
  }
}

class Author {
  final String id;
  final String name;
  final String bio;
  final Uri? avatarUrl;

  Author({
    required this.id,
    required this.name,
    required this.bio,
    this.avatarUrl,
  });
}

enum ArticleCategory { technology, science, business, health, sports }

// Data Mapper
class ArticleMapper {
  Article fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['_id'] as String,
      // API might return null for some fields
      title: (json['headline'] as String?) ?? 'Untitled',
      summary: (json['excerpt'] as String?) ?? '',
      content: (json['body_html'] as String?) ?? '',
      author: _mapAuthor(json['byline'] as Map<String, dynamic>),
      publishedAt: DateTime.parse(json['pub_date'] as String),
      tags: List<String>.from(
        (json['keywords'] as List<dynamic>?) ?? [],
      ),
      category: _parseCategory(json['section'] as String?),
      readTimeMinutes: _estimateReadTime(
        (json['body_html'] as String?) ?? '',
      ),
      imageUrl: json['lead_image_url'] != null
          ? Uri.tryParse(json['lead_image_url'] as String)
          : null,
      viewCount: (json['view_count'] as int?) ?? 0,
    );
  }

  List<Article> fromJsonList(List<dynamic> jsonList) =>
      jsonList
          .map((j) => fromJson(j as Map<String, dynamic>))
          .toList();

  Author _mapAuthor(Map<String, dynamic> json) {
    return Author(
      id: json['author_id'] as String,
      name: json['display_name'] as String,
      bio: (json['bio_text'] as String?) ?? '',
      avatarUrl: json['profile_image'] != null
          ? Uri.tryParse(json['profile_image'] as String)
          : null,
    );
  }

  ArticleCategory _parseCategory(String? section) {
    return switch (section?.toLowerCase()) {
      'tech' || 'technology' => .technology,
      'science' || 'sci' => .science,
      'business' || 'finance' => .business,
      'health' || 'wellness' => .health,
      'sports' || 'sport' => .sports,
      _ => .technology,
    };
  }

  int _estimateReadTime(String html) {
    // ~200 words per minute, average 5 chars per word
    final charCount = html.replaceAll(RegExp(r'<[^>]*>'), '').length;
    return (charCount / 1000).ceil().clamp(1, 60);
  }
}

// Repository using mapper
class ArticleRepository {
  final ArticleMapper _mapper = ArticleMapper();

  Future<List<Article>> fetchTopArticles() async {
    // Simulate API response
    await Future.delayed(const Duration(milliseconds: 300));

    final rawJson = [
      {
        '_id': 'art_001',
        'headline': 'Flutter 4.0 Released with Amazing Features',
        'excerpt': 'The Flutter team announces major update...',
        'body_html': '<p>Flutter 4.0 brings incredible new features...</p>',
        'byline': {
          'author_id': 'aut_001',
          'display_name': 'Jane Developer',
          'bio_text': 'Senior Flutter engineer',
          'profile_image': null,
        },
        'pub_date': DateTime.now()
            .subtract(const Duration(hours: 2))
            .toIso8601String(),
        'keywords': ['flutter', 'dart', 'mobile'],
        'section': 'tech',
        'lead_image_url': 'https://example.com/flutter.jpg',
        'view_count': 15000,
      },
      {
        '_id': 'art_002',
        'headline': 'Dart 4 Language Features Deep Dive',
        'excerpt': 'Exploring the new Dart language features...',
        'body_html': '<p>Dart 4 introduces significant improvements...</p>',
        'byline': {
          'author_id': 'aut_002',
          'display_name': 'Bob Engineer',
          'bio_text': 'Dart core team member',
          'profile_image': null,
        },
        'pub_date': DateTime.now()
            .subtract(const Duration(hours: 5))
            .toIso8601String(),
        'keywords': ['dart', 'programming'],
        'section': 'tech',
        'lead_image_url': null,
        'view_count': 8000,
      },
    ];

    return _mapper.fromJsonList(rawJson);
  }
}

// Flutter Widget: Works only with clean domain objects
class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard(this.article, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (article.imageUrl != null)
            Image.network(
              article.imageUrl.toString(),
              height: 200,
              width: double.infinity,
              fit: .cover,
              errorBuilder: (_, __, ___) => Container(
                height: 200,
                color: Colors.grey[200],
                child: const Icon(Icons.image, size: 48),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    if (article.isTrending)
                      Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          '🔥 Trending',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    if (article.isNew)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          'New',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  article.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  article.summary,
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 2,
                  overflow: .ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      article.author.name,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Text(article.timeAgo),
                    const SizedBox(width: 8),
                    Text('${article.readTimeMinutes} min read'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewsApp extends StatelessWidget {
  final ArticleRepository _repo = ArticleRepository();

  NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Top Stories')),
      body: FutureBuilder<List<Article>>(
        future: _repo.fetchTopArticles(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == .waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final articles = snapshot.data ?? [];
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) =>
                ArticleCard(articles[index]),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: NewsApp()));
}''',
        ),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Domain objects stay pure - no database or persistence logic",
        "Easier to test domain logic - no database required",
        "Database schema can change without touching domain objects",
        "Domain model can evolve independently from database structure",
        "Multiple mappers can target different storage backends",
        "Clear separation of concerns - mapping is one mapper's only job",
        "Domain objects can use types that don't exist in databases (enums, value objects)",
      ],
      ar: [
        "كائنات النطاق تبقى نقية - لا منطق قاعدة بيانات أو استمرارية",
        "أسهل في اختبار منطق النطاق - لا حاجة لقاعدة بيانات",
        "مخطط قاعدة البيانات يمكن تغييره دون المساس بكائنات النطاق",
        "نموذج النطاق يمكن أن يتطور بشكل مستقل عن بنية قاعدة البيانات",
        "يمكن لمعيّنين متعددين استهداف خلفيات تخزين مختلفة",
        "فصل واضح للاهتمامات - التعيين هو المهمة الوحيدة للمُعيّن",
        "كائنات النطاق يمكنها استخدام أنواع غير موجودة في قواعد البيانات (تعدادات، كائنات القيمة)",
      ],
    ),
    cons: LocSL(
      en: [
        "More code required - mapper classes add complexity",
        "Synchronization needed between domain object, mapper, and database schema",
        "Can be overkill for simple CRUD applications",
        "Additional layer to debug when things go wrong",
        "Mapping complex object graphs can be tricky",
        "Performance overhead from mapping operations",
      ],
      ar: [
        "مزيد من الكود مطلوب - فئات المُعيّن تضيف تعقيداً",
        "مزامنة مطلوبة بين كائن النطاق والمُعيّن ومخطط قاعدة البيانات",
        "قد يكون مبالغاً فيه لتطبيقات CRUD البسيطة",
        "طبقة إضافية لتنقيحها عند حدوث مشاكل",
        "تعيين رسوم بيانية الكائنات المعقدة قد يكون صعباً",
        "عبء أداء من عمليات التعيين",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Data Mapper when:"),
        ULContent(
          value: [
            "Domain objects need to stay clean and free of persistence logic",
            "Database schema is significantly different from domain model",
            "Multiple data sources require different mapping strategies",
            "You need to test business logic without database infrastructure",
            "Domain objects use types that don't map directly to database types",
            "The application has complex business logic worth protecting from persistence concerns",
          ],
        ),
        NoteContent(
          "For simple CRUD apps, Active Record is simpler. Use Data Mapper when your domain is complex enough that mixing persistence logic would be harmful.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent("استخدم مُعيّن البيانات عندما:"),
        ULContent(
          value: [
            "كائنات النطاق تحتاج للبقاء نظيفة وخالية من منطق الاستمرارية",
            "مخطط قاعدة البيانات مختلف بشكل كبير عن نموذج النطاق",
            "مصادر بيانات متعددة تتطلب استراتيجيات تعيين مختلفة",
            "تحتاج لاختبار منطق العمل دون بنية تحتية لقاعدة البيانات",
            "كائنات النطاق تستخدم أنواعاً لا تُعيَّن مباشرة لأنواع قاعدة البيانات",
            "التطبيق له منطق أعمال معقد يستحق الحماية من اهتمامات الاستمرارية",
          ],
        ),
        NoteContent(
          "لتطبيقات CRUD البسيطة، Active Record أبسط. استخدم مُعيّن البيانات عندما يكون نطاقك معقداً بما يكفي بحيث يكون مزج منطق الاستمرارية ضاراً.",
          type: .tip,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Putting mapping logic in domain objects - defeats the purpose",
        "Creating mappers too tightly coupled to specific databases",
        "Over-engineering with Data Mapper when Active Record would suffice",
        "Not handling null values and missing fields gracefully",
        "Ignoring the need for reverse mapping (domain back to storage)",
        "Creating one giant mapper class instead of focused ones per aggregate",
      ],
      ar: [
        "وضع منطق التعيين في كائنات النطاق - يُفشل الغرض",
        "إنشاء مُعيّنين مرتبطين ارتباطاً وثيقاً بقواعد بيانات محددة",
        "الإفراط في الهندسة مع مُعيّن البيانات عندما يكفي Active Record",
        "عدم التعامل مع قيم null والحقول المفقودة بلطف",
        "تجاهل الحاجة للتعيين العكسي (النطاق إلى التخزين)",
        "إنشاء فئة مُعيّن ضخمة واحدة بدلاً من مُعيّنين مركزين لكل مجموعة",
      ],
    ),
    relatedPatterns: [PK.dto, PK.proxy, PK.adapter, PK.facade],
    oftenConfusedWith: [PK.dto, PK.adapter],
  ),
  PK.dto: DesignPattern(
    id: PK.dto,
    title: LocS(en: "Data Transfer Object", ar: "كائن نقل البيانات (DTO)"),
    description: LocS(
      en: "Carries data between processes or layers using simple objects with no behavior",
      ar: "ينقل البيانات بين العمليات أو الطبقات باستخدام كائنات بسيطة بلا سلوك",
    ),
    group: .design,
    type: .structural,
    category: .practical,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "A Data Transfer Object is a simple object designed solely to carry data from one layer or system to another. DTOs have no business logic - they are just structured containers. They reduce the number of method calls needed to transfer data and provide a clear contract for what data is exchanged between layers.",
        ),
        AnalogyContent(
          "Think of a shipping form when sending a package. The form has fields for name, address, weight, and contents. It carries all needed information in one structured document. The form itself does nothing - it's just data. The shipper reads it, the carrier uses it, the recipient sees it. No behavior, just structured data transfer.",
        ),
        StrContent(
          "DTOs solve the 'chatty interface' problem. Instead of calling getFirstName(), getLastName(), getEmail() separately, you return one UserDTO with all fields. This also decouples your API contract from your internal domain objects - you can change internals without breaking external consumers.",
        ),
        ULContent(
          title: "Key Characteristics:",
          value: [
            "No business logic: Only getters/setters or final fields",
            "Serializable: Easily converted to/from JSON, XML, etc.",
            "Flat: Usually flatten nested domain objects for transfer",
            "Purpose-built: Different DTOs for different use cases",
            "Immutable preferred: Prevents accidental mutation during transfer",
          ],
        ),
        DiagramContent(
          "Data Flow:\nPresentation ← DTO → Service → Data Mapper → Domain\n    Layer          (simple    Layer       (translate)    Object\n (consumes)       container)                          (pure logic)",
        ),
        NoteContent(
          "DTO vs Domain Object: Domain objects have behavior (methods) and enforce business rules. DTOs are pure data containers with no logic. Never add business logic to a DTO - that's the domain object's job.",
          type: .important,
        ),
        ComparisonContent({
          'DTO': 'No behavior, carries data, serializable, layer boundary',
          'Domain Object':
              'Has behavior, enforces rules, not serializable directly',
          'Value Object': 'Immutable, identity by value, may have behavior',
          'Entity': 'Has identity, mutable state, rich behavior',
        }, title: 'DTO vs Related Concepts'),
        StrContent(
          "Common use cases in Flutter/Dart: API request/response bodies, form data objects, state management payloads, inter-isolate message passing, and data passed between app layers (UI → service → repository).",
        ),
        NoteContent(
          "In Flutter, DTOs are often called 'models' in practice. The distinction is that a true DTO has no behavior, while a 'model' might have fromJson/toJson methods (which is fine - those are still serialization helpers, not business logic).",
          type: .tip,
        ),
      ],
      ar: [
        StrContent(
          "كائن نقل البيانات هو كائن بسيط مصمم فقط لنقل البيانات من طبقة أو نظام إلى آخر. كائنات DTO لا تحتوي على منطق أعمال - إنها فقط حاويات مُهيكلة. تقلل عدد استدعاءات الطرق اللازمة لنقل البيانات وتوفر عقداً واضحاً لما يُتبادل بين الطبقات.",
        ),
        AnalogyContent(
          "فكر في استمارة الشحن عند إرسال طرد. الاستمارة لها حقول للاسم والعنوان والوزن والمحتويات. تحمل جميع المعلومات المطلوبة في مستند واحد مُهيكل. الاستمارة نفسها لا تفعل شيئاً - إنها مجرد بيانات. المُرسل يقرأها، الناقل يستخدمها، المستلم يراها. لا سلوك، فقط نقل بيانات مُهيكل.",
        ),
        StrContent(
          "كائنات DTO تحل مشكلة 'الواجهة الثرثارة'. بدلاً من استدعاء getFirstName() و getLastName() و getEmail() بشكل منفصل، تُرجع UserDTO واحداً بجميع الحقول. هذا أيضاً يفصل عقد API الخاص بك عن كائنات النطاق الداخلية - يمكنك تغيير الداخليات دون كسر المستهلكين الخارجيين.",
        ),
        ULContent(
          title: "الخصائص الأساسية:",
          value: [
            "لا منطق أعمال: فقط getters/setters أو حقول final",
            "قابل للتسلسل: يمكن تحويله بسهولة من/إلى JSON وXML وغيره",
            "مسطح: عادةً يُسطّح كائنات النطاق المتداخلة للنقل",
            "مبني لغرض محدد: كائنات DTO مختلفة لحالات استخدام مختلفة",
            "يُفضَّل الثبات: يمنع التحول العرضي أثناء النقل",
          ],
        ),
        DiagramContent(
          "تدفق البيانات:\nالعرض ← DTO → الخدمة → مُعيّن البيانات → النطاق\n(يستهلك)  (حاوية    (طبقة)    (ترجمة)         (كائن نقي)\n          بسيطة)",
        ),
        NoteContent(
          "DTO مقابل كائن النطاق: كائنات النطاق لها سلوك (طرق) وتُطبق قواعد العمل. كائنات DTO هي حاويات بيانات نقية بلا منطق. لا تضيف منطق أعمال أبداً لـ DTO - تلك مهمة كائن النطاق.",
          type: .important,
        ),
        ComparisonContent({
          'DTO': 'لا سلوك، ينقل البيانات، قابل للتسلسل، حدود الطبقة',
          'كائن النطاق (Domain Object)':
              'له سلوك، يُطبق القواعد، غير قابل للتسلسل مباشرة',
          'كائن القيمة (Value Object)': 'ثابت، الهوية بالقيمة، قد يكون له سلوك',
          'الكيان (Entity)': 'له هوية، حالة قابلة للتغيير، سلوك غني',
        }, title: 'DTO مقابل المفاهيم ذات الصلة'),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: هياكل طلب/استجابة API، كائنات بيانات النماذج، حمولات إدارة الحالة، تمرير الرسائل بين العوازل (Isolates)، والبيانات المُمررة بين طبقات التطبيق (واجهة مستخدم → خدمة → مستودع).",
        ),
        NoteContent(
          "في Flutter، تُسمى كائنات DTO في الغالب 'نماذج' (Models) في الممارسة العملية. الفرق هو أن DTO الحقيقي لا يحتوي على سلوك، بينما قد يحتوي 'النموذج' على طرق fromJson()/toJson() (وهذا جيد - تلك لا تزال مساعدات تسلسل، وليست منطق أعمال).",
          type: .tip,
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - API DTOs
        StrCodeBlock(r'''import 'dart:convert';
import 'dart:async';

// Example 1: Basic - API Request/Response DTOs
// Use case: Clean data contracts for API communication

// ── REQUEST DTOs ──────────────────────────────────────────────

class CreateUserRequest {
  final String name;
  final String email;
  final String password;
  final String? phoneNumber;
  final String? referralCode;

  const CreateUserRequest({
    required this.name,
    required this.email,
    required this.password,
    this.phoneNumber,
    this.referralCode,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'password': password,
    if (phoneNumber != null) 'phone_number': phoneNumber,
    if (referralCode != null) 'referral_code': referralCode,
  };
}

class UpdateProfileRequest {
  final String? name;
  final String? bio;
  final String? avatarBase64;

  const UpdateProfileRequest({
    this.name,
    this.bio,
    this.avatarBase64,
  });

  Map<String, dynamic> toJson() => {
    if (name != null) 'name': name,
    if (bio != null) 'bio': bio,
    if (avatarBase64 != null) 'avatar': avatarBase64,
  };

  bool get hasChanges => name != null || bio != null || avatarBase64 != null;
}

class PaginationRequest {
  final int page;
  final int pageSize;
  final String? sortBy;
  final bool ascending;

  const PaginationRequest({
    this.page = 1,
    this.pageSize = 20,
    this.sortBy,
    this.ascending = true,
  });

  Map<String, dynamic> toQueryParams() => {
    'page': page.toString(),
    'per_page': pageSize.toString(),
    if (sortBy != null) 'sort_by': sortBy,
    'order': ascending ? 'asc' : 'desc',
  };
}

// ── RESPONSE DTOs ─────────────────────────────────────────────

class UserResponse {
  final String id;
  final String name;
  final String email;
  final String? avatarUrl;
  final bool isVerified;
  final String createdAt;

  const UserResponse({
    required this.id,
    required this.name,
    required this.email,
    this.avatarUrl,
    required this.isVerified,
    required this.createdAt,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
    id: json['id'] as String,
    name: json['name'] as String,
    email: json['email'] as String,
    avatarUrl: json['avatar_url'] as String?,
    isVerified: json['is_verified'] as bool,
    createdAt: json['created_at'] as String,
  );
}

class PaginatedResponse<T> {
  final List<T> items;
  final int totalCount;
  final int currentPage;
  final int totalPages;
  final bool hasNextPage;

  const PaginatedResponse({
    required this.items,
    required this.totalCount,
    required this.currentPage,
    required this.totalPages,
    required this.hasNextPage,
  });

  factory PaginatedResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) itemFromJson,
  ) {
    return PaginatedResponse(
      items: (json['data'] as List<dynamic>)
          .map((i) => itemFromJson(i as Map<String, dynamic>))
          .toList(),
      totalCount: json['total_count'] as int,
      currentPage: json['current_page'] as int,
      totalPages: json['total_pages'] as int,
      hasNextPage: json['has_next_page'] as bool,
    );
  }
}

class ApiErrorResponse {
  final String code;
  final String message;
  final Map<String, List<String>>? fieldErrors;

  const ApiErrorResponse({
    required this.code,
    required this.message,
    this.fieldErrors,
  });

  factory ApiErrorResponse.fromJson(Map<String, dynamic> json) =>
      ApiErrorResponse(
        code: json['error_code'] as String,
        message: json['error_message'] as String,
        fieldErrors: (json['field_errors'] as Map<String, dynamic>?)?.map(
          (key, value) => MapEntry(
            key,
            List<String>.from(value as List<dynamic>),
          ),
        ),
      );

  bool get hasFieldErrors =>
      fieldErrors != null && fieldErrors!.isNotEmpty;
}

// Service using DTOs
class UserApiService {
  Future<UserResponse> createUser(CreateUserRequest request) async {
    print('POST /users');
    print('Request body: ${request.toJson()}');

    await Future.delayed(const Duration(milliseconds: 100));

    // Simulate API response
    return UserResponse(
      id: 'usr_new_001',
      name: request.name,
      email: request.email,
      isVerified: false,
      createdAt: DateTime.now().toIso8601String(),
    );
  }

  Future<PaginatedResponse<UserResponse>> getUsers(
    PaginationRequest pagination,
  ) async {
    print('GET /users?${pagination.toQueryParams()}');

    await Future.delayed(const Duration(milliseconds: 100));

    return PaginatedResponse(
      items: [
        UserResponse(
          id: 'usr_001',
          name: 'Alice',
          email: 'alice@example.com',
          isVerified: true,
          createdAt: DateTime.now().toIso8601String(),
        ),
        UserResponse(
          id: 'usr_002',
          name: 'Bob',
          email: 'bob@example.com',
          isVerified: false,
          createdAt: DateTime.now().toIso8601String(),
        ),
      ],
      totalCount: 2,
      currentPage: 1,
      totalPages: 1,
      hasNextPage: false,
    );
  }
}

void main() async {
  final service = UserApiService();

  print('=== Create User ===');
  final createRequest = CreateUserRequest(
    name: 'Charlie Brown',
    email: 'charlie@example.com',
    password: 's3cur3P@ss',
    referralCode: 'FRIEND123',
  );
  final newUser = await service.createUser(createRequest);
  print('Created: ${newUser.id} - ${newUser.name}');
  print('Verified: ${newUser.isVerified}');

  print('=== Get Paginated Users ===');
  final pagination = PaginationRequest(
    page: 1,
    pageSize: 10,
    sortBy: 'name',
  );
  final usersPage = await service.getUsers(pagination);
  print('Total: ${usersPage.totalCount}, Page: ${usersPage.currentPage}/${usersPage.totalPages}');
  for (final user in usersPage.items) {
    print('  ${user.id}: ${user.name} (${user.isVerified ? "✓" : "✗"})');
  }

  print('=== Update Profile (partial) ===');
  final updateRequest = UpdateProfileRequest(bio: 'Flutter developer');
  print('Has changes: ${updateRequest.hasChanges}');
  print('Payload: ${updateRequest.toJson()}');
}'''),

        // Example 2: Intermediate - Layer DTOs
        StrCodeBlock(
          r'''// Example 2: Intermediate - DTOs Between Application Layers
// Use case: Clean data contracts between UI, Service, and Repository layers

// ── REPOSITORY LAYER DTOs ─────────────────────────────────────
// What comes in/out of the database

class ProductDbRecord {
  final String id;
  final String name;
  final int priceInCents;
  final String categoryId;
  final int stock;
  final String? imageFilePath;
  final int createdAtMs;

  const ProductDbRecord({
    required this.id,
    required this.name,
    required this.priceInCents,
    required this.categoryId,
    required this.stock,
    this.imageFilePath,
    required this.createdAtMs,
  });

  factory ProductDbRecord.fromMap(Map<String, dynamic> map) =>
      ProductDbRecord(
        id: map['id'] as String,
        name: map['name'] as String,
        priceInCents: map['price_cents'] as int,
        categoryId: map['category_id'] as String,
        stock: map['stock'] as int,
        imageFilePath: map['image_path'] as String?,
        createdAtMs: map['created_at_ms'] as int,
      );

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'price_cents': priceInCents,
    'category_id': categoryId,
    'stock': stock,
    'image_path': imageFilePath,
    'created_at_ms': createdAtMs,
  };
}

// ── SERVICE LAYER DTOs ────────────────────────────────────────
// What the business logic works with

class ProductSummaryDto {
  final String id;
  final String name;
  final double price;
  final String currency;
  final String category;
  final bool inStock;
  final String? imageUrl;

  const ProductSummaryDto({
    required this.id,
    required this.name,
    required this.price,
    required this.currency,
    required this.category,
    required this.inStock,
    this.imageUrl,
  });
}

class ProductDetailDto {
  final String id;
  final String name;
  final double price;
  final String currency;
  final String category;
  final int stockQuantity;
  final String? imageUrl;
  final DateTime createdAt;
  final List<ProductSummaryDto> relatedProducts;

  const ProductDetailDto({
    required this.id,
    required this.name,
    required this.price,
    required this.currency,
    required this.category,
    required this.stockQuantity,
    this.imageUrl,
    required this.createdAt,
    required this.relatedProducts,
  });

  bool get isLowStock => stockQuantity > 0 && stockQuantity < 5;
}

class AddToCartDto {
  final String productId;
  final int quantity;
  final String? couponCode;

  const AddToCartDto({
    required this.productId,
    required this.quantity,
    this.couponCode,
  });
}

class CartItemDto {
  final String productId;
  final String productName;
  final int quantity;
  final double unitPrice;
  final double totalPrice;
  final String currency;

  const CartItemDto({
    required this.productId,
    required this.productName,
    required this.quantity,
    required this.unitPrice,
    required this.totalPrice,
    required this.currency,
  });
}

class CartSummaryDto {
  final List<CartItemDto> items;
  final double subtotal;
  final double discount;
  final double total;
  final String currency;
  final int itemCount;

  const CartSummaryDto({
    required this.items,
    required this.subtotal,
    required this.discount,
    required this.total,
    required this.currency,
    required this.itemCount,
  });
}

// ── UI LAYER DTOs ─────────────────────────────────────────────
// What the UI receives and displays

class ProductCardViewModel {
  final String id;
  final String title;
  final String formattedPrice;
  final String? imageUrl;
  final String stockLabel;
  final bool canAddToCart;
  final String categoryLabel;

  const ProductCardViewModel({
    required this.id,
    required this.title,
    required this.formattedPrice,
    this.imageUrl,
    required this.stockLabel,
    required this.canAddToCart,
    required this.categoryLabel,
  });

  // Presentation only - how to display stock status
  String get stockBadgeText {
    if (!canAddToCart) return 'Out of Stock';
    if (stockLabel.contains('Low')) return '⚠️ $stockLabel';
    return stockLabel;
  }
}

// ── ASSEMBLERS: Convert between DTO layers ────────────────────

class ProductAssembler {
  // DB Record → Service DTO
  static ProductSummaryDto toSummary(ProductDbRecord record) {
    return ProductSummaryDto(
      id: record.id,
      name: record.name,
      price: record.priceInCents / 100,
      currency: 'USD',
      category: _categoryName(record.categoryId),
      inStock: record.stock > 0,
      imageUrl: record.imageFilePath != null
          ? 'https://cdn.example.com/${record.imageFilePath}'
          : null,
    );
  }

  // Service DTO → UI ViewModel
  static ProductCardViewModel toViewModel(ProductSummaryDto dto) {
    return ProductCardViewModel(
      id: dto.id,
      title: dto.name,
      formattedPrice: '${dto.currency}${dto.price.toStringAsFixed(2)}',
      imageUrl: dto.imageUrl,
      stockLabel: dto.inStock ? 'In Stock' : 'Out of Stock',
      canAddToCart: dto.inStock,
      categoryLabel: dto.category,
    );
  }

  static String _categoryName(String categoryId) => switch (categoryId) {
    'cat_elec' => 'Electronics',
    'cat_cloth' => 'Clothing',
    'cat_food' => 'Food',
    _ => 'Other',
  };
}

void main() {
  print('=== DTO Layer Flow Demo ===');

  // Simulate DB record coming from SQLite
  final dbRecord = ProductDbRecord(
    id: 'prod_001',
    name: 'Wireless Keyboard',
    priceInCents: 7999,
    categoryId: 'cat_elec',
    stock: 3,
    imageFilePath: 'products/keyboard.jpg',
    createdAtMs: DateTime.now().millisecondsSinceEpoch,
  );

  print('--- DB Layer (raw) ---');
  print('DB Record: ${dbRecord.toMap()}');

  // DB → Service layer DTO
  final summaryDto = ProductAssembler.toSummary(dbRecord);
  print('--- Service Layer DTO ---');
  print('ID: ${summaryDto.id}');
  print('Name: ${summaryDto.name}');
  print('Price: ${summaryDto.currency}${summaryDto.price}');
  print('Category: ${summaryDto.category}');
  print('In stock: ${summaryDto.inStock}');

  // Service → UI layer ViewModel
  final viewModel = ProductAssembler.toViewModel(summaryDto);
  print('--- UI ViewModel ---');
  print('Title: ${viewModel.title}');
  print('Price: ${viewModel.formattedPrice}');
  print('Stock badge: ${viewModel.stockBadgeText}');
  print('Can add to cart: ${viewModel.canAddToCart}');

  // Cart DTO example
  final cart = CartSummaryDto(
    items: [
      CartItemDto(
        productId: 'prod_001',
        productName: 'Wireless Keyboard',
        quantity: 2,
        unitPrice: 79.99,
        totalPrice: 159.98,
        currency: 'USD',
      ),
    ],
    subtotal: 159.98,
    discount: 10.00,
    total: 149.98,
    currency: 'USD',
    itemCount: 2,
  );

  print('--- Cart Summary DTO ---');
  print('Items: ${cart.itemCount}');
  print('Subtotal: ${cart.currency}${cart.subtotal}');
  print('Discount: ${cart.currency}${cart.discount}');
  print('Total: ${cart.currency}${cart.total}');
}''',
        ),

        // Example 3: Advanced - Isolate-safe DTOs
        StrCodeBlock(
          r'''// Example 3: Advanced - Isolate-Safe DTOs for Heavy Computation
// Use case: Passing data safely between Flutter isolates

import 'dart:isolate';
import 'dart:async';

// DTOs must be simple, serializable types for isolate message passing
// (No complex objects, no closures, no native handles)

class ImageProcessingRequest {
  final List<int> imageBytes; // Raw bytes - safe to send
  final int targetWidth;
  final int targetHeight;
  final int quality;
  final String format; // 'jpeg', 'png', 'webp'
  final List<FilterDto> filters;

  const ImageProcessingRequest({
    required this.imageBytes,
    required this.targetWidth,
    required this.targetHeight,
    this.quality = 85,
    this.format = 'jpeg',
    this.filters = const [],
  });

  // Must be serializable for isolate transfer
  Map<String, dynamic> toMap() => {
    'imageBytes': imageBytes,
    'targetWidth': targetWidth,
    'targetHeight': targetHeight,
    'quality': quality,
    'format': format,
    'filters': filters.map((f) => f.toMap()).toList(),
  };

  factory ImageProcessingRequest.fromMap(Map<String, dynamic> map) =>
      ImageProcessingRequest(
        imageBytes: List<int>.from(map['imageBytes'] as List<dynamic>),
        targetWidth: map['targetWidth'] as int,
        targetHeight: map['targetHeight'] as int,
        quality: map['quality'] as int,
        format: map['format'] as String,
        filters: (map['filters'] as List<dynamic>)
            .map((f) => FilterDto.fromMap(f as Map<String, dynamic>))
            .toList(),
      );
}

class FilterDto {
  final String type; // 'brightness', 'contrast', 'saturation', 'blur'
  final double value;

  const FilterDto({required this.type, required this.value});

  Map<String, dynamic> toMap() => {'type': type, 'value': value};

  factory FilterDto.fromMap(Map<String, dynamic> map) => FilterDto(
    type: map['type'] as String,
    value: map['value'] as double,
  );
}

class ImageProcessingResult {
  final bool success;
  final List<int>? processedBytes;
  final String? errorMessage;
  final int processingTimeMs;
  final ImageMetadataDto? metadata;

  const ImageProcessingResult({
    required this.success,
    this.processedBytes,
    this.errorMessage,
    required this.processingTimeMs,
    this.metadata,
  });

  Map<String, dynamic> toMap() => {
    'success': success,
    'processedBytes': processedBytes,
    'errorMessage': errorMessage,
    'processingTimeMs': processingTimeMs,
    'metadata': metadata?.toMap(),
  };

  factory ImageProcessingResult.fromMap(Map<String, dynamic> map) =>
      ImageProcessingResult(
        success: map['success'] as bool,
        processedBytes: map['processedBytes'] != null
            ? List<int>.from(map['processedBytes'] as List<dynamic>)
            : null,
        errorMessage: map['errorMessage'] as String?,
        processingTimeMs: map['processingTimeMs'] as int,
        metadata: map['metadata'] != null
            ? ImageMetadataDto.fromMap(
                map['metadata'] as Map<String, dynamic>)
            : null,
      );
}

class ImageMetadataDto {
  final int width;
  final int height;
  final String format;
  final int fileSizeBytes;

  const ImageMetadataDto({
    required this.width,
    required this.height,
    required this.format,
    required this.fileSizeBytes,
  });

  Map<String, dynamic> toMap() => {
    'width': width,
    'height': height,
    'format': format,
    'fileSizeBytes': fileSizeBytes,
  };

  factory ImageMetadataDto.fromMap(Map<String, dynamic> map) =>
      ImageMetadataDto(
        width: map['width'] as int,
        height: map['height'] as int,
        format: map['format'] as String,
        fileSizeBytes: map['fileSizeBytes'] as int,
      );
}

// Isolate worker function - only receives/sends DTO maps
void imageProcessorIsolate(SendPort sendPort) {
  final receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort);

  receivePort.listen((message) {
    if (message is Map<String, dynamic>) {
      final request =
          ImageProcessingRequest.fromMap(message);
      final result = _processImage(request);
      sendPort.send(result.toMap());
    }
  });
}

ImageProcessingResult _processImage(ImageProcessingRequest request) {
  final start = DateTime.now();

  try {
    print('Isolate: Processing ${request.imageBytes.length} bytes');
    print('Isolate: Resize to ${request.targetWidth}x${request.targetHeight}');
    print('Isolate: Applying ${request.filters.length} filters');

    // Simulate heavy processing
    for (final filter in request.filters) {
      print('Isolate: Applying ${filter.type} filter (value: ${filter.value})');
    }

    // Simulate output (in reality this would be processed bytes)
    final processedBytes = List<int>.filled(1000, 0);

    final processingTime =
        DateTime.now().difference(start).inMilliseconds;

    return ImageProcessingResult(
      success: true,
      processedBytes: processedBytes,
      processingTimeMs: processingTime,
      metadata: ImageMetadataDto(
        width: request.targetWidth,
        height: request.targetHeight,
        format: request.format,
        fileSizeBytes: processedBytes.length,
      ),
    );
  } catch (e) {
    return ImageProcessingResult(
      success: false,
      errorMessage: e.toString(),
      processingTimeMs:
          DateTime.now().difference(start).inMilliseconds,
    );
  }
}

// Main isolate - uses DTOs to communicate
Future<ImageProcessingResult> processImageInBackground(
  ImageProcessingRequest request,
) async {
  final receivePort = ReceivePort();

  await Isolate.spawn(imageProcessorIsolate, receivePort.sendPort);

  final sendPort = await receivePort.first as SendPort;

  final responsePort = ReceivePort();
  sendPort.send(request.toMap()); // Send DTO as map

  final resultMap =
      await responsePort.first as Map<String, dynamic>;
  return ImageProcessingResult.fromMap(resultMap);
}

void main() async {
  print('=== Isolate DTO Demo ===');

  final request = ImageProcessingRequest(
    imageBytes: List<int>.filled(5000, 128), // Simulate image bytes
    targetWidth: 800,
    targetHeight: 600,
    quality: 90,
    format: 'jpeg',
    filters: [
      FilterDto(type: 'brightness', value: 1.2),
      FilterDto(type: 'contrast', value: 1.1),
      FilterDto(type: 'saturation', value: 0.9),
    ],
  );

  print('Sending request to background isolate...');
  print('Request: ${request.imageBytes.length} bytes, '
      '${request.targetWidth}x${request.targetHeight}');

  // DTOs are safely transferable between isolates
  final result = await processImageInBackground(request);

  if (result.success) {
    print('Processing successful!');
    print('Time: ${result.processingTimeMs}ms');
    print('Output: ${result.processedBytes?.length} bytes');
    if (result.metadata != null) {
      print('Output size: ${result.metadata!.width}x${result.metadata!.height}');
      print('Format: ${result.metadata!.format}');
    }
  } else {
    print('Processing failed: ${result.errorMessage}');
  }
}''',
        ),

        // Example 4: Flutter - Form DTO with State Management
        StrCodeBlock(r'''// Example 4: Flutter - Form DTOs with Validation
import 'dart:async';
import 'package:flutter/material.dart';
// Use case: Clean form data handling with DTOs

// ── FORM INPUT DTO ────────────────────────────────────────────

class RegistrationFormDto {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String confirmPassword;
  final DateTime? dateOfBirth;
  final String country;
  final bool agreedToTerms;

  const RegistrationFormDto({
    this.firstName = '',
    this.lastName = '',
    this.email = '',
    this.password = '',
    this.confirmPassword = '',
    this.dateOfBirth,
    this.country = '',
    this.agreedToTerms = false,
  });

  RegistrationFormDto copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? confirmPassword,
    DateTime? dateOfBirth,
    String? country,
    bool? agreedToTerms,
  }) {
    return RegistrationFormDto(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      country: country ?? this.country,
      agreedToTerms: agreedToTerms ?? this.agreedToTerms,
    );
  }

  // Validation - only about data shape, not business rules
  Map<String, String> get validationErrors {
    final errors = <String, String>{};

    if (firstName.trim().isEmpty) {
      errors['firstName'] = 'First name is required';
    } else if (firstName.trim().length < 2) {
      errors['firstName'] = 'First name must be at least 2 characters';
    }

    if (lastName.trim().isEmpty) {
      errors['lastName'] = 'Last name is required';
    }

    if (email.trim().isEmpty) {
      errors['email'] = 'Email is required';
    } else if (!RegExp(r'^[\w.-]+@[\w.-]+\.\w+$').hasMatch(email)) {
      errors['email'] = 'Enter a valid email';
    }

    if (password.isEmpty) {
      errors['password'] = 'Password is required';
    } else if (password.length < 8) {
      errors['password'] = 'Password must be at least 8 characters';
    } else if (!RegExp(r'[A-Z]').hasMatch(password)) {
      errors['password'] = 'Password must contain an uppercase letter';
    }

    if (confirmPassword != password) {
      errors['confirmPassword'] = 'Passwords do not match';
    }

    if (!agreedToTerms) {
      errors['agreedToTerms'] = 'You must agree to the terms';
    }

    return errors;
  }

  bool get isValid => validationErrors.isEmpty;

  // Convert to API request DTO when valid
  CreateUserRequest toApiRequest() {
    assert(isValid, 'Cannot convert invalid form to API request');
    return CreateUserRequest(
      name: '$firstName $lastName',
      email: email,
      password: password,
    );
  }
}

class CreateUserRequest {
  final String name;
  final String email;
  final String password;

  const CreateUserRequest({
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'password': password,
  };
}

// ── FLUTTER FORM WIDGET ───────────────────────────────────────

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  RegistrationFormDto _form = const RegistrationFormDto();
  bool _submitted = false;

  Map<String, String> get _errors =>
      _submitted ? _form.validationErrors : {};

  void _updateField(String field, dynamic value) {
    setState(() {
      _form = switch (field) {
        'firstName' => _form.copyWith(firstName: value as String),
        'lastName' => _form.copyWith(lastName: value as String),
        'email' => _form.copyWith(email: value as String),
        'password' => _form.copyWith(password: value as String),
        'confirmPassword' =>
          _form.copyWith(confirmPassword: value as String),
        'agreedToTerms' => _form.copyWith(agreedToTerms: value as bool),
        _ => _form,
      };
    });
  }

  Future<void> _submit() async {
    setState(() => _submitted = true);

    if (!_form.isValid) {
      print('Form invalid: ${_form.validationErrors}');
      return;
    }

    final request = _form.toApiRequest();
    print('Submitting: ${request.toJson()}');

    // Show success
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Registration successful!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextField(
              label: 'First Name',
              field: 'firstName',
              error: _errors['firstName'],
              onChanged: (v) => _updateField('firstName', v),
            ),
            const SizedBox(height: 12),
            _buildTextField(
              label: 'Last Name',
              field: 'lastName',
              error: _errors['lastName'],
              onChanged: (v) => _updateField('lastName', v),
            ),
            const SizedBox(height: 12),
            _buildTextField(
              label: 'Email',
              field: 'email',
              error: _errors['email'],
              keyboardType: .emailAddress,
              onChanged: (v) => _updateField('email', v),
            ),
            const SizedBox(height: 12),
            _buildTextField(
              label: 'Password',
              field: 'password',
              error: _errors['password'],
              obscureText: true,
              onChanged: (v) => _updateField('password', v),
            ),
            const SizedBox(height: 12),
            _buildTextField(
              label: 'Confirm Password',
              field: 'confirmPassword',
              error: _errors['confirmPassword'],
              obscureText: true,
              onChanged: (v) => _updateField('confirmPassword', v),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: _form.agreedToTerms,
                  onChanged: (v) =>
                      _updateField('agreedToTerms', v ?? false),
                ),
                const Text('I agree to the Terms of Service'),
              ],
            ),
            if (_errors['agreedToTerms'] != null)
              Text(
                _errors['agreedToTerms']!,
                style: const TextStyle(color: Colors.red, fontSize: 12),
              ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _submit,
                child: const Text('Register'),
              ),
            ),
            if (_submitted)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  _form.isValid
                      ? '✓ Form is valid'
                      : '✗ ${_form.validationErrors.length} error(s)',
                  style: TextStyle(
                    color:
                        _form.isValid ? Colors.green : Colors.red,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required String field,
    required ValueChanged<String> onChanged,
    String? error,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: label,
            errorText: error,
            border: const OutlineInputBorder(),
          ),
          obscureText: obscureText,
          keyboardType: keyboardType,
          onChanged: onChanged,
        ),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(home: RegistrationScreen()));
}'''),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Clear API contracts - explicit about what data is transferred",
        "Reduces chatty interfaces - one call instead of many",
        "Decouples internal domain from external representation",
        "Easy to serialize/deserialize for APIs and databases",
        "Versioning becomes easier - create new DTO version without breaking old",
        "Simple to understand and use - just data, no behavior",
        "Safe for isolate/thread message passing",
      ],
      ar: [
        "عقود API واضحة - صريحة حول ما يُنقل من البيانات",
        "يقلل الواجهات الثرثارة - استدعاء واحد بدلاً من كثير",
        "يفصل النطاق الداخلي عن التمثيل الخارجي",
        "سهل التسلسل/إلغاء التسلسل لواجهات API وقواعد البيانات",
        "الإصدار يصبح أسهل - إنشاء إصدار DTO جديد دون كسر القديم",
        "بسيط الفهم والاستخدام - مجرد بيانات، لا سلوك",
        "آمن لتمرير رسائل العوازل (Isolates)/الخيوط",
      ],
    ),
    cons: LocSL(
      en: [
        "Proliferation of classes - many DTOs for different scenarios",
        "Mapping overhead between DTOs and domain objects",
        "Risk of anemic domain - developers put logic in DTOs instead of domain",
        "Keeping DTOs synchronized with changing domain objects",
        "Can be confused with domain objects if not clearly named",
        "Boilerplate code for copyWith, toJson, fromJson",
      ],
      ar: [
        "تكاثر الفئات - كائنات DTO كثيرة لسيناريوهات مختلفة",
        "عبء التعيين بين كائنات DTO وكائنات النطاق",
        "خطر النطاق الفقير - المطورون يضعون المنطق في كائنات DTO بدلاً من النطاق",
        "الحفاظ على مزامنة كائنات DTO مع كائنات النطاق المتغيرة",
        "قد تُخلط مع كائنات النطاق إذا لم تُسمَّ بوضوح",
        "كود نمطي (Boilerplate) لـ copyWith وtoJson وfromJson",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use DTO when:"),
        ULContent(
          value: [
            "Transferring data between application layers or systems",
            "API contracts need to be stable regardless of internal changes",
            "You need to reduce multiple fine-grained calls into one coarse-grained call",
            "Data must be serializable for network, database, or isolate transfer",
            "You want to expose only specific fields to specific consumers",
            "Form data needs a structured container with validation",
          ],
        ),
        NoteContent(
          "Keep DTOs dumb. If you find yourself adding complex methods to a DTO, those probably belong in the domain object instead.",
          type: .warning,
        ),
      ],
      ar: [
        StrContent("استخدم DTO عندما:"),
        ULContent(
          value: [
            "نقل البيانات بين طبقات التطبيق أو الأنظمة",
            "عقود API تحتاج للثبات بغض النظر عن التغييرات الداخلية",
            "تحتاج لتقليل استدعاءات دقيقة متعددة إلى استدعاء خشن واحد",
            "البيانات يجب أن تكون قابلة للتسلسل للشبكة أو قاعدة البيانات أو نقل العوازل",
            "تريد الكشف عن حقول محددة فقط لمستهلكين محددين",
            "بيانات النموذج تحتاج لحاوية مُهيكلة مع التحقق",
          ],
        ),
        NoteContent(
          "أبقِ كائنات DTO بسيطة. إذا وجدت نفسك تضيف طرقاً معقدة لـ DTO، فمن المرجح أن تلك الطرق تنتمي لكائن النطاق بدلاً من ذلك.",
          type: .warning,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Adding business logic to DTOs - they should be pure data containers",
        "Using domain objects directly as DTOs - exposes internals",
        "Creating one DTO for all use cases - create purpose-specific DTOs instead",
        "Mutable DTOs that can be accidentally modified during transfer",
        "Not validating DTOs at the boundary where they enter the system",
        "Nesting complex objects in DTOs instead of flattening for the consumer",
      ],
      ar: [
        "إضافة منطق أعمال لكائنات DTO - يجب أن تكون حاويات بيانات نقية",
        "استخدام كائنات النطاق مباشرة ككائنات DTO - يكشف الداخليات",
        "إنشاء DTO واحد لجميع حالات الاستخدام - أنشئ كائنات DTO خاصة بالغرض بدلاً من ذلك",
        "كائنات DTO قابلة للتغيير يمكن تعديلها عرضاً أثناء النقل",
        "عدم التحقق من كائنات DTO عند الحدود حيث تدخل النظام",
        "تداخل كائنات معقدة في كائنات DTO بدلاً من تسطيحها للمستهلك",
      ],
    ),
    relatedPatterns: [PK.dataMapper, PK.adapter, PK.facade],
    oftenConfusedWith: [PK.dataMapper],
  ),
  PK.extensionObject: DesignPattern(
    id: PK.extensionObject,
    title: LocS(en: "Extension Object", ar: "كائن التوسعة (Extension Object)"),
    description: LocS(
      en: "Adds new functionality to objects without subclassing by attaching extension objects",
      ar: "يضيف وظائف جديدة للكائنات دون الفئات الفرعية من خلال إرفاق كائنات التوسعة",
    ),
    group: .design,
    type: .structural,
    category: .practical,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "The Extension Object pattern lets you add new interfaces (capabilities) to existing objects at runtime by attaching 'extension objects'. An object can acquire new behaviors without modifying its class or using inheritance. Clients query an object for a specific extension interface, and the object either returns it or null.",
        ),
        AnalogyContent(
          "Think of a smartphone and its accessories. A phone has basic capabilities (call, text). You attach a camera lens extension → it gains photography capability. You attach a gaming controller → it gains gaming capability. You attach a medical sensor → it gains health monitoring. The phone itself doesn't change - it just knows how to provide access to attached extensions.",
        ),
        StrContent(
          "This pattern is valuable when you have a stable object hierarchy but need to add new capabilities without modifying existing classes. It's widely used in IDEs (Eclipse's extension point system), game engines (component systems), and plugin architectures where third parties need to extend core objects.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Subject: The core object that can be extended with capabilities",
            "Extension: Interface for the specific capability being added",
            "Extension Object: Concrete implementation of a specific Extension interface",
            "Extension Registry: Manages which extensions are attached to which subjects",
            "Client: Queries subject for specific extension; handles null if not available",
          ],
        ),
        DiagramContent(
          "Pattern Structure:\nSubject ─── getExtension<T>() ─── Extension Registry\n   │                                        │\n   └── extensions map                  Extension Objects\n         ├─ 'serializable' → JsonExtension\n         ├─ 'loggable'    → LogExtension\n         └─ 'cacheable'   → CacheExtension",
        ),
        NoteContent(
          "Extension Object vs Decorator: Decorator wraps the object and modifies existing behavior. Extension Object adds entirely new interfaces/capabilities to an existing object without changing its core interface.",
          type: .important,
        ),
        ComparisonContent({
          'Extension Object':
              'Adds new interfaces, runtime attachment, query-based access',
          'Decorator':
              'Wraps and extends same interface, compile-time selection',
          'Mixin': 'Compile-time capability addition, modifies class hierarchy',
          'Visitor':
              'Adds operations without modifying classes, separate hierarchy',
        }, title: 'Extension Object vs Similar Patterns'),
        StrContent(
          "Common use cases in Flutter/Dart: plugin systems, capability-based APIs (does this widget support accessibility?), feature flags at object level, IDE extension points, and any architecture where objects need optional capabilities that not all instances need.",
        ),
        NoteContent(
          "Dart's extension methods provide compile-time extensions on types, but Extension Object pattern provides runtime attachment of capabilities to specific instances. They solve different problems.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent(
          "نمط كائن التوسعة يتيح لك إضافة واجهات (قدرات) جديدة للكائنات الموجودة في وقت التشغيل من خلال إرفاق 'كائنات التوسعة'. يمكن لكائن اكتساب سلوكيات جديدة دون تعديل فئته أو استخدام الوراثة. يستعلم العملاء عن كائن لواجهة تمديد محددة، والكائن إما يُرجعها أو null.",
        ),
        AnalogyContent(
          "فكر في هاتف ذكي وملحقاته. الهاتف لديه قدرات أساسية (مكالمة، رسائل). ترفق عدسة كاميرا → يكتسب قدرة التصوير. ترفق وحدة تحكم للألعاب → يكتسب قدرة الألعاب. ترفق مستشعراً طبياً → يكتسب مراقبة الصحة. الهاتف نفسه لا يتغير - فقط يعرف كيفية توفير الوصول للتوسعات المُرفقة.",
        ),
        StrContent(
          "هذا النمط قيم عندما يكون لديك تسلسل هرمي للكائنات مستقر لكنك تحتاج لإضافة قدرات جديدة دون تعديل الفئات الموجودة. يُستخدم على نطاق واسع في بيئات التطوير المتكاملة (نظام نقاط التوسعة في Eclipse)، محركات الألعاب (أنظمة المكونات)، ومعمارية الإضافات حيث يحتاج الطرف الثالث لتوسيع الكائنات الأساسية.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "الموضوع (Subject): الكائن الأساسي الذي يمكن توسيعه بالقدرات",
            "التوسعة (Extension): واجهة القدرة المحددة التي يتم إضافتها",
            "كائن التوسعة (Extension Object): تطبيق محدد لواجهة توسعة معينة",
            "سجل التوسعة (Extension Registry): يدير التوسعات المُرفقة بالمواضيع",
            "العميل (Client): يستعلم الموضوع عن توسعة محددة؛ يتعامل مع null إذا لم تكن متاحة",
          ],
        ),
        DiagramContent(
          "بنية النمط:\nالموضوع ─── getExtension<T>() ─── سجل التوسعة\n   │                                        │\n   └── خريطة التوسعات               كائنات التوسعة\n         ├─ 'serializable' → JsonExtension\n         ├─ 'loggable'    → LogExtension\n         └─ 'cacheable'   → CacheExtension",
        ),
        NoteContent(
          "كائن التوسعة مقابل المُزخرف: المُزخرف يلف الكائن ويعدل السلوك الموجود. كائن التوسعة يضيف واجهات/قدرات جديدة تماماً لكائن موجود دون تغيير واجهته الأساسية.",
          type: .important,
        ),
        ComparisonContent({
          'كائن التوسعة (Extension Object)':
              'يضيف واجهات جديدة، إرفاق في وقت التشغيل، وصول قائم على الاستعلام',
          'المُزخرف (Decorator)':
              'يلف ويوسع نفس الواجهة، اختيار في وقت الترجمة',
          'المزج (Mixin)': 'إضافة قدرة في وقت الترجمة، يعدل تسلسل الفئة الهرمي',
          'الزائر (Visitor)': 'يضيف عمليات دون تعديل الفئات، تسلسل هرمي منفصل',
        }, title: 'كائن التوسعة مقابل الأنماط المشابهة'),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: أنظمة الإضافات، APIs القائمة على القدرات (هل تدعم هذه الواجهة إمكانية الوصول؟)، أعلام الميزات على مستوى الكائن، نقاط توسعة بيئة التطوير، وأي معمارية تحتاج فيها الكائنات قدرات اختيارية لا تحتاجها جميع النسخ.",
        ),
        NoteContent(
          "طرق توسعة Dart توفر توسعات في وقت الترجمة على الأنواع، لكن نمط كائن التوسعة يوفر إرفاق قدرات في وقت التشغيل لنسخ محددة. يحلان مشاكل مختلفة.",
          type: .tip,
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Widget Capability System
        StrCodeBlock(r'''import 'package:flutter/material.dart';

// Example 1: Basic - Widget Capability Extensions
// Use case: Adding optional capabilities to widgets at runtime

// Extension interface: Base for all extensions
abstract class WidgetExtension {
  String get extensionId;
  void initialize(CoreWidget widget);
  void dispose();
}

// Subject: Core widget that can have extensions
class CoreWidget {
  final String id;
  final String name;
  final Map<String, WidgetExtension> _extensions = {};

  CoreWidget(this.id, this.name);

  // Attach an extension
  void addExtension(WidgetExtension extension) {
    _extensions[extension.extensionId] = extension;
    extension.initialize(this);
    print('[$name] Extension added: ${extension.extensionId}');
  }

  // Query for a specific extension
  T? getExtension<T extends WidgetExtension>(String extensionId) {
    final ext = _extensions[extensionId];
    if (ext is T) return ext;
    return null;
  }

  bool hasExtension(String extensionId) =>
      _extensions.containsKey(extensionId);

  void removeExtension(String extensionId) {
    _extensions[extensionId]?.dispose();
    _extensions.remove(extensionId);
    print('[$name] Extension removed: $extensionId');
  }

  void dispose() {
    for (final ext in _extensions.values) {
      ext.dispose();
    }
    _extensions.clear();
  }
}

// Concrete Extensions: Each adds a specific capability

// Accessibility extension
abstract class AccessibilityExtension implements WidgetExtension {
  String getSemanticLabel();
  bool get isAccessible;
}

class StandardAccessibilityExtension implements AccessibilityExtension {
  late CoreWidget _widget;
  final String _label;
  final String _hint;

  StandardAccessibilityExtension(this._label, {String? hint})
      : _hint = hint ?? '';

  @override
  String get extensionId => 'accessibility';

  @override
  void initialize(CoreWidget widget) {
    _widget = widget;
  }

  @override
  void dispose() {}

  @override
  String getSemanticLabel() => _label;

  @override
  bool get isAccessible => true;

  String get hint => _hint;
}

// Analytics extension
abstract class AnalyticsExtension implements WidgetExtension {
  void trackEvent(String eventName, {Map<String, dynamic>? properties});
  List<String> getEventHistory();
}

class AnalyticsExtensionImpl implements AnalyticsExtension {
  late CoreWidget _widget;
  final List<String> _history = [];

  @override
  String get extensionId => 'analytics';

  @override
  void initialize(CoreWidget widget) {
    _widget = widget;
    print('Analytics tracking started for ${widget.name}');
  }

  @override
  void dispose() {
    print('Analytics flushing ${_history.length} events');
  }

  @override
  void trackEvent(String eventName, {Map<String, dynamic>? properties}) {
    final entry = '$eventName ${properties ?? ''}';
    _history.add(entry);
    print('Analytics [${_widget.name}]: $entry');
  }

  @override
  List<String> getEventHistory() => List.unmodifiable(_history);
}

// Caching extension
abstract class CachingExtension implements WidgetExtension {
  void cacheData(String key, dynamic value);
  T? getCachedData<T>(String key);
  void clearCache();
}

class InMemoryCachingExtension implements CachingExtension {
  final Map<String, dynamic> _cache = {};

  @override
  String get extensionId => 'caching';

  @override
  void initialize(CoreWidget widget) {}

  @override
  void dispose() => _cache.clear();

  @override
  void cacheData(String key, dynamic value) {
    _cache[key] = value;
    print('Cached: $key');
  }

  @override
  T? getCachedData<T>(String key) {
    final value = _cache[key];
    return value is T ? value : null;
  }

  @override
  void clearCache() => _cache.clear();
}

// Client code: Queries for capabilities
class WidgetRenderer {
  void render(CoreWidget widget) {
    print('Rendering widget: ${widget.name}');

    // Check and use accessibility extension if available
    final accessibility =
        widget.getExtension<AccessibilityExtension>('accessibility');
    if (accessibility != null && accessibility.isAccessible) {
      print('  Semantic label: ${accessibility.getSemanticLabel()}');
    } else {
      print('  No accessibility support');
    }

    // Track render event if analytics available
    final analytics =
        widget.getExtension<AnalyticsExtension>('analytics');
    analytics?.trackEvent('widget_rendered', properties: {'id': widget.id});
  }
}

void main() {
  final renderer = WidgetRenderer();

  // Basic widget - no extensions
  print('=== Basic Widget ===');
  final basicWidget = CoreWidget('w1', 'Button');
  renderer.render(basicWidget);

  // Widget with all extensions
  print('=== Enhanced Widget ===');
  final enhancedWidget = CoreWidget('w2', 'SmartButton');
  enhancedWidget.addExtension(
    StandardAccessibilityExtension(
      'Submit form button',
      hint: 'Double tap to submit',
    ),
  );
  enhancedWidget.addExtension(AnalyticsExtensionImpl());
  enhancedWidget.addExtension(InMemoryCachingExtension());

  renderer.render(enhancedWidget);

  // Use caching extension
  final cache =
      enhancedWidget.getExtension<CachingExtension>('caching');
  cache?.cacheData('lastTapTime', DateTime.now().millisecondsSinceEpoch);
  final lastTap = cache?.getCachedData<int>('lastTapTime');
  print('Last tap cached: $lastTap');

  // Check analytics history
  final analytics =
      enhancedWidget.getExtension<AnalyticsExtension>('analytics');
  print('Events logged: ${analytics?.getEventHistory().length}');

  // Cleanup
  enhancedWidget.dispose();
}'''),

        // Example 2: Intermediate - Node Extension System
        StrCodeBlock(
          r'''// Example 2: Intermediate - Document Node with Extensions
// Use case: Extensible document node system

// Extension interfaces
abstract class SerializableExtension {
  static const String id = 'serializable';
  Map<String, dynamic> serialize();
  void deserialize(Map<String, dynamic> data);
}

abstract class ValidatableExtension {
  static const String id = 'validatable';
  List<String> validate();
  bool get isValid;
}

abstract class LoggableExtension {
  static const String id = 'loggable';
  void log(String action);
  List<String> getLogs();
}

// Extension registry
class ExtensionRegistry {
  final Map<String, Object Function()> _factories = {};

  void register<T>(String id, T Function() factory) {
    _factories[id] = factory as Object Function();
  }

  T? create<T>(String id) {
    final factory = _factories[id];
    if (factory == null) return null;
    final instance = factory();
    return instance is T ? instance : null;
  }
}

// Subject: Document Node
class DocumentNode {
  final String nodeId;
  String content;
  final String nodeType;
  final Map<String, Object> _extensions = {};

  DocumentNode({
    required this.nodeId,
    required this.content,
    required this.nodeType,
  });

  void attach(String extensionId, Object extension) {
    _extensions[extensionId] = extension;
  }

  T? extension<T>(String extensionId) {
    final ext = _extensions[extensionId];
    return ext is T ? ext : null;
  }

  bool supports(String extensionId) =>
      _extensions.containsKey(extensionId);
}

// Concrete Extensions

class JsonSerializableExtension implements SerializableExtension {
  final DocumentNode _node;

  JsonSerializableExtension(this._node);

  @override
  Map<String, dynamic> serialize() {
    return {
      'nodeId': _node.nodeId,
      'nodeType': _node.nodeType,
      'content': _node.content,
      'serializedAt': DateTime.now().toIso8601String(),
    };
  }

  @override
  void deserialize(Map<String, dynamic> data) {
    _node.content = data['content'] as String;
  }
}

class ContentValidatableExtension implements ValidatableExtension {
  final DocumentNode _node;
  final int _maxLength;
  final bool _required;

  ContentValidatableExtension(
    this._node, {
    int maxLength = 1000,
    bool required = false,
  })  : _maxLength = maxLength,
        _required = required;

  @override
  List<String> validate() {
    final errors = <String>[];

    if (_required && _node.content.trim().isEmpty) {
      errors.add('Content is required for ${_node.nodeType} node');
    }

    if (_node.content.length > _maxLength) {
      errors.add(
        'Content exceeds $_maxLength chars (${_node.content.length})',
      );
    }

    return errors;
  }

  @override
  bool get isValid => validate().isEmpty;
}

class AuditLoggableExtension implements LoggableExtension {
  final DocumentNode _node;
  final List<String> _logs = [];

  AuditLoggableExtension(this._node);

  @override
  void log(String action) {
    final entry = '${DateTime.now().toIso8601String()} [${_node.nodeId}] $action';
    _logs.add(entry);
    print('AUDIT: $entry');
  }

  @override
  List<String> getLogs() => List.unmodifiable(_logs);
}

// Document system that works with extensible nodes
class DocumentProcessor {
  void processNode(DocumentNode node) {
    print('Processing node: ${node.nodeId} (${node.nodeType})');

    // Log if supported
    node.extension<LoggableExtension>(LoggableExtension.id)
        ?.log('Processing started');

    // Validate if supported
    final validator =
        node.extension<ValidatableExtension>(ValidatableExtension.id);
    if (validator != null) {
      if (!validator.isValid) {
        final errors = validator.validate();
        print('  Validation errors:');
        for (final error in errors) {
          print('    - $error');
        }
        return;
      }
      print('  Validation passed');
    }

    // Serialize if supported
    final serializer =
        node.extension<SerializableExtension>(SerializableExtension.id);
    if (serializer != null) {
      final data = serializer.serialize();
      print('  Serialized: $data');
    }

    node.extension<LoggableExtension>(LoggableExtension.id)
        ?.log('Processing completed');

    print('  Capabilities: '
        '${node.supports(SerializableExtension.id) ? "serialize " : ""}'
        '${node.supports(ValidatableExtension.id) ? "validate " : ""}'
        '${node.supports(LoggableExtension.id) ? "log" : ""}');
  }
}

void main() {
  final processor = DocumentProcessor();

  // Minimal node - no extensions
  print('=== Minimal Node ===');
  final minNode = DocumentNode(
    nodeId: 'n001',
    content: 'Simple text',
    nodeType: 'text',
  );
  processor.processNode(minNode);

  // Full-featured node
  print('=== Full-Featured Node ===');
  final richNode = DocumentNode(
    nodeId: 'n002',
    content: 'Important heading',
    nodeType: 'heading',
  );
  richNode.attach(
    SerializableExtension.id,
    JsonSerializableExtension(richNode),
  );
  richNode.attach(
    ValidatableExtension.id,
    ContentValidatableExtension(richNode, maxLength: 100, required: true),
  );
  richNode.attach(
    LoggableExtension.id,
    AuditLoggableExtension(richNode),
  );
  processor.processNode(richNode);

  print('Audit log entries: '
      '${(richNode.extension<LoggableExtension>(LoggableExtension.id) as AuditLoggableExtension?)?.getLogs().length}');

  // Node with validation error
  print('=== Node with Validation Error ===');
  final invalidNode = DocumentNode(
    nodeId: 'n003',
    content: '', // Empty, but required
    nodeType: 'title',
  );
  invalidNode.attach(
    ValidatableExtension.id,
    ContentValidatableExtension(
      invalidNode,
      maxLength: 50,
      required: true,
    ),
  );
  processor.processNode(invalidNode);
}''',
        ),

        // Example 3: Advanced - Plugin-Based Extension System
        StrCodeBlock(r'''import 'package:flutter/material.dart';

// Example 3: Advanced - Runtime Plugin Extension System
// Use case: Third-party plugins adding capabilities to core entities

// ── CORE INTERFACES ───────────────────────────────────────────

abstract class Extension {
  String get id;
  Type get targetType;
  void onAttached(Extensible host);
  void onDetached();
}

mixin Extensible {
  final Map<String, Extension> _extensions = {};

  void addExtension(Extension ext) {
    if (_extensions.containsKey(ext.id)) {
      throw StateError('Extension ${ext.id} already attached');
    }
    _extensions[ext.id] = ext;
    ext.onAttached(this);
  }

  void removeExtension(String id) {
    _extensions[id]?.onDetached();
    _extensions.remove(id);
  }

  T? getExtension<T>(String id) {
    final ext = _extensions[id];
    return ext is T ? ext : null;
  }

  bool hasExtension(String id) => _extensions.containsKey(id);

  Iterable<String> get extensionIds => _extensions.keys;
}

// ── CORE DOMAIN OBJECTS ───────────────────────────────────────

class Product with Extensible {
  final String id;
  String name;
  double price;
  int stock;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.stock,
  });

  @override
  String toString() => 'Product($id: $name @ $price)';
}

// ── EXTENSION INTERFACES ──────────────────────────────────────

abstract class PricingExtension extends Extension {
  static const String extensionId = 'pricing';
  @override
  String get id => extensionId;

  double calculateFinalPrice(double basePrice);
  String get pricingStrategy;
}

abstract class InventoryExtension extends Extension {
  static const String extensionId = 'inventory';
  @override
  String get id => extensionId;

  bool canFulfill(int quantity);
  void reserve(int quantity);
  void release(int quantity);
}

abstract class RecommendationExtension extends Extension {
  static const String extensionId = 'recommendation';
  @override
  String get id => extensionId;

  List<String> getRelatedProductIds();
  double getRelevanceScore(String userId);
}

// ── PLUGIN IMPLEMENTATIONS ────────────────────────────────────

// Pricing plugins
class DiscountPricingExtension implements PricingExtension {
  late Extensible _host;
  final double discountPercent;

  DiscountPricingExtension(this.discountPercent);

  @override
  Type get targetType => Product;

  @override
  void onAttached(Extensible host) {
    _host = host;
    final product = host as Product;
    print('Discount pricing attached to ${product.name} ($discountPercent% off)');
  }

  @override
  void onDetached() => print('Discount pricing detached');

  @override
  double calculateFinalPrice(double basePrice) {
    return basePrice * (1 - discountPercent / 100);
  }

  @override
  String get pricingStrategy => 'discount_${discountPercent}pct';
}

class BundlePricingExtension implements PricingExtension {
  late Extensible _host;
  final List<String> bundledProductIds;
  final double bundleDiscount;

  BundlePricingExtension({
    required this.bundledProductIds,
    required this.bundleDiscount,
  });

  @override
  Type get targetType => Product;

  @override
  void onAttached(Extensible host) => _host = host;

  @override
  void onDetached() {}

  @override
  double calculateFinalPrice(double basePrice) {
    return basePrice * (1 - bundleDiscount / 100);
  }

  @override
  String get pricingStrategy =>
      'bundle_${bundledProductIds.length}_items';
}

// Inventory plugins
class WarehouseInventoryExtension implements InventoryExtension {
  late Product _product;
  final String warehouseId;
  int _reserved = 0;

  WarehouseInventoryExtension(this.warehouseId);

  @override
  Type get targetType => Product;

  @override
  void onAttached(Extensible host) {
    _product = host as Product;
    print('Warehouse inventory tracking: ${_product.name} @ $warehouseId');
  }

  @override
  void onDetached() {}

  @override
  bool canFulfill(int quantity) {
    final available = _product.stock - _reserved;
    return available >= quantity;
  }

  @override
  void reserve(int quantity) {
    if (!canFulfill(quantity)) throw Exception('Insufficient stock');
    _reserved += quantity;
    print('Reserved $quantity units of ${_product.name} '
        '(reserved: $_reserved/${_product.stock})');
  }

  @override
  void release(int quantity) {
    _reserved = (_reserved - quantity).clamp(0, _product.stock);
    print('Released $quantity units of ${_product.name}');
  }
}

// Recommendation plugins
class MLRecommendationExtension implements RecommendationExtension {
  late Product _product;
  final Map<String, List<String>> _userAffinities;

  MLRecommendationExtension(this._userAffinities);

  @override
  String get extensionId => RecommendationExtension.extensionId;

  @override
  Type get targetType => Product;

  @override
  void onAttached(Extensible host) {
    _product = host as Product;
  }

  @override
  void onDetached() {}

  @override
  List<String> getRelatedProductIds() {
    return ['prod_002', 'prod_003', 'prod_007'];
  }

  @override
  double getRelevanceScore(String userId) {
    final affinities = _userAffinities[userId] ?? [];
    return affinities.contains(_product.id) ? 0.95 : 0.60;
  }
}

// ── PRODUCT SERVICE ───────────────────────────────────────────

class ExtensibleProductService {
  double getPriceForUser(Product product, String userId) {
    final pricing =
        product.getExtension<PricingExtension>(PricingExtension.extensionId);

    if (pricing == null) {
      print('No pricing extension - using base price');
      return product.price;
    }

    final finalPrice = pricing.calculateFinalPrice(product.price);
    print('Strategy: ${pricing.pricingStrategy}');
    return finalPrice;
  }

  bool processOrder(Product product, int quantity) {
    final inventory = product
        .getExtension<InventoryExtension>(InventoryExtension.extensionId);

    if (inventory == null) {
      print('No inventory extension - basic stock check');
      return product.stock >= quantity;
    }

    if (!inventory.canFulfill(quantity)) {
      print('Order rejected: insufficient stock');
      return false;
    }

    inventory.reserve(quantity);
    return true;
  }

  List<String> getRecommendations(Product product, String userId) {
    final rec = product.getExtension<RecommendationExtension>(
      RecommendationExtension.extensionId,
    );

    if (rec == null) return [];

    final score = rec.getRelevanceScore(userId);
    print('Relevance score for $userId: ${score.toStringAsFixed(2)}');
    return rec.getRelatedProductIds();
  }

  void printProductCapabilities(Product product) {
    print('Product ${product.name} capabilities: ${product.extensionIds.join(', ')}');
  }
}

void main() {
  final service = ExtensibleProductService();

  // Create product
  final laptop = Product(
    id: 'prod_001',
    name: 'Developer Laptop',
    price: 1499.99,
    stock: 25,
  );

  // Attach extensions at runtime
  laptop.addExtension(DiscountPricingExtension(15)); // 15% off
  laptop.addExtension(WarehouseInventoryExtension('WH-EAST'));
  laptop.addExtension(
    MLRecommendationExtension({
      'user_alice': ['prod_001'],
      'user_bob': [],
    }),
  );

  service.printProductCapabilities(laptop);

  print('=== Pricing ===');
  final price = service.getPriceForUser(laptop, 'user_alice');
  print('Final price: \$${price.toStringAsFixed(2)} '
      '(base: \$${laptop.price})');

  print('=== Inventory ===');
  final ordered = service.processOrder(laptop, 3);
  print('Order processed: $ordered');

  print('=== Recommendations ===');
  final recs = service.getRecommendations(laptop, 'user_alice');
  print('Recommended: $recs');

  // Product without all extensions
  print('=== Basic Product ===');
  final usb = Product(
    id: 'prod_002',
    name: 'USB Hub',
    price: 29.99,
    stock: 100,
  );
  // No extensions attached
  service.printProductCapabilities(usb);
  final usbPrice = service.getPriceForUser(usb, 'user_alice');
  print('USB price: \$${usbPrice.toStringAsFixed(2)}');
}'''),

        // Example 4: Flutter - Widget Extension System
        StrCodeBlock(r'''// Example 4: Flutter - Widget Extension Capabilities
import 'dart:math';
import 'package:flutter/material.dart';
// Use case: Adding optional features to screens at runtime

// Extension interfaces
abstract class ScreenExtension {
  String get extensionId;
  void mount(ExtensibleScreen screen);
  void unmount();
  List<Widget> buildOverlays(BuildContext context);
  Widget? buildBottomBar(BuildContext context) => null;
}

// Subject: Screen that accepts extensions
class ExtensibleScreen extends StatefulWidget {
  final String title;
  final Widget body;
  final List<ScreenExtension> extensions;

  const ExtensibleScreen({
    required this.title,
    required this.body,
    this.extensions = const [],
    super.key,
  });

  @override
  State<ExtensibleScreen> createState() => _ExtensibleScreenState();
}

class _ExtensibleScreenState extends State<ExtensibleScreen> {
  final Map<String, ScreenExtension> _extensions = {};

  @override
  void initState() {
    super.initState();
    for (final ext in widget.extensions) {
      _extensions[ext.extensionId] = ext;
      ext.mount(widget);
    }
  }

  @override
  void dispose() {
    for (final ext in _extensions.values) {
      ext.unmount();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final overlays = _extensions.values
        .expand((ext) => ext.buildOverlays(context))
        .toList();

    final bottomBars = _extensions.values
        .map((ext) => ext.buildBottomBar(context))
        .whereType<Widget>()
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Stack(
        children: [
          widget.body,
          ...overlays,
        ],
      ),
      bottomNavigationBar: bottomBars.isNotEmpty
          ? Column(
              mainAxisSize: .min,
              children: bottomBars,
            )
          : null,
    );
  }
}

// Concrete Extensions

// Analytics Tracking Extension
class AnalyticsScreenExtension implements ScreenExtension {
  final String screenName;
  bool _isTracking = false;

  AnalyticsScreenExtension(this.screenName);

  @override
  String get extensionId => 'analytics';

  @override
  void mount(ExtensibleScreen screen) {
    _isTracking = true;
    print('Analytics: Tracking screen "$screenName"');
  }

  @override
  void unmount() {
    _isTracking = false;
    print('Analytics: Stopped tracking "$screenName"');
  }

  @override
  List<Widget> buildOverlays(BuildContext context) => [];

  @override
  Widget? buildBottomBar(BuildContext context) => null;
}

// Tutorial Overlay Extension
class TutorialOverlayExtension implements ScreenExtension {
  final List<String> steps;
  int _currentStep = 0;
  late StateSetter _setState;

  TutorialOverlayExtension(this.steps);

  @override
  String get extensionId => 'tutorial';

  @override
  void mount(ExtensibleScreen screen) {
    print('Tutorial: Started with ${steps.length} steps');
  }

  @override
  void unmount() {}

  @override
  List<Widget> buildOverlays(BuildContext context) {
    if (_currentStep >= steps.length) return [];

    return [
      Positioned(
        bottom: 80,
        left: 16,
        right: 16,
        child: StatefulBuilder(
          builder: (context, setState) {
            _setState = setState;
            return Card(
              color: Colors.blue[900],
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: .min,
                  children: [
                    Text(
                      'Step ${_currentStep + 1}/${steps.length}',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      steps[_currentStep],
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        setState(() => _currentStep++);
                      },
                      child: Text(
                        _currentStep < steps.length - 1 ? 'Next' : 'Done',
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ];
  }
}

// Feedback Extension
class FeedbackExtension implements ScreenExtension {
  final String featureName;

  FeedbackExtension(this.featureName);

  @override
  String get extensionId => 'feedback';

  @override
  void mount(ExtensibleScreen screen) {}

  @override
  void unmount() {}

  @override
  List<Widget> buildOverlays(BuildContext context) => [];

  @override
  Widget? buildBottomBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Text('How do you like $featureName?'),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.thumb_up_outlined),
                onPressed: () =>
                    ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Thanks for the feedback!')),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.thumb_down_outlined),
                onPressed: () =>
                    ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Sorry to hear that!')),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Demo app
class ExtensionDemo extends StatelessWidget {
  const ExtensionDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // Same screen body, different extensions per use case
    final screenBody = ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Extension Object Pattern Demo',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text(
          'This screen has optional capabilities attached as extension objects.',
        ),
        const SizedBox(height: 16),
        ...List.generate(
          10,
          (i) => ListTile(
            leading: const Icon(Icons.check_circle),
            title: Text('Feature Item ${i + 1}'),
          ),
        ),
      ],
    );

    return ExtensibleScreen(
      title: 'Extensible Screen',
      body: screenBody,
      extensions: [
        // Attach analytics tracking
        AnalyticsScreenExtension('home_screen'),
        // Attach tutorial for new users
        TutorialOverlayExtension([
          'Welcome! This is your home screen.',
          'Browse items by scrolling down.',
          'Tap any item to see details.',
        ]),
        // Attach feedback widget
        FeedbackExtension('home screen'),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(home: ExtensionDemo()));
}'''),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Open/Closed Principle: add capabilities without modifying existing classes",
        "Runtime flexibility: capabilities can be added/removed dynamically",
        "Avoids class explosion from multiple inheritance combinations",
        "Third parties can extend core objects without source access",
        "Clients can query for capabilities and gracefully handle absence",
        "Extensions are independent and can be developed separately",
        "Separates optional concerns from the core object",
      ],
      ar: [
        "مبدأ المفتوح/المغلق: إضافة قدرات دون تعديل الفئات الموجودة",
        "مرونة وقت التشغيل: يمكن إضافة/إزالة القدرات ديناميكياً",
        "يتجنب انفجار الفئات من مجموعات الوراثة المتعددة",
        "يمكن لأطراف ثالثة توسيع الكائنات الأساسية دون وصول للمصدر",
        "يمكن للعملاء الاستعلام عن القدرات والتعامل بلطف مع غيابها",
        "التوسعات مستقلة ويمكن تطويرها بشكل منفصل",
        "يفصل الاهتمامات الاختيارية عن الكائن الأساسي",
      ],
    ),
    cons: LocSL(
      en: [
        "More complex than simple inheritance or composition",
        "Runtime type checking and casting required",
        "Clients must handle null (extension not present)",
        "Extension interfaces must be well-defined upfront",
        "Debugging can be hard when behavior comes from attached extensions",
        "Can lead to 'extension soup' if too many extensions pile up",
      ],
      ar: [
        "أكثر تعقيداً من الوراثة أو التركيب البسيط",
        "التحقق من النوع في وقت التشغيل والإرسال مطلوبان",
        "يجب على العملاء التعامل مع null (التوسعة غير موجودة)",
        "يجب تعريف واجهات التوسعة بشكل جيد مسبقاً",
        "التنقيح قد يكون صعباً عندما يأتي السلوك من توسعات مُرفقة",
        "يمكن أن يؤدي إلى 'حساء التوسعات' إذا تراكمت توسعات كثيرة جداً",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Extension Object when:"),
        ULContent(
          value: [
            "You need to add capabilities to existing classes without modifying them",
            "Capabilities are optional and not all instances need them",
            "Third parties need to extend your core objects without source access",
            "Multiple independent capabilities need to be combined at runtime",
            "You want to avoid N×M class explosion from multiple inheritance",
            "Building plugin architectures where capabilities arrive at runtime",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم كائن التوسعة عندما:"),
        ULContent(
          value: [
            "تحتاج لإضافة قدرات للفئات الموجودة دون تعديلها",
            "القدرات اختيارية وليس كل النسخ تحتاجها",
            "أطراف ثالثة تحتاج لتوسيع كائناتك الأساسية دون وصول للمصدر",
            "قدرات مستقلة متعددة تحتاج للدمج في وقت التشغيل",
            "تريد تجنب انفجار N×M للفئات من الوراثة المتعددة",
            "بناء معماريات إضافات حيث تصل القدرات في وقت التشغيل",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Putting too much logic in extensions - keep core behavior in the subject",
        "Not handling extension absence gracefully in client code",
        "Tight coupling between extensions - each extension should be independent",
        "Not defining clear extension interfaces upfront",
        "Using when simple Decorator or mixin would suffice",
        "Forgetting to unmount/dispose extensions when subject is destroyed",
      ],
      ar: [
        "وضع الكثير من المنطق في التوسعات - أبقِ السلوك الأساسي في الموضوع",
        "عدم التعامل مع غياب التوسعة بلطف في كود العميل",
        "اقتران وثيق بين التوسعات - يجب أن تكون كل توسعة مستقلة",
        "عدم تعريف واجهات توسعة واضحة مسبقاً",
        "الاستخدام عندما يكفي المُزخرف أو المزج البسيط",
        "نسيان إلغاء التثبيت/التخلص من التوسعات عند تدمير الموضوع",
      ],
    ),
    relatedPatterns: [PK.decorator, PK.visitor, PK.composite, PK.plugin],
    oftenConfusedWith: [PK.decorator, PK.plugin],
  ),
  PK.plugin: DesignPattern(
    id: PK.plugin,
    title: LocS(en: "Plugin", ar: "الإضافة (Plugin)"),
    description: LocS(
      en: "Extends application behavior through dynamically loaded, independently-developed components",
      ar: "يوسع سلوك التطبيق من خلال مكونات مُحملة ديناميكياً ومُطورة بشكل مستقل",
    ),
    group: .design,
    type: .structural,
    category: .practical,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "The Plugin pattern provides a way to extend application behavior through components that can be developed, deployed, and replaced independently of the main application. The core app defines plugin interfaces; plugins implement them. The core loads and uses plugins without knowing their concrete implementations.",
        ),
        AnalogyContent(
          "Think of a DAW (Digital Audio Workstation) like GarageBand or Ableton. The core DAW handles audio playback, recording, and mixing. VST plugins (synthesizers, effects, instruments) can be added by anyone. The DAW defines the plugin interface (VST standard); plugin developers implement it. You can add third-party reverb, third-party synthesizers, and third-party compressors - all without changing the core DAW.",
        ),
        StrContent(
          "Plugins differ from Extension Object in scope and intent. Extension Object adds capabilities to individual object instances. Plugin adds capabilities to the entire application system - it's an architectural pattern. Plugins usually have their own lifecycle (load, activate, deactivate, unload) and can contribute to multiple parts of the application.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Plugin Interface: Contract that all plugins must implement",
            "Plugin Registry: Manages plugin discovery, registration, and lifecycle",
            "Plugin Host/Core: The application that loads and uses plugins",
            "Concrete Plugin: An implementation of the plugin interface",
            "Plugin Metadata: Version, dependencies, capabilities info",
            "Plugin Lifecycle: Load, activate, deactivate, unload hooks",
          ],
        ),
        DiagramContent(
          "Architecture:\nCore Application\n    │\n    ├── Plugin Registry ── discovers & loads\n    │         │\n    │    [Plugin A] [Plugin B] [Plugin C]\n    │         │\n    └── Plugin Interfaces (contracts)\n\n(Core depends only on interfaces, not concrete plugins)",
        ),
        NoteContent(
          "Plugin vs Strategy: Strategy provides interchangeable algorithms for one specific behavior. Plugin provides an entire subsystem of behaviors - a plugin might implement dozens of interfaces and contribute to many parts of the application.",
          type: .important,
        ),
        ComparisonContent({
          'Plugin':
              'System-level extensibility, full lifecycle, many contributions',
          'Extension Object': 'Instance-level capability, simpler lifecycle',
          'Strategy': 'Algorithm interchangeability, single behavior point',
          'Observer': 'Event notification, no lifecycle management',
        }, title: 'Plugin vs Similar Patterns'),
        StrContent(
          "Common use cases in Flutter/Dart: pub.dev packages (each is essentially a plugin for your app), Flutter's own platform plugin system (camera, geolocator, etc.), payment providers, analytics providers, authentication providers, and any architecture designed for third-party extension.",
        ),
        NoteContent(
          "In Flutter, `platform channels` and the `flutter_plugin_registrant` are the official plugin infrastructure. pub.dev packages like `camera`, `google_maps_flutter`, and `firebase_auth` all follow plugin patterns - they implement core interfaces without the app knowing their internals.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent(
          "نمط الإضافة يوفر طريقة لتوسيع سلوك التطبيق من خلال مكونات يمكن تطويرها ونشرها واستبدالها بشكل مستقل عن التطبيق الرئيسي. يُعرّف التطبيق الأساسي واجهات الإضافات؛ الإضافات تنفذها. يقوم التطبيق الأساسي بتحميل واستخدام الإضافات دون معرفة تطبيقاتها المحددة.",
        ),
        AnalogyContent(
          "فكر في برنامج Digital Audio Workstation مثل GarageBand أو Ableton. التطبيق الأساسي يتعامل مع تشغيل الصوت والتسجيل والمزج. إضافات VST (مُركّبات أصوات، مؤثرات، آلات موسيقية) يمكن إضافتها من قبل أي شخص. التطبيق يُعرّف واجهة الإضافة (معيار VST)؛ مطورو الإضافات ينفذونها. يمكنك إضافة صدى من طرف ثالث، مُركّبات أصوات من طرف ثالث، وضاغطات من طرف ثالث - كل ذلك دون تغيير التطبيق الأساسي.",
        ),
        StrContent(
          "الإضافات تختلف عن كائن التوسعة في النطاق والهدف. كائن التوسعة يضيف قدرات لنسخ كائنات فردية. الإضافة تضيف قدرات لنظام التطبيق بأكمله - إنه نمط معماري. الإضافات عادةً لها دورة حياة خاصة بها (تحميل، تفعيل، إلغاء تفعيل، إلغاء تحميل) ويمكنها المساهمة في أجزاء متعددة من التطبيق.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "واجهة الإضافة (Plugin Interface): العقد الذي يجب أن تنفذه جميع الإضافات",
            "سجل الإضافات (Plugin Registry): يدير اكتشاف الإضافات وتسجيلها ودورة حياتها",
            "مضيف/نواة الإضافة (Plugin Host/Core): التطبيق الذي يُحمّل ويستخدم الإضافات",
            "الإضافة المحددة (Concrete Plugin): تطبيق لواجهة الإضافة",
            "بيانات الإضافة الوصفية (Plugin Metadata): معلومات الإصدار والتبعيات والقدرات",
            "دورة حياة الإضافة (Plugin Lifecycle): ربط التحميل والتفعيل وإلغاء التفعيل وإلغاء التحميل",
          ],
        ),
        DiagramContent(
          "المعمارية:\nالتطبيق الأساسي\n    │\n    ├── سجل الإضافات ── يكتشف ويُحمّل\n    │         │\n    │    [إضافة أ] [إضافة ب] [إضافة ج]\n    │         │\n    └── واجهات الإضافات (العقود)\n\n(الأساسي يعتمد فقط على الواجهات، وليس الإضافات المحددة)",
        ),
        NoteContent(
          "الإضافة مقابل الاستراتيجية: الاستراتيجية توفر خوارزميات قابلة للتبادل لسلوك محدد واحد. الإضافة توفر نظاماً فرعياً كاملاً من السلوكيات - قد تنفذ إضافة واحدة عشرات الواجهات وتساهم في أجزاء كثيرة من التطبيق.",
          type: .important,
        ),
        ComparisonContent({
          'الإضافة (Plugin)':
              'قابلية توسع على مستوى النظام، دورة حياة كاملة، مساهمات كثيرة',
          'كائن التوسعة (Extension Object)':
              'قدرة على مستوى النسخة، دورة حياة أبسط',
          'الاستراتيجية (Strategy)': 'تبادلية الخوارزميات، نقطة سلوك واحدة',
          'المراقب (Observer)': 'إشعار الأحداث، لا إدارة لدورة الحياة',
        }, title: 'الإضافة مقابل الأنماط المشابهة'),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: حزم pub.dev (كل منها هو في الأساس إضافة لتطبيقك)، نظام إضافات المنصة الرسمي في Flutter (الكاميرا، موقع GPS، إلخ)، موفرو الدفع، موفرو التحليلات، موفرو المصادقة، وأي معمارية مصممة للتوسيع من قبل أطراف ثالثة.",
        ),
        NoteContent(
          "في Flutter، `platform channels` و`flutter_plugin_registrant` هي البنية التحتية الرسمية للإضافات. حزم pub.dev مثل `camera` و`google_maps_flutter` و`firebase_auth` تتبع جميعها أنماط الإضافات - تنفذ واجهات أساسية دون أن يعرف التطبيق داخلياتها.",
          type: .tip,
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Storage Plugin System
        StrCodeBlock(r'''import 'dart:async';

// Example 1: Basic - Storage Provider Plugin System
// Use case: Swappable storage backends as plugins

// ── PLUGIN CONTRACT ───────────────────────────────────────────

abstract class StoragePlugin {
  // Plugin metadata
  String get pluginId;
  String get displayName;
  String get version;
  List<String> get supportedPlatforms;

  // Lifecycle
  Future<void> initialize(Map<String, dynamic> config);
  Future<void> dispose();

  // Core operations
  Future<void> write(String key, String value);
  Future<String?> read(String key);
  Future<void> delete(String key);
  Future<bool> exists(String key);
  Future<List<String>> listKeys();
}

// ── PLUGIN REGISTRY ───────────────────────────────────────────

class StoragePluginRegistry {
  final Map<String, StoragePlugin> _plugins = {};
  String? _activePluginId;

  void register(StoragePlugin plugin) {
    print('Registry: Registering plugin "${plugin.pluginId}" v${plugin.version}');
    _plugins[plugin.pluginId] = plugin;
  }

  Future<void> activate(String pluginId, {Map<String, dynamic>? config}) async {
    final plugin = _plugins[pluginId];
    if (plugin == null) {
      throw Exception('Plugin not found: $pluginId');
    }
    print('Registry: Activating "${plugin.displayName}"');
    await plugin.initialize(config ?? {});
    _activePluginId = pluginId;
    print('Registry: "${plugin.displayName}" is now active');
  }

  StoragePlugin get active {
    if (_activePluginId == null) {
      throw StateError('No active storage plugin');
    }
    return _plugins[_activePluginId]!;
  }

  List<String> get availablePlugins => _plugins.keys.toList();

  void printInfo() {
    print('Available plugins: ${_plugins.length}');
    for (final plugin in _plugins.values) {
      final isActive = plugin.pluginId == _activePluginId;
      print('  ${isActive ? "▶" : " "} ${plugin.displayName} v${plugin.version}');
      print('    Platforms: ${plugin.supportedPlatforms.join(", ")}');
    }
  }
}

// ── CONCRETE PLUGINS ──────────────────────────────────────────

// In-Memory storage plugin
class InMemoryStoragePlugin implements StoragePlugin {
  final Map<String, String> _store = {};

  @override
  String get pluginId => 'in_memory';
  @override
  String get displayName => 'In-Memory Storage';
  @override
  String get version => '1.0.0';
  @override
  List<String> get supportedPlatforms => ['all'];

  @override
  Future<void> initialize(Map<String, dynamic> config) async {
    print('InMemory: Initialized');
  }

  @override
  Future<void> dispose() async {
    _store.clear();
    print('InMemory: Disposed');
  }

  @override
  Future<void> write(String key, String value) async {
    _store[key] = value;
    print('InMemory: Wrote $key');
  }

  @override
  Future<String?> read(String key) async {
    return _store[key];
  }

  @override
  Future<void> delete(String key) async {
    _store.remove(key);
  }

  @override
  Future<bool> exists(String key) async => _store.containsKey(key);

  @override
  Future<List<String>> listKeys() async => _store.keys.toList();
}

// Encrypted storage plugin
class EncryptedStoragePlugin implements StoragePlugin {
  final Map<String, String> _store = {};
  late String _encryptionKey;

  @override
  String get pluginId => 'encrypted';
  @override
  String get displayName => 'Encrypted Storage';
  @override
  String get version => '2.1.0';
  @override
  List<String> get supportedPlatforms => ['android', 'ios'];

  @override
  Future<void> initialize(Map<String, dynamic> config) async {
    _encryptionKey = config['key'] as String? ?? 'default_key_abc';
    print('Encrypted: Initialized with key: ${_encryptionKey.substring(0, 3)}***');
  }

  @override
  Future<void> dispose() async {
    _store.clear();
    print('Encrypted: Disposed and cleared');
  }

  String _encrypt(String value) => 'enc[$value]'; // Simplified
  String _decrypt(String value) => value.replaceAll(RegExp(r'enc\[|\]'), '');

  @override
  Future<void> write(String key, String value) async {
    _store[key] = _encrypt(value);
    print('Encrypted: Wrote $key (encrypted)');
  }

  @override
  Future<String?> read(String key) async {
    final encrypted = _store[key];
    return encrypted != null ? _decrypt(encrypted) : null;
  }

  @override
  Future<void> delete(String key) async => _store.remove(key);

  @override
  Future<bool> exists(String key) async => _store.containsKey(key);

  @override
  Future<List<String>> listKeys() async => _store.keys.toList();
}

// Cloud storage plugin
class CloudStoragePlugin implements StoragePlugin {
  final Map<String, String> _localCache = {};
  late String _apiKey;

  @override
  String get pluginId => 'cloud';
  @override
  String get displayName => 'Cloud Storage';
  @override
  String get version => '3.0.1';
  @override
  List<String> get supportedPlatforms => ['android', 'ios', 'web'];

  @override
  Future<void> initialize(Map<String, dynamic> config) async {
    _apiKey = config['api_key'] as String? ?? 'demo_key';
    print('Cloud: Connected with key: ${_apiKey.substring(0, 4)}***');
    await Future.delayed(const Duration(milliseconds: 50)); // Simulate connect
    print('Cloud: Ready');
  }

  @override
  Future<void> dispose() async {
    _localCache.clear();
    print('Cloud: Disconnected');
  }

  @override
  Future<void> write(String key, String value) async {
    await Future.delayed(const Duration(milliseconds: 30)); // Simulate network
    _localCache[key] = value;
    print('Cloud: Synced $key to cloud');
  }

  @override
  Future<String?> read(String key) async {
    await Future.delayed(const Duration(milliseconds: 20));
    return _localCache[key];
  }

  @override
  Future<void> delete(String key) async {
    _localCache.remove(key);
  }

  @override
  Future<bool> exists(String key) async => _localCache.containsKey(key);

  @override
  Future<List<String>> listKeys() async => _localCache.keys.toList();
}

// ── APPLICATION CODE ──────────────────────────────────────────

class AppSettings {
  final StoragePluginRegistry _registry;

  AppSettings(this._registry);

  Future<void> save(String key, String value) async {
    await _registry.active.write(key, value);
  }

  Future<String?> load(String key) async {
    return _registry.active.read(key);
  }

  Future<void> saveAll(Map<String, String> settings) async {
    for (final entry in settings.entries) {
      await save(entry.key, entry.value);
    }
  }
}

void main() async {
  print('=== Plugin System Demo ===');

  final registry = StoragePluginRegistry();

  // Register all available plugins
  registry.register(InMemoryStoragePlugin());
  registry.register(EncryptedStoragePlugin());
  registry.register(CloudStoragePlugin());

  registry.printInfo();

  final settings = AppSettings(registry);

  print('=== Using In-Memory Plugin ===');
  await registry.activate('in_memory');
  await settings.saveAll({
    'theme': 'dark',
    'language': 'en',
    'notifications': 'true',
  });
  print('theme: ${await settings.load("theme")}');

  print('=== Switching to Encrypted Plugin ===');
  await registry.activate('encrypted', config: {'key': 'super_secret_key_456'});
  await settings.save('auth_token', 'eyJhbGc...');
  print('token: ${await settings.load("auth_token")}');

  print('=== Switching to Cloud Plugin ===');
  await registry.activate('cloud', config: {'api_key': 'cloud_api_789'});
  await settings.save('sync_enabled', 'true');
  print('sync: ${await settings.load("sync_enabled")}');
  print('keys: ${await registry.active.listKeys()}');
}'''),

        // Example 2: Intermediate - Authentication Plugin System
        StrCodeBlock(
          r'''// Example 2: Intermediate - Authentication Plugin System
// Use case: Swappable auth providers as plugins

// Plugin interface
abstract class AuthPlugin {
  String get pluginId;
  String get providerName;
  bool get supportsOAuth;

  Future<void> initialize();

  Future<AuthResult> signIn({
    String? email,
    String? password,
    Map<String, dynamic>? options,
  });

  Future<AuthResult> signOut();
  Future<AuthResult> refreshToken(String refreshToken);
  Future<UserInfo?> getCurrentUser();
  Future<bool> isSignedIn();

  Stream<AuthState> get authStateChanges;
}

// Result types
class AuthResult {
  final bool success;
  final String? accessToken;
  final String? refreshToken;
  final String? error;
  final UserInfo? user;

  const AuthResult({
    required this.success,
    this.accessToken,
    this.refreshToken,
    this.error,
    this.user,
  });

  factory AuthResult.success({
    String? accessToken,
    String? refreshToken,
    UserInfo? user,
  }) {
    return AuthResult(
      success: true,
      accessToken: accessToken,
      refreshToken: refreshToken,
      user: user,
    );
  }

  factory AuthResult.failure(String error) {
    return AuthResult(success: false, error: error);
  }
}

class UserInfo {
  final String id;
  final String? email;
  final String? displayName;
  final String? photoUrl;
  final String provider;

  const UserInfo({
    required this.id,
    this.email,
    this.displayName,
    this.photoUrl,
    required this.provider,
  });
}

enum AuthState { signedIn, signedOut, loading }

// Concrete plugins

class EmailPasswordAuthPlugin implements AuthPlugin {
  final _authStateController = StreamController<AuthState>.broadcast();
  UserInfo? _currentUser;

  @override
  String get pluginId => 'email_password';
  @override
  String get providerName => 'Email & Password';
  @override
  bool get supportsOAuth => false;

  @override
  Future<void> initialize() async {
    print('EmailAuth: Initialized');
    _authStateController.add(.signedOut);
  }

  @override
  Future<AuthResult> signIn({
    String? email,
    String? password,
    Map<String, dynamic>? options,
  }) async {
    if (email == null || password == null) {
      return AuthResult.failure('Email and password required');
    }

    print('EmailAuth: Signing in $email');
    await Future.delayed(const Duration(milliseconds: 100));

    if (password.length < 6) {
      return AuthResult.failure('Invalid credentials');
    }

    _currentUser = UserInfo(
      id: 'uid_${email.hashCode.abs()}',
      email: email,
      displayName: email.split('@').first,
      provider: providerName,
    );

    _authStateController.add(.signedIn);

    return AuthResult.success(
      accessToken: 'email_token_${DateTime.now().millisecondsSinceEpoch}',
      refreshToken: 'refresh_${email.hashCode}',
      user: _currentUser,
    );
  }

  @override
  Future<AuthResult> signOut() async {
    print('EmailAuth: Signing out');
    _currentUser = null;
    _authStateController.add(.signedOut);
    return AuthResult.success();
  }

  @override
  Future<AuthResult> refreshToken(String refreshToken) async {
    print('EmailAuth: Refreshing token');
    return AuthResult.success(
      accessToken: 'new_token_${DateTime.now().millisecondsSinceEpoch}',
      refreshToken: refreshToken,
    );
  }

  @override
  Future<UserInfo?> getCurrentUser() async => _currentUser;

  @override
  Future<bool> isSignedIn() async => _currentUser != null;

  @override
  Stream<AuthState> get authStateChanges => _authStateController.stream;
}

class GoogleAuthPlugin implements AuthPlugin {
  final _authStateController = StreamController<AuthState>.broadcast();
  UserInfo? _currentUser;

  @override
  String get pluginId => 'google';
  @override
  String get providerName => 'Google';
  @override
  bool get supportsOAuth => true;

  @override
  Future<void> initialize() async {
    print('GoogleAuth: Initialized with OAuth 2.0');
    _authStateController.add(.signedOut);
  }

  @override
  Future<AuthResult> signIn({
    String? email,
    String? password,
    Map<String, dynamic>? options,
  }) async {
    print('GoogleAuth: Opening Google sign-in dialog...');
    await Future.delayed(const Duration(milliseconds: 200));

    // Simulate Google OAuth flow
    _currentUser = UserInfo(
      id: 'google_uid_12345',
      email: 'alice@gmail.com',
      displayName: 'Alice Johnson',
      photoUrl: 'https://photo.google.com/alice.jpg',
      provider: providerName,
    );

    _authStateController.add(.signedIn);

    return AuthResult.success(
      accessToken: 'google_token_${DateTime.now().millisecondsSinceEpoch}',
      user: _currentUser,
    );
  }

  @override
  Future<AuthResult> signOut() async {
    print('GoogleAuth: Signing out from Google');
    _currentUser = null;
    _authStateController.add(.signedOut);
    return AuthResult.success();
  }

  @override
  Future<AuthResult> refreshToken(String refreshToken) async {
    print('GoogleAuth: Refreshing via OAuth');
    return AuthResult.success(
      accessToken: 'google_new_${DateTime.now().millisecondsSinceEpoch}',
    );
  }

  @override
  Future<UserInfo?> getCurrentUser() async => _currentUser;

  @override
  Future<bool> isSignedIn() async => _currentUser != null;

  @override
  Stream<AuthState> get authStateChanges => _authStateController.stream;
}

// Plugin registry
class AuthPluginRegistry {
  final Map<String, AuthPlugin> _plugins = {};
  AuthPlugin? _active;

  void register(AuthPlugin plugin) {
    _plugins[plugin.pluginId] = plugin;
    print('AuthRegistry: Registered "${plugin.providerName}"');
  }

  Future<void> setActive(String pluginId) async {
    final plugin = _plugins[pluginId];
    if (plugin == null) throw Exception('Auth plugin not found: $pluginId');

    _active = plugin;
    await plugin.initialize();
    print('AuthRegistry: Active provider: ${plugin.providerName}');
  }

  AuthPlugin get active {
    if (_active == null) throw StateError('No active auth plugin');
    return _active!;
  }

  List<AuthPlugin> get all => _plugins.values.toList();
}

// Application auth service - uses plugin, doesn't know which one
class AuthService {
  final AuthPluginRegistry _registry;

  AuthService(this._registry);

  Future<AuthResult> login({String? email, String? password}) {
    return _registry.active.signIn(email: email, password: password);
  }

  Future<AuthResult> logout() => _registry.active.signOut();

  Future<UserInfo?> get currentUser => _registry.active.getCurrentUser();

  Future<bool> get isLoggedIn => _registry.active.isSignedIn();

  Stream<AuthState> get authState => _registry.active.authStateChanges;
}

void main() async {
  print('=== Auth Plugin System ===');

  final registry = AuthPluginRegistry();
  registry.register(EmailPasswordAuthPlugin());
  registry.register(GoogleAuthPlugin());

  final auth = AuthService(registry);

  print('=== Email/Password Auth ===');
  await registry.setActive('email_password');

  final loginResult = await auth.login(
    email: 'alice@example.com',
    password: 'SecurePass123',
  );

  if (loginResult.success) {
    print('Logged in as: ${loginResult.user?.displayName}');
    print('Token: ${loginResult.accessToken?.substring(0, 20)}...');
  }

  final user = await auth.currentUser;
  print('Current user: ${user?.email}');

  await auth.logout();

  print('=== Google Auth ===');
  await registry.setActive('google');

  final googleResult = await auth.login();

  if (googleResult.success) {
    print('Signed in via Google: ${googleResult.user?.displayName}');
    print('Email: ${googleResult.user?.email}');
    print('Photo: ${googleResult.user?.photoUrl}');
  }

  final isLoggedIn = await auth.isLoggedIn;
  print('Is logged in: $isLoggedIn');

  print('=== Switching Auth Provider at Runtime ===');
  await auth.logout();
  await registry.setActive('email_password');
  print('Switched back to email/password');

  print('Application code never changed! Only the plugin did.');
}''',
        ),

        // Example 3: Advanced - Analytics Plugin Architecture
        StrCodeBlock(r'''import 'dart:math';
import 'dart:async';

// Example 3: Advanced - Analytics Plugin Architecture
// Use case: Multiple analytics providers as interchangeable plugins

// Plugin contract
abstract class AnalyticsPlugin {
  String get pluginId;
  String get providerName;
  String get version;

  Future<void> initialize(AnalyticsConfig config);
  Future<void> dispose();

  Future<void> trackEvent(AnalyticsEvent event);
  Future<void> trackScreen(String screenName, {Map<String, dynamic>? properties});
  Future<void> setUserProperties(String userId, Map<String, dynamic> properties);
  Future<void> trackError(AnalyticsError error);

  bool get isEnabled;
  void setEnabled(bool enabled);
}

// Data types
class AnalyticsConfig {
  final String apiKey;
  final bool debugMode;
  final List<String> excludedEvents;
  final Map<String, dynamic> customConfig;

  const AnalyticsConfig({
    required this.apiKey,
    this.debugMode = false,
    this.excludedEvents = const [],
    this.customConfig = const {},
  });
}

class AnalyticsEvent {
  final String name;
  final Map<String, dynamic> properties;
  final DateTime timestamp;
  final String? userId;

  AnalyticsEvent({
    required this.name,
    this.properties = const {},
    DateTime? timestamp,
    this.userId,
  }) : timestamp = timestamp ?? DateTime.now();
}

class AnalyticsError {
  final String message;
  final String? stackTrace;
  final bool fatal;
  final Map<String, dynamic> context;

  const AnalyticsError({
    required this.message,
    this.stackTrace,
    this.fatal = false,
    this.context = const {},
  });
}

// Concrete plugins

class MixpanelPlugin implements AnalyticsPlugin {
  late AnalyticsConfig _config;
  bool _isEnabled = true;
  int _eventCount = 0;

  @override
  String get pluginId => 'mixpanel';
  @override
  String get providerName => 'Mixpanel';
  @override
  String get version => '4.0.1';

  @override
  Future<void> initialize(AnalyticsConfig config) async {
    _config = config;
    print('Mixpanel: Initialized with key ${config.apiKey.substring(0, 4)}***');
    if (config.debugMode) print('Mixpanel: Debug mode ON');
  }

  @override
  Future<void> dispose() async {
    print('Mixpanel: Flushing $_eventCount events and disposing');
  }

  @override
  Future<void> trackEvent(AnalyticsEvent event) async {
    if (!_isEnabled) return;
    if (_config.excludedEvents.contains(event.name)) return;

    _eventCount++;
    print('Mixpanel: track("${event.name}", ${event.properties})');
  }

  @override
  Future<void> trackScreen(String screenName, {Map<String, dynamic>? properties}) async {
    if (!_isEnabled) return;
    print('Mixpanel: trackView("$screenName")');
  }

  @override
  Future<void> setUserProperties(String userId, Map<String, dynamic> properties) async {
    print('Mixpanel: identify("$userId") + people.set($properties)');
  }

  @override
  Future<void> trackError(AnalyticsError error) async {
    print('Mixpanel: track("Error", {message: "${error.message}", fatal: ${error.fatal}})');
  }

  @override
  bool get isEnabled => _isEnabled;

  @override
  void setEnabled(bool enabled) => _isEnabled = enabled;
}

class FirebaseAnalyticsPlugin implements AnalyticsPlugin {
  late AnalyticsConfig _config;
  bool _isEnabled = true;

  @override
  String get pluginId => 'firebase';
  @override
  String get providerName => 'Firebase Analytics';
  @override
  String get version => '10.7.0';

  @override
  Future<void> initialize(AnalyticsConfig config) async {
    _config = config;
    print('Firebase: Analytics initialized, project: ${config.apiKey.substring(0, 6)}');
  }

  @override
  Future<void> dispose() async {
    print('Firebase: Analytics disposed');
  }

  @override
  Future<void> trackEvent(AnalyticsEvent event) async {
    if (!_isEnabled) return;

    // Firebase has naming restrictions (snake_case, max 40 chars)
    final fbEventName = event.name
        .replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '_')
        .toLowerCase();

    print('Firebase: logEvent("$fbEventName", ${event.properties})');
  }

  @override
  Future<void> trackScreen(String screenName, {Map<String, dynamic>? properties}) async {
    if (!_isEnabled) return;
    print('Firebase: setCurrentScreen("$screenName")');
  }

  @override
  Future<void> setUserProperties(String userId, Map<String, dynamic> properties) async {
    print('Firebase: setUserId("$userId")');
    for (final entry in properties.entries) {
      print('Firebase: setUserProperty("${entry.key}", "${entry.value}")');
    }
  }

  @override
  Future<void> trackError(AnalyticsError error) async {
    print('Firebase: Crashlytics.recordError("${error.message}", fatal: ${error.fatal})');
  }

  @override
  bool get isEnabled => _isEnabled;

  @override
  void setEnabled(bool enabled) => _isEnabled = enabled;
}

// Multi-plugin manager (broadcasts to all)
class AnalyticsManager {
  final List<AnalyticsPlugin> _plugins = [];

  void addPlugin(AnalyticsPlugin plugin) {
    _plugins.add(plugin);
    print('AnalyticsManager: Added ${plugin.providerName}');
  }

  void removePlugin(String pluginId) {
    _plugins.removeWhere((p) => p.pluginId == pluginId);
  }

  Future<void> initializeAll(AnalyticsConfig config) async {
    for (final plugin in _plugins) {
      await plugin.initialize(config);
    }
    print('AnalyticsManager: All ${_plugins.length} plugins initialized');
  }

  // Broadcast to all plugins
  Future<void> track(String eventName, {Map<String, dynamic>? properties}) async {
    final event = AnalyticsEvent(
      name: eventName,
      properties: properties ?? {},
    );

    print('Broadcasting "$eventName" to ${_plugins.length} plugins...');
    for (final plugin in _plugins) {
      await plugin.trackEvent(event);
    }
  }

  Future<void> screen(String name) async {
    for (final plugin in _plugins) {
      await plugin.trackScreen(name);
    }
  }

  Future<void> identify(String userId, Map<String, dynamic> props) async {
    for (final plugin in _plugins) {
      await plugin.setUserProperties(userId, props);
    }
  }

  Future<void> error(String message, {bool fatal = false}) async {
    final err = AnalyticsError(message: message, fatal: fatal);
    for (final plugin in _plugins) {
      await plugin.trackError(err);
    }
  }

  void disablePlugin(String pluginId) {
    _plugins
        .firstWhere((p) => p.pluginId == pluginId)
        .setEnabled(false);
    print('Disabled plugin: $pluginId');
  }
}

void main() async {
  print('=== Analytics Plugin System ===');

  final analytics = AnalyticsManager();
  analytics.addPlugin(MixpanelPlugin());
  analytics.addPlugin(FirebaseAnalyticsPlugin());

  await analytics.initializeAll(
    const AnalyticsConfig(
      apiKey: 'prod_key_xyz789',
      debugMode: false,
      excludedEvents: ['debug_event'],
    ),
  );

  print('=== Tracking Events ===');
  await analytics.screen('HomeScreen');
  await analytics.track('button_tapped', properties: {'button': 'signup'});
  await analytics.track('purchase_completed', properties: {
    'product_id': 'prod_001',
    'amount': 99.99,
    'currency': 'USD',
  });

  print('=== User Identification ===');
  await analytics.identify('usr_alice', {
    'plan': 'premium',
    'country': 'US',
    'signup_date': '2024-01-15',
  });

  print('=== Error Tracking ===');
  await analytics.error('Payment gateway timeout', fatal: false);

  print('=== GDPR: Disable analytics ===');
  analytics.disablePlugin('mixpanel');
  await analytics.track('some_event'); // Only Firebase receives it

  print('All app code used the same analytics.track() API!');
}'''),

        // Example 4: Flutter - Payment Plugin System
        StrCodeBlock(r'''// Example 4: Flutter - Payment Provider Plugin System
import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
// Use case: Swappable payment processors in a Flutter shop

// Plugin contract
abstract class PaymentPlugin {
  String get pluginId;
  String get displayName;
  String get iconAsset;
  List<String> get supportedCurrencies;
  bool get supportsRecurring;

  Future<void> initialize();

  Future<PaymentSheet> createPaymentSheet(PaymentDetails details);
  Future<PaymentResult> processPayment(PaymentSheet sheet);
  Future<RefundResult> refund(String transactionId, double amount);
}

// Data classes
class PaymentDetails {
  final double amount;
  final String currency;
  final String description;
  final Map<String, dynamic>? metadata;

  const PaymentDetails({
    required this.amount,
    required this.currency,
    required this.description,
    this.metadata,
  });
}

class PaymentSheet {
  final String sessionId;
  final String providerData;
  final PaymentDetails details;

  const PaymentSheet({
    required this.sessionId,
    required this.providerData,
    required this.details,
  });
}

class PaymentResult {
  final bool success;
  final String? transactionId;
  final String? error;
  final Map<String, dynamic>? receipt;

  const PaymentResult({
    required this.success,
    this.transactionId,
    this.error,
    this.receipt,
  });
}

class RefundResult {
  final bool success;
  final String? refundId;
  final String? error;

  const RefundResult({required this.success, this.refundId, this.error});
}

// Concrete plugins

class StripePlugin implements PaymentPlugin {
  @override
  String get pluginId => 'stripe';
  @override
  String get displayName => 'Pay with Stripe';
  @override
  String get iconAsset => 'assets/icons/stripe.png';
  @override
  List<String> get supportedCurrencies => ['USD', 'EUR', 'GBP', 'JPY'];
  @override
  bool get supportsRecurring => true;

  @override
  Future<void> initialize() async {
    print('Stripe: SDK initialized');
  }

  @override
  Future<PaymentSheet> createPaymentSheet(PaymentDetails details) async {
    print('Stripe: Creating payment intent for ${details.amount} ${details.currency}');
    await Future.delayed(const Duration(milliseconds: 100));

    return PaymentSheet(
      sessionId: 'pi_${DateTime.now().millisecondsSinceEpoch}',
      providerData: 'stripe_client_secret_xyz',
      details: details,
    );
  }

  @override
  Future<PaymentResult> processPayment(PaymentSheet sheet) async {
    print('Stripe: Presenting payment sheet to user');
    await Future.delayed(const Duration(milliseconds: 200));
    print('Stripe: Payment confirmed');

    return PaymentResult(
      success: true,
      transactionId: 'ch_${DateTime.now().millisecondsSinceEpoch}',
      receipt: {
        'provider': 'stripe',
        'amount': sheet.details.amount,
        'currency': sheet.details.currency,
      },
    );
  }

  @override
  Future<RefundResult> refund(String transactionId, double amount) async {
    print('Stripe: Refunding $amount for $transactionId');
    await Future.delayed(const Duration(milliseconds: 150));

    return RefundResult(
      success: true,
      refundId: 're_${DateTime.now().millisecondsSinceEpoch}',
    );
  }
}

class PayPalPlugin implements PaymentPlugin {
  @override
  String get pluginId => 'paypal';
  @override
  String get displayName => 'Pay with PayPal';
  @override
  String get iconAsset => 'assets/icons/paypal.png';
  @override
  List<String> get supportedCurrencies => ['USD', 'EUR', 'GBP', 'AUD', 'CAD'];
  @override
  bool get supportsRecurring => true;

  @override
  Future<void> initialize() async {
    print('PayPal: SDK initialized with sandbox mode');
  }

  @override
  Future<PaymentSheet> createPaymentSheet(PaymentDetails details) async {
    print('PayPal: Creating order for ${details.amount} ${details.currency}');
    await Future.delayed(const Duration(milliseconds: 120));

    return PaymentSheet(
      sessionId: 'paypal_order_${DateTime.now().millisecondsSinceEpoch}',
      providerData: 'paypal_approval_url_xyz',
      details: details,
    );
  }

  @override
  Future<PaymentResult> processPayment(PaymentSheet sheet) async {
    print('PayPal: Opening PayPal checkout');
    await Future.delayed(const Duration(milliseconds: 250));
    print('PayPal: Payment approved');

    return PaymentResult(
      success: true,
      transactionId: 'paypal_txn_${DateTime.now().millisecondsSinceEpoch}',
      receipt: {
        'provider': 'paypal',
        'order_id': sheet.sessionId,
      },
    );
  }

  @override
  Future<RefundResult> refund(String transactionId, double amount) async {
    print('PayPal: Processing refund for $transactionId');
    await Future.delayed(const Duration(milliseconds: 200));
    return RefundResult(success: true, refundId: 'paypal_refund_123');
  }
}

// Plugin registry
class PaymentPluginRegistry {
  final Map<String, PaymentPlugin> _plugins = {};

  void register(PaymentPlugin plugin) {
    _plugins[plugin.pluginId] = plugin;
  }

  List<PaymentPlugin> get all => _plugins.values.toList();

  PaymentPlugin? getById(String id) => _plugins[id];
}

// Flutter payment selection widget
class PaymentMethodSelector extends StatefulWidget {
  final PaymentDetails paymentDetails;
  final PaymentPluginRegistry registry;
  final void Function(PaymentResult) onSuccess;

  const PaymentMethodSelector({
    required this.paymentDetails,
    required this.registry,
    required this.onSuccess,
    super.key,
  });

  @override
  State<PaymentMethodSelector> createState() => _PaymentMethodSelectorState();
}

class _PaymentMethodSelectorState extends State<PaymentMethodSelector> {
  String? _selectedPlugin;
  bool _processing = false;

  Future<void> _pay() async {
    if (_selectedPlugin == null) return;

    final plugin = widget.registry.getById(_selectedPlugin!);
    if (plugin == null) return;

    setState(() => _processing = true);

    try {
      await plugin.initialize();
      final sheet = await plugin.createPaymentSheet(widget.paymentDetails);
      final result = await plugin.processPayment(sheet);

      if (!mounted) return;

      if (result.success) {
        widget.onSuccess(result);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Payment successful! TX: ${result.transactionId}'),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Payment failed: ${result.error}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _processing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final plugins = widget.registry.all;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: .min,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Select Payment Method',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        ...plugins.map((plugin) => RadioListTile<String>(
          value: plugin.pluginId,
          groupValue: _selectedPlugin,
          onChanged: (v) => setState(() => _selectedPlugin = v),
          title: Text(plugin.displayName),
          subtitle: Text(
            'Supports: ${plugin.supportedCurrencies.join(", ")}',
          ),
        )),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _selectedPlugin == null || _processing ? null : _pay,
              child: _processing
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(
                      'Pay ${widget.paymentDetails.currency}'
                      '${widget.paymentDetails.amount.toStringAsFixed(2)}',
                    ),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class ShopDemo extends StatelessWidget {
  const ShopDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final registry = PaymentPluginRegistry();
    registry.register(StripePlugin());
    registry.register(PayPalPlugin());

    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Column(
        children: [
          // Order summary
          Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  ListTile(
                    title: Text('Developer Laptop'),
                    trailing: Text('$999.00'),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Total',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      '$999.00',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Payment plugin selection
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: PaymentMethodSelector(
              paymentDetails: const PaymentDetails(
                amount: 999.00,
                currency: 'USD',
                description: 'Developer Laptop',
              ),
              registry: registry,
              onSuccess: (result) {
                print('App received success: ${result.transactionId}');
              },
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ShopDemo()));
}'''),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Open/Closed Principle at architectural level - extend without modifying core",
        "Third parties can contribute without core source access",
        "Core stays small and focused; features live in plugins",
        "Plugins can be enabled/disabled at runtime",
        "Independent versioning and deployment of plugins",
        "Enables marketplace/ecosystem model (pub.dev is a plugin ecosystem)",
        "Better separation of concerns across team boundaries",
      ],
      ar: [
        "مبدأ المفتوح/المغلق على المستوى المعماري - توسع دون تعديل الأساسي",
        "يمكن لأطراف ثالثة المساهمة دون وصول للمصدر الأساسي",
        "الأساسي يبقى صغيراً ومركزاً؛ الميزات تعيش في الإضافات",
        "يمكن تفعيل/إلغاء تفعيل الإضافات في وقت التشغيل",
        "إصدار ونشر مستقل للإضافات",
        "يُمكّن نموذج السوق/النظام البيئي (pub.dev هو نظام بيئي للإضافات)",
        "فصل أفضل للاهتمامات عبر حدود الفرق",
      ],
    ),
    cons: LocSL(
      en: [
        "Complex to design good plugin interfaces",
        "Plugin API changes can break existing plugins",
        "Performance overhead from indirection and dynamic loading",
        "Harder to debug - behavior spread across plugin implementations",
        "Version compatibility management between core and plugins",
        "Security risk if plugins from untrusted sources are allowed",
      ],
      ar: [
        "معقد تصميم واجهات إضافات جيدة",
        "تغييرات واجهة API للإضافات يمكن أن تكسر الإضافات الموجودة",
        "عبء أداء من عدم المباشرة والتحميل الديناميكي",
        "أصعب في التنقيح - السلوك منتشر عبر تطبيقات الإضافات",
        "إدارة توافق الإصدارات بين الأساسي والإضافات",
        "مخاطر أمنية إذا كانت الإضافات من مصادر غير موثوقة مسموح بها",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Plugin when:"),
        ULContent(
          value: [
            "You need third-party extensibility without source code access",
            "Features should be independently deployable and versioned",
            "Building a platform that others will extend",
            "You need to swap entire subsystems at runtime or configuration",
            "Different customers need different feature combinations",
            "Team structure maps to independent plugin ownership",
          ],
        ),
        NoteContent(
          "Plugin pattern adds significant architectural complexity. Only introduce it when you genuinely need extensibility by external parties or independent deployment of features.",
          type: .warning,
        ),
      ],
      ar: [
        StrContent("استخدم نمط الإضافة عندما:"),
        ULContent(
          value: [
            "تحتاج قابلية توسيع من طرف ثالث دون وصول للكود المصدري",
            "الميزات يجب أن تكون قابلة للنشر والإصدار بشكل مستقل",
            "بناء منصة سيوسعها الآخرون",
            "تحتاج لتبديل أنظمة فرعية كاملة في وقت التشغيل أو التكوين",
            "عملاء مختلفون يحتاجون تركيبات ميزات مختلفة",
            "هيكل الفريق يتوافق مع ملكية إضافات مستقلة",
          ],
        ),
        NoteContent(
          "نمط الإضافة يضيف تعقيداً معمارياً كبيراً. أدخله فقط عندما تحتاج حقاً لقابلية التوسيع من قبل أطراف خارجية أو النشر المستقل للميزات.",
          type: .warning,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Designing plugin interfaces that are too fine-grained or too coarse-grained",
        "Not versioning plugin interfaces carefully - breaking changes destroy ecosystem",
        "Letting plugins depend on each other - creates coupling",
        "Not sandboxing plugins - allows malicious plugins to corrupt core",
        "Using plugins when simple Strategy or configuration would suffice",
        "Not providing a good default implementation as reference",
        "Forgetting plugin lifecycle management (dispose, cleanup)",
      ],
      ar: [
        "تصميم واجهات إضافات دقيقة جداً أو خشنة جداً",
        "عدم إصدار واجهات الإضافات بعناية - التغييرات الكسر تدمر النظام البيئي",
        "السماح للإضافات بالاعتماد على بعضها البعض - يخلق اقتراناً",
        "عدم عزل الإضافات - يسمح للإضافات الضارة بإفساد الأساسي",
        "استخدام الإضافات عندما تكفي الاستراتيجية البسيطة أو التكوين",
        "عدم توفير تطبيق افتراضي جيد كمرجع",
        "نسيان إدارة دورة حياة الإضافات (التخلص، التنظيف)",
      ],
    ),
    relatedPatterns: [
      PK.extensionObject,
      PK.strategy,
      PK.factoryMethod,
      PK.observer,
    ],
    oftenConfusedWith: [PK.extensionObject, PK.strategy],
  ),
};
