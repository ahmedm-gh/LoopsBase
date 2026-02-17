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
        StrCodeBlock(
          """// Example 1: Basic - Adapting Third-Party Payment Library
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
    print('Stripe: Charging \$amountInCents \$currencyCode');
    return {
      'success': true,
      'charge_id': 'ch_\${DateTime.now().millisecondsSinceEpoch}',
      'amount': amountInCents,
    };
  }
  
  bool refundCharge(String chargeId) {
    print('Stripe: Refunding \$chargeId');
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
      print('Refund failed: \$e');
      return false;
    }
  }
}

// Another third-party library with yet another different interface
class PayPalSDK {
  Future<String> makePayment(String amount, String currency) async {
    print('PayPal: Processing \$amount \$currency');
    await Future.delayed(.milliseconds(100));
    return 'PAYPAL-\${DateTime.now().millisecondsSinceEpoch}';
  }
  
  Future<void> cancelTransaction(String txnId) async {
    print('PayPal: Cancelling \$txnId');
    await Future.delayed(.milliseconds(50));
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
      print('Refund failed: \$e');
      return false;
    }
  }
}

// Your application code works with the common interface
class CheckoutService {
  final PaymentProcessor _processor;
  
  CheckoutService(this._processor);
  
  Future<void> checkout(double amount) async {
    print('\n=== Processing checkout: \\\$\$amount ===');
    
    final result = await _processor.processPayment(amount, 'USD');
    
    if (result.success) {
      print('✓ Payment successful! Transaction: \${result.transactionId}');
    } else {
      print('✗ Payment failed: \${result.errorMessage}');
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
}""",
        ),

        // Example 2: Intermediate - Data Format Adapter
        StrCodeBlock("""// Example 2: Intermediate - Adapting Data Formats
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
    return '''
      <record>
        <id>\$recordId</id>
        <name>Product \$recordId</name>
        <price>99.99</price>
        <stock>42</stock>
      </record>
    ''';
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
      'name': 'Product \$id',
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
    print('  ID: \${product['id']}');
    print('  Name: \${product['name']}');
    print('  Price: \$\${product['price']}');
    print('  Stock: \${product['stock']} units');
  }
  
  void searchProducts(String query) {
    final results = _dataProvider.searchData(query);
    print('\nSearch Results for "\$query":');
    for (final product in results) {
      print('  - \${product['id']}: \${product['name']}');
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
  
  print('\n=== Using Modern REST API ===');
  final modernService = ProductService(
    RestApiProvider(),
  );
  modernService.displayProduct('67890');
  modernService.searchProducts('product');
}"""),

        // Example 3: Advanced - Multiple Interface Adaptation
        StrCodeBlock("""// Example 3: Advanced - Two-Way Adapter Pattern
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
    if (_shouldLog('DEBUG')) print('[DEBUG][\$tag] \$msg');
  }
  
  void i(String tag, String msg) {
    if (_shouldLog('INFO')) print('[INFO][\$tag] \$msg');
  }
  
  void w(String tag, String msg, [Object? throwable]) {
    if (_shouldLog('WARN')) {
      print('[WARN][\$tag] \$msg');
      if (throwable != null) print('  Caused by: \$throwable');
    }
  }
  
  void e(String tag, String msg, Object throwable, [Object? trace]) {
    if (_shouldLog('ERROR')) {
      print('[ERROR][\$tag] \$msg');
      print('  Exception: \$throwable');
      if (trace != null) print('  Trace: \$trace');
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
          ? '\$message | Context: \$context' 
          : message;
      
      if (onLog != null) {
        onLog!(level, fullMessage);
      } else {
        print('[\$level] \$fullMessage');
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
    _logger.info('Creating user: \$username');
    
    try {
      // Simulate work
      await Future.delayed(.milliseconds(100));
      
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
  
  print('\n=== Using SimpleLogger (Adapted) ===');
  final simpleLogger = SimpleLoggerAdapter(SimpleLogger());
  simpleLogger.setLevel(.info);
  
  final userService2 = UserService(simpleLogger);
  await userService2.createUser('bob');
  
  print('\n=== Testing Error Handling ===');
  try {
    await userService1.createUser('');
  } catch (e) {
    print('Caught error (as expected)');
  }
}"""),

        // Example 4: Flutter - Platform Adapter
        StrCodeBlock(
          """// Example 4: Flutter - Platform-Specific Storage Adapter
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
    print('Saved preferences: \$username, theme \$theme');
  }
  
  Future<Map<String, dynamic>> loadUserPreferences() async {
    final username = await _storage.getString('username') ?? 'Guest';
    final theme = await _storage.getInt('theme') ?? 0;
    
    print('Loaded preferences: \$username, theme \$theme');
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
  
  print('\n=== Web Platform (LocalStorage) ===');
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
}""",
        ),
      ],
      ar: [
        // Arabic versions would go here - keeping structure same as English
        // For brevity, I'll note that each example needs full Arabic translation
      ],
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
        StrCodeBlock(
          """// Example 1: Basic - Shape Rendering with Multiple Backends
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
    print('Vector: Drawing circle at (\$x, \$y) with radius \$radius');
    print('  <circle cx="\$x" cy="\$y" r="\$radius" />');
  }
  
  @override
  void renderRectangle(double x, double y, double width, double height) {
    print('Vector: Drawing rectangle at (\$x, \$y) size \${width}x\$height');
    print('  <rect x="\$x" y="\$y" width="\$width" height="\$height" />');
  }
  
  @override
  void renderTriangle(double x1, double y1, double x2, double y2, double x3, double y3) {
    print('Vector: Drawing triangle');
    print('  <polygon points="\$x1,\$y1 \$x2,\$y2 \$x3,\$y3" />');
  }
}

class RasterRenderer implements Renderer {
  @override
  void renderCircle(double x, double y, double radius) {
    print('Raster: Plotting circle pixels at (\$x, \$y) radius \$radius');
    // Simulate pixel-by-pixel rendering
    print('  Filling pixels using Bresenham\'s circle algorithm');
  }
  
  @override
  void renderRectangle(double x, double y, double width, double height) {
    print('Raster: Plotting rectangle pixels at (\$x, \$y) size \${width}x\$height');
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
    print('Canvas: ctx.arc(\$x, \$y, \$radius, 0, 2*PI)');
    print('Canvas: ctx.fill()');
  }
  
  @override
  void renderRectangle(double x, double y, double width, double height) {
    print('Canvas: ctx.fillRect(\$x, \$y, \$width, \$height)');
  }
  
  @override
  void renderTriangle(double x1, double y1, double x2, double y2, double x3, double y3) {
    print('Canvas: ctx.beginPath()');
    print('Canvas: ctx.moveTo(\$x1, \$y1)');
    print('Canvas: ctx.lineTo(\$x2, \$y2)');
    print('Canvas: ctx.lineTo(\$x3, \$y3)');
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
    print('Circle resized to radius \$radius');
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
    print('Rectangle resized to \${width}x\$height');
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
    print('Triangle resized by factor \$factor');
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
  
  print('\n=== Raster Rendering ===');
  final rasterRenderer = RasterRenderer();
  final circle2 = Circle(rasterRenderer, 10, 10, 5);
  final triangle2 = Triangle(rasterRenderer, 0, 0, 10, 0, 5, 10);
  
  circle2.draw();
  print('');
  triangle2.draw();
  
  print('\n=== Canvas Rendering ===');
  final canvasRenderer = CanvasRenderer();
  final rect3 = Rectangle(canvasRenderer, 50, 50, 100, 80);
  
  rect3.draw();
  rect3.resize(1.5);
  rect3.draw();
  
  print('\n✓ Shapes and renderers vary independently!');
}""",
        ),

        // Example 2: Intermediate - Cross-Platform UI
        StrCodeBlock(
          """// Example 2: Intermediate - Cross-Platform UI Components
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
    print('  android:text="\$label"');
    print('  android:enabled="\$enabled"');
    print('  style="@style/MaterialButton" />');
  }
  
  @override
  void renderTextField(String placeholder, String value) {
    print('Android: <EditText');
    print('  android:hint="\$placeholder"');
    print('  android:text="\$value"');
    print('  style="@style/MaterialTextField" />');
  }
  
  @override
  void renderCheckbox(String label, bool checked) {
    print('Android: <CheckBox');
    print('  android:text="\$label"');
    print('  android:checked="\$checked"');
    print('  style="@style/MaterialCheckBox" />');
  }
}

class iOSUI implements UIPlatform {
  @override
  void renderButton(String label, bool enabled) {
    print('iOS: UIButton(');
    print('  title: "\$label",');
    print('  isEnabled: \$enabled,');
    print('  style: .system)');
  }
  
  @override
  void renderTextField(String placeholder, String value) {
    print('iOS: UITextField(');
    print('  placeholder: "\$placeholder",');
    print('  text: "\$value",');
    print('  borderStyle: .roundedRect)');
  }
  
  @override
  void renderCheckbox(String label, bool checked) {
    print('iOS: UISwitch( // iOS uses switches for checkboxes');
    print('  label: "\$label",');
    print('  isOn: \$checked)');
  }
}

class WebUI implements UIPlatform {
  @override
  void renderButton(String label, bool enabled) {
    final disabled = enabled ? '' : 'disabled';
    print('Web: <button \$disabled class="btn">\$label</button>');
  }
  
  @override
  void renderTextField(String placeholder, String value) {
    print('Web: <input type="text" placeholder="\$placeholder" value="\$value" />');
  }
  
  @override
  void renderCheckbox(String label, bool checked) {
    final checkedAttr = checked ? 'checked' : '';
    print('Web: <input type="checkbox" \$checkedAttr /> <label>\$label</label>');
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
    print('------------------\n');
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
}""",
        ),

        // Example 3: Advanced - Database Abstraction
        StrCodeBlock(
          """// Example 3: Advanced - Database Access Layer with Multiple Drivers
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
    print('PostgreSQL: Connecting to \$connectionString');
    await Future.delayed(.milliseconds(100));
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
    print('PostgreSQL: \$query with params \$params');
    await Future.delayed(.milliseconds(50));
    return [
      {'id': 1, 'name': 'Alice'},
      {'id': 2, 'name': 'Bob'},
    ];
  }
  
  @override
  Future<int> executeUpdate(String query, List<dynamic> params) async {
    print('PostgreSQL: \$query with params \$params');
    await Future.delayed(.milliseconds(50));
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
  String escapeIdentifier(String identifier) => '"\$identifier"';
  
  @override
  String getPlaceholder(int index) => '\\\$\${index + 1}'; // \$1, \$2, etc.
}

class MySQLDriver implements DatabaseDriver {
  bool _connected = false;
  bool _inTransaction = false;
  
  @override
  Future<void> connect(String connectionString) async {
    print('MySQL: Connecting to \$connectionString');
    await Future.delayed(.milliseconds(100));
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
    print('MySQL: \$query with params \$params');
    await Future.delayed(.milliseconds(50));
    return [
      {'id': 1, 'name': 'Alice'},
      {'id': 2, 'name': 'Bob'},
    ];
  }
  
  @override
  Future<int> executeUpdate(String query, List<dynamic> params) async {
    print('MySQL: \$query with params \$params');
    await Future.delayed(.milliseconds(50));
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
  String escapeIdentifier(String identifier) => '`\$identifier`';
  
  @override
  String getPlaceholder(int index) => '?'; // MySQL uses ? for all params
}

class SQLiteDriver implements DatabaseDriver {
  bool _connected = false;
  
  @override
  Future<void> connect(String connectionString) async {
    print('SQLite: Opening database at \$connectionString');
    await Future.delayed(.milliseconds(50));
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
    print('SQLite: \$query with params \$params');
    await Future.delayed(.milliseconds(30));
    return [
      {'id': 1, 'name': 'Alice'},
      {'id': 2, 'name': 'Bob'},
    ];
  }
  
  @override
  Future<int> executeUpdate(String query, List<dynamic> params) async {
    print('SQLite: \$query with params \$params');
    await Future.delayed(.milliseconds(30));
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
  String escapeIdentifier(String identifier) => '"\$identifier"';
  
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
    final query = 'SELECT * FROM \$table';
    return await driver.executeQuery(query, []);
  }
  
  Future<Map<String, dynamic>?> findById(int id) async {
    final table = driver.escapeIdentifier('users');
    final ph = driver.getPlaceholder(0);
    final query = 'SELECT * FROM \$table WHERE id = \$ph';
    
    final results = await driver.executeQuery(query, [id]);
    return results.isNotEmpty ? results.first : null;
  }
  
  Future<void> insert(String name, String email) async {
    final table = driver.escapeIdentifier('users');
    final col1 = driver.escapeIdentifier('name');
    final col2 = driver.escapeIdentifier('email');
    final ph1 = driver.getPlaceholder(0);
    final ph2 = driver.getPlaceholder(1);
    
    final query = 'INSERT INTO \$table (\$col1, \$col2) VALUES (\$ph1, \$ph2)';
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
      
      final query = 'UPDATE \$table SET \$deptCol = \$ph1 WHERE id = \$ph2';
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
  
  print('\n=== MySQL ===');
  final mysqlRepo = UserRepository(MySQLDriver());
  await mysqlRepo.connect('mysql://localhost/mydb');
  await mysqlRepo.findById(1);
  await mysqlRepo.disconnect();
  
  print('\n=== SQLite ===');
  final sqliteRepo = UserRepository(SQLiteDriver());
  await sqliteRepo.connect('./app.db');
  await sqliteRepo.transferUser(1, 'Engineering');
  await sqliteRepo.disconnect();
  
  print('\n✓ Same repository code works with all database drivers!');
}""",
        ),

        // Example 4: Flutter - Theme System
        StrCodeBlock(
          """// Example 4: Flutter - Theme System with Multiple Renderers
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
    fontWeight: .bold,
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
    borderRadius: .circular(8),
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
    fontWeight: .w600,
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
    borderRadius: .circular(12),
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
    fontWeight: .bold,
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
    borderRadius: .circular(16),
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
      margin: .all(16),
      padding: .all(16),
      decoration: renderer.getCardDecoration(),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(title, style: renderer.getHeadlineStyle()),
          .height(8),
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
          padding: .all(8),
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
}""",
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
        StrCodeBlock("""// Example 1: Basic - File System Hierarchy
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
    print('\$indent📄 \$name (\$size bytes)');
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
    print('\$indent📁 \$name/');
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
    print('\n=== File System Tree ===');
    entity.display();
  }
  
  void showSize(FileSystemEntity entity) {
    print('\n\${entity.name} total size: \${entity.getSize()} bytes');
  }
  
  void searchFiles(FileSystemEntity root, String query) {
    final results = <FileSystemEntity>[];
    root.search(query, results);
    
    print('\n=== Search results for "\$query" ===');
    if (results.isEmpty) {
      print('No results found');
    } else {
      for (final result in results) {
        print('Found: \${result.name}');
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
  
  print('\nTotal files in root: \${root.getFileCount()}');
}"""),

        // Example 2: Intermediate - UI Component Tree
        StrCodeBlock("""// Example 2: Intermediate - UI Component Hierarchy
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
    print('\$indent<Button name="\$name" state="\$state">\$label</Button>');
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
    print('\$indent<Input name="\$name" state="\$state" \$req placeholder="\$placeholder" value="\$value" />');
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
      return ['\$name is required'];
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
    print('\$indent<Checkbox name="\$name" state="\$state" \$check>\$label</Checkbox>');
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
    print('\$indent<Panel name="\$name" state="\$state">');
    for (final component in _components) {
      component.render(depth + 1);
    }
    print('\$indent</Panel>');
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
      print('\n✓ Form "\$name" submitted successfully');
      return true;
    } else {
      print('\n✗ Form "\$name" validation failed:');
      for (final error in errors) {
        print('  - \$error');
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
  
  print('\n=== After filling values ===');
  loginForm.render();
  
  // Try to submit
  loginForm.submit();
  
  // Disable entire form (affects all children)
  print('\n=== Disabled Form ===');
  loginForm.disable();
  loginForm.render();
  
  // Re-enable
  loginForm.enable();
  
  print('\nTotal components in form: \${loginForm.componentCount}');
}"""),

        // Example 3: Advanced - Mathematical Expression Tree
        StrCodeBlock(
          """// Example 3: Advanced - Mathematical Expression Evaluator
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
      throw Exception('Variable \$name is not defined');
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
    return '(\${left.toInfix()} \$operator \${right.toInfix()})';
  }
  
  @override
  String toPostfix() {
    return '\${left.toPostfix()} \${right.toPostfix()} \$operator';
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
  String toInfix() => '\$operator(\${operand.toInfix()})';
  
  @override
  String toPostfix() => '\${operand.toPostfix()} \$operator';
  
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
  
  print('Infix: \${expr1.toInfix()}');
  print('Postfix: \${expr1.toPostfix()}');
  print('Result: \${expr1.evaluate()}');
  
  // Build expression with variables: x^2 + 2*x + 1
  print('\n=== Example 2: x^2 + 2*x + 1 ===');
  builder.setVariable('x', 3);
  
  final x = builder.variable('x');
  final expr2 = builder.add(
    builder.add(
      builder.pow(x, builder.num(2)),
      builder.mul(builder.num(2), builder.variable('x')),
    ),
    builder.num(1),
  );
  
  print('Infix: \${expr2.toInfix()}');
  print('Variables: \${expr2.getVariables().toSet()}');
  print('When x=3: \${expr2.evaluate()}');
  
  builder.setVariable('x', 5);
  print('When x=5: \${expr2.evaluate()}');
  
  // Complex expression: sqrt(a^2 + b^2) (Pythagorean theorem)
  print('\n=== Example 3: sqrt(a^2 + b^2) ===');
  builder.setVariable('a', 3);
  builder.setVariable('b', 4);
  
  final expr3 = builder.sqrt(
    builder.add(
      builder.pow(builder.variable('a'), builder.num(2)),
      builder.pow(builder.variable('b'), builder.num(2)),
    ),
  );
  
  print('Infix: \${expr3.toInfix()}');
  print('Postfix: \${expr3.toPostfix()}');
  print('When a=3, b=4: \${expr3.evaluate()}');
  
  // Expression with negation: -(x - 5)
  print('\n=== Example 4: -(x - 5) ===');
  builder.setVariable('x', 10);
  
  final expr4 = builder.neg(
    builder.sub(builder.variable('x'), builder.num(5)),
  );
  
  print('Infix: \${expr4.toInfix()}');
  print('When x=10: \${expr4.evaluate()}');
}

// Import for math functions
import 'dart:math';""",
        ),

        // Example 4: Flutter - Nested Menu System
        StrCodeBlock("""// Example 4: Flutter - Hierarchical Menu System
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
        padding: .all(8),
        child: Text(
          'Total menu items: \${_countItems(items)}',
          textAlign: .center,
          style: .caption,
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
}"""),
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
    examples: LocV(
      en: [
        StrCodeBlock(
          """// I'll provide the comprehensive examples in the next message
// to keep the response manageable""",
        ),
      ],
      ar: [],
    ),
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
        StrCodeBlock("""// Example 1: Basic - Home Theater Facade
// Use case: Simplifying complex home theater setup

// Complex subsystem classes
class Amplifier {
  void on() => print('Amplifier: Powering on');
  void off() => print('Amplifier: Powering off');
  void setVolume(int level) => print('Amplifier: Setting volume to \$level');
  void setSurroundSound() => print('Amplifier: Surround sound mode activated');
}

class DVDPlayer {
  void on() => print('DVD Player: Powering on');
  void off() => print('DVD Player: Powering off');
  void play(String movie) => print('DVD Player: Playing "\$movie"');
  void stop() => print('DVD Player: Stopped');
  void eject() => print('DVD Player: Ejecting disc');
}

class Projector {
  void on() => print('Projector: Powering on');
  void off() => print('Projector: Powering off');
  void wideScreenMode() => print('Projector: Wide screen mode (16:9)');
  void setInput(String source) => print('Projector: Setting input to \$source');
}

class Lights {
  void dim(int level) => print('Lights: Dimming to \$level%');
  void on() => print('Lights: Full brightness');
}

class Screen {
  void down() => print('Screen: Lowering screen');
  void up() => print('Screen: Raising screen');
}

class SoundSystem {
  void on() => print('Sound System: Powering on');
  void off() => print('Sound System: Powering off');
  void setMode(String mode) => print('Sound System: Mode set to \$mode');
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
    print('\n=== Get ready to watch "\$movie" ===\n');
    
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
    print('\n=== Shutting down movie theater ===\n');
    
    _dvd.stop();
    _dvd.eject();
    _dvd.off();
    _amp.off();
    _projector.off();
    _screen.up();
    _lights.on();
  }
  
  void listenToMusic(String source) {
    print('\n=== Setting up music from \$source ===\n');
    
    _lights.dim(30);
    _amp.on();
    _amp.setVolume(7);
    _sound.on();
    _sound.setMode('Music');
    print('Ready to play music!');
  }
  
  void endMusic() {
    print('\n=== Ending music session ===\n');
    
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
  print('\n=== Direct subsystem access ===');
  projector.on();
  projector.setInput('HDMI-2');
}"""),

        // Example 2: Intermediate - Database Facade
        StrCodeBlock("""// Example 2: Intermediate - Database Operations Facade
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
    _orderBy.add('\$column \${desc ? 'DESC' : 'ASC'}');
    return this;
  }
  
  QueryBuilder limit(int count) {
    _limit = count;
    return this;
  }
  
  String build() {
    final cols = _columns.join(', ');
    var sql = 'SELECT \$cols FROM \$_table';
    
    if (_where != null) {
      sql += ' WHERE \$_where';
    }
    
    if (_orderBy.isNotEmpty) {
      sql += ' ORDER BY \${_orderBy.join(', ')}';
    }
    
    if (_limit != null) {
      sql += ' LIMIT \$_limit';
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
    print('Cache: Storing result for key: \$key');
    _cache[key] = result;
    _timestamps[key] = DateTime.now();
  }
  
  QueryResult? get(String key) {
    if (!_cache.containsKey(key)) {
      print('Cache: MISS for key: \$key');
      return null;
    }
    
    final timestamp = _timestamps[key]!;
    if (DateTime.now().difference(timestamp) > _ttl) {
      print('Cache: EXPIRED for key: \$key');
      _cache.remove(key);
      _timestamps.remove(key);
      return null;
    }
    
    print('Cache: HIT for key: \$key');
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
    final cacheKey = 'findAll_\$table';
    
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
    final cacheKey = 'findById_\${table}_\$id';
    
    final cached = _cache.get(cacheKey);
    if (cached != null) {
      return cached.firstOrNull;
    }
    
    final conn = _pool.acquire();
    try {
      final sql = QueryBuilder()
          .table(table)
          .where('id = \$id')
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
          .where('\$column LIKE \'%\$value%\'')
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
      final sql = 'INSERT INTO \$table (\$columns) VALUES (\$placeholders)';
      
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
    print('\n=== Shutting down database ===');
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
}"""),

        // Example 3: Advanced - Payment Processing Facade
        StrCodeBlock("""// Example 3: Advanced - Multi-Provider Payment System
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
    print('Stripe: Processing charge for \$\${request.amount}');
    await Future.delayed(.milliseconds(100));
    
    // Simulate Stripe-specific validation
    if (request.amount > 10000) {
      return PaymentResponse(
        success: false,
        message: 'Amount exceeds Stripe limit',
      );
    }
    
    return PaymentResponse(
      success: true,
      transactionId: 'stripe_\${DateTime.now().millisecondsSinceEpoch}',
      message: 'Charged via Stripe',
    );
  }
  
  @override
  Future<bool> refund(String transactionId) async {
    print('Stripe: Refunding \$transactionId');
    await Future.delayed(.milliseconds(50));
    return true;
  }
}

class PayPalProvider implements PaymentProvider {
  @override
  String get name => 'PayPal';
  
  @override
  Future<PaymentResponse> charge(PaymentRequest request) async {
    print('PayPal: Processing charge for \$\${request.amount}');
    await Future.delayed(.milliseconds(150));
    
    return PaymentResponse(
      success: true,
      transactionId: 'paypal_\${DateTime.now().millisecondsSinceEpoch}',
      message: 'Charged via PayPal',
    );
  }
  
  @override
  Future<bool> refund(String transactionId) async {
    print('PayPal: Refunding \$transactionId');
    await Future.delayed(.milliseconds(50));
    return true;
  }
}

// Complex subsystem: Fraud detection
class FraudDetector {
  Future<FraudCheckResult> check(PaymentRequest request) async {
    print('FraudDetector: Checking transaction');
    await Future.delayed(.milliseconds(50));
    
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
    print('Logger: Recording transaction \${entry.transactionId}');
    _logs.add(entry);
  }
  
  List<TransactionLog> getHistory() => List.unmodifiable(_logs);
  
  void exportToFile(String filename) {
    print('Logger: Exporting \${_logs.length} transactions to \$filename');
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
    print('CurrencyConverter: Converting \$amount from \$from to \$to');
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
    print('\n=== Processing Payment ===');
    print('Amount: \$amount \$currency');
    print('Customer: \$customerEmail\n');
    
    // Step 1: Convert to USD if needed
    double amountInUSD = amount;
    if (currency != 'USD') {
      amountInUSD = _currencyConverter.convert(amount, currency, 'USD');
      print('Converted to USD: \$\${amountInUSD.toStringAsFixed(2)}\n');
    }
    
    final request = PaymentRequest(
      amount: amountInUSD,
      currency: 'USD',
      cardNumber: cardNumber,
      customerEmail: customerEmail,
    );
    
    // Step 2: Fraud check
    final fraudCheck = await _fraudDetector.check(request);
    print('Fraud check: \${fraudCheck.message}');
    
    if (fraudCheck.risk == RiskLevel.high) {
      print('⚠️  Transaction blocked due to high risk\n');
      
      _logger.log(TransactionLog(
        transactionId: 'blocked_\${DateTime.now().millisecondsSinceEpoch}',
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
    
    print('Using provider: \${provider.name}\n');
    
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
      print('✗ Payment failed: \${response.message}');
    }
    
    return response;
  }
  
  Future<bool> refundPayment(String transactionId) async {
    print('\n=== Processing Refund ===');
    print('Transaction: \$transactionId\n');
    
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
        transactionId: 'refund_\$transactionId',
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
    print('\n=== Transaction Report ===');
    final history = _logger.getHistory();
    
    print('Total transactions: \${history.length}');
    
    final successful = history.where((l) => l.success).length;
    print('Successful: \$successful');
    print('Failed: \${history.length - successful}');
    
    final totalAmount = history
        .where((l) => l.success && l.amount > 0)
        .fold(0.0, (sum, log) => sum + log.amount);
    print('Total processed: \$\${totalAmount.toStringAsFixed(2)} USD');
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
}"""),

        // Example 4: Flutter - Camera Facade
        StrCodeBlock("""// Example 4: Flutter - Camera Operations Facade
// Use case: Simplifying complex camera API

// Complex subsystem classes (simulated)
class CameraController {
  bool _isInitialized = false;
  
  Future<void> initialize() async {
    print('CameraController: Initializing camera');
    await Future.delayed(.milliseconds(500));
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
    await Future.delayed(.milliseconds(200));
    return '/path/to/image_\${DateTime.now().millisecondsSinceEpoch}.jpg';
  }
  
  void setFlashMode(FlashMode mode) {
    print('CameraController: Flash mode set to \$mode');
  }
  
  void setFocusMode(FocusMode mode) {
    print('CameraController: Focus mode set to \$mode');
  }
  
  void setZoom(double level) {
    print('CameraController: Zoom set to \$level');
  }
}

enum FlashMode { off, auto, always }
enum FocusMode { auto, locked, continuous }

class ImageProcessor {
  Future<String> compress(String path, int quality) async {
    print('ImageProcessor: Compressing image (quality: \$quality)');
    await Future.delayed(.milliseconds(100));
    return path.replaceAll('.jpg', '_compressed.jpg');
  }
  
  Future<String> crop(String path, int width, int height) async {
    print('ImageProcessor: Cropping to \${width}x\$height');
    await Future.delayed(.milliseconds(100));
    return path.replaceAll('.jpg', '_cropped.jpg');
  }
  
  Future<String> rotate(String path, int degrees) async {
    print('ImageProcessor: Rotating \$degrees degrees');
    await Future.delayed(.milliseconds(50));
    return path.replaceAll('.jpg', '_rotated.jpg');
  }
  
  Future<String> addWatermark(String path, String text) async {
    print('ImageProcessor: Adding watermark: \$text');
    await Future.delayed(.milliseconds(80));
    return path.replaceAll('.jpg', '_watermarked.jpg');
  }
}

class StorageService {
  Future<String> saveToGallery(String path) async {
    print('StorageService: Saving to gallery');
    await Future.delayed(.milliseconds(150));
    return '/gallery/\${path.split('/').last}';
  }
  
  Future<String> uploadToCloud(String path) async {
    print('StorageService: Uploading to cloud');
    await Future.delayed(.milliseconds(300));
    return 'https://cloud.example.com/\${path.split('/').last}';
  }
  
  Future<void> deleteLocal(String path) async {
    print('StorageService: Deleting local file: \$path');
  }
}

class PermissionHandler {
  Future<bool> requestCameraPermission() async {
    print('PermissionHandler: Requesting camera permission');
    await Future.delayed(.milliseconds(100));
    return true; // Simulate granted
  }
  
  Future<bool> requestStoragePermission() async {
    print('PermissionHandler: Requesting storage permission');
    await Future.delayed(.milliseconds(100));
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
    print('\n=== Capture and Save ===\n');
    
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
    print('\n=== Capture with Processing ===\n');
    
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
    print('\n=== Capture and Upload ===\n');
    
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
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final path = await simpleCam.captureAndSave(flash: true);
                print('Result: \$path');
              },
              child: Text('Quick Photo'),
            ),
            .height(16),
            ElevatedButton(
              onPressed: () async {
                final path = await simpleCam.captureWithProcessing(
                  quality: 80,
                  cropWidth: 800,
                  cropHeight: 600,
                  watermark: '© 2026',
                );
                print('Result: \$path');
              },
              child: Text('Photo with Processing'),
            ),
            .height(16),
            ElevatedButton(
              onPressed: () async {
                final url = await simpleCam.captureAndUpload();
                print('Result: \$url');
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
}"""),
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
        StrCodeBlock("""// Example 1: Basic - Text Character Flyweights
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
    print('Creating glyph for "\$character" (font: \$fontFamily, size: \$fontSize)');
  }
  
  // Render using extrinsic state (position, color)
  void render(int x, int y, String color) {
    final style = [
      if (bold) 'bold',
      if (italic) 'italic',
    ].join(' ');
    
    print('Rendering "\$character" at (\$x, \$y) in \$color \$style');
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
    final key = '\$character-\$fontFamily-\$fontSize-\$bold-\$italic';
    
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
    print('\n=== Rendering Document ===');
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
    
    print('\n=== Memory Statistics ===');
    print('Characters: \${_characters.length}');
    print('Unique glyphs: \${_glyphFactory.glyphCount}');
    print('');
    print('With Flyweight:');
    print('  Glyph memory: \$glyphMemory bytes');
    print('  Context memory: \$contextMemory bytes');
    print('  Total: \$totalMemory bytes');
    print('');
    print('Without Flyweight (estimated): \$withoutFlyweight bytes');
    print('Memory saved: \${withoutFlyweight - totalMemory} bytes');
    print('Reduction: \${((1 - totalMemory / withoutFlyweight) * 100).toStringAsFixed(1)}%');
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
}"""),

        // Example 2: Intermediate - Game Particle System
        StrCodeBlock(
          """// Example 2: Intermediate - Particle System with Flyweight
// Use case: Rendering thousands of particles efficiently

import 'dart:math';

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
    print('Created particle type: \$name (texture: \$texture)');
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
    print('Draw \$name at (\${x.toStringAsFixed(1)}, \${y.toStringAsFixed(1)}) '
        'size: \${size.toStringAsFixed(1)} opacity: \${opacity.toStringAsFixed(2)}');
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
        _ => throw Exception('Unknown particle type: \$name'),
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
    
    print('Emitted \$count \$typeName particles');
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
    print('\n=== Particle System Stats ===');
    print('Active particles: \${_particles.length}');
    print('Particle types: \${_typeFactory.typeCount}');
    print('Memory efficiency: \${_particles.length} particles share \${_typeFactory.typeCount} textures');
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
  
  print('\n=== Simulating one frame ===');
  system.update(0.016); // ~60 FPS
  system.render();
  
  print('\nNote: All fire particles share the same ParticleType object!');
  print('Without Flyweight: 270 particles × ~1KB = 270KB');
  print('With Flyweight: 4 types × 1KB + 270 particles × 64 bytes = ~21KB');
  print('Memory saved: ~92%!');
}""",
        ),

        // Example 3: Advanced - Forest Rendering
        StrCodeBlock("""// Example 3: Advanced - Forest with Millions of Trees
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
    print('Loading tree model: \$species (mesh: \${meshData.length} bytes)');
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
    print('Render \$species at (\${x.toStringAsFixed(1)}, \${y.toStringAsFixed(1)}, \${z.toStringAsFixed(1)}) '
        'h:\${height.toStringAsFixed(1)}m rot:\${rotation.toStringAsFixed(0)}°');
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
      _ => throw Exception('Unknown species: \$species'),
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
    print('Generating forest with \$treeCount trees...');
    
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
    
    print('\n=== Rendering Trees ===');
    for (final tree in _trees) {
      final dx = tree.x - cameraX;
      final dz = tree.z - cameraZ;
      final distance = sqrt(dx * dx + dz * dz);
      
      if (distance <= viewDistance) {
        tree.render();
        rendered++;
        
        if (rendered >= 5) {
          print('... (\${_trees.length - rendered} more trees)');
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
    
    print('\n=== Forest Memory Statistics ===');
    print('Total trees: \${_trees.length}');
    print('Unique species: \${_modelFactory.modelCount}');
    print('');
    print('With Flyweight:');
    print('  Model memory: \${(modelMemory / 1024).toStringAsFixed(1)} KB');
    print('  Tree instance memory: \${(treeMemory / 1024).toStringAsFixed(1)} KB');
    print('  Total: \${(totalMemory / 1024).toStringAsFixed(1)} KB');
    print('');
    print('Without Flyweight (estimated):');
    print('  Total: \${(withoutFlyweight / 1024).toStringAsFixed(1)} KB');
    print('');
    print('Memory saved: \${((withoutFlyweight - totalMemory) / 1024).toStringAsFixed(1)} KB');
    print('Reduction: \${((1 - totalMemory / withoutFlyweight) * 100).toStringAsFixed(1)}%');
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

import 'dart:math';"""),

        // Example 4: Flutter - Icon System
        StrCodeBlock("""// Example 4: Flutter - Shared Icon System
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
    print('Loaded icon: \$name');
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
        borderRadius: .circular(size / 4),
      ),
      child: Center(
        child: Text(
          String.fromCharCode(codePoint),
          style: TextStyle(
            fontSize: size * 0.6,
            color: color,
            fontWeight: .bold,
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
          .width(16),
          AppIcon('settings', color: Colors.white),
          .width(16),
        ],
      ),
      body: ListView(
        padding: .all(16),
        children: [
          Text(
            'Same icon data shared across all instances:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          .height(24),
          
          // Many icons of same type (share flyweight)
          Text('100 home icons (share 1 IconData):'),
          .height(8),
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
          
          .height(24),
          
          Text('Mixed icons (share 4 IconData objects):'),
          .height(8),
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
          
          .height(24),
          
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
        padding: .all(16),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Memory Statistics',
              style: .titleMedium?.copyWith(fontWeight: .bold),
            ),
            .height(8),
            Text('Icon instances: \$instanceCount'),
            Text('Shared IconData objects: \${registry.iconCount}'),
            .height(8),
            Text('With Flyweight: ~\${(totalMemory / 1024).toStringAsFixed(1)} KB'),
            Text('Without Flyweight: ~\${(withoutFlyweight / 1024).toStringAsFixed(1)} KB'),
            Text(
              'Memory saved: \${((1 - totalMemory / withoutFlyweight) * 100).toStringAsFixed(0)}%',
              style: .titleSmall?.copyWith(
                color: Colors.green,
                fontWeight: .bold,
              ),
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
}"""),
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

  // OLD
  // OLD
  // OLD
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
