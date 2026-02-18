import "../../core/models/code_block.dart";
import "../../core/models/content.dart";
import "../../core/models/design_patterns.dart";
import "../../core/models/localized_text.dart";
import "keys.dart";

const Map<String, DesignPattern> behavioralPatternsData = {
  PK.chainOfResponsibility: DesignPattern(
    id: PK.chainOfResponsibility,
    title: LocS(en: "Chain of Responsibility", ar: "سلسلة المسؤولية"),
    description: LocS(
      en: "Passes requests along a chain of handlers until one handles it",
      ar: "يمرر الطلبات على طول سلسلة من المعالجات حتى يتعامل أحدها معها",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Chain of Responsibility pattern lets you pass requests along a chain of handlers. Each handler decides either to process the request or to pass it to the next handler in the chain. This decouples the sender from the receiver and allows multiple objects a chance to handle the request.",
        ),
        AnalogyContent(
          "Think of customer support escalation. A basic support agent tries to help first. If they can't solve it, they escalate to a senior agent. If the senior can't solve it, they escalate to engineering. Each level tries to handle the request, and if they can't, they pass it up the chain. The customer doesn't need to know who will ultimately solve their problem.",
        ),
        StrContent(
          "This pattern is perfect when you have multiple objects that could handle a request, but you don't know which one should handle it until runtime. The request travels down the chain until a handler says 'I got this' or the chain ends. Handlers can also modify the request or perform actions before passing it along.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Handler: Interface defining handle method and link to next handler",
            "Concrete Handlers: Implement handling logic, decide to process or pass on",
            "Client: Initiates request to first handler in chain",
            "Chain: Handlers linked together, each knowing the next handler",
          ],
        ),
        DiagramContent(
          "Chain Flow:\nClient → Handler1 → Handler2 → Handler3 → null\n           ↓           ↓           ↓\n       (handle or    (handle or    (handle or\n        pass on)     pass on)      pass on)",
        ),
        NoteContent(
          "Chain of Responsibility vs Command: Chain passes a request through multiple potential handlers. Command encapsulates a request as an object. They solve different problems - Chain is about finding the right handler, Command is about parameterizing operations.",
          type: .important,
        ),
        StrContent(
          "Common use cases in Flutter/Dart: HTTP interceptor chains, event handling systems, validation pipelines, middleware in web frameworks, permission checking, and error handling that escalates through multiple recovery strategies.",
        ),
      ],
      ar: [
        StrContent(
          "نمط سلسلة المسؤولية يتيح لك تمرير الطلبات على طول سلسلة من المعالجات. كل معالج يقرر إما معالجة الطلب أو تمريره للمعالج التالي في السلسلة. هذا يفصل المُرسل عن المُستقبل ويسمح لعدة كائنات بفرصة معالجة الطلب.",
        ),
        AnalogyContent(
          "فكر في تصعيد دعم العملاء. وكيل دعم أساسي يحاول المساعدة أولاً. إذا لم يتمكن من حلها، يُصعّدها لوكيل أقدم. إذا لم يتمكن الأقدم من حلها، يُصعّدها للهندسة. كل مستوى يحاول معالجة الطلب، وإذا لم يتمكن، يمرره للأعلى في السلسلة. العميل لا يحتاج لمعرفة من سيحل مشكلته في النهاية.",
        ),
        StrContent(
          "هذا النمط مثالي عندما يكون لديك عدة كائنات يمكنها معالجة طلب، لكنك لا تعرف أيها يجب أن يتعامل معه حتى وقت التشغيل. ينتقل الطلب عبر السلسلة حتى يقول معالج 'أنا سأتعامل معه' أو تنتهي السلسلة. يمكن للمعالجات أيضاً تعديل الطلب أو تنفيذ إجراءات قبل تمريره.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "المعالج: واجهة تحدد طريقة المعالجة والرابط للمعالج التالي",
            "المعالجات المحددة: تنفذ منطق المعالجة، تقرر المعالجة أو التمرير",
            "العميل: يبدأ الطلب للمعالج الأول في السلسلة",
            "السلسلة: معالجات مرتبطة معاً، كل منها يعرف المعالج التالي",
          ],
        ),
        DiagramContent(
          "تدفق السلسلة:\nالعميل → معالج1 → معالج2 → معالج3 → null\n           ↓           ↓           ↓\n       (معالجة أو    (معالجة أو    (معالجة أو\n         تمرير)       تمرير)       تمرير)",
        ),
        NoteContent(
          "سلسلة المسؤولية مقابل الأمر: السلسلة تمرر طلباً عبر معالجات محتملة متعددة. الأمر يُغلف طلباً ككائن. يحلان مشاكل مختلفة - السلسلة تتعلق بإيجاد المعالج الصحيح، الأمر يتعلق بتحويل العمليات لمعاملات.",
          type: .important,
        ),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: سلاسل معترضي HTTP، أنظمة معالجة الأحداث، خطوط أنابيب التحقق، الوسيطة في أطر الويب، فحص الأذونات، ومعالجة الأخطاء التي تتصاعد عبر استراتيجيات استرداد متعددة.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Basic - Support Request Chain
        StrCodeBlock(r'''// Example 1: Basic - Customer Support Escalation Chain
// Use case: Routing support tickets to appropriate handlers

enum Priority { low, medium, high, critical }

class SupportRequest {
  final String id;
  final String title;
  final String description;
  final Priority priority;
  final String customerEmail;

  SupportRequest({
    required this.id,
    required this.title,
    required this.description,
    required this.priority,
    required this.customerEmail,
  });
}

// Handler interface
abstract class SupportHandler {
  SupportHandler? _nextHandler;

  void setNext(SupportHandler handler) {
    _nextHandler = handler;
  }

  void handle(SupportRequest request) {
    if (canHandle(request)) {
      processRequest(request);
    } else if (_nextHandler != null) {
      print('${runtimeType}: Cannot handle, passing to next handler');
      _nextHandler!.handle(request);
    } else {
      print('${runtimeType}: No handler available for this request');
      handleDefault(request);
    }
  }

  bool canHandle(SupportRequest request);
  void processRequest(SupportRequest request);
  void handleDefault(SupportRequest request) {
    print('Request ${request.id} could not be handled by anyone');
  }
}

// Concrete Handlers
class BasicSupportAgent extends SupportHandler {
  @override
  bool canHandle(SupportRequest request) {
    return request.priority == Priority.low;
  }

  @override
  void processRequest(SupportRequest request) {
    print('BasicSupportAgent: Handling request ${request.id}');
    print('  Title: ${request.title}');
    print('  Solution: Sent knowledge base article');
    print('  Closed ticket');
  }
}

class SeniorAgent extends SupportHandler {
  @override
  bool canHandle(SupportRequest request) {
    return request.priority == Priority.medium;
  }

  @override
  void processRequest(SupportRequest request) {
    print('SeniorAgent: Handling request ${request.id}');
    print('  Title: ${request.title}');
    print('  Solution: Provided detailed troubleshooting steps');
    print('  Escalated to monitoring');
  }
}

class EngineeringTeam extends SupportHandler {
  @override
  bool canHandle(SupportRequest request) {
    return request.priority == Priority.high || request.priority == Priority.critical;
  }

  @override
  void processRequest(SupportRequest request) {
    print('EngineeringTeam: Handling CRITICAL request ${request.id}');
    print('  Title: ${request.title}');
    print('  Action: Creating bug ticket and investigating');
    if (request.priority == Priority.critical) {
      print('  Alert: Waking up on-call engineer');
    }
  }
}

void main() {
  // Build the chain
  final basicAgent = BasicSupportAgent();
  final seniorAgent = SeniorAgent();
  final engineering = EngineeringTeam();

  basicAgent.setNext(seniorAgent);
  seniorAgent.setNext(engineering);

  print('=== Support Request Chain ===');

  // Low priority - handled by basic agent
  final request1 = SupportRequest(
    id: 'REQ-001',
    title: 'How do I reset my password?',
    description: 'I forgot my password',
    priority: Priority.low,
    customerEmail: 'user@example.com',
  );
  basicAgent.handle(request1);

  print('');

  // Medium priority - escalated to senior
  final request2 = SupportRequest(
    id: 'REQ-002',
    title: 'App crashes on startup',
    description: 'App crashes every time I open it',
    priority: Priority.medium,
    customerEmail: 'user2@example.com',
  );
  basicAgent.handle(request2);

  print('');

  // Critical - escalated to engineering
  final request3 = SupportRequest(
    id: 'REQ-003',
    title: 'Data loss detected',
    description: 'All my data is missing after update',
    priority: Priority.critical,
    customerEmail: 'user3@example.com',
  );
  basicAgent.handle(request3);
}'''),

        // Example 2: HTTP Middleware Chain
        StrCodeBlock(r'''// Example 2: HTTP Middleware Chain
// Use case: Processing HTTP requests through multiple middleware layers

class HttpRequest {
  final String method;
  final String path;
  final Map<String, String> headers;
  final String? body;

  HttpRequest({
    required this.method,
    required this.path,
    this.headers = const {},
    this.body,
  });

  // Make request mutable for middleware to modify
  Map<String, String> get mutableHeaders => Map.from(headers);
}

class HttpResponse {
  final int statusCode;
  final Map<String, String> headers;
  final String? body;
  final bool handled;

  HttpResponse({
    required this.statusCode,
    this.headers = const {},
    this.body,
    this.handled = true,
  });

  factory HttpResponse.ok(String body) =>
      HttpResponse(statusCode: 200, body: body);

  factory HttpResponse.unauthorized() =>
      HttpResponse(statusCode: 401, body: 'Unauthorized');

  factory HttpResponse.forbidden() =>
      HttpResponse(statusCode: 403, body: 'Forbidden');

  factory HttpResponse.notFound() =>
      HttpResponse(statusCode: 404, body: 'Not found');
}

// Middleware handler
abstract class Middleware {
  Middleware? _next;

  void setNext(Middleware middleware) {
    _next = middleware;
  }

  Future<HttpResponse> handle(HttpRequest request) async {
    // Process before passing to next
    final shouldContinue = await process(request);

    if (!shouldContinue) {
      return reject(request);
    }

    // Pass to next middleware or complete
    if (_next != null) {
      return _next!.handle(request);
    }

    return complete(request);
  }

  Future<bool> process(HttpRequest request);
  HttpResponse reject(HttpRequest request);
  HttpResponse complete(HttpRequest request) {
    return HttpResponse.ok('Request processed');
  }
}

// Concrete Middleware
class LoggingMiddleware extends Middleware {
  @override
  Future<bool> process(HttpRequest request) async {
    print('LoggingMiddleware: ${request.method} ${request.path}');
    print('  Headers: ${request.headers}');
    return true; // Always continue
  }

  @override
  HttpResponse reject(HttpRequest request) {
    throw UnimplementedError('Logging never rejects');
  }
}

class AuthenticationMiddleware extends Middleware {
  final Set<String> _validTokens = {'token_abc123', 'token_xyz789'};

  @override
  Future<bool> process(HttpRequest request) async {
    final authHeader = request.headers['Authorization'];
    print('AuthenticationMiddleware: Checking auth...');

    if (authHeader == null) {
      print('  No auth header found');
      return false;
    }

    final token = authHeader.replaceFirst('Bearer ', '');
    if (!_validTokens.contains(token)) {
      print('  Invalid token');
      return false;
    }

    print('  Authentication successful');
    return true;
  }

  @override
  HttpResponse reject(HttpRequest request) {
    return HttpResponse.unauthorized();
  }
}

class RateLimitMiddleware extends Middleware {
  final Map<String, int> _requestCounts = {};
  final int _maxRequests = 5;

  @override
  Future<bool> process(HttpRequest request) async {
    final clientIp = request.headers['X-Client-IP'] ?? 'unknown';
    print('RateLimitMiddleware: Checking rate limit for $clientIp');

    _requestCounts[clientIp] = (_requestCounts[clientIp] ?? 0) + 1;

    if (_requestCounts[clientIp]! > _maxRequests) {
      print('  Rate limit exceeded: ${_requestCounts[clientIp]}/$_maxRequests');
      return false;
    }

    print('  Within limit: ${_requestCounts[clientIp]}/$_maxRequests');
    return true;
  }

  @override
  HttpResponse reject(HttpRequest request) {
    return HttpResponse(
      statusCode: 429,
      body: 'Too many requests',
    );
  }
}

class ContentTypeMiddleware extends Middleware {
  @override
  Future<bool> process(HttpRequest request) async {
    if (request.method == 'POST' || request.method == 'PUT') {
      final contentType = request.headers['Content-Type'];
      print('ContentTypeMiddleware: Validating content type');

      if (contentType != 'application/json') {
        print('  Invalid content type: $contentType');
        return false;
      }

      print('  Content type valid');
    }
    return true;
  }

  @override
  HttpResponse reject(HttpRequest request) {
    return HttpResponse(
      statusCode: 415,
      body: 'Unsupported Media Type',
    );
  }
}

void main() async {
  // Build middleware chain
  final logging = LoggingMiddleware();
  final auth = AuthenticationMiddleware();
  final rateLimit = RateLimitMiddleware();
  final contentType = ContentTypeMiddleware();

  logging.setNext(auth);
  auth.setNext(rateLimit);
  rateLimit.setNext(contentType);

  print('=== Request 1: Valid authenticated request ===');
  final request1 = HttpRequest(
    method: 'GET',
    path: '/api/users',
    headers: {
      'Authorization': 'Bearer token_abc123',
      'X-Client-IP': '192.168.1.1',
    },
  );
  final response1 = await logging.handle(request1);
  print('Response: ${response1.statusCode} ${response1.body}');

  print('');
  print('=== Request 2: No authentication ===');
  final request2 = HttpRequest(
    method: 'GET',
    path: '/api/users',
    headers: {'X-Client-IP': '192.168.1.2'},
  );
  final response2 = await logging.handle(request2);
  print('Response: ${response2.statusCode} ${response2.body}');

  print('');
  print('=== Request 3-7: Rate limit test ===');
  for (int i = 0; i < 7; i++) {
    final request = HttpRequest(
      method: 'GET',
      path: '/api/data',
      headers: {
        'Authorization': 'Bearer token_abc123',
        'X-Client-IP': '192.168.1.1',
      },
    );
    final response = await logging.handle(request);
    print('Request ${i + 1}: ${response.statusCode}');
  }
}'''),

        // Example 3: Validation Chain
        StrCodeBlock(r'''// Example 3: Form Validation Chain
// Use case: Multi-level validation with different validators

class FormData {
  final String email;
  final String password;
  final String confirmPassword;
  final int age;
  final bool agreedToTerms;

  FormData({
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.age,
    required this.agreedToTerms,
  });
}

class ValidationError {
  final String field;
  final String message;

  ValidationError(this.field, this.message);

  @override
  String toString() => '$field: $message';
}

// Validator handler
abstract class Validator {
  Validator? _next;

  void setNext(Validator validator) {
    _next = validator;
  }

  List<ValidationError> validate(FormData data) {
    final errors = <ValidationError>[];

    // Validate current level
    final currentErrors = performValidation(data);
    errors.addAll(currentErrors);

    // Continue to next validator even if errors found (collect all errors)
    if (_next != null) {
      errors.addAll(_next!.validate(data));
    }

    return errors;
  }

  List<ValidationError> performValidation(FormData data);
}

// Concrete validators
class EmailValidator extends Validator {
  @override
  List<ValidationError> performValidation(FormData data) {
    print('EmailValidator: Checking email format');
    final errors = <ValidationError>[];

    if (data.email.isEmpty) {
      errors.add(ValidationError('email', 'Email is required'));
    } else if (!RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$').hasMatch(data.email)) {
      errors.add(ValidationError('email', 'Invalid email format'));
    }

    return errors;
  }
}

class PasswordValidator extends Validator {
  @override
  List<ValidationError> performValidation(FormData data) {
    print('PasswordValidator: Checking password strength');
    final errors = <ValidationError>[];

    if (data.password.isEmpty) {
      errors.add(ValidationError('password', 'Password is required'));
      return errors;
    }

    if (data.password.length < 8) {
      errors.add(ValidationError('password', 'Password must be at least 8 characters'));
    }

    if (!RegExp(r'[A-Z]').hasMatch(data.password)) {
      errors.add(ValidationError('password', 'Password must contain uppercase letter'));
    }

    if (!RegExp(r'[0-9]').hasMatch(data.password)) {
      errors.add(ValidationError('password', 'Password must contain a number'));
    }

    if (data.password != data.confirmPassword) {
      errors.add(ValidationError('confirmPassword', 'Passwords do not match'));
    }

    return errors;
  }
}

class AgeValidator extends Validator {
  final int minAge;

  AgeValidator({this.minAge = 18});

  @override
  List<ValidationError> performValidation(FormData data) {
    print('AgeValidator: Checking age requirement');
    final errors = <ValidationError>[];

    if (data.age < minAge) {
      errors.add(ValidationError('age', 'You must be at least $minAge years old'));
    }

    return errors;
  }
}

class TermsValidator extends Validator {
  @override
  List<ValidationError> performValidation(FormData data) {
    print('TermsValidator: Checking terms agreement');
    final errors = <ValidationError>[];

    if (!data.agreedToTerms) {
      errors.add(ValidationError('terms', 'You must agree to the terms'));
    }

    return errors;
  }
}

void main() {
  // Build validation chain
  final emailValidator = EmailValidator();
  final passwordValidator = PasswordValidator();
  final ageValidator = AgeValidator(minAge: 18);
  final termsValidator = TermsValidator();

  emailValidator.setNext(passwordValidator);
  passwordValidator.setNext(ageValidator);
  ageValidator.setNext(termsValidator);

  print('=== Validation Example 1: Invalid email ===');
  final form1 = FormData(
    email: 'invalid-email',
    password: 'SecurePass123',
    confirmPassword: 'SecurePass123',
    age: 25,
    agreedToTerms: true,
  );

  final errors1 = emailValidator.validate(form1);
  if (errors1.isEmpty) {
    print('✓ Form is valid');
  } else {
    print('✗ Validation failed:');
    for (final error in errors1) {
      print('  - $error');
    }
  }

  print('');
  print('=== Validation Example 2: Weak password ===');
  final form2 = FormData(
    email: 'user@example.com',
    password: 'weak',
    confirmPassword: 'weak',
    age: 25,
    agreedToTerms: true,
  );

  final errors2 = emailValidator.validate(form2);
  if (errors2.isEmpty) {
    print('✓ Form is valid');
  } else {
    print('✗ Validation failed:');
    for (final error in errors2) {
      print('  - $error');
    }
  }

  print('');
  print('=== Validation Example 3: All valid ===');
  final form3 = FormData(
    email: 'alice@example.com',
    password: 'SecurePass123',
    confirmPassword: 'SecurePass123',
    age: 25,
    agreedToTerms: true,
  );

  final errors3 = emailValidator.validate(form3);
  if (errors3.isEmpty) {
    print('✓ Form is valid - ready to submit');
  } else {
    print('✗ Validation failed:');
    for (final error in errors3) {
      print('  - $error');
    }
  }

  print('');
  print('=== Validation Example 4: Multiple errors ===');
  final form4 = FormData(
    email: 'bad-email',
    password: 'weak',
    confirmPassword: 'different',
    age: 15,
    agreedToTerms: false,
  );

  final errors4 = emailValidator.validate(form4);
  print('Found ${errors4.length} validation errors:');
  for (final error in errors4) {
    print('  - $error');
  }
}'''),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Decouples sender from receiver - sender doesn't need to know who handles",
        "Single Responsibility Principle - each handler does one thing",
        "Open/Closed Principle - can add new handlers without changing existing code",
        "Flexible - can change chain order at runtime",
        "Multiple handlers can process same request (logging, then auth, then business logic)",
        "Easy to add or remove handlers from chain",
      ],
      ar: [
        "يفصل المُرسل عن المُستقبل - المُرسل لا يحتاج لمعرفة من يتعامل",
        "مبدأ المسؤولية الواحدة - كل معالج يقوم بشيء واحد",
        "مبدأ المفتوح/المغلق - يمكن إضافة معالجات جديدة دون تغيير الكود الموجود",
        "مرن - يمكن تغيير ترتيب السلسلة في وقت التشغيل",
        "يمكن لمعالجات متعددة معالجة نفس الطلب (التسجيل، ثم المصادقة، ثم منطق العمل)",
        "سهل إضافة أو إزالة معالجات من السلسلة",
      ],
    ),
    cons: LocSL(
      en: [
        "Request might go unhandled if no handler processes it",
        "Can be hard to debug - unclear which handler will process request",
        "Performance impact from passing through entire chain",
        "No guarantee request will be handled at all",
      ],
      ar: [
        "قد لا يتم التعامل مع الطلب إذا لم يعالجه أي معالج",
        "قد يكون صعب التنقيح - غير واضح أي معالج سيعالج الطلب",
        "تأثير الأداء من المرور عبر السلسلة بأكملها",
        "لا ضمان أن الطلب سيتم التعامل معه على الإطلاق",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Chain of Responsibility when:"),
        ULContent(
          value: [
            "Multiple objects might handle a request, but you don't know which until runtime",
            "You want to issue request to one of several objects without specifying receiver explicitly",
            "The set of handlers should be specified dynamically",
            "You want to pass request through a series of processing steps",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم سلسلة المسؤولية عندما:"),
        ULContent(
          value: [
            "عدة كائنات قد تتعامل مع طلب، لكنك لا تعرف أيها حتى وقت التشغيل",
            "تريد إصدار طلب لأحد عدة كائنات دون تحديد المُستقبل بشكل صريح",
            "يجب تحديد مجموعة المعالجات ديناميكياً",
            "تريد تمرير الطلب عبر سلسلة من خطوات المعالجة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Not handling case where no handler processes request",
        "Creating circular chains accidentally",
        "Making chains too long causing performance issues",
        "Forgetting to set the next handler in chain",
      ],
      ar: [
        "عدم التعامل مع الحالة حيث لا يعالج أي معالج الطلب",
        "إنشاء سلاسل دائرية عرضياً",
        "جعل السلاسل طويلة جداً مما يسبب مشاكل أداء",
        "نسيان تعيين المعالج التالي في السلسلة",
      ],
    ),
    relatedPatterns: [PK.command, PK.composite, PK.decorator],
    oftenConfusedWith: [PK.command, PK.decorator],
  ),

  PK.command: DesignPattern(
    id: PK.command,
    title: LocS(en: "Command", ar: "الأمر (Command)"),
    description: LocS(
      en: "Encapsulates a request as an object, allowing parameterization and queuing of requests",
      ar: "يُغلف طلباً ككائن، مما يسمح بتحويله لمعامل وصفه في قوائم انتظار",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Command pattern turns a request into a stand-alone object that contains all information about the request. This transformation lets you pass requests as method arguments, delay or queue a request's execution, and support undoable operations.",
        ),
        AnalogyContent(
          "Think of a restaurant order. The waiter doesn't cook the food themselves - they write down your order (the command object) with all details. This slip can be queued, prioritized, cancelled, or passed to different cooks. The order exists independently of who takes it or executes it. You can even save orders to repeat later.",
        ),
        StrContent(
          "Command decouples the object that invokes the operation from the one that knows how to perform it. The invoker just calls execute() on the command without knowing what it does. This is perfect for implementing undo/redo, macros, transactions, and any scenario where you need to parameterize objects with operations.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Command: Interface with execute() method, optionally undo()",
            "Concrete Command: Implements execute(), stores receiver and parameters",
            "Receiver: The object that performs the actual work",
            "Invoker: Asks the command to execute the request",
            "Client: Creates command and sets its receiver",
          ],
        ),
        DiagramContent(
          r"Pattern Flow:\nClient creates → Command (stores receiver + params)\n                    ↓\nInvoker.execute() → Command.execute() → Receiver.action()\n\n(Invoker doesn't know what command does)",
        ),
        NoteContent(
          "Command vs Strategy: Command encapsulates a request (what to do + parameters). Strategy encapsulates an algorithm (how to do it). Command is about actions, Strategy is about algorithms. Both use composition, but serve different purposes.",
          type: .important,
        ),
        StrContent(
          "Common use cases in Flutter/Dart: undo/redo systems, button actions in UI, transactional behavior, macro recording, job queues, delayed execution, and BLoC events (events are essentially commands).",
        ),
      ],
      ar: [
        StrContent(
          "نمط الأمر يحول طلباً إلى كائن مستقل يحتوي على جميع المعلومات حول الطلب. هذا التحويل يتيح لك تمرير الطلبات كمعاملات طرق، تأخير أو صف تنفيذ طلب، ودعم العمليات القابلة للتراجع.",
        ),
        AnalogyContent(
          "فكر في طلب مطعم. النادل لا يطبخ الطعام بنفسه - يكتب طلبك (كائن الأمر) مع جميع التفاصيل. يمكن وضع هذه القسيمة في قائمة انتظار، تحديد أولويتها، إلغاؤها، أو تمريرها لطهاة مختلفين. الطلب موجود بشكل مستقل عمن يأخذه أو ينفذه. يمكنك حتى حفظ الطلبات لتكرارها لاحقاً.",
        ),
        StrContent(
          "الأمر يفصل الكائن الذي يستدعي العملية عن الكائن الذي يعرف كيفية تنفيذها. المُستدعي فقط يستدعي execute() على الأمر دون معرفة ما يفعله. هذا مثالي لتنفيذ التراجع/الإعادة، الماكرو، المعاملات، وأي سيناريو تحتاج فيه لتحويل الكائنات لمعاملات مع عمليات.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "الأمر: واجهة مع طريقة execute()، اختيارياً undo()",
            "الأمر المحدد: ينفذ execute()، يخزن المُستقبل والمعاملات",
            "المُستقبل: الكائن الذي ينفذ العمل الفعلي",
            "المُستدعي: يطلب من الأمر تنفيذ الطلب",
            "العميل: ينشئ الأمر ويحدد مُستقبله",
          ],
        ),
        DiagramContent(
          r"تدفق النمط:\nالعميل ينشئ → الأمر (يخزن المُستقبل + المعاملات)\n                    ↓\nالمُستدعي.execute() → الأمر.execute() → المُستقبل.action()\n\n(المُستدعي لا يعرف ما يفعله الأمر)",
        ),
        NoteContent(
          "الأمر مقابل الاستراتيجية: الأمر يُغلف طلباً (ماذا تفعل + المعاملات). الاستراتيجية تُغلف خوارزمية (كيف تفعلها). الأمر يتعلق بالإجراءات، الاستراتيجية تتعلق بالخوارزميات. كلاهما يستخدم التركيب، لكنهما يخدمان أغراضاً مختلفة.",
          type: .important,
        ),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: أنظمة التراجع/الإعادة، إجراءات الأزرار في واجهة المستخدم، السلوك المعاملاتي، تسجيل الماكرو، قوائم انتظار المهام، التنفيذ المؤجل، وأحداث BLoC (الأحداث هي في الأساس أوامر).",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Text Editor with Undo/Redo
        StrCodeBlock(r'''// Example 1: Text Editor with Undo/Redo
// Use case: Implementing undo/redo for text editing operations

// Receiver: The object that actually performs the work
class TextEditor {
  String _content = '';

  String get content => _content;

  void insertText(int position, String text) {
    _content = _content.substring(0, position) + text + _content.substring(position);
    print('Inserted "$text" at position $position');
    print('Content: $_content');
  }

  void deleteText(int position, int length) {
    final deleted = _content.substring(position, position + length);
    _content = _content.substring(0, position) + _content.substring(position + length);
    print('Deleted "$deleted" at position $position');
    print('Content: $_content');
  }

  void replaceText(int position, int length, String newText) {
    final old = _content.substring(position, position + length);
    _content = _content.substring(0, position) + newText + _content.substring(position + length);
    print('Replaced "$old" with "$newText" at position $position');
    print('Content: $_content');
  }
}

// Command interface
abstract class Command {
  void execute();
  void undo();
}

// Concrete Commands
class InsertCommand implements Command {
  final TextEditor editor;
  final int position;
  final String text;

  InsertCommand(this.editor, this.position, this.text);

  @override
  void execute() {
    editor.insertText(position, text);
  }

  @override
  void undo() {
    editor.deleteText(position, text.length);
  }
}

class DeleteCommand implements Command {
  final TextEditor editor;
  final int position;
  final int length;
  String? _deletedText; // Store for undo

  DeleteCommand(this.editor, this.position, this.length);

  @override
  void execute() {
    _deletedText = editor.content.substring(position, position + length);
    editor.deleteText(position, length);
  }

  @override
  void undo() {
    if (_deletedText != null) {
      editor.insertText(position, _deletedText!);
    }
  }
}

class ReplaceCommand implements Command {
  final TextEditor editor;
  final int position;
  final int length;
  final String newText;
  String? _oldText; // Store for undo

  ReplaceCommand(this.editor, this.position, this.length, this.newText);

  @override
  void execute() {
    _oldText = editor.content.substring(position, position + length);
    editor.replaceText(position, length, newText);
  }

  @override
  void undo() {
    if (_oldText != null) {
      editor.replaceText(position, newText.length, _oldText!);
    }
  }
}

// Invoker: Manages command execution and history
class CommandManager {
  final List<Command> _history = [];
  int _currentPosition = -1;

  void executeCommand(Command command) {
    // Remove any commands after current position (for redo)
    if (_currentPosition < _history.length - 1) {
      _history.removeRange(_currentPosition + 1, _history.length);
    }

    command.execute();
    _history.add(command);
    _currentPosition++;
  }

  void undo() {
    if (_currentPosition >= 0) {
      print('Undoing...');
      _history[_currentPosition].undo();
      _currentPosition--;
    } else {
      print('Nothing to undo');
    }
  }

  void redo() {
    if (_currentPosition < _history.length - 1) {
      print('Redoing...');
      _currentPosition++;
      _history[_currentPosition].execute();
    } else {
      print('Nothing to redo');
    }
  }

  bool get canUndo => _currentPosition >= 0;
  bool get canRedo => _currentPosition < _history.length - 1;
}

void main() {
  final editor = TextEditor();
  final manager = CommandManager();

  print('=== Text Editor Command Pattern ===');
  print('Initial content: "${editor.content}"');
  print('');

  // Execute commands
  print('--- Insert "Hello" ---');
  manager.executeCommand(InsertCommand(editor, 0, 'Hello'));
  print('');

  print('--- Insert " World" ---');
  manager.executeCommand(InsertCommand(editor, 5, ' World'));
  print('');

  print('--- Delete 6 characters from position 5 ---');
  manager.executeCommand(DeleteCommand(editor, 5, 6));
  print('');

  print('--- Replace "Hello" with "Hi" ---');
  manager.executeCommand(ReplaceCommand(editor, 0, 5, 'Hi'));
  print('');

  print('--- Undo (restore "Hello") ---');
  manager.undo();
  print('');

  print('--- Undo (restore " World") ---');
  manager.undo();
  print('');

  print('--- Redo (remove " World" again) ---');
  manager.redo();
  print('');

  print('Final content: "${editor.content}"');
  print('Can undo: ${manager.canUndo}');
  print('Can redo: ${manager.canRedo}');
}'''),

        // Example 2: Smart Home Remote Control
        StrCodeBlock(r'''// Example 2: Smart Home Remote Control
// Use case: Programmable remote with macro support

// Receivers
class Light {
  final String location;
  bool _isOn = false;
  int _brightness = 100;

  Light(this.location);

  void turnOn() {
    _isOn = true;
    print('$location light: ON');
  }

  void turnOff() {
    _isOn = false;
    print('$location light: OFF');
  }

  void setBrightness(int level) {
    _brightness = level.clamp(0, 100);
    print('$location light: Brightness set to $_brightness%');
  }

  bool get isOn => _isOn;
  int get brightness => _brightness;
}

class Thermostat {
  double _temperature = 22.0;

  void setTemperature(double temp) {
    _temperature = temp;
    print('Thermostat: Temperature set to $_temperature°C');
  }

  double get temperature => _temperature;
}

class MusicPlayer {
  bool _isPlaying = false;
  int _volume = 50;

  void play() {
    _isPlaying = true;
    print('Music Player: Playing');
  }

  void stop() {
    _isPlaying = false;
    print('Music Player: Stopped');
  }

  void setVolume(int level) {
    _volume = level.clamp(0, 100);
    print('Music Player: Volume set to $_volume%');
  }
}

// Command interface
abstract class SmartHomeCommand {
  void execute();
  void undo();
  String get description;
}

// Concrete Commands
class LightOnCommand implements SmartHomeCommand {
  final Light light;

  LightOnCommand(this.light);

  @override
  void execute() => light.turnOn();

  @override
  void undo() => light.turnOff();

  @override
  String get description => 'Turn on ${light.location} light';
}

class LightOffCommand implements SmartHomeCommand {
  final Light light;

  LightOffCommand(this.light);

  @override
  void execute() => light.turnOff();

  @override
  void undo() => light.turnOn();

  @override
  String get description => 'Turn off ${light.location} light';
}

class DimLightCommand implements SmartHomeCommand {
  final Light light;
  final int level;
  int? _previousLevel;

  DimLightCommand(this.light, this.level);

  @override
  void execute() {
    _previousLevel = light.brightness;
    light.setBrightness(level);
  }

  @override
  void undo() {
    if (_previousLevel != null) {
      light.setBrightness(_previousLevel!);
    }
  }

  @override
  String get description => 'Dim ${light.location} to $level%';
}

class SetTemperatureCommand implements SmartHomeCommand {
  final Thermostat thermostat;
  final double temperature;
  double? _previousTemp;

  SetTemperatureCommand(this.thermostat, this.temperature);

  @override
  void execute() {
    _previousTemp = thermostat.temperature;
    thermostat.setTemperature(temperature);
  }

  @override
  void undo() {
    if (_previousTemp != null) {
      thermostat.setTemperature(_previousTemp!);
    }
  }

  @override
  String get description => 'Set temperature to $temperature°C';
}

class PlayMusicCommand implements SmartHomeCommand {
  final MusicPlayer player;
  final int volume;

  PlayMusicCommand(this.player, this.volume);

  @override
  void execute() {
    player.setVolume(volume);
    player.play();
  }

  @override
  void undo() {
    player.stop();
  }

  @override
  String get description => 'Play music at $volume%';
}

// Macro Command: Executes multiple commands
class MacroCommand implements SmartHomeCommand {
  final String name;
  final List<SmartHomeCommand> commands;

  MacroCommand(this.name, this.commands);

  @override
  void execute() {
    print('Executing macro: $name');
    for (final command in commands) {
      command.execute();
    }
  }

  @override
  void undo() {
    print('Undoing macro: $name');
    // Undo in reverse order
    for (final command in commands.reversed) {
      command.undo();
    }
  }

  @override
  String get description => 'Macro: $name';
}

// Remote Control (Invoker)
class RemoteControl {
  final Map<int, SmartHomeCommand> _buttons = {};
  final List<SmartHomeCommand> _history = [];

  void setButton(int buttonNumber, SmartHomeCommand command) {
    _buttons[buttonNumber] = command;
    print('Button $buttonNumber: ${command.description}');
  }

  void pressButton(int buttonNumber) {
    final command = _buttons[buttonNumber];
    if (command != null) {
      print('Pressed button $buttonNumber');
      command.execute();
      _history.add(command);
    } else {
      print('Button $buttonNumber not programmed');
    }
  }

  void undoLastCommand() {
    if (_history.isNotEmpty) {
      final command = _history.removeLast();
      print('Undoing: ${command.description}');
      command.undo();
    } else {
      print('No commands to undo');
    }
  }
}

void main() {
  // Create devices (receivers)
  final livingRoomLight = Light('Living Room');
  final bedroomLight = Light('Bedroom');
  final thermostat = Thermostat();
  final musicPlayer = MusicPlayer();

  // Create remote (invoker)
  final remote = RemoteControl();

  print('=== Programming Remote Control ===');

  // Program individual buttons
  remote.setButton(1, LightOnCommand(livingRoomLight));
  remote.setButton(2, LightOffCommand(livingRoomLight));
  remote.setButton(3, DimLightCommand(livingRoomLight, 30));
  remote.setButton(4, SetTemperatureCommand(thermostat, 24.0));

  // Create "Movie Time" macro
  final movieMacro = MacroCommand('Movie Time', [
    LightOffCommand(livingRoomLight),
    DimLightCommand(bedroomLight, 10),
    SetTemperatureCommand(thermostat, 21.0),
    PlayMusicCommand(musicPlayer, 20),
  ]);
  remote.setButton(5, movieMacro);

  // Create "Good Night" macro
  final goodNightMacro = MacroCommand('Good Night', [
    LightOffCommand(livingRoomLight),
    LightOffCommand(bedroomLight),
    SetTemperatureCommand(thermostat, 18.0),
  ]);
  remote.setButton(6, goodNightMacro);

  print('');
  print('=== Using Remote Control ===');

  print('--- Press button 1 (Living room light on) ---');
  remote.pressButton(1);
  print('');

  print('--- Press button 3 (Dim to 30%) ---');
  remote.pressButton(3);
  print('');

  print('--- Press button 5 (Movie Time macro) ---');
  remote.pressButton(5);
  print('');

  print('--- Undo last command ---');
  remote.undoLastCommand();
  print('');

  print('--- Press button 6 (Good Night macro) ---');
  remote.pressButton(6);
  print('');

  print('--- Undo Good Night ---');
  remote.undoLastCommand();
}'''),

        // Example 3: Transaction System
        StrCodeBlock(r'''// Example 3: Banking Transaction System
// Use case: Transactional operations with rollback support

// Receiver
class BankAccount {
  final String accountNumber;
  final String owner;
  double _balance;

  BankAccount(this.accountNumber, this.owner, this._balance);

  double get balance => _balance;

  bool deposit(double amount) {
    if (amount <= 0) return false;
    _balance += amount;
    print('$owner: Deposited \$$amount. New balance: \$$balance');
    return true;
  }

  bool withdraw(double amount) {
    if (amount <= 0 || amount > _balance) {
      print('$owner: Insufficient funds for withdrawal of \$$amount');
      return false;
    }
    _balance -= amount;
    print('$owner: Withdrew \$$amount. New balance: \$$balance');
    return true;
  }
}

// Command interface
abstract class Transaction {
  bool execute();
  void rollback();
  String get transactionId;
  String get description;
}

// Concrete Commands
class DepositTransaction implements Transaction {
  final BankAccount account;
  final double amount;
  @override
  final String transactionId;
  bool _executed = false;

  DepositTransaction(this.account, this.amount, this.transactionId);

  @override
  bool execute() {
    _executed = account.deposit(amount);
    return _executed;
  }

  @override
  void rollback() {
    if (_executed) {
      account.withdraw(amount);
      print('Rolled back deposit transaction $transactionId');
    }
  }

  @override
  String get description => 'Deposit \$$amount to ${account.owner}';
}

class WithdrawTransaction implements Transaction {
  final BankAccount account;
  final double amount;
  @override
  final String transactionId;
  bool _executed = false;

  WithdrawTransaction(this.account, this.amount, this.transactionId);

  @override
  bool execute() {
    _executed = account.withdraw(amount);
    return _executed;
  }

  @override
  void rollback() {
    if (_executed) {
      account.deposit(amount);
      print('Rolled back withdrawal transaction $transactionId');
    }
  }

  @override
  String get description => 'Withdraw \$$amount from ${account.owner}';
}

class TransferTransaction implements Transaction {
  final BankAccount fromAccount;
  final BankAccount toAccount;
  final double amount;
  @override
  final String transactionId;
  bool _withdrawExecuted = false;
  bool _depositExecuted = false;

  TransferTransaction(
    this.fromAccount,
    this.toAccount,
    this.amount,
    this.transactionId,
  );

  @override
  bool execute() {
    print('Executing transfer $transactionId');
    _withdrawExecuted = fromAccount.withdraw(amount);
    
    if (!_withdrawExecuted) {
      print('Transfer failed: Cannot withdraw from ${fromAccount.owner}');
      return false;
    }

    _depositExecuted = toAccount.deposit(amount);
    
    if (!_depositExecuted) {
      print('Transfer failed: Cannot deposit to ${toAccount.owner}');
      // Rollback withdrawal
      fromAccount.deposit(amount);
      _withdrawExecuted = false;
      return false;
    }

    print('Transfer completed: \$$amount from ${fromAccount.owner} to ${toAccount.owner}');
    return true;
  }

  @override
  void rollback() {
    if (_depositExecuted) {
      toAccount.withdraw(amount);
    }
    if (_withdrawExecuted) {
      fromAccount.deposit(amount);
    }
    print('Rolled back transfer transaction $transactionId');
  }

  @override
  String get description => 
      'Transfer \$$amount from ${fromAccount.owner} to ${toAccount.owner}';
}

// Transaction Manager (Invoker)
class TransactionManager {
  final List<Transaction> _completedTransactions = [];
  int _transactionCounter = 0;

  String _generateTransactionId() {
    _transactionCounter++;
    return 'TXN-${_transactionCounter.toString().padLeft(4, '0')}';
  }

  bool executeTransaction(Transaction transaction) {
    final success = transaction.execute();
    
    if (success) {
      _completedTransactions.add(transaction);
      print('Transaction ${transaction.transactionId} completed successfully');
    } else {
      print('Transaction ${transaction.transactionId} failed');
    }
    
    return success;
  }

  void rollbackTransaction(String transactionId) {
    final transaction = _completedTransactions
        .where((t) => t.transactionId == transactionId)
        .firstOrNull;
    
    if (transaction != null) {
      transaction.rollback();
      _completedTransactions.remove(transaction);
    } else {
      print('Transaction $transactionId not found');
    }
  }

  void rollbackLastTransaction() {
    if (_completedTransactions.isNotEmpty) {
      final transaction = _completedTransactions.removeLast();
      transaction.rollback();
    } else {
      print('No transactions to rollback');
    }
  }

  void printHistory() {
    print('Transaction History:');
    for (final transaction in _completedTransactions) {
      print('  ${transaction.transactionId}: ${transaction.description}');
    }
  }

  Transaction createDeposit(BankAccount account, double amount) {
    return DepositTransaction(account, amount, _generateTransactionId());
  }

  Transaction createWithdrawal(BankAccount account, double amount) {
    return WithdrawTransaction(account, amount, _generateTransactionId());
  }

  Transaction createTransfer(
    BankAccount from,
    BankAccount to,
    double amount,
  ) {
    return TransferTransaction(from, to, amount, _generateTransactionId());
  }
}

void main() {
  print('=== Banking Transaction System ===');

  // Create accounts
  final aliceAccount = BankAccount('ACC-001', 'Alice', 1000.0);
  final bobAccount = BankAccount('ACC-002', 'Bob', 500.0);
  final charlieAccount = BankAccount('ACC-003', 'Charlie', 200.0);

  print('Initial balances:');
  print('  Alice: \$${aliceAccount.balance}');
  print('  Bob: \$${bobAccount.balance}');
  print('  Charlie: \$${charlieAccount.balance}');
  print('');

  final manager = TransactionManager();

  print('--- Transaction 1: Alice deposits \$500 ---');
  manager.executeTransaction(
    manager.createDeposit(aliceAccount, 500),
  );
  print('');

  print('--- Transaction 2: Bob withdraws \$100 ---');
  manager.executeTransaction(
    manager.createWithdrawal(bobAccount, 100),
  );
  print('');

  print('--- Transaction 3: Alice transfers \$300 to Bob ---');
  manager.executeTransaction(
    manager.createTransfer(aliceAccount, bobAccount, 300),
  );
  print('');

  print('--- Transaction 4: Charlie tries to withdraw \$300 (should fail) ---');
  manager.executeTransaction(
    manager.createWithdrawal(charlieAccount, 300),
  );
  print('');

  manager.printHistory();
  print('');

  print('Current balances:');
  print('  Alice: \$${aliceAccount.balance}');
  print('  Bob: \$${bobAccount.balance}');
  print('  Charlie: \$${charlieAccount.balance}');
  print('');

  print('--- Rolling back last transaction (Alice→Bob transfer) ---');
  manager.rollbackLastTransaction();
  print('');

  print('Final balances:');
  print('  Alice: \$${aliceAccount.balance}');
  print('  Bob: \$${bobAccount.balance}');
  print('  Charlie: \$${charlieAccount.balance}');
}'''),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Decouples invoker from receiver - invoker doesn't need to know implementation details",
        "Single Responsibility Principle - separates request creation from execution",
        "Open/Closed Principle - can add new commands without changing existing code",
        "Supports undo/redo operations naturally",
        "Can assemble complex commands from simple ones (macros)",
        "Can queue, schedule, or log commands easily",
        "Supports transactional behavior with rollback",
      ],
      ar: [
        "يفصل المُستدعي عن المُستقبل - المُستدعي لا يحتاج لمعرفة تفاصيل التنفيذ",
        "مبدأ المسؤولية الواحدة - يفصل إنشاء الطلب عن التنفيذ",
        "مبدأ المفتوح/المغلق - يمكن إضافة أوامر جديدة دون تغيير الكود الموجود",
        "يدعم عمليات التراجع/الإعادة بشكل طبيعي",
        "يمكن تجميع أوامر معقدة من أوامر بسيطة (ماكرو)",
        "يمكن وضع الأوامر في قائمة انتظار أو جدولتها أو تسجيلها بسهولة",
        "يدعم السلوك المعاملاتي مع الاسترجاع",
      ],
    ),
    cons: LocSL(
      en: [
        "Increases number of classes in the system",
        "Can be overkill for simple operations",
        "Adds indirection layer between invoker and receiver",
        "Requires careful state management for undo/redo",
      ],
      ar: [
        "يزيد عدد الفئات في النظام",
        "قد يكون مبالغاً فيه للعمليات البسيطة",
        "يضيف طبقة عدم مباشرة بين المُستدعي والمُستقبل",
        "يتطلب إدارة حالة دقيقة للتراجع/الإعادة",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Command when:"),
        ULContent(
          value: [
            "You need to parameterize objects with operations",
            "You need to queue operations, schedule execution, or execute remotely",
            "You need to support undo/redo operations",
            "You need to log changes for auditing or crash recovery",
            "You want to structure system around high-level operations built on primitive operations",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الأمر عندما:"),
        ULContent(
          value: [
            "تحتاج لتحويل الكائنات لمعاملات مع العمليات",
            "تحتاج لوضع العمليات في قائمة انتظار، جدولة التنفيذ، أو التنفيذ عن بُعد",
            "تحتاج لدعم عمليات التراجع/الإعادة",
            "تحتاج لتسجيل التغييرات للتدقيق أو الاسترداد من الأعطال",
            "تريد بناء النظام حول عمليات عالية المستوى مبنية على عمليات بدائية",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Not storing enough state for undo operation",
        "Making commands too fine-grained (one per setter)",
        "Forgetting to handle failed command execution",
        "Not considering whether command should be undoable",
        "Mixing business logic into command classes",
      ],
      ar: [
        "عدم تخزين حالة كافية لعملية التراجع",
        "جعل الأوامر دقيقة جداً (واحد لكل setter)",
        "نسيان التعامل مع فشل تنفيذ الأمر",
        "عدم النظر فيما إذا كان الأمر يجب أن يكون قابلاً للتراجع",
        "خلط منطق العمل في فئات الأوامر",
      ],
    ),
    relatedPatterns: [PK.memento, PK.composite, PK.chainOfResponsibility],
    oftenConfusedWith: [PK.strategy],
  ),

  PK.interpreter: DesignPattern(
    id: PK.interpreter,
    title: LocS(en: "Interpreter", ar: "المُفسر (Interpreter)"),
    description: LocS(
      en: "Defines a grammar and an interpreter to evaluate sentences in that language",
      ar: "يُعرّف قواعد نحوية ومُفسراً لتقييم جمل في تلك اللغة",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "The Interpreter pattern defines a representation for a grammar and an interpreter that uses this representation to interpret sentences in the language. Each grammar rule is represented by a class. The pattern works well for simple grammars where you need to execute, evaluate, or validate expressions.",
        ),
        AnalogyContent(
          "Think of a calculator. You type '2 + 3 * 4' and it needs to understand the grammar (numbers, operators, precedence), parse it into a tree (3 * 4 = 12, then 2 + 12 = 14), and evaluate. Each operation (+, *, /, -) is an interpreter that knows how to evaluate its part of the expression tree.",
        ),
        StrContent(
          "This pattern is rarely used in modern applications because parser generators and expression evaluators exist. However, it's valuable for domain-specific languages (DSL), query languages, configuration languages, or any scenario where you're defining a simple custom language. Each terminal and non-terminal symbol in the grammar becomes a class.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Abstract Expression: Interface with interpret() method",
            "Terminal Expression: Leaf nodes, represent actual values",
            "Non-Terminal Expression: Composite nodes, represent operations/rules",
            "Context: Global information for interpretation",
            "Client: Builds the abstract syntax tree (AST) and calls interpret()",
          ],
        ),
        DiagramContent(
          r"Expression Tree:\n        Add\n       /   \\\n   Number  Multiply\n    (2)    /    \\\n       Number  Number\n        (3)     (4)\n\nEach node knows how to interpret() itself",
        ),
        StrContent(
          "Common use cases in Flutter/Dart: formula evaluators, query builders, rule engines, configuration parsers, and simple DSLs. For complex languages, use proper parser libraries like petitparser instead of implementing Interpreter pattern from scratch.",
        ),
      ],
      ar: [
        StrContent(
          "نمط المُفسر يُعرّف تمثيلاً لقواعد نحوية ومُفسراً يستخدم هذا التمثيل لتفسير جمل في اللغة. كل قاعدة نحوية تُمثل بفئة. النمط يعمل جيداً للقواعد النحوية البسيطة حيث تحتاج لتنفيذ أو تقييم أو التحقق من التعبيرات.",
        ),
        AnalogyContent(
          "فكر في آلة حاسبة. تكتب '2 + 3 * 4' وتحتاج لفهم القواعد (الأرقام، العمليات، الأولوية)، تحليلها إلى شجرة (3 * 4 = 12، ثم 2 + 12 = 14)، والتقييم. كل عملية (+، *، /، -) هي مُفسر يعرف كيفية تقييم جزئه من شجرة التعبير.",
        ),
        StrContent(
          "هذا النمط نادراً ما يُستخدم في التطبيقات الحديثة لأن مولدات المحللات ومُقيّمات التعبيرات موجودة. ومع ذلك، فهو قيم للغات خاصة بالمجال (DSL)، لغات الاستعلام، لغات التكوين، أو أي سيناريو تُعرّف فيه لغة مخصصة بسيطة. كل رمز نهائي وغير نهائي في القواعد يصبح فئة.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "التعبير المجرد: واجهة مع طريقة interpret()",
            "التعبير النهائي: عقد ورقية، تمثل قيماً فعلية",
            "التعبير غير النهائي: عقد مركبة، تمثل عمليات/قواعد",
            "السياق: معلومات عالمية للتفسير",
            "العميل: يبني شجرة التركيب المجردة (AST) ويستدعي interpret()",
          ],
        ),
        DiagramContent(
          r"شجرة التعبير:\n        جمع\n       /   \\\n   رقم      ضرب\n    (2)    /    \\\n        رقم      رقم\n        (3)     (4)\n\nكل عقدة تعرف كيفية interpret() نفسها",
        ),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: مُقيّمات الصيغ، بناة الاستعلام، محركات القواعد، محللات التكوين، ولغات DSL بسيطة. للغات معقدة، استخدم مكتبات محلل مناسبة مثل petitparser بدلاً من تنفيذ نمط المُفسر من الصفر.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Mathematical Expression Evaluator
        StrCodeBlock(r'''// Example 1: Mathematical Expression Evaluator
// Use case: Evaluating arithmetic expressions like "2 + 3 * 4"

// Context: Holds variables and state during interpretation
class Context {
  final Map<String, int> _variables = {};

  void setVariable(String name, int value) {
    _variables[name] = value;
  }

  int? getVariable(String name) => _variables[name];
}

// Abstract Expression
abstract class Expression {
  int interpret(Context context);
}

// Terminal Expression: Number literal
class NumberExpression implements Expression {
  final int value;

  NumberExpression(this.value);

  @override
  int interpret(Context context) => value;

  @override
  String toString() => value.toString();
}

// Terminal Expression: Variable
class VariableExpression implements Expression {
  final String name;

  VariableExpression(this.name);

  @override
  int interpret(Context context) {
    final value = context.getVariable(name);
    if (value == null) {
      throw Exception('Variable "$name" not defined');
    }
    return value;
  }

  @override
  String toString() => name;
}

// Non-Terminal Expression: Addition
class AddExpression implements Expression {
  final Expression left;
  final Expression right;

  AddExpression(this.left, this.right);

  @override
  int interpret(Context context) {
    return left.interpret(context) + right.interpret(context);
  }

  @override
  String toString() => '($left + $right)';
}

// Non-Terminal Expression: Subtraction
class SubtractExpression implements Expression {
  final Expression left;
  final Expression right;

  SubtractExpression(this.left, this.right);

  @override
  int interpret(Context context) {
    return left.interpret(context) - right.interpret(context);
  }

  @override
  String toString() => '($left - $right)';
}

// Non-Terminal Expression: Multiplication
class MultiplyExpression implements Expression {
  final Expression left;
  final Expression right;

  MultiplyExpression(this.left, this.right);

  @override
  int interpret(Context context) {
    return left.interpret(context) * right.interpret(context);
  }

  @override
  String toString() => '($left * $right)';
}

// Non-Terminal Expression: Division
class DivideExpression implements Expression {
  final Expression left;
  final Expression right;

  DivideExpression(this.left, this.right);

  @override
  int interpret(Context context) {
    final divisor = right.interpret(context);
    if (divisor == 0) {
      throw Exception('Division by zero');
    }
    return left.interpret(context) ~/ divisor;
  }

  @override
  String toString() => '($left / $right)';
}

void main() {
  final context = Context();

  print('=== Mathematical Expression Interpreter ===');
  print('');

  // Expression: 2 + 3 * 4 (should be 14)
  print('--- Expression: 2 + 3 * 4 ---');
  final expr1 = AddExpression(
    NumberExpression(2),
    MultiplyExpression(
      NumberExpression(3),
      NumberExpression(4),
    ),
  );
  print('AST: $expr1');
  print('Result: ${expr1.interpret(context)}');
  print('');

  // Expression: (10 - 5) * 2 (should be 10)
  print('--- Expression: (10 - 5) * 2 ---');
  final expr2 = MultiplyExpression(
    SubtractExpression(
      NumberExpression(10),
      NumberExpression(5),
    ),
    NumberExpression(2),
  );
  print('AST: $expr2');
  print('Result: ${expr2.interpret(context)}');
  print('');

  // Expression with variables: x + y * 2
  print('--- Expression: x + y * 2 where x=5, y=3 ---');
  context.setVariable('x', 5);
  context.setVariable('y', 3);
  final expr3 = AddExpression(
    VariableExpression('x'),
    MultiplyExpression(
      VariableExpression('y'),
      NumberExpression(2),
    ),
  );
  print('AST: $expr3');
  print('Result: ${expr3.interpret(context)}');
  print('');

  // Complex expression: (a + b) * (c - d) / e
  print('--- Expression: (a + b) * (c - d) / e ---');
  context.setVariable('a', 10);
  context.setVariable('b', 5);
  context.setVariable('c', 20);
  context.setVariable('d', 8);
  context.setVariable('e', 3);
  
  final expr4 = DivideExpression(
    MultiplyExpression(
      AddExpression(
        VariableExpression('a'),
        VariableExpression('b'),
      ),
      SubtractExpression(
        VariableExpression('c'),
        VariableExpression('d'),
      ),
    ),
    VariableExpression('e'),
  );
  
  print('AST: $expr4');
  print('Variables: a=10, b=5, c=20, d=8, e=3');
  print('Calculation: (10 + 5) * (20 - 8) / 3 = 15 * 12 / 3 = 180 / 3 = 60');
  print('Result: ${expr4.interpret(context)}');
}'''),

        // Example 2: Boolean Expression Evaluator
        StrCodeBlock(r'''// Example 2: Boolean Logic Interpreter
// Use case: Evaluating boolean expressions for filtering or rules

class BooleanContext {
  final Map<String, bool> _facts = {};

  void setFact(String name, bool value) {
    _facts[name] = value;
  }

  bool? getFact(String name) => _facts[name];
}

// Abstract Expression
abstract class BooleanExpression {
  bool evaluate(BooleanContext context);
}

// Terminal: Boolean constant
class BooleanConstant implements BooleanExpression {
  final bool value;

  BooleanConstant(this.value);

  @override
  bool evaluate(BooleanContext context) => value;

  @override
  String toString() => value.toString();
}

// Terminal: Boolean variable
class BooleanVariable implements BooleanExpression {
  final String name;

  BooleanVariable(this.name);

  @override
  bool evaluate(BooleanContext context) {
    final value = context.getFact(name);
    if (value == null) {
      throw Exception('Fact "$name" not defined');
    }
    return value;
  }

  @override
  String toString() => name;
}

// Non-Terminal: AND operation
class AndExpression implements BooleanExpression {
  final BooleanExpression left;
  final BooleanExpression right;

  AndExpression(this.left, this.right);

  @override
  bool evaluate(BooleanContext context) {
    return left.evaluate(context) && right.evaluate(context);
  }

  @override
  String toString() => '($left AND $right)';
}

// Non-Terminal: OR operation
class OrExpression implements BooleanExpression {
  final BooleanExpression left;
  final BooleanExpression right;

  OrExpression(this.left, this.right);

  @override
  bool evaluate(BooleanContext context) {
    return left.evaluate(context) || right.evaluate(context);
  }

  @override
  String toString() => '($left OR $right)';
}

// Non-Terminal: NOT operation
class NotExpression implements BooleanExpression {
  final BooleanExpression expression;

  NotExpression(this.expression);

  @override
  bool evaluate(BooleanContext context) {
    return !expression.evaluate(context);
  }

  @override
  String toString() => '(NOT $expression)';
}

void main() {
  final context = BooleanContext();

  print('=== Boolean Expression Interpreter ===');
  print('');

  // Simple AND: isPremium AND isActive
  print('--- Rule: isPremium AND isActive ---');
  context.setFact('isPremium', true);
  context.setFact('isActive', true);
  
  final rule1 = AndExpression(
    BooleanVariable('isPremium'),
    BooleanVariable('isActive'),
  );
  print('Expression: $rule1');
  print('Result: ${rule1.evaluate(context)}');
  print('');

  // Complex rule: (isPremium AND isActive) OR isAdmin
  print('--- Rule: (isPremium AND isActive) OR isAdmin ---');
  context.setFact('isAdmin', false);
  
  final rule2 = OrExpression(
    AndExpression(
      BooleanVariable('isPremium'),
      BooleanVariable('isActive'),
    ),
    BooleanVariable('isAdmin'),
  );
  print('Expression: $rule2');
  print('Facts: isPremium=true, isActive=true, isAdmin=false');
  print('Result: ${rule2.evaluate(context)}');
  print('');

  // NOT operation
  print('--- Rule: isPremium AND (NOT isSuspended) ---');
  context.setFact('isSuspended', false);
  
  final rule3 = AndExpression(
    BooleanVariable('isPremium'),
    NotExpression(BooleanVariable('isSuspended')),
  );
  print('Expression: $rule3');
  print('Facts: isPremium=true, isSuspended=false');
  print('Result: ${rule3.evaluate(context)}');
  print('');

  // Testing false result
  print('--- Rule: isAdmin AND hasPermission ---');
  context.setFact('hasPermission', false);
  
  final rule4 = AndExpression(
    BooleanVariable('isAdmin'),
    BooleanVariable('hasPermission'),
  );
  print('Expression: $rule4');
  print('Facts: isAdmin=false, hasPermission=false');
  print('Result: ${rule4.evaluate(context)}');
}'''),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Easy to change and extend grammar by adding new expression classes",
        "Each grammar rule is encapsulated in a class",
        "Easy to implement simple grammars",
        "Adding new ways to interpret expressions is straightforward",
      ],
      ar: [
        "سهل تغيير وتوسيع القواعد النحوية بإضافة فئات تعبير جديدة",
        "كل قاعدة نحوية مُغلفة في فئة",
        "سهل تنفيذ القواعد النحوية البسيطة",
        "إضافة طرق جديدة لتفسير التعبيرات مباشرة",
      ],
    ),
    cons: LocSL(
      en: [
        "Complex grammars become hard to maintain (many classes)",
        "No built-in support for parsing - you must build AST yourself",
        "Performance can be poor for complex expressions",
        "Better alternatives exist for non-trivial languages (parser generators)",
      ],
      ar: [
        "القواعد المعقدة تصبح صعبة الصيانة (فئات كثيرة)",
        "لا دعم مدمج للتحليل - يجب عليك بناء AST بنفسك",
        "الأداء قد يكون سيئاً للتعبيرات المعقدة",
        "بدائل أفضل موجودة للغات غير البسيطة (مولدات المحللات)",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Interpreter when:"),
        ULContent(
          value: [
            "You have a simple language/grammar to interpret",
            "Efficiency is not critical",
            "Grammar is stable and changes infrequently",
            "Building a domain-specific language (DSL)",
          ],
        ),
        NoteContent(
          "For production use with complex grammars, use dedicated parser libraries like petitparser, antlr, or similar tools instead of implementing Interpreter pattern manually.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent("استخدم المُفسر عندما:"),
        ULContent(
          value: [
            "لديك لغة/قواعد نحوية بسيطة للتفسير",
            "الكفاءة ليست حرجة",
            "القواعد النحوية مستقرة وتتغير نادراً",
            "بناء لغة خاصة بالمجال (DSL)",
          ],
        ),
        NoteContent(
          "للاستخدام الإنتاجي مع القواعد المعقدة، استخدم مكتبات محلل مخصصة مثل petitparser أو antlr أو أدوات مماثلة بدلاً من تنفيذ نمط المُفسر يدوياً.",
          type: .tip,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Using for complex grammars that need proper parsing",
        "Not separating parsing from interpretation",
        "Creating too many classes for complex grammars",
        "Not considering performance implications",
      ],
      ar: [
        "الاستخدام للقواعد المعقدة التي تحتاج لتحليل مناسب",
        "عدم فصل التحليل عن التفسير",
        "إنشاء فئات كثيرة جداً للقواعد المعقدة",
        "عدم النظر في تداعيات الأداء",
      ],
    ),
    relatedPatterns: [PK.composite, PK.iterator, PK.visitor],
    oftenConfusedWith: [],
  ),

  PK.iterator: DesignPattern(
    id: PK.iterator,
    title: LocS(en: "Iterator", ar: "المُكرر (Iterator)"),
    description: LocS(
      en: "Provides a way to access elements of a collection sequentially without exposing underlying representation",
      ar: "يوفر طريقة للوصول لعناصر مجموعة بشكل تسلسلي دون الكشف عن التمثيل الأساسي",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "The Iterator pattern provides a standard way to traverse a collection of elements without exposing the collection's internal structure. It decouples the collection from traversal algorithms, allowing multiple iterators to traverse the same collection simultaneously in different ways.",
        ),
        AnalogyContent(
          "Think of a TV remote's channel browsing. You press 'next' to move to the next channel, 'previous' to go back. You don't need to know if channels are stored in an array, linked list, or database - the remote (iterator) hides these details. You just navigate through channels sequentially without caring about the internal channel storage structure.",
        ),
        StrContent(
          "In Dart, Iterator is built into the language. Every Iterable<T> can produce an Iterator<T>. When you use for-in loops, you're using iterators behind the scenes. The pattern is so fundamental that it's deeply integrated into modern languages, making manual implementation rarely necessary.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Iterator: Interface with methods like moveNext() and current",
            "Concrete Iterator: Implements traversal algorithm for specific collection",
            "Iterable: Collection that can create an iterator",
            "Client: Uses iterator to traverse without knowing collection internals",
          ],
        ),
        DiagramContent(
          r"Pattern Flow:\nCollection (Iterable)\n    ↓\ncreateIterator()\n    ↓\nIterator\n  - moveNext()\n  - current\n  - reset() [optional]",
        ),
        StrContent(
          "Common use cases: traversing any collection (lists, sets, maps, trees), implementing custom collection traversals (depth-first, breadth-first), pagination, and lazy evaluation of large datasets. In Dart, you'll mostly use built-in iterators, but custom iterators are useful for complex data structures.",
        ),
      ],
      ar: [
        StrContent(
          "نمط المُكرر يوفر طريقة موحدة لاجتياز مجموعة من العناصر دون الكشف عن البنية الداخلية للمجموعة. يفصل المجموعة عن خوارزميات الاجتياز، مما يسمح لعدة مُكررات باجتياز نفس المجموعة في وقت واحد بطرق مختلفة.",
        ),
        AnalogyContent(
          "فكر في تصفح قنوات جهاز التحكم عن بُعد للتلفاز. تضغط 'التالي' للانتقال للقناة التالية، 'السابق' للعودة. لا تحتاج لمعرفة ما إذا كانت القنوات مُخزنة في مصفوفة، قائمة مرتبطة، أو قاعدة بيانات - جهاز التحكم (المُكرر) يخفي هذه التفاصيل. فقط تتنقل عبر القنوات بشكل تسلسلي دون الاهتمام ببنية تخزين القنوات الداخلية.",
        ),
        StrContent(
          "في Dart، Iterator مدمج في اللغة. كل Iterable<T> يمكنه إنتاج Iterator<T>. عندما تستخدم حلقات for-in، فأنت تستخدم مُكررات خلف الكواليس. النمط أساسي جداً بحيث يُدمج بعمق في اللغات الحديثة، مما يجعل التنفيذ اليدوي نادراً ما يكون ضرورياً.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "المُكرر: واجهة مع طرق مثل moveNext() وcurrent",
            "المُكرر المحدد: ينفذ خوارزمية الاجتياز لمجموعة محددة",
            "القابل للتكرار: مجموعة يمكنها إنشاء مُكرر",
            "العميل: يستخدم المُكرر للاجتياز دون معرفة داخليات المجموعة",
          ],
        ),
        DiagramContent(
          r"تدفق النمط:\nالمجموعة (Iterable)\n    ↓\ncreateIterator()\n    ↓\nIterator\n  - moveNext()\n  - current\n  - reset() [اختياري]",
        ),
        StrContent(
          "حالات الاستخدام الشائعة: اجتياز أي مجموعة (قوائم، مجموعات، خرائط، أشجار)، تنفيذ اجتيازات مجموعة مخصصة (عمق أولاً، عرض أولاً)، الترقيم، والتقييم الكسول لمجموعات البيانات الكبيرة. في Dart، ستستخدم في الغالب المُكررات المدمجة، لكن المُكررات المخصصة مفيدة لهياكل البيانات المعقدة.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Custom Iterator for Tree Structure
        StrCodeBlock(r'''// Example 1: Custom Iterator for Tree Traversal
// Use case: Depth-first and breadth-first traversal of a tree

class TreeNode<T> {
  final T value;
  final List<TreeNode<T>> children;

  TreeNode(this.value, [List<TreeNode<T>>? children])
      : children = children ?? [];

  void addChild(TreeNode<T> child) {
    children.add(child);
  }
}

// Custom Iterator for depth-first traversal
class DepthFirstIterator<T> implements Iterator<T> {
  final TreeNode<T> root;
  final List<TreeNode<T>> _stack = [];
  TreeNode<T>? _current;
  bool _started = false;

  DepthFirstIterator(this.root);

  @override
  T get current {
    if (_current == null) {
      throw StateError('No current element');
    }
    return _current!.value;
  }

  @override
  bool moveNext() {
    if (!_started) {
      _started = true;
      _stack.add(root);
    }

    if (_stack.isEmpty) {
      _current = null;
      return false;
    }

    _current = _stack.removeLast();

    // Add children in reverse order so left child is processed first
    for (int i = _current!.children.length - 1; i >= 0; i--) {
      _stack.add(_current!.children[i]);
    }

    return true;
  }
}

// Custom Iterator for breadth-first traversal
class BreadthFirstIterator<T> implements Iterator<T> {
  final TreeNode<T> root;
  final List<TreeNode<T>> _queue = [];
  TreeNode<T>? _current;
  bool _started = false;

  BreadthFirstIterator(this.root);

  @override
  T get current {
    if (_current == null) {
      throw StateError('No current element');
    }
    return _current!.value;
  }

  @override
  bool moveNext() {
    if (!_started) {
      _started = true;
      _queue.add(root);
    }

    if (_queue.isEmpty) {
      _current = null;
      return false;
    }

    _current = _queue.removeAt(0);
    _queue.addAll(_current!.children);

    return true;
  }
}

// Make TreeNode iterable with different strategies
class IterableTree<T> extends Iterable<T> {
  final TreeNode<T> root;
  final bool depthFirst;

  IterableTree(this.root, {this.depthFirst = true});

  @override
  Iterator<T> get iterator =>
      depthFirst ? DepthFirstIterator(root) : BreadthFirstIterator(root);
}

void main() {
  // Build a tree:
  //        A
  //      / | \
  //     B  C  D
  //    /|     |
  //   E F     G

  final root = TreeNode('A');
  final b = TreeNode('B');
  final c = TreeNode('C');
  final d = TreeNode('D');
  final e = TreeNode('E');
  final f = TreeNode('F');
  final g = TreeNode('G');

  root.addChild(b);
  root.addChild(c);
  root.addChild(d);
  b.addChild(e);
  b.addChild(f);
  d.addChild(g);

  print('=== Tree Iterator Pattern ===');
  print('Tree structure:');
  print('        A');
  print('      / | \\');
  print('     B  C  D');
  print('    /|     |');
  print('   E F     G');
  print('');

  // Depth-first traversal
  print('--- Depth-First Traversal (A, B, E, F, C, D, G) ---');
  final depthFirst = IterableTree(root, depthFirst: true);
  for (final value in depthFirst) {
    print('Visited: $value');
  }
  print('');

  // Breadth-first traversal
  print('--- Breadth-First Traversal (A, B, C, D, E, F, G) ---');
  final breadthFirst = IterableTree(root, depthFirst: false);
  for (final value in breadthFirst) {
    print('Visited: $value');
  }
  print('');

  // Manual iteration
  print('--- Manual Iteration ---');
  final iterator = DepthFirstIterator(root);
  int count = 0;
  while (iterator.moveNext()) {
    count++;
    print('Node $count: ${iterator.current}');
  }
}'''),

        // Example 2: Pagination Iterator
        StrCodeBlock(r'''// Example 2: Paginated Data Iterator
// Use case: Iterating through API responses page by page

class DataPage<T> {
  final List<T> items;
  final int pageNumber;
  final bool hasMore;

  DataPage(this.items, this.pageNumber, this.hasMore);
}

// Simulate API that returns paginated data
class PaginatedApi<T> {
  final List<T> _allData;
  final int _pageSize;

  PaginatedApi(this._allData, {int pageSize = 10}) : _pageSize = pageSize;

  Future<DataPage<T>> fetchPage(int pageNumber) async {
    // Simulate network delay
    await Future.delayed(const Duration(milliseconds: 100));

    final startIndex = (pageNumber - 1) * _pageSize;
    final endIndex = (startIndex + _pageSize).clamp(0, _allData.length);

    if (startIndex >= _allData.length) {
      return DataPage([], pageNumber, false);
    }

    final items = _allData.sublist(startIndex, endIndex);
    final hasMore = endIndex < _allData.length;

    print('API: Fetched page $pageNumber (${items.length} items, hasMore: $hasMore)');
    return DataPage(items, pageNumber, hasMore);
  }
}

// Pagination Iterator
class PaginatedIterator<T> {
  final PaginatedApi<T> api;
  int _currentPage = 0;
  List<T> _currentPageItems = [];
  int _currentItemIndex = 0;
  bool _hasMorePages = true;
  T? _current;

  PaginatedIterator(this.api);

  T get current {
    if (_current == null) {
      throw StateError('No current element - call moveNext() first');
    }
    return _current!;
  }

  Future<bool> moveNext() async {
    // If we have items in current page, move to next item
    if (_currentItemIndex < _currentPageItems.length) {
      _current = _currentPageItems[_currentItemIndex];
      _currentItemIndex++;
      return true;
    }

    // No more pages available
    if (!_hasMorePages) {
      _current = null;
      return false;
    }

    // Fetch next page
    _currentPage++;
    final page = await api.fetchPage(_currentPage);
    _currentPageItems = page.items;
    _currentItemIndex = 0;
    _hasMorePages = page.hasMore;

    // If page is empty, no more elements
    if (_currentPageItems.isEmpty) {
      _current = null;
      return false;
    }

    // Return first item from new page
    _current = _currentPageItems[_currentItemIndex];
    _currentItemIndex++;
    return true;
  }

  // Convenience method to get all remaining items
  Future<List<T>> getAllRemaining() async {
    final items = <T>[];
    while (await moveNext()) {
      items.add(current);
    }
    return items;
  }
}

void main() async {
  print('=== Paginated Iterator ===');

  // Create API with 47 items, 10 per page
  final allData = List.generate(47, (i) => 'Item ${i + 1}');
  final api = PaginatedApi(allData, pageSize: 10);

  final iterator = PaginatedIterator(api);

  print('--- Iterating first 15 items manually ---');
  int count = 0;
  while (count < 15 && await iterator.moveNext()) {
    count++;
    print('$count: ${iterator.current}');
  }

  print('');
  print('--- Getting all remaining items ---');
  final remaining = await iterator.getAllRemaining();
  print('Retrieved ${remaining.length} remaining items');
  print('First few: ${remaining.take(5).join(", ")}');
  print('Last few: ${remaining.skip(remaining.length - 5).join(", ")}');
}'''),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Separates collection from traversal algorithm",
        "Single Responsibility Principle - collection and traversal are separate",
        "Multiple iterators can traverse same collection simultaneously",
        "Can implement different traversal algorithms without changing collection",
        "Provides uniform interface for traversing different collections",
      ],
      ar: [
        "يفصل المجموعة عن خوارزمية الاجتياز",
        "مبدأ المسؤولية الواحدة - المجموعة والاجتياز منفصلان",
        "يمكن لعدة مُكررات اجتياز نفس المجموعة في وقت واحد",
        "يمكن تنفيذ خوارزميات اجتياز مختلفة دون تغيير المجموعة",
        "يوفر واجهة موحدة لاجتياز مجموعات مختلفة",
      ],
    ),
    cons: LocSL(
      en: [
        "Overkill for simple collections with straightforward traversal",
        "Less efficient than direct access for some collections",
        "In Dart, built-in iterators handle most use cases",
      ],
      ar: [
        "مبالغ فيه للمجموعات البسيطة ذات الاجتياز المباشر",
        "أقل كفاءة من الوصول المباشر لبعض المجموعات",
        "في Dart، المُكررات المدمجة تتعامل مع معظم حالات الاستخدام",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Iterator when:"),
        ULContent(
          value: [
            "You need multiple ways to traverse a collection",
            "You want to hide collection's internal structure",
            "You need to traverse complex data structures (trees, graphs)",
            "You want to support multiple simultaneous traversals",
          ],
        ),
        NoteContent(
          "In Dart, prefer using built-in Iterable<T> and Iterator<T> interfaces. Only implement custom iterators for complex data structures or non-standard traversals.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent("استخدم المُكرر عندما:"),
        ULContent(
          value: [
            "تحتاج لطرق متعددة لاجتياز مجموعة",
            "تريد إخفاء البنية الداخلية للمجموعة",
            "تحتاج لاجتياز هياكل بيانات معقدة (أشجار، رسوم بيانية)",
            "تريد دعم اجتيازات متزامنة متعددة",
          ],
        ),
        NoteContent(
          "في Dart، فضّل استخدام واجهات Iterable<T> وIterator<T> المدمجة. نفّذ مُكررات مخصصة فقط لهياكل البيانات المعقدة أو الاجتيازات غير القياسية.",
          type: .tip,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Implementing custom iterators when built-in ones suffice",
        "Not handling empty collections properly",
        "Modifying collection while iterating (causes concurrent modification errors)",
        "Not implementing Iterator interface correctly",
      ],
      ar: [
        "تنفيذ مُكررات مخصصة عندما تكفي المدمجة",
        "عدم التعامل مع المجموعات الفارغة بشكل صحيح",
        "تعديل المجموعة أثناء التكرار (يسبب أخطاء التعديل المتزامن)",
        "عدم تنفيذ واجهة Iterator بشكل صحيح",
      ],
    ),
    relatedPatterns: [PK.composite, PK.factoryMethod, PK.memento],
    oftenConfusedWith: [],
  ),

  // OLD
  // OLD
  // OLD
  PK.mediator: DesignPattern(
    id: PK.mediator,
    title: LocS(en: "Mediator", ar: "الوسيط (Mediator)"),
    description: LocS(
      en: "Defines an object that encapsulates how a set of objects interact",
      ar: "يُعرّف كائناً يغلف كيفية تفاعل مجموعة من الكائنات",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Mediator pattern reduces chaotic dependencies between objects by forcing them to communicate indirectly through a mediator object. This promotes loose coupling by keeping objects from referring to each other explicitly.",
        ),
        StrContent(
          "Instead of components communicating directly (creating a web of dependencies), they send messages to a mediator, which coordinates the interaction. This centralizes complex communications and control logic.",
        ),
        ULContent(
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
        StrContent(
          "نمط الوسيط يقلل التبعيات الفوضوية بين الكائنات من خلال إجبارها على التواصل بشكل غير مباشر عبر كائن وسيط. هذا يعزز الاقتران الفضفاض من خلال منع الكائنات من الإشارة لبعضها مباشرة.",
        ),
        StrContent(
          "بدلاً من تواصل المكونات مباشرة (مما يخلق شبكة من التبعيات)، ترسل رسائل لوسيط، والذي ينسق التفاعل. هذا يركز الاتصالات المعقدة ومنطق التحكم.",
        ),
        ULContent(
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
    examples: LocV(
      en: [
        StrCodeBlock('''abstract class ChatMediator {
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
}'''),
      ],
      ar: [
        StrCodeBlock('''abstract class ChatMediator {
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
}'''),
      ],
    ),
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Mediator when:"),
        ULContent(
          value: [
            "Objects communicate in complex but well-defined ways",
            "Reusing objects is difficult due to dependencies",
            "Behavior distributed among classes should be customizable",
            "You want to avoid tight coupling between components",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الوسيط عندما:"),
        ULContent(
          value: [
            "الكائنات تتواصل بطرق معقدة لكن محددة جيداً",
            "إعادة استخدام الكائنات صعبة بسبب التبعيات",
            "السلوك الموزع بين الفئات يجب أن يكون قابلاً للتخصيص",
            "تريد تجنب الاقتران الوثيق بين المكونات",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.facade, PK.observer, PK.command],
  ),

  PK.memento: DesignPattern(
    id: PK.memento,
    title: LocS(en: "Memento", ar: "التذكار (Memento)"),
    description: LocS(
      en: "Captures and restores an object's internal state without violating encapsulation",
      ar: "يلتقط ويستعيد الحالة الداخلية للكائن دون انتهاك التغليف",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Memento pattern lets you save and restore the previous state of an object without revealing the details of its implementation. It's essential for implementing undo/redo functionality.",
        ),
        StrContent(
          "The pattern uses three key actors: the Originator (creates memento), the Memento (stores state), and the Caretaker (manages mementos without examining their contents).",
        ),
        ULContent(
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
        StrContent(
          "نمط التذكار يتيح لك حفظ واستعادة الحالة السابقة للكائن دون الكشف عن تفاصيل تنفيذه. إنه أساسي لتنفيذ وظيفة التراجع/الإعادة.",
        ),
        StrContent(
          "يستخدم النمط ثلاثة فاعلين رئيسيين: المُنشئ (ينشئ التذكار)، والتذكار (يخزن الحالة)، والوصي (يدير التذكارات دون فحص محتوياتها).",
        ),
        ULContent(
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
    examples: LocV(
      en: [
        StrCodeBlock('''class EditorMemento {
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
}'''),
      ],
      ar: [
        StrCodeBlock('''class EditorMemento {
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
}'''),
      ],
    ),
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Memento when:"),
        ULContent(
          value: [
            "You need to save/restore object state",
            "Direct access to state would expose implementation",
            "Implementing undo/redo functionality",
            "Creating snapshots or checkpoints",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم التذكار عندما:"),
        ULContent(
          value: [
            "تحتاج لحفظ/استعادة حالة الكائن",
            "الوصول المباشر للحالة سيكشف التنفيذ",
            "تنفيذ وظيفة التراجع/الإعادة",
            "إنشاء لقطات أو نقاط تفتيش",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.command, PK.iterator, PK.prototype],
  ),

  PK.observer: DesignPattern(
    id: PK.observer,
    title: LocS(en: "Observer", ar: "المراقب (Observer)"),
    description: LocS(
      en: "Defines a one-to-many dependency so when one object changes state, all dependents are notified",
      ar: "يُعرّف تبعية واحد-إلى-عديد بحيث عندما يتغير كائن حالته، يُخطر جميع المعتمدين",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "The Observer pattern (also known as Publish-Subscribe) defines a subscription mechanism to notify multiple objects about events that happen to the object they're observing.",
        ),
        StrContent(
          "This pattern is fundamental to event-driven programming and is the basis for many reactive frameworks. Observers register with a subject and are automatically notified of changes.",
        ),
        ULContent(
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
        StrContent(
          "نمط المراقب (المعروف أيضاً بالنشر-الاشتراك) يُعرّف آلية اشتراك لإخطار عدة كائنات عن أحداث تحدث للكائن الذي يراقبونه.",
        ),
        StrContent(
          "هذا النمط أساسي للبرمجة المُوجهة بالأحداث وهو أساس العديد من الأطر التفاعلية. المراقبون يسجلون مع موضوع ويُخطرون تلقائياً بالتغييرات.",
        ),
        ULContent(
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
    examples: LocV(
      en: [
        StrCodeBlock('''abstract class Observer {
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
}'''),
      ],
      ar: [
        StrCodeBlock('''abstract class Observer {
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
}'''),
      ],
    ),
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Observer when:"),
        ULContent(
          value: [
            "Change to one object requires changing others",
            "Number of dependent objects is unknown or dynamic",
            "Building event-driven systems",
            "Implementing publish-subscribe patterns",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المراقب عندما:"),
        ULContent(
          value: [
            "التغيير في كائن واحد يتطلب تغيير آخرين",
            "عدد الكائنات المعتمدة غير معروف أو ديناميكي",
            "بناء أنظمة موجهة بالأحداث",
            "تنفيذ أنماط النشر-الاشتراك",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.mediator, PK.singleton, PK.command],
  ),

  PK.state: DesignPattern(
    id: PK.state,
    title: LocS(en: "State", ar: "الحالة (State)"),
    description: LocS(
      en: "Allows an object to alter its behavior when its internal state changes",
      ar: "يسمح للكائن بتغيير سلوكه عندما تتغير حالته الداخلية",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The State pattern allows an object to appear to change its class when its internal state changes. It encapsulates state-specific behavior into separate state classes.",
        ),
        StrContent(
          "Instead of having massive conditional statements, each state becomes a class. The context delegates state-specific behavior to the current state object, making the code cleaner and more maintainable.",
        ),
        ULContent(
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
        StrContent(
          "نمط الحالة يسمح للكائن بالظهور وكأنه يغير فئته عندما تتغير حالته الداخلية. يغلف السلوك الخاص بالحالة في فئات حالة منفصلة.",
        ),
        StrContent(
          "بدلاً من وجود عبارات شرطية ضخمة، تصبح كل حالة فئة. السياق يفوض السلوك الخاص بالحالة لكائن الحالة الحالي، مما يجعل الكود أنظف وأسهل في الصيانة.",
        ),
        ULContent(
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
    examples: LocV(
      en: [
        StrCodeBlock('''abstract class State {
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
}'''),
      ],
      ar: [
        StrCodeBlock('''abstract class State {
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
}'''),
      ],
    ),
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use State when:"),
        ULContent(
          value: [
            "Object behavior depends on its state",
            "Operations have large conditional statements on state",
            "State transitions are complex",
            "You want to avoid duplicate code across states",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الحالة عندما:"),
        ULContent(
          value: [
            "سلوك الكائن يعتمد على حالته",
            "العمليات لديها عبارات شرطية كبيرة على الحالة",
            "انتقالات الحالة معقدة",
            "تريد تجنب تكرار الكود عبر الحالات",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.strategy, PK.singleton, PK.flyweight],
    oftenConfusedWith: [PK.strategy],
  ),

  PK.strategy: DesignPattern(
    id: PK.strategy,
    title: LocS(en: "Strategy", ar: "الاستراتيجية (Strategy)"),
    description: LocS(
      en: "Defines a family of algorithms and makes them interchangeable",
      ar: "يُعرّف عائلة من الخوارزميات ويجعلها قابلة للتبديل",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "The Strategy pattern defines a family of algorithms, encapsulates each one, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it.",
        ),
        StrContent(
          "Instead of implementing a single algorithm directly, the code receives runtime instructions as to which algorithm in a family to use. This is especially useful when you have multiple ways to perform an operation.",
        ),
        ULContent(
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
        StrContent(
          "نمط الاستراتيجية يُعرّف عائلة من الخوارزميات، يغلف كل واحدة، ويجعلها قابلة للتبديل. الاستراتيجية تسمح للخوارزمية بالتنوع بشكل مستقل عن العملاء الذين يستخدمونها.",
        ),
        StrContent(
          "بدلاً من تنفيذ خوارزمية واحدة مباشرة، يتلقى الكود تعليمات وقت التشغيل حول أي خوارزمية في عائلة يجب استخدامها. هذا مفيد بشكل خاص عندما يكون لديك طرق متعددة لأداء عملية.",
        ),
        ULContent(
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
    examples: LocV(
      en: [
        StrCodeBlock('''abstract class PaymentStrategy {
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
}'''),
      ],
      ar: [
        StrCodeBlock('''abstract class PaymentStrategy {
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
}'''),
      ],
    ),
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Strategy when:"),
        ULContent(
          value: [
            "You have multiple ways to perform an operation",
            "You want to switch algorithms at runtime",
            "You want to avoid conditional statements",
            "Algorithms use different data structures",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الاستراتيجية عندما:"),
        ULContent(
          value: [
            "لديك طرق متعددة لأداء عملية",
            "تريد تبديل الخوارزميات في وقت التشغيل",
            "تريد تجنب العبارات الشرطية",
            "الخوارزميات تستخدم هياكل بيانات مختلفة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.state, PK.bridge, PK.decorator],
    oftenConfusedWith: [PK.state],
  ),

  PK.templateMethod: DesignPattern(
    id: PK.templateMethod,
    title: LocS(en: "Template Method", ar: "طريقة القالب (Template Method)"),
    description: LocS(
      en: "Defines the skeleton of an algorithm, letting subclasses override specific steps",
      ar: "يُعرّف هيكل الخوارزمية، مما يسمح للفئات الفرعية بتجاوز خطوات محددة",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "The Template Method pattern defines the skeleton of an algorithm in a base class, allowing subclasses to override specific steps without changing the algorithm's structure.",
        ),
        StrContent(
          "This pattern is one of the most commonly used patterns in framework design. It allows the framework to define the overall algorithm while letting users customize specific parts through inheritance.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Abstract Class: Defines template method and abstract steps",
            "Template Method: Calls primitive operations in fixed order",
            "Primitive Operations: Abstract methods to be implemented by subclasses",
            "Hook Methods: Optional steps with default implementation",
          ],
        ),
        StrContent(
          "The template method uses the Hollywood Principle: \"Don't call us, we'll call you.\" The parent class controls when methods are called, not the subclasses.",
        ),
      ],
      ar: [
        StrContent(
          "نمط طريقة القالب يُعرّف هيكل الخوارزمية في فئة أساسية، مما يسمح للفئات الفرعية بتجاوز خطوات محددة دون تغيير بنية الخوارزمية.",
        ),
        StrContent(
          "هذا النمط هو أحد أكثر الأنماط استخداماً في تصميم الأطر. يسمح للإطار بتعريف الخوارزمية الإجمالية مع السماح للمستخدمين بتخصيص أجزاء محددة من خلال الوراثة.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "الفئة المجردة: تُعرّف طريقة القالب والخطوات المجردة",
            "طريقة القالب: تستدعي العمليات البدائية بترتيب ثابت",
            "العمليات البدائية: طرق مجردة يجب تنفيذها بواسطة الفئات الفرعية",
            "طرق الخطاف: خطوات اختيارية مع تنفيذ افتراضي",
          ],
        ),
        StrContent(
          "طريقة القالب تستخدم مبدأ هوليوود: \"لا تتصل بنا، سنتصل بك.\" الفئة الأم تتحكم في متى تُستدعى الطرق، وليس الفئات الفرعية.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        StrCodeBlock('''abstract class DataParser {
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
}'''),
      ],
      ar: [
        StrCodeBlock('''abstract class DataParser {
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
}'''),
      ],
    ),
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Template Method when:"),
        ULContent(
          value: [
            "You have algorithms with similar structure but different steps",
            "You want to avoid code duplication in similar algorithms",
            "You want to control which parts of algorithm can be customized",
            "You're building frameworks or libraries",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم طريقة القالب عندما:"),
        ULContent(
          value: [
            "لديك خوارزميات ببنية متشابهة لكن خطوات مختلفة",
            "تريد تجنب تكرار الكود في خوارزميات متشابهة",
            "تريد التحكم في أي أجزاء الخوارزمية يمكن تخصيصها",
            "تبني أطر أو مكتبات",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.factoryMethod, PK.strategy, PK.builder],
    oftenConfusedWith: [PK.strategy],
  ),

  PK.visitor: DesignPattern(
    id: PK.visitor,
    title: LocS(en: "Visitor", ar: "الزائر (Visitor)"),
    description: LocS(
      en: "Separates algorithms from objects they operate on by moving operations into visitor classes",
      ar: "يفصل الخوارزميات عن الكائنات التي تعمل عليها بنقل العمليات لفئات الزائر",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "The Visitor pattern lets you separate algorithms from the objects on which they operate. You can add new operations without modifying the classes of the elements on which it operates.",
        ),
        StrContent(
          "This pattern uses a technique called double dispatch. The operation depends on both the type of visitor and the type of element being visited. This solves the problem of adding new operations to existing object structures without modifying those structures.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Visitor: Interface declaring visit methods for each element type",
            "Concrete Visitor: Implements operations for each element type",
            "Element: Interface with accept method taking visitor",
            "Concrete Elements: Call appropriate visitor method",
          ],
        ),
        StrContent(
          "The pattern is most useful when you have a stable object structure but need to add many unrelated operations. It's common in compilers and document processing systems.",
        ),
      ],
      ar: [
        StrContent(
          "نمط الزائر يتيح لك فصل الخوارزميات عن الكائنات التي تعمل عليها. يمكنك إضافة عمليات جديدة دون تعديل فئات العناصر التي تعمل عليها.",
        ),
        StrContent(
          "هذا النمط يستخدم تقنية تسمى الإرسال المزدوج. العملية تعتمد على كل من نوع الزائر ونوع العنصر المُزار. هذا يحل مشكلة إضافة عمليات جديدة لبنى كائنات موجودة دون تعديل تلك البنى.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "الزائر (Visitor): واجهة تعلن طرق الزيارة لكل نوع عنصر",
            "الزائر المحدد: ينفذ العمليات لكل نوع عنصر",
            "العنصر (Element): واجهة مع طريقة قبول تأخذ الزائر",
            "العناصر المحددة: تستدعي طريقة الزائر المناسبة",
          ],
        ),
        StrContent(
          "النمط أكثر فائدة عندما يكون لديك بنية كائنات ثابتة لكن تحتاج لإضافة عمليات كثيرة غير مترابطة. شائع في المُجمعات وأنظمة معالجة المستندات.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        StrCodeBlock('''abstract class Visitor {
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
}'''),
      ],
      ar: [
        StrCodeBlock('''abstract class Visitor {
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
}'''),
      ],
    ),
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Visitor when:"),
        ULContent(
          value: [
            "Object structure is stable but operations change frequently",
            "Many unrelated operations need to be performed on objects",
            "You want to avoid polluting classes with many operations",
            "You need to accumulate state across object structure",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الزائر عندما:"),
        ULContent(
          value: [
            "بنية الكائن ثابتة لكن العمليات تتغير بشكل متكرر",
            "عمليات كثيرة غير مترابطة يجب أداؤها على الكائنات",
            "تريد تجنب تلويث الفئات بعمليات كثيرة",
            "تحتاج لتجميع الحالة عبر بنية الكائن",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.composite, PK.interpreter, PK.iterator],
  ),

  PK.dependencyInjection: DesignPattern(
    id: PK.dependencyInjection,
    title: LocS(
      en: "Dependency Injection",
      ar: "حقن الاعتمادية (Dependency Injection)",
    ),
    description: LocS(
      en: "Provides dependencies to objects from external sources rather than creating them internally",
      ar: "يوفر التبعيات للكائنات من مصادر خارجية بدلاً من إنشائها داخلياً",
    ),
    group: .design,
    type: .behavioral,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "Dependency Injection is a technique where an object receives its dependencies from external sources rather than creating them itself. This is a fundamental principle for achieving Inversion of Control (IoC).",
        ),
        StrContent(
          "DI makes code more testable, maintainable, and flexible by decoupling object creation from usage. Dependencies are 'injected' into objects through constructors, setters, or interface injection.",
        ),
        ULContent(
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
        StrContent(
          "حقن الاعتمادية هي تقنية حيث يتلقى الكائن تبعياته من مصادر خارجية بدلاً من إنشائها بنفسه. هذا مبدأ أساسي لتحقيق عكس التحكم (IoC).",
        ),
        StrContent(
          "DI يجعل الكود أكثر قابلية للاختبار والصيانة والمرونة من خلال فصل إنشاء الكائن عن استخدامه. التبعيات 'تُحقن' في الكائنات من خلال المُنشئات أو المُعدلات أو حقن الواجهة.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Dependency Injection when:"),
        ULContent(
          value: [
            "You want testable code with mockable dependencies",
            "You need to swap implementations",
            "You want to follow SOLID principles",
            "You're building modular, decoupled systems",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم حقن الاعتمادية عندما:"),
        ULContent(
          value: [
            "تريد كوداً قابلاً للاختبار مع تبعيات قابلة للمحاكاة",
            "تحتاج لتبديل التنفيذات",
            "تريد اتباع مبادئ SOLID",
            "تبني أنظمة معيارية ومفصولة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.factoryMethod, PK.serviceLocator, PK.singleton],
  ),

  PK.serviceLocator: DesignPattern(
    id: PK.serviceLocator,
    title: LocS(en: "Service Locator", ar: "موقع الخدمة (Service Locator)"),
    description: LocS(
      en: "Provides a central registry for services that objects can request",
      ar: "يوفر سجلاً مركزياً للخدمات التي يمكن للكائنات طلبها",
    ),
    group: .design,
    type: .behavioral,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "Service Locator encapsulates the process of obtaining services. Instead of having dependencies injected, objects ask a service locator for the services they need.",
        ),
        StrContent(
          "While simpler than full DI containers, Service Locator is often considered an anti-pattern because it hides dependencies and makes testing harder. However, it's still useful in certain scenarios.",
        ),
        ULContent(
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
        StrContent(
          "موقع الخدمة يغلف عملية الحصول على الخدمات. بدلاً من حقن التبعيات، الكائنات تطلب من موقع الخدمة الخدمات التي تحتاجها.",
        ),
        StrContent(
          "بينما أبسط من حاويات DI الكاملة، غالباً ما يُعتبر موقع الخدمة نمطاً مضاداً لأنه يخفي التبعيات ويجعل الاختبار أصعب. ومع ذلك، لا يزال مفيداً في سيناريوهات معينة.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Service Locator when:"),
        ULContent(
          value: [
            "You have a simple application",
            "You can't use constructor injection",
            "Services are optional or conditional",
            "You're working with legacy code",
          ],
        ),
        StrContent("Prefer Dependency Injection when possible."),
      ],
      ar: [
        StrContent("استخدم موقع الخدمة عندما:"),
        ULContent(
          value: [
            "لديك تطبيق بسيط",
            "لا يمكنك استخدام حقن المُنشئ",
            "الخدمات اختيارية أو شرطية",
            "تعمل مع كود قديم",
          ],
        ),
        StrContent("فضّل حقن الاعتمادية عندما يكون ممكناً."),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.dependencyInjection, PK.singleton, PK.factoryMethod],
  ),

  PK.repository: DesignPattern(
    id: PK.repository,
    title: LocS(en: "Repository", ar: "المستودع (Repository)"),
    description: LocS(
      en: "Mediates between domain and data layers using a collection-like interface",
      ar: "يتوسط بين طبقات المجال والبيانات باستخدام واجهة شبيهة بالمجموعة",
    ),
    group: .design,
    type: .behavioral,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Repository pattern encapsulates data access logic and provides a collection-like interface for accessing domain objects. It acts as an in-memory collection of domain entities.",
        ),
        StrContent(
          "Repositories provide a cleaner separation between domain and data layers, making it easier to test business logic and swap data sources. They typically handle CRUD operations and queries.",
        ),
        ULContent(
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
        StrContent(
          "نمط المستودع يغلف منطق الوصول للبيانات ويوفر واجهة شبيهة بالمجموعة للوصول لكائنات المجال. يعمل كمجموعة في الذاكرة لكيانات المجال.",
        ),
        StrContent(
          "المستودعات توفر فصلاً أنظف بين طبقات المجال والبيانات، مما يسهل اختبار منطق العمل وتبديل مصادر البيانات. عادة ما تتعامل مع عمليات CRUD والاستعلامات.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Repository when:"),
        ULContent(
          value: [
            "You want clean separation of concerns",
            "You need to swap data sources",
            "Complex domain logic needs testing",
            "You're following DDD principles",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المستودع عندما:"),
        ULContent(
          value: [
            "تريد فصلاً نظيفاً للاهتمامات",
            "تحتاج لتبديل مصادر البيانات",
            "منطق المجال المعقد يحتاج للاختبار",
            "تتبع مبادئ DDD",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.dataMapper, PK.unitOfWork, PK.specification],
  ),

  PK.unitOfWork: DesignPattern(
    id: PK.unitOfWork,
    title: LocS(en: "Unit of Work", ar: "وحدة العمل (Unit of Work)"),
    description: LocS(
      en: "Maintains a list of changes and coordinates writing them to the database",
      ar: "يحتفظ بقائمة التغييرات وينسق كتابتها لقاعدة البيانات",
    ),
    group: .design,
    type: .behavioral,
    category: .practical,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "Unit of Work maintains a list of objects affected by a business transaction and coordinates writing out changes. It tracks all changes made during a transaction and commits them as a single unit.",
        ),
        StrContent(
          "This pattern is crucial for maintaining data consistency and implementing transactions across multiple repositories. It ensures either all changes succeed or all fail.",
        ),
        ULContent(
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
        StrContent(
          "وحدة العمل تحتفظ بقائمة الكائنات المتأثرة بمعاملة عمل وتنسق كتابة التغييرات. تتتبع جميع التغييرات المُجراة خلال معاملة وتلتزم بها كوحدة واحدة.",
        ),
        StrContent(
          "هذا النمط حاسم للحفاظ على اتساق البيانات وتنفيذ المعاملات عبر مستودعات متعددة. يضمن إما نجاح جميع التغييرات أو فشلها جميعاً.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Unit of Work when:"),
        ULContent(
          value: [
            "You need transactional consistency",
            "Multiple repositories in same transaction",
            "Working with complex domain models",
            "Following Domain-Driven Design",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم وحدة العمل عندما:"),
        ULContent(
          value: [
            "تحتاج لاتساق معاملي",
            "مستودعات متعددة في نفس المعاملة",
            "العمل مع نماذج مجال معقدة",
            "اتباع التصميم الموجه بالمجال",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.repository, PK.dataMapper, PK.memento],
  ),

  PK.specification: DesignPattern(
    id: PK.specification,
    title: LocS(en: "Specification", ar: "المواصفة (Specification)"),
    description: LocS(
      en: "Encapsulates business rules as reusable and combinable objects",
      ar: "يغلف قواعد العمل ككائنات قابلة لإعادة الاستخدام والدمج",
    ),
    group: .design,
    type: .behavioral,
    category: .practical,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "The Specification pattern encapsulates business rules into separate, combinable objects. Specifications can be chained using logical operators (AND, OR, NOT) to create complex business rules.",
        ),
        StrContent(
          "This pattern is particularly useful in Domain-Driven Design for expressing domain rules, validation logic, and query criteria in a clear and testable way.",
        ),
        ULContent(
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
        StrContent(
          "نمط المواصفة يغلف قواعد العمل في كائنات منفصلة وقابلة للدمج. يمكن ربط المواصفات باستخدام عوامل منطقية (AND، OR، NOT) لإنشاء قواعد عمل معقدة.",
        ),
        StrContent(
          "هذا النمط مفيد بشكل خاص في التصميم الموجه بالمجال للتعبير عن قواعد المجال ومنطق التحقق ومعايير الاستعلام بطريقة واضحة وقابلة للاختبار.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Specification when:"),
        ULContent(
          value: [
            "Business rules are complex and reused",
            "You need to combine rules dynamically",
            "Validation logic is scattered",
            "Following Domain-Driven Design",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المواصفة عندما:"),
        ULContent(
          value: [
            "قواعد العمل معقدة ومُعاد استخدامها",
            "تحتاج لدمج القواعد ديناميكياً",
            "منطق التحقق مُبعثر",
            "اتباع التصميم الموجه بالمجال",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.repository, PK.strategy, PK.composite],
  ),

  PK.policy: DesignPattern(
    id: PK.policy,
    title: LocS(en: "Policy", ar: "السياسة (Policy)"),
    description: LocS(
      en: "Encapsulates business policies as pluggable strategy objects",
      ar: "يغلف سياسات العمل ككائنات استراتيجية قابلة للإضافة",
    ),
    group: .design,
    type: .behavioral,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Policy pattern is a variation of Strategy that encapsulates business policies and decision-making logic. It allows business rules to be defined independently and applied consistently.",
        ),
        StrContent(
          "Policies are particularly useful when you have varying business rules that change based on context, configuration, or customer requirements. They make rules explicit and testable.",
        ),
        ULContent(
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
        StrContent(
          "نمط السياسة هو تنويع على الاستراتيجية يغلف سياسات العمل ومنطق اتخاذ القرار. يسمح بتعريف قواعد العمل بشكل مستقل وتطبيقها بشكل متسق.",
        ),
        StrContent(
          "السياسات مفيدة بشكل خاص عندما يكون لديك قواعد عمل متنوعة تتغير بناءً على السياق أو الإعدادات أو متطلبات العميل. تجعل القواعد صريحة وقابلة للاختبار.",
        ),
        ULContent(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Policy when:"),
        ULContent(
          value: [
            "Business rules vary by context",
            "You need configurable decision logic",
            "Rules should be testable separately",
            "Multiple rule sets coexist",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم السياسة عندما:"),
        ULContent(
          value: [
            "قواعد العمل تتنوع حسب السياق",
            "تحتاج لمنطق قرار قابل للتكوين",
            "يجب أن تكون القواعد قابلة للاختبار بشكل منفصل",
            "تتعايش مجموعات قواعد متعددة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.strategy, PK.specification, PK.chainOfResponsibility],
  ),
};
