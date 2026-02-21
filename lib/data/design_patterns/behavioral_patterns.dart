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

  PK.mediator: DesignPattern(
    id: PK.mediator,
    title: LocS(en: "Mediator", ar: "الوسيط (Mediator)"),
    description: LocS(
      en: "Reduces chaotic dependencies between objects by centralizing communication through a mediator",
      ar: "يقلل التبعيات الفوضوية بين الكائنات من خلال مركزية الاتصال عبر وسيط",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Mediator pattern defines an object that encapsulates how a set of objects interact. Instead of objects referring to each other directly, they communicate through the mediator. This reduces coupling between components and makes the system easier to understand and maintain.",
        ),
        AnalogyContent(
          "Think of an airport control tower. Pilots don't communicate directly with each other - that would be chaos with hundreds of planes. Instead, all communication goes through the control tower (mediator). The tower coordinates takeoffs, landings, and traffic. Pilots only talk to the tower, and the tower manages all the complex interactions.",
        ),
        StrContent(
          "Without Mediator, each component needs to know about many other components, creating a web of dependencies. With Mediator, each component only knows about the mediator. The mediator knows about all components and orchestrates their interactions. This makes components more reusable and the system easier to modify.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Mediator: Interface defining communication methods",
            "Concrete Mediator: Implements coordination logic between components",
            "Colleague: Component that communicates via mediator instead of directly",
            "Each colleague holds reference to mediator, not to other colleagues",
          ],
        ),
        DiagramContent(
          r"Without Mediator:\nA ↔ B ↔ C ↔ D (N² connections)\n\nWith Mediator:\nMediator\n ↙ ↓ ↓ ↘\nA  B C  D (N connections)",
        ),
        NoteContent(
          "Mediator vs Observer: Observer is one-to-many broadcast (subjects notify observers). Mediator is many-to-many coordination (colleagues communicate through mediator bidirectionally). Mediator encapsulates complex interactions, Observer simply notifies.",
          type: .important,
        ),
        StrContent(
          "Common use cases in Flutter/Dart: dialog coordination, form field validation (fields notify mediator), chat rooms, game state coordination, and UI component communication. BLoC/Cubit patterns often act as mediators for Flutter widgets.",
        ),
      ],
      ar: [
        StrContent(
          "نمط الوسيط يُعرّف كائناً يُغلف كيفية تفاعل مجموعة من الكائنات. بدلاً من إشارة الكائنات لبعضها البعض مباشرة، تتواصل عبر الوسيط. هذا يقلل الاقتران بين المكونات ويجعل النظام أسهل للفهم والصيانة.",
        ),
        AnalogyContent(
          "فكر في برج مراقبة المطار. الطيارون لا يتواصلون مباشرة مع بعضهم البعض - سيكون ذلك فوضى مع مئات الطائرات. بدلاً من ذلك، جميع الاتصالات تمر عبر برج المراقبة (الوسيط). البرج ينسق الإقلاع والهبوط وحركة المرور. الطيارون يتحدثون فقط للبرج، والبرج يدير جميع التفاعلات المعقدة.",
        ),
        StrContent(
          "بدون الوسيط، كل مكون يحتاج لمعرفة العديد من المكونات الأخرى، مما يخلق شبكة من التبعيات. مع الوسيط، كل مكون يعرف فقط عن الوسيط. الوسيط يعرف عن جميع المكونات ويُنسق تفاعلاتها. هذا يجعل المكونات أكثر قابلية لإعادة الاستخدام والنظام أسهل للتعديل.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "الوسيط: واجهة تحدد طرق الاتصال",
            "الوسيط المحدد: ينفذ منطق التنسيق بين المكونات",
            "الزميل: مكون يتواصل عبر الوسيط بدلاً من المباشر",
            "كل زميل يحتفظ بمرجع للوسيط، وليس لزملاء آخرين",
          ],
        ),
        DiagramContent(
          r"بدون الوسيط:\nA ↔ B ↔ C ↔ D (N² اتصالات)\n\nمع الوسيط:\nالوسيط\n ↙ ↓ ↓ ↘\nA  B C  D (N اتصالات)",
        ),
        NoteContent(
          "الوسيط مقابل المراقب: المراقب هو بث واحد لمتعدد (الموضوعات تُخطر المراقبين). الوسيط هو تنسيق متعدد لمتعدد (الزملاء يتواصلون عبر الوسيط بشكل ثنائي). الوسيط يُغلف التفاعلات المعقدة، المراقب ببساطة يُخطر.",
          type: .important,
        ),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: تنسيق الحوارات، التحقق من حقول النماذج (الحقول تُخطر الوسيط)، غرف الدردشة، تنسيق حالة اللعبة، واتصال مكونات واجهة المستخدم. أنماط BLoC/Cubit غالباً تعمل كوسطاء لويدجات Flutter.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Chat Room Mediator
        StrCodeBlock(r"""// Example 1: Chat Room Mediator
// Use case: Coordinating messages between chat participants

// Mediator interface
abstract class ChatMediator {
  void sendMessage(String message, User sender);
  void addUser(User user);
  void removeUser(User user);
}

// Colleague: User
class User {
  final String name;
  final ChatMediator mediator;

  User(this.name, this.mediator) {
    mediator.addUser(this);
  }

  void send(String message) {
    print('$name sends: $message');
    mediator.sendMessage(message, this);
  }

  void receive(String message, User sender) {
    print('$name received from ${sender.name}: $message');
  }
}

// Concrete Mediator: Chat Room
class ChatRoom implements ChatMediator {
  final String roomName;
  final List<User> _users = [];

  ChatRoom(this.roomName);

  @override
  void addUser(User user) {
    _users.add(user);
    print('[ChatRoom $roomName] ${user.name} joined');
  }

  @override
  void removeUser(User user) {
    _users.remove(user);
    print('[ChatRoom $roomName] ${user.name} left');
  }

  @override
  void sendMessage(String message, User sender) {
    // Send to all users except sender
    for (final user in _users) {
      if (user != sender) {
        user.receive(message, sender);
      }
    }
  }

  void broadcast(String announcement) {
    print('[ChatRoom $roomName] Broadcasting: $announcement');
    for (final user in _users) {
      print('  → ${user.name} received: $announcement');
    }
  }
}

void main() {
  print('=== Chat Room Mediator Pattern ===');
  print('');

  final chatRoom = ChatRoom('Flutter Developers');

  final alice = User('Alice', chatRoom);
  final bob = User('Bob', chatRoom);
  final charlie = User('Charlie', chatRoom);

  print('');
  print('--- Alice sends a message ---');
  alice.send('Hi everyone! 👋');

  print('');
  print('--- Bob responds ---');
  bob.send('Hey Alice! How are you?');

  print('');
  print('--- Charlie joins the conversation ---');
  charlie.send('Hello team!');

  print('');
  print('--- Chat room announcement ---');
  chatRoom.broadcast('Meeting starts in 5 minutes');
}"""),

        // Example 2: Advanced - Form Mediator
        StrCodeBlock(r"""// Example 2: Form Validation Mediator
// Use case: Coordinating validation between interdependent form fields

import 'dart:async';

// Mediator interface
abstract class FormMediator {
  void notifyFieldChanged(FormField field, String value);
  void requestValidation(FormField field);
}

// Colleague: Form Field
abstract class FormField {
  final String name;
  final FormMediator mediator;
  String _value = '';
  String? _error;

  FormField(this.name, this.mediator);

  String get value => _value;
  String? get error => _error;
  bool get isValid => _error == null;

  void setValue(String value) {
    _value = value;
    mediator.notifyFieldChanged(this, value);
  }

  void setError(String? error) {
    _error = error;
  }

  String? validate(Map<String, String> allValues);
}

// Concrete Fields
class EmailField extends FormField {
  EmailField(super.name, super.mediator);

  @override
  String? validate(Map<String, String> allValues) {
    if (value.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$').hasMatch(value)) {
      return 'Invalid email format';
    }
    return null;
  }
}

class PasswordField extends FormField {
  PasswordField(super.name, super.mediator);

  @override
  String? validate(Map<String, String> allValues) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain uppercase letter';
    }
    return null;
  }
}

class ConfirmPasswordField extends FormField {
  ConfirmPasswordField(super.name, super.mediator);

  @override
  String? validate(Map<String, String> allValues) {
    if (value.isEmpty) {
      return 'Please confirm password';
    }
    
    // This field depends on password field - mediator provides this
    final password = allValues['password'] ?? '';
    if (value != password) {
      return 'Passwords do not match';
    }
    
    return null;
  }
}

class AgeField extends FormField {
  AgeField(super.name, super.mediator);

  @override
  String? validate(Map<String, String> allValues) {
    if (value.isEmpty) {
      return 'Age is required';
    }
    
    final age = int.tryParse(value);
    if (age == null) {
      return 'Age must be a number';
    }
    
    if (age < 18) {
      return 'You must be at least 18 years old';
    }
    
    if (age > 120) {
      return 'Invalid age';
    }
    
    return null;
  }
}

// Concrete Mediator: Registration Form
class RegistrationFormMediator implements FormMediator {
  final Map<String, FormField> _fields = {};
  final _validationController = StreamController<bool>.broadcast();

  Stream<bool> get validationStream => _validationController.stream;

  void registerField(FormField field) {
    _fields[field.name] = field;
  }

  @override
  void notifyFieldChanged(FormField field, String value) {
    print('Mediator: ${field.name} changed to "$value"');
    
    // Validate the changed field
    requestValidation(field);
    
    // If it's password, also revalidate confirm password
    if (field.name == 'password' && _fields.containsKey('confirmPassword')) {
      requestValidation(_fields['confirmPassword']!);
    }
  }

  @override
  void requestValidation(FormField field) {
    final allValues = _fields.map((name, field) => MapEntry(name, field.value));
    final error = field.validate(allValues);
    field.setError(error);
    
    if (error != null) {
      print('  ✗ ${field.name}: $error');
    } else {
      print('  ✓ ${field.name}: valid');
    }
    
    // Notify if entire form is valid
    _validationController.add(isFormValid());
  }

  bool isFormValid() {
    return _fields.values.every((field) => field.isValid);
  }

  void validateAll() {
    print('Mediator: Validating all fields');
    for (final field in _fields.values) {
      requestValidation(field);
    }
  }

  Map<String, String> getValues() {
    return _fields.map((name, field) => MapEntry(name, field.value));
  }

  void dispose() {
    _validationController.close();
  }
}

void main() async {
  print('=== Form Validation Mediator ===');
  print('');

  final formMediator = RegistrationFormMediator();

  // Create fields - they register with mediator
  final email = EmailField('email', formMediator);
  final password = PasswordField('password', formMediator);
  final confirmPassword = ConfirmPasswordField('confirmPassword', formMediator);
  final age = AgeField('age', formMediator);

  formMediator.registerField(email);
  formMediator.registerField(password);
  formMediator.registerField(confirmPassword);
  formMediator.registerField(age);

  // Listen to form validation state
  formMediator.validationStream.listen((isValid) {
    print('Form valid: $isValid');
  });

  print('--- User fills email ---');
  email.setValue('alice@example.com');

  print('');
  print('--- User fills password ---');
  password.setValue('SecurePass123');

  print('');
  print('--- User fills confirm password (wrong) ---');
  confirmPassword.setValue('WrongPassword');

  print('');
  print('--- User corrects confirm password ---');
  confirmPassword.setValue('SecurePass123');

  print('');
  print('--- User fills age ---');
  age.setValue('25');

  print('');
  print('--- Validate entire form ---');
  formMediator.validateAll();

  if (formMediator.isFormValid()) {
    print('');
    print('✓ Form is valid! Ready to submit:');
    final values = formMediator.getValues();
    values.forEach((key, value) {
      print('  $key: ${key == 'password' || key == 'confirmPassword' ? '***' : value}');
    });
  }

  formMediator.dispose();
}"""),

        // Example 3: Aircraft Control Tower
        StrCodeBlock(r"""// Example 3: Aircraft Control Tower Mediator
// Use case: Coordinating takeoffs and landings

enum FlightStatus { taxiing, readyForTakeoff, flying, requestingLanding, landed }

// Colleague: Aircraft
class Aircraft {
  final String flightNumber;
  final ControlTower tower;
  FlightStatus _status = FlightStatus.taxiing;

  Aircraft(this.flightNumber, this.tower) {
    tower.registerAircraft(this);
  }

  FlightStatus get status => _status;

  void requestTakeoff() {
    print('$flightNumber: Requesting takeoff clearance');
    _status = FlightStatus.readyForTakeoff;
    tower.requestTakeoff(this);
  }

  void requestLanding() {
    print('$flightNumber: Requesting landing clearance');
    _status = FlightStatus.requestingLanding;
    tower.requestLanding(this);
  }

  void grantedTakeoff() {
    print('$flightNumber: ✈️ Taking off');
    _status = FlightStatus.flying;
    tower.notifyTookOff(this);
  }

  void grantedLanding(int runway) {
    print('$flightNumber: 🛬 Landing on runway $runway');
    _status = FlightStatus.landed;
    tower.notifyLanded(this, runway);
  }

  void deniedTakeoff(String reason) {
    print('$flightNumber: ⏸️ Takeoff denied - $reason');
  }

  void deniedLanding(String reason) {
    print('$flightNumber: ⏸️ Landing denied - $reason');
  }
}

// Mediator: Control Tower
class ControlTower {
  final String airportCode;
  final List<Aircraft> _registeredAircraft = [];
  final Map<int, bool> _runways = {1: true, 2: true, 3: true}; // runway: available
  final List<Aircraft> _takeoffQueue = [];
  final List<Aircraft> _landingQueue = [];

  ControlTower(this.airportCode);

  void registerAircraft(Aircraft aircraft) {
    _registeredAircraft.add(aircraft);
    print('Tower $airportCode: ${aircraft.flightNumber} registered');
  }

  void requestTakeoff(Aircraft aircraft) {
    print('Tower $airportCode: Processing takeoff request from ${aircraft.flightNumber}');
    
    // Check if any runway is available
    final availableRunway = _runways.entries
        .where((e) => e.value)
        .map((e) => e.key)
        .firstOrNull;

    if (availableRunway != null) {
      // Check if landing queue is empty (priority to landings)
      if (_landingQueue.isEmpty) {
        _runways[availableRunway] = false;
        print('Tower $airportCode: Cleared ${aircraft.flightNumber} for takeoff on runway $availableRunway');
        aircraft.grantedTakeoff();
      } else {
        print('Tower $airportCode: ${aircraft.flightNumber} hold position - landing traffic');
        _takeoffQueue.add(aircraft);
        aircraft.deniedTakeoff('Landing traffic has priority');
      }
    } else {
      print('Tower $airportCode: ${aircraft.flightNumber} hold position - no runway available');
      _takeoffQueue.add(aircraft);
      aircraft.deniedTakeoff('All runways occupied');
    }
  }

  void requestLanding(Aircraft aircraft) {
    print('Tower $airportCode: Processing landing request from ${aircraft.flightNumber}');
    
    final availableRunway = _runways.entries
        .where((e) => e.value)
        .map((e) => e.key)
        .firstOrNull;

    if (availableRunway != null) {
      _runways[availableRunway] = false;
      print('Tower $airportCode: Cleared ${aircraft.flightNumber} to land on runway $availableRunway');
      aircraft.grantedLanding(availableRunway);
    } else {
      print('Tower $airportCode: ${aircraft.flightNumber} enter holding pattern');
      _landingQueue.add(aircraft);
      aircraft.deniedLanding('All runways occupied - hold at 10,000 feet');
    }
  }

  void notifyTookOff(Aircraft aircraft) {
    print('Tower $airportCode: ${aircraft.flightNumber} airborne');
    _processQueues();
  }

  void notifyLanded(Aircraft aircraft, int runway) {
    print('Tower $airportCode: ${aircraft.flightNumber} landed, runway $runway clear');
    
    // Free the runway after landing
    Future.delayed(const Duration(milliseconds: 500), () {
      _runways[runway] = true;
      print('Tower $airportCode: Runway $runway now available');
      _processQueues();
    });
  }

  void _processQueues() {
    // Process landing queue first (priority)
    if (_landingQueue.isNotEmpty) {
      final waitingAircraft = _landingQueue.removeAt(0);
      requestLanding(waitingAircraft);
    } else if (_takeoffQueue.isNotEmpty) {
      final waitingAircraft = _takeoffQueue.removeAt(0);
      requestTakeoff(waitingAircraft);
    }
  }

  void printStatus() {
    print('');
    print('=== Tower Status ===');
    print('Runways: ${_runways.entries.map((e) => '${e.key}:${e.value ? 'free' : 'busy'}').join(', ')}');
    print('Takeoff queue: ${_takeoffQueue.map((a) => a.flightNumber).join(', ')}');
    print('Landing queue: ${_landingQueue.map((a) => a.flightNumber).join(', ')}');
  }
}

void main() async {
  print('=== Aircraft Control Tower Mediator ===');
  print('');

  final tower = ControlTower('JFK');

  final flight1 = Aircraft('AA101', tower);
  final flight2 = Aircraft('UA202', tower);
  final flight3 = Aircraft('DL303', tower);
  final flight4 = Aircraft('SW404', tower);
  final flight5 = Aircraft('BA505', tower); // Incoming flight

  print('');
  print('--- Multiple takeoff requests ---');
  flight1.requestTakeoff();
  
  await Future.delayed(const Duration(milliseconds: 100));
  flight2.requestTakeoff();
  
  await Future.delayed(const Duration(milliseconds: 100));
  flight3.requestTakeoff();

  tower.printStatus();

  print('');
  print('--- Incoming flight requests landing (priority) ---');
  flight5.requestLanding();

  tower.printStatus();

  print('');
  print('--- Waiting for runways to clear ---');
  await Future.delayed(const Duration(milliseconds: 600));
  
  tower.printStatus();
}"""),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Reduces coupling between colleagues - they only know mediator",
        "Centralizes control logic in one place",
        "Single Responsibility Principle - mediator handles coordination",
        "Easier to understand and modify communication flow",
        "Colleagues can be reused independently",
        "Open/Closed - can add new colleagues without changing existing ones",
      ],
      ar: [
        "يقلل الاقتران بين الزملاء - يعرفون فقط الوسيط",
        "يُمركز منطق التحكم في مكان واحد",
        "مبدأ المسؤولية الواحدة - الوسيط يتعامل مع التنسيق",
        "أسهل لفهم وتعديل تدفق الاتصال",
        "يمكن إعادة استخدام الزملاء بشكل مستقل",
        "المفتوح/المغلق - يمكن إضافة زملاء جدد دون تغيير الموجودين",
      ],
    ),
    cons: LocSL(
      en: [
        "Mediator can become a 'god object' with too much responsibility",
        "Can be complex if mediator logic becomes complicated",
        "Single point of failure if mediator has bugs",
      ],
      ar: [
        "الوسيط قد يصبح 'كائن إله' بمسؤولية كبيرة جداً",
        "قد يكون معقداً إذا أصبح منطق الوسيط معقداً",
        "نقطة فشل واحدة إذا كان الوسيط به أخطاء",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Mediator when:"),
        ULContent(
          value: [
            "Set of objects communicate in complex but well-defined ways",
            "Reusing objects is difficult due to many dependencies",
            "Behavior distributed between classes should be customizable without subclassing",
            "You want to centralize complex communications and control logic",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الوسيط عندما:"),
        ULContent(
          value: [
            "مجموعة من الكائنات تتواصل بطرق معقدة لكن محددة جيداً",
            "إعادة استخدام الكائنات صعبة بسبب التبعيات الكثيرة",
            "السلوك الموزع بين الفئات يجب أن يكون قابلاً للتخصيص دون الفئات الفرعية",
            "تريد مركزية الاتصالات المعقدة ومنطق التحكم",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Making mediator do too much - it should coordinate, not implement business logic",
        "Not keeping mediator focused - one mediator per cohesive group of colleagues",
        "Colleagues communicating directly instead of through mediator",
        "Using mediator for simple one-to-many relationships (use Observer instead)",
      ],
      ar: [
        "جعل الوسيط يفعل الكثير - يجب أن ينسق، وليس تنفيذ منطق العمل",
        "عدم إبقاء الوسيط مركزاً - وسيط واحد لكل مجموعة متماسكة من الزملاء",
        "الزملاء يتواصلون مباشرة بدلاً من عبر الوسيط",
        "استخدام الوسيط لعلاقات بسيطة واحد لمتعدد (استخدم المراقب بدلاً من ذلك)",
      ],
    ),
    relatedPatterns: [PK.observer, PK.facade, PK.command],
    oftenConfusedWith: [PK.observer, PK.facade],
  ),

  PK.memento: DesignPattern(
    id: PK.memento,
    title: LocS(en: "Memento", ar: "التذكار (Memento)"),
    description: LocS(
      en: "Captures and externalizes object's internal state for later restoration without violating encapsulation",
      ar: "يلتقط ويُخارج الحالة الداخلية للكائن للاستعادة لاحقاً دون انتهاك التغليف",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Memento pattern captures an object's internal state so it can be restored later, without exposing the object's implementation details. It's like taking a snapshot of an object at a point in time. The memento stores the state, a caretaker manages mementos, and the originator creates and restores from mementos.",
        ),
        AnalogyContent(
          "Think of a video game's save system. You can save your game progress at any point (create memento). The save file stores your level, health, inventory, etc. (memento holds state). Later, you can load that save to return to that exact state (restore from memento). The game doesn't expose how saves are stored - you just use save/load.",
        ),
        StrContent(
          "Memento preserves encapsulation boundaries. The originator (object being saved) is the only one that knows its internal structure. The memento is opaque to the caretaker - it just stores and returns mementos without inspecting them. This is different from simply exposing getters/setters, which breaks encapsulation.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Originator: Object whose state is being saved/restored",
            "Memento: Stores the originator's internal state",
            "Caretaker: Manages mementos (when to save, which to restore) but never modifies them",
            "Memento is opaque to caretaker - only originator can read/write it",
          ],
        ),
        DiagramContent(
          r"Pattern Flow:\nOriginator.createMemento() → Memento\n     ↓                          ↓\nstores state              Caretaker stores\n     ↓                          ↓\nOriginator.restore(memento) ← retrieves",
        ),
        NoteContent(
          "Memento vs Command: Command stores operations (undo by executing reverse operation). Memento stores states (undo by restoring previous state). Use Command when undo logic is simple (reverse operation). Use Memento when reversal is complex or impossible (restore to snapshot is easier).",
          type: .important,
        ),
        StrContent(
          "Common use cases in Flutter/Dart: undo/redo systems, transaction rollback, version history, form state preservation, game saves, and editor snapshots. Works well with Command pattern - commands create mementos before executing.",
        ),
      ],
      ar: [
        StrContent(
          "نمط التذكار يلتقط الحالة الداخلية لكائن بحيث يمكن استعادتها لاحقاً، دون الكشف عن تفاصيل تنفيذ الكائن. إنه مثل أخذ لقطة للكائن في نقطة زمنية. التذكار يخزن الحالة، الوصي يدير التذكارات، والمُنشئ يُنشئ ويستعيد من التذكارات.",
        ),
        AnalogyContent(
          "فكر في نظام حفظ لعبة فيديو. يمكنك حفظ تقدم لعبتك في أي نقطة (إنشاء تذكار). ملف الحفظ يخزن مستواك، صحتك، مخزونك، إلخ (التذكار يحتفظ بالحالة). لاحقاً، يمكنك تحميل ذلك الحفظ للعودة لتلك الحالة بالضبط (الاستعادة من التذكار). اللعبة لا تكشف كيفية تخزين الحفوظات - أنت فقط تستخدم حفظ/تحميل.",
        ),
        StrContent(
          "التذكار يحفظ حدود التغليف. المُنشئ (الكائن المحفوظ) هو الوحيد الذي يعرف بنيته الداخلية. التذكار غامض للوصي - فقط يخزن ويُرجع التذكارات دون فحصها. هذا مختلف عن مجرد كشف getters/setters، الذي يكسر التغليف.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "المُنشئ: الكائن الذي يتم حفظ/استعادة حالته",
            "التذكار: يخزن الحالة الداخلية للمُنشئ",
            "الوصي: يدير التذكارات (متى يحفظ، أيها يستعيد) لكن لا يعدلها أبداً",
            "التذكار غامض للوصي - فقط المُنشئ يمكنه قراءته/كتابته",
          ],
        ),
        DiagramContent(
          r"تدفق النمط:\nالمُنشئ.createMemento() → التذكار\n     ↓                          ↓\nيخزن الحالة               الوصي يخزن\n     ↓                          ↓\nالمُنشئ.restore(memento) ← يسترجع",
        ),
        NoteContent(
          "التذكار مقابل الأمر: الأمر يخزن العمليات (التراجع بتنفيذ العملية العكسية). التذكار يخزن الحالات (التراجع باستعادة الحالة السابقة). استخدم الأمر عندما يكون منطق التراجع بسيطاً (عملية عكسية). استخدم التذكار عندما يكون العكس معقداً أو مستحيلاً (الاستعادة للقطة أسهل).",
          type: .important,
        ),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: أنظمة التراجع/الإعادة، استرجاع المعاملات، سجل الإصدارات، الحفاظ على حالة النموذج، حفوظات الألعاب، ولقطات المحرر. يعمل جيداً مع نمط الأمر - الأوامر تُنشئ تذكارات قبل التنفيذ.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Text Editor with Undo/Redo
        StrCodeBlock(r"""// Example 1: Text Editor with Memento-based Undo/Redo
// Use case: Saving and restoring editor state

// Memento: Stores editor state
class EditorMemento {
  final String content;
  final int cursorPosition;
  final DateTime timestamp;

  EditorMemento({
    required this.content,
    required this.cursorPosition,
  }) : timestamp = DateTime.now();

  @override
  String toString() => 
      'Memento(cursor: $cursorPosition, length: ${content.length}, time: ${timestamp.toIso8601String()})';
}

// Originator: Text Editor
class TextEditor {
  String _content = '';
  int _cursorPosition = 0;

  String get content => _content;
  int get cursorPosition => _cursorPosition;

  void write(String text) {
    _content = _content.substring(0, _cursorPosition) +
        text +
        _content.substring(_cursorPosition);
    _cursorPosition += text.length;
    print('Wrote: "$text" at position ${_cursorPosition - text.length}');
    print('Content: "$_content"');
  }

  void delete(int count) {
    if (_cursorPosition >= count) {
      _content = _content.substring(0, _cursorPosition - count) +
          _content.substring(_cursorPosition);
      _cursorPosition -= count;
      print('Deleted $count characters');
      print('Content: "$_content"');
    }
  }

  void moveCursor(int position) {
    _cursorPosition = position.clamp(0, _content.length);
  }

  // Create memento
  EditorMemento save() {
    print('Creating memento (cursor: $_cursorPosition, length: ${_content.length})');
    return EditorMemento(
      content: _content,
      cursorPosition: _cursorPosition,
    );
  }

  // Restore from memento
  void restore(EditorMemento memento) {
    _content = memento.content;
    _cursorPosition = memento.cursorPosition;
    print('Restored from memento (cursor: $_cursorPosition, content: "$_content")');
  }
}

// Caretaker: Manages memento history
class EditorHistory {
  final List<EditorMemento> _history = [];
  int _currentIndex = -1;

  void save(EditorMemento memento) {
    // Remove any mementos after current index (if user made changes after undo)
    if (_currentIndex < _history.length - 1) {
      _history.removeRange(_currentIndex + 1, _history.length);
    }

    _history.add(memento);
    _currentIndex = _history.length - 1;
    print('Saved to history (index: $_currentIndex, total: ${_history.length})');
  }

  EditorMemento? undo() {
    if (_currentIndex > 0) {
      _currentIndex--;
      print('Undo to index $_currentIndex');
      return _history[_currentIndex];
    }
    print('Nothing to undo');
    return null;
  }

  EditorMemento? redo() {
    if (_currentIndex < _history.length - 1) {
      _currentIndex++;
      print('Redo to index $_currentIndex');
      return _history[_currentIndex];
    }
    print('Nothing to redo');
    return null;
  }

  bool get canUndo => _currentIndex > 0;
  bool get canRedo => _currentIndex < _history.length - 1;

  void printHistory() {
    print('');
    print('=== History ===');
    for (int i = 0; i < _history.length; i++) {
      final marker = i == _currentIndex ? '→ ' : '  ';
      print('$marker$i: ${_history[i]}');
    }
  }
}

void main() {
  print('=== Text Editor Memento Pattern ===');
  print('');

  final editor = TextEditor();
  final history = EditorHistory();

  // Save initial empty state
  history.save(editor.save());

  print('--- Write "Hello" ---');
  editor.write('Hello');
  history.save(editor.save());

  print('');
  print('--- Write " World" ---');
  editor.write(' World');
  history.save(editor.save());

  print('');
  print('--- Write "!" ---');
  editor.write('!');
  history.save(editor.save());

  history.printHistory();

  print('');
  print('--- Undo (remove "!") ---');
  final memento1 = history.undo();
  if (memento1 != null) editor.restore(memento1);

  print('');
  print('--- Undo (remove " World") ---');
  final memento2 = history.undo();
  if (memento2 != null) editor.restore(memento2);

  history.printHistory();

  print('');
  print('--- Redo (restore " World") ---');
  final memento3 = history.redo();
  if (memento3 != null) editor.restore(memento3);

  print('');
  print('--- Write " Flutter" (creates new timeline) ---');
  editor.write(' Flutter');
  history.save(editor.save());

  history.printHistory();

  print('');
  print('Final content: "${editor.content}"');
  print('Can undo: ${history.canUndo}');
  print('Can redo: ${history.canRedo}');
}"""),

        // Example 2: Game Save System
        StrCodeBlock(r"""// Example 2: Game Save System with Memento
// Use case: Saving and loading game progress

class Inventory {
  final Map<String, int> items;

  Inventory(this.items);

  Inventory.empty() : items = {};

  Inventory copy() => Inventory(Map.from(items));

  @override
  String toString() => items.entries
      .map((e) => '${e.key}:${e.value}')
      .join(', ');
}

class PlayerStats {
  final int health;
  final int mana;
  final int level;
  final int experience;

  const PlayerStats({
    required this.health,
    required this.mana,
    required this.level,
    required this.experience,
  });

  @override
  String toString() => 'HP:$health MP:$mana Lvl:$level XP:$experience';
}

// Memento: Game Save
class GameSave {
  final String saveName;
  final PlayerStats stats;
  final Inventory inventory;
  final String checkpoint;
  final DateTime savedAt;

  GameSave({
    required this.saveName,
    required this.stats,
    required this.inventory,
    required this.checkpoint,
  }) : savedAt = DateTime.now();

  @override
  String toString() {
    return 'Save "$saveName" at $checkpoint\n'
           '  Stats: $stats\n'
           '  Items: $inventory\n'
           '  Saved: ${savedAt.toIso8601String()}';
  }
}

// Originator: Game State
class GameState {
  int _health = 100;
  int _mana = 50;
  int _level = 1;
  int _experience = 0;
  final Inventory _inventory = Inventory.empty();
  String _currentCheckpoint = 'Start';

  int get health => _health;
  int get mana => _mana;
  int get level => _level;
  String get checkpoint => _currentCheckpoint;

  void takeDamage(int amount) {
    _health = (_health - amount).clamp(0, 100);
    print('Player took $amount damage. HP: $_health');
  }

  void heal(int amount) {
    _health = (_health + amount).clamp(0, 100);
    print('Player healed $amount HP. HP: $_health');
  }

  void useMana(int amount) {
    _mana = (_mana - amount).clamp(0, 100);
    print('Used $amount mana. MP: $_mana');
  }

  void gainExperience(int amount) {
    _experience += amount;
    print('Gained $amount XP. Total: $_experience');

    // Level up if enough XP
    if (_experience >= _level * 100) {
      _level++;
      _experience = 0;
      _health = 100;
      _mana = 50 + (_level * 10);
      print('🎉 Level up! Now level $_level');
    }
  }

  void addItem(String item, int quantity) {
    _inventory.items[item] = (_inventory.items[item] ?? 0) + quantity;
    print('Picked up $quantity x $item');
  }

  void reachCheckpoint(String checkpoint) {
    _currentCheckpoint = checkpoint;
    print('📍 Reached checkpoint: $checkpoint');
  }

  // Create save
  GameSave createSave(String saveName) {
    print('Creating save: $saveName');
    return GameSave(
      saveName: saveName,
      stats: PlayerStats(
        health: _health,
        mana: _mana,
        level: _level,
        experience: _experience,
      ),
      inventory: _inventory.copy(),
      checkpoint: _currentCheckpoint,
    );
  }

  // Load save
  void loadSave(GameSave save) {
    print('Loading save: ${save.saveName}');
    _health = save.stats.health;
    _mana = save.stats.mana;
    _level = save.stats.level;
    _experience = save.stats.experience;
    _inventory.items.clear();
    _inventory.items.addAll(save.inventory.items);
    _currentCheckpoint = save.checkpoint;
    print('Game loaded from ${save.checkpoint}');
    printStatus();
  }

  void printStatus() {
    print('Status: HP:$_health MP:$_mana Lvl:$_level XP:$_experience');
    print('Inventory: $_inventory');
    print('Checkpoint: $_currentCheckpoint');
  }
}

// Caretaker: Save Manager
class SaveManager {
  final Map<String, GameSave> _saves = {};

  void save(GameSave gameSave) {
    _saves[gameSave.saveName] = gameSave;
    print('💾 Saved "${gameSave.saveName}"');
  }

  GameSave? load(String saveName) {
    final save = _saves[saveName];
    if (save != null) {
      print('📂 Loading "${saveName}"');
    } else {
      print('❌ Save "$saveName" not found');
    }
    return save;
  }

  void listSaves() {
    print('');
    print('=== Available Saves ===');
    if (_saves.isEmpty) {
      print('No saves found');
    } else {
      for (final save in _saves.values) {
        print(save);
        print('');
      }
    }
  }

  bool deleteSave(String saveName) {
    final removed = _saves.remove(saveName) != null;
    if (removed) {
      print('🗑️ Deleted save "$saveName"');
    }
    return removed;
  }
}

void main() {
  print('=== Game Save System with Memento ===');
  print('');

  final game = GameState();
  final saveManager = SaveManager();

  print('--- Starting game ---');
  game.printStatus();

  print('');
  print('--- Play session 1 ---');
  game.addItem('Health Potion', 3);
  game.addItem('Sword', 1);
  game.reachCheckpoint('Forest Entrance');
  game.gainExperience(80);
  
  // Save progress
  saveManager.save(game.createSave('Forest Save'));

  print('');
  print('--- Continue playing ---');
  game.takeDamage(30);
  game.gainExperience(50);
  game.reachCheckpoint('Dragon\'s Lair');
  game.addItem('Gold', 100);

  // Another save
  saveManager.save(game.createSave('Before Boss'));

  print('');
  print('--- Boss fight (things go bad) ---');
  game.takeDamage(60);
  game.useMana(40);
  print('💀 Almost dead! Better reload...');

  saveManager.listSaves();

  print('');
  print('--- Loading "Before Boss" save ---');
  final bossSave = saveManager.load('Before Boss');
  if (bossSave != null) {
    game.loadSave(bossSave);
  }

  print('');
  print('--- Or load earlier save ---');
  final forestSave = saveManager.load('Forest Save');
  if (forestSave != null) {
    game.loadSave(forestSave);
  }

  print('');
  print('Final state:');
  game.printStatus();
}"""),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Preserves encapsulation - originator's internals stay hidden",
        "Simplifies originator - doesn't need to manage state history",
        "Can create snapshots at any point without affecting originator",
        "Makes undo/redo implementation straightforward",
        "Caretaker doesn't need to know about originator's internal structure",
      ],
      ar: [
        "يحفظ التغليف - داخليات المُنشئ تبقى مخفية",
        "يُبسط المُنشئ - لا يحتاج لإدارة سجل الحالة",
        "يمكن إنشاء لقطات في أي نقطة دون التأثير على المُنشئ",
        "يجعل تنفيذ التراجع/الإعادة مباشراً",
        "الوصي لا يحتاج لمعرفة البنية الداخلية للمُنشئ",
      ],
    ),
    cons: LocSL(
      en: [
        "Can be expensive if creating mementos frequently with large state",
        "Requires careful memory management - old mementos should be discarded",
        "Can consume significant memory if state is large",
        "Caretaker must ensure mementos are not exposed or modified",
      ],
      ar: [
        "قد يكون مكلفاً إذا كان إنشاء التذكارات متكرراً مع حالة كبيرة",
        "يتطلب إدارة ذاكرة دقيقة - التذكارات القديمة يجب التخلص منها",
        "قد يستهلك ذاكرة كبيرة إذا كانت الحالة كبيرة",
        "الوصي يجب أن يضمن عدم كشف أو تعديل التذكارات",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Memento when:"),
        ULContent(
          value: [
            "You need to save and restore object state (undo/redo)",
            "Direct access to state would break encapsulation",
            "You need to create checkpoints or snapshots",
            "State restoration is needed for transactions or rollback",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم التذكار عندما:"),
        ULContent(
          value: [
            "تحتاج لحفظ واستعادة حالة الكائن (التراجع/الإعادة)",
            "الوصول المباشر للحالة سيكسر التغليف",
            "تحتاج لإنشاء نقاط تفتيش أو لقطات",
            "استعادة الحالة مطلوبة للمعاملات أو الاسترجاع",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Exposing memento internals to caretaker (breaks encapsulation)",
        "Not managing memento lifecycle - memory leaks from old mementos",
        "Storing too much in mementos - only store what's needed for restoration",
        "Using when Command pattern's reverse operation would be simpler",
      ],
      ar: [
        "كشف داخليات التذكار للوصي (يكسر التغليف)",
        "عدم إدارة دورة حياة التذكار - تسريبات ذاكرة من التذكارات القديمة",
        "تخزين الكثير في التذكارات - خزّن فقط ما هو مطلوب للاستعادة",
        "الاستخدام عندما تكون العملية العكسية لنمط الأمر أبسط",
      ],
    ),
    relatedPatterns: [PK.command, PK.iterator, PK.prototype],
    oftenConfusedWith: [PK.command],
  ),

  PK.observer: DesignPattern(
    id: PK.observer,
    title: LocS(en: "Observer", ar: "المراقب (Observer)"),
    description: LocS(
      en: "Defines one-to-many dependency so when one object changes state, all dependents are notified",
      ar: "يُعرّف تبعية واحد لمتعدد بحيث عندما يتغير كائن واحد، يتم إخطار جميع المُعتمدين",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "The Observer pattern defines a one-to-many relationship between objects. When the subject (observable) changes state, all registered observers are automatically notified and updated. This pattern is the foundation of event-driven programming and reactive systems.",
        ),
        AnalogyContent(
          "Think of YouTube subscriptions. When a channel (subject) uploads a new video, all subscribers (observers) get notified. Subscribers don't need to constantly check for new videos - they're automatically alerted. You can subscribe or unsubscribe anytime. The channel doesn't need to know who subscribes - it just broadcasts to all.",
        ),
        StrContent(
          "Observer decouples the subject from observers. The subject knows it has observers but doesn't know their concrete classes. Observers can be added or removed dynamically. This is different from tight coupling where objects call each other directly.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Subject (Observable): Maintains list of observers, notifies them of changes",
            "Observer: Interface for objects that should be notified",
            "Concrete Subject: Stores state, sends notifications when state changes",
            "Concrete Observer: Implements observer interface, updates when notified",
          ],
        ),
        DiagramContent(
          r"Pattern Flow:\nSubject\n ├─ attach(observer)\n ├─ detach(observer)\n └─ notify() ──→ observer1.update()\n             └──→ observer2.update()\n             └──→ observer3.update()",
        ),
        NoteContent(
          "In Dart/Flutter, Observer is built-in via Stream/StreamController and ChangeNotifier/ValueNotifier. You rarely implement Observer from scratch - use these built-in mechanisms instead.",
          type: .important,
        ),
        StrContent(
          "Common use cases in Flutter/Dart: State management (ChangeNotifier, Stream), event systems, model-view updates, real-time data feeds, and any scenario where multiple parts of your app need to react to changes. ValueNotifier, StreamBuilder, and BLoC all use Observer pattern.",
        ),
      ],
      ar: [
        StrContent(
          "نمط المراقب يُعرّف علاقة واحد لمتعدد بين الكائنات. عندما يتغير الموضوع (القابل للمراقبة) الحالة، يتم إخطار وتحديث جميع المراقبين المسجلين تلقائياً. هذا النمط هو أساس البرمجة القائمة على الأحداث والأنظمة التفاعلية.",
        ),
        AnalogyContent(
          "فكر في اشتراكات YouTube. عندما تُحمّل قناة (الموضوع) فيديو جديداً، يتم إخطار جميع المشتركين (المراقبين). المشتركون لا يحتاجون للتحقق باستمرار من الفيديوهات الجديدة - يتم تنبيههم تلقائياً. يمكنك الاشتراك أو إلغاء الاشتراك في أي وقت. القناة لا تحتاج لمعرفة من يشترك - فقط تبث للجميع.",
        ),
        StrContent(
          "المراقب يفصل الموضوع عن المراقبين. الموضوع يعرف أن لديه مراقبين لكن لا يعرف فئاتهم المحددة. يمكن إضافة أو إزالة المراقبين ديناميكياً. هذا مختلف عن الاقتران الوثيق حيث تستدعي الكائنات بعضها البعض مباشرة.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "الموضوع (القابل للمراقبة): يحتفظ بقائمة المراقبين، يُخطرهم بالتغييرات",
            "المراقب: واجهة للكائنات التي يجب إخطارها",
            "الموضوع المحدد: يخزن الحالة، يرسل إخطارات عند تغيير الحالة",
            "المراقب المحدد: ينفذ واجهة المراقب، يُحدّث عند الإخطار",
          ],
        ),
        DiagramContent(
          r"تدفق النمط:\nالموضوع\n ├─ attach(observer)\n ├─ detach(observer)\n └─ notify() ──→ observer1.update()\n             └──→ observer2.update()\n             └──→ observer3.update()",
        ),
        NoteContent(
          "في Dart/Flutter، المراقب مدمج عبر Stream/StreamController وChangeNotifier/ValueNotifier. نادراً ما تنفذ المراقب من الصفر - استخدم هذه الآليات المدمجة بدلاً من ذلك.",
          type: .important,
        ),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: إدارة الحالة (ChangeNotifier، Stream)، أنظمة الأحداث، تحديثات النموذج-العرض، تغذيات البيانات في الوقت الفعلي، وأي سيناريو تحتاج فيه أجزاء متعددة من تطبيقك للتفاعل مع التغييرات. ValueNotifier وStreamBuilder وBLoC جميعها تستخدم نمط المراقب.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Simple Agent Notifications
        StrCodeBlock(r"""// Example 1: Simple Observer — Weather Agent
// Use case: People subscribe to weather updates

// Person (Observer)
class Person {
  final String name;
  final String emoji;

  Person(this.name, this.emoji);

  void update(String weather) {
    print('   $emoji $name sees: $weather');
  }
}

// Subject (Observable)
class WeatherAgent {
  final List<Person> _subscribers = [];

  void subscribe(Person person) {
    // Prevent duplicate subscriptions
    if (!_subscribers.contains(person)) {
      _subscribers.add(person);
    }
  }

  void unsubscribe(Person person) {
    _subscribers.remove(person);
  }

  void setWeather(String weather) {
    print('\n📢 Weather now is: $weather');

    for (final person in _subscribers) {
      person.update(weather);
    }
  }
}

void main() {
  final weather = WeatherAgent();

  final ahmed = Person('Ahmed', '🧑🏻');
  final sara = Person('Sara', '👩🏻‍⚕️');
  final omar = Person('Omar', '👴🏻');
  final lila = Person('Lila', '👩🏻‍🍳');
  final noah = Person('Noah', '🧑🏻‍🎨');

  weather.subscribe(ahmed);
  weather.subscribe(sara);
  weather.subscribe(omar);
  weather.subscribe(lila);
  weather.subscribe(noah);

  weather.setWeather('Sunny ☀️');

  weather.unsubscribe(omar);
  weather.unsubscribe(lila);

  weather.setWeather('Rainy 🌧️');
}"""),

        // Example 2: Stock Observer
        StrCodeBlock(r"""// Example 2: Stock Price Observer
// Use case: Stock price monitoring with different observer types

// Observer interface
abstract class Observer {
  void update(String message);
}

// Subject interface
abstract class Subject {
  void attach(Observer observer);
  void detach(Observer observer);
  void notifyObservers();
}

// Concrete Subject: Stock
class Stock implements Subject {
  final String symbol;
  final List<Observer> _observers = [];
  double _price = 0;

  Stock(this.symbol, this._price);

  double get price => _price;

  void setPrice(double newPrice) {
    if (_price != newPrice) {
      final oldPrice = _price;
      _price = newPrice;
      final change = ((newPrice - oldPrice) / oldPrice * 100).toStringAsFixed(2);
      final arrow = newPrice > oldPrice ? '📈' : '📉';
      print('$symbol: \$$oldPrice → \$$newPrice ($arrow $change%)');
      notifyObservers();
    }
  }

  @override
  void attach(Observer observer) {
    _observers.add(observer);
    print('Observer attached to $symbol (${_observers.length} total)');
  }

  @override
  void detach(Observer observer) {
    _observers.remove(observer);
    print('Observer detached from $symbol (${_observers.length} remaining)');
  }

  @override
  void notifyObservers() {
    for (final observer in _observers) {
      observer.update('$symbol is now \$$_price');
    }
  }
}

// Concrete Observers
class Investor implements Observer {
  final String name;

  Investor(this.name);

  @override
  void update(String message) {
    print('  → $name notified: $message');
  }
}

class TradingBot implements Observer {
  final String botId;
  final double buyThreshold;
  final double sellThreshold;

  TradingBot(this.botId, {
    required this.buyThreshold,
    required this.sellThreshold,
  });

  @override
  void update(String message) {
    print('  🤖 $botId analyzing: $message');
    
    // Extract price from message (simplified)
    final priceMatch = RegExp(r'\$(\d+\.?\d*)').firstMatch(message);
    if (priceMatch != null) {
      final price = double.parse(priceMatch.group(1)!);
      
      if (price <= buyThreshold) {
        print('     → BUY signal! Price \$$price <= \$$buyThreshold');
      } else if (price >= sellThreshold) {
        print('     → SELL signal! Price \$$price >= \$$sellThreshold');
      }
    }
  }
}

void main() {
  print('=== Stock Observer Pattern ===');
  print('');

  final apple = Stock('AAPL', 150.00);
  final tesla = Stock('TSLA', 200.00);

  // Create observers
  final alice = Investor('Alice');
  final bob = Investor('Bob');
  final bot1 = TradingBot('Bot-001', buyThreshold: 140, sellThreshold: 160);

  print('--- Subscribing to AAPL ---');
  apple.attach(alice);
  apple.attach(bob);
  apple.attach(bot1);

  print('');
  print('--- Price changes ---');
  apple.setPrice(155.50);

  print('');
  apple.setPrice(145.00);

  print('');
  print('--- Bob unsubscribes ---');
  apple.detach(bob);

  print('');
  apple.setPrice(165.00);

  print('');
  print('--- Multiple stocks ---');
  tesla.attach(alice);
  tesla.attach(bot1);

  print('');
  tesla.setPrice(220.00);
}"""),

        // Example 3: Using Dart's Built-in Streams
        StrCodeBlock(r"""// Example 3: Observer Pattern with Dart Streams
// Use case: Real-time temperature monitoring

import 'dart:async';

// Subject using StreamController
class TemperatureSensor {
  final String location;
  final StreamController<double> _controller = StreamController<double>.broadcast();
  double _currentTemp = 20.0;

  TemperatureSensor(this.location);

  // Observable stream
  Stream<double> get temperatureStream => _controller.stream;

  double get currentTemperature => _currentTemp;

  void updateTemperature(double newTemp) {
    _currentTemp = newTemp;
    print('$location: Temperature updated to ${newTemp.toStringAsFixed(1)}°C');
    _controller.add(newTemp);
  }

  void dispose() {
    _controller.close();
  }
}

// Observer using Stream subscription
class TemperatureDisplay {
  final String displayName;
  StreamSubscription<double>? _subscription;

  TemperatureDisplay(this.displayName);

  void subscribe(TemperatureSensor sensor) {
    _subscription = sensor.temperatureStream.listen((temp) {
      print('  📺 $displayName showing: ${temp.toStringAsFixed(1)}°C');
    });
    print('$displayName subscribed to ${sensor.location}');
  }

  void unsubscribe() {
    _subscription?.cancel();
    _subscription = null;
    print('$displayName unsubscribed');
  }
}

class TemperatureAlert {
  final String alertName;
  final double threshold;
  final bool alertOnHigh;
  StreamSubscription<double>? _subscription;

  TemperatureAlert(
    this.alertName, {
    required this.threshold,
    this.alertOnHigh = true,
  });

  void subscribe(TemperatureSensor sensor) {
    _subscription = sensor.temperatureStream.listen((temp) {
      if (alertOnHigh && temp > threshold) {
        print('  🚨 $alertName: HIGH TEMP WARNING! ${temp.toStringAsFixed(1)}°C > $threshold°C');
      } else if (!alertOnHigh && temp < threshold) {
        print('  🚨 $alertName: LOW TEMP WARNING! ${temp.toStringAsFixed(1)}°C < $threshold°C');
      }
    });
    print('$alertName monitoring ${sensor.location}');
  }

  void unsubscribe() {
    _subscription?.cancel();
    _subscription = null;
  }
}

class TemperatureLogger {
  final List<String> _log = [];
  StreamSubscription<double>? _subscription;

  void subscribe(TemperatureSensor sensor) {
    _subscription = sensor.temperatureStream.listen((temp) {
      final timestamp = DateTime.now().toIso8601String();
      final entry = '$timestamp: ${sensor.location} ${temp.toStringAsFixed(1)}°C';
      _log.add(entry);
      print('  📝 Logged: ${sensor.location} ${temp.toStringAsFixed(1)}°C');
    });
  }

  void printLog() {
    print('');
    print('=== Temperature Log ===');
    for (final entry in _log) {
      print(entry);
    }
  }

  void unsubscribe() {
    _subscription?.cancel();
    _subscription = null;
  }
}

void main() async {
  print('=== Temperature Monitoring with Streams ===');
  print('');

  final sensor = TemperatureSensor('Living Room');

  // Create observers
  final display1 = TemperatureDisplay('Wall Display');
  final display2 = TemperatureDisplay('Phone App');
  final highTempAlert = TemperatureAlert(
    'High Temp Alert',
    threshold: 25.0,
    alertOnHigh: true,
  );
  final lowTempAlert = TemperatureAlert(
    'Low Temp Alert',
    threshold: 18.0,
    alertOnHigh: false,
  );
  final logger = TemperatureLogger();

  print('--- Subscribing observers ---');
  display1.subscribe(sensor);
  display2.subscribe(sensor);
  highTempAlert.subscribe(sensor);
  lowTempAlert.subscribe(sensor);
  logger.subscribe(sensor);

  print('');
  print('--- Temperature changes ---');
  sensor.updateTemperature(22.5);

  await Future.delayed(const Duration(milliseconds: 100));
  sensor.updateTemperature(26.0); // Trigger high alert

  await Future.delayed(const Duration(milliseconds: 100));
  sensor.updateTemperature(17.0); // Trigger low alert

  await Future.delayed(const Duration(milliseconds: 100));
  sensor.updateTemperature(21.0);

  print('');
  print('--- Phone app unsubscribes ---');
  display2.unsubscribe();

  print('');
  sensor.updateTemperature(23.0);

  logger.printLog();

  // Cleanup
  display1.unsubscribe();
  highTempAlert.unsubscribe();
  lowTempAlert.unsubscribe();
  logger.unsubscribe();
  sensor.dispose();
}"""),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Loose coupling between subject and observers",
        "Open/Closed Principle - can add observers without modifying subject",
        "Dynamic relationships - observers can subscribe/unsubscribe at runtime",
        "Broadcast communication - notify many objects efficiently",
        "Observers don't need to poll for changes - push-based updates",
      ],
      ar: [
        "اقتران ضعيف بين الموضوع والمراقبين",
        "مبدأ المفتوح/المغلق - يمكن إضافة مراقبين دون تعديل الموضوع",
        "علاقات ديناميكية - يمكن للمراقبين الاشتراك/إلغاء الاشتراك في وقت التشغيل",
        "اتصال بث - إخطار العديد من الكائنات بكفاءة",
        "المراقبون لا يحتاجون للاستقصاء عن التغييرات - تحديثات قائمة على الدفع",
      ],
    ),
    cons: LocSL(
      en: [
        "Unexpected updates - observers don't know who else is observing",
        "Memory leaks if observers not properly unsubscribed",
        "Can cause performance issues with many observers or frequent updates",
        "Update order is typically undefined",
      ],
      ar: [
        "تحديثات غير متوقعة - المراقبون لا يعرفون من آخر يراقب",
        "تسريبات ذاكرة إذا لم يُلغَ اشتراك المراقبين بشكل صحيح",
        "قد يسبب مشاكل أداء مع العديد من المراقبين أو التحديثات المتكررة",
        "ترتيب التحديث عادةً غير محدد",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Observer when:"),
        ULContent(
          value: [
            "Change to one object requires changing others, and you don't know how many",
            "An object should notify others without knowing who they are",
            "You need event-driven or reactive programming",
            "Building pub-sub systems or state management",
          ],
        ),
        NoteContent(
          "In Flutter, use built-in mechanisms: Stream/StreamController for async events, ChangeNotifier/ValueNotifier for synchronous state, or state management solutions (Provider, BLoC, Riverpod) instead of implementing Observer from scratch.",
          type: .tip,
        ),
      ],
      ar: [
        StrContent("استخدم المراقب عندما:"),
        ULContent(
          value: [
            "التغيير لكائن واحد يتطلب تغيير آخرين، ولا تعرف كم عددهم",
            "كائن يجب أن يُخطر آخرين دون معرفة من هم",
            "تحتاج لبرمجة قائمة على الأحداث أو تفاعلية",
            "بناء أنظمة pub-sub أو إدارة الحالة",
          ],
        ),
        NoteContent(
          "في Flutter، استخدم الآليات المدمجة: Stream/StreamController للأحداث غير المتزامنة، ChangeNotifier/ValueNotifier للحالة المتزامنة، أو حلول إدارة الحالة (Provider، BLoC، Riverpod) بدلاً من تنفيذ المراقب من الصفر.",
          type: .tip,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Not unsubscribing observers (memory leaks in Flutter widgets)",
        "Creating circular dependencies between subjects and observers",
        "Updating UI too frequently causing performance issues",
        "Not handling edge cases like observer list modification during notification",
      ],
      ar: [
        "عدم إلغاء اشتراك المراقبين (تسريبات ذاكرة في ويدجات Flutter)",
        "إنشاء تبعيات دائرية بين المواضيع والمراقبين",
        "تحديث واجهة المستخدم بكثرة مما يسبب مشاكل أداء",
        "عدم التعامل مع الحالات الحدية مثل تعديل قائمة المراقبين أثناء الإخطار",
      ],
    ),
    relatedPatterns: [PK.mediator, PK.singleton, PK.command],
    oftenConfusedWith: [PK.mediator],
  ),

  PK.state: DesignPattern(
    id: PK.state,
    title: LocS(en: "State", ar: "الحالة (State)"),
    description: LocS(
      en: "Allows an object to alter its behavior when its internal state changes",
      ar: "يسمح لكائن بتغيير سلوكه عندما تتغير حالته الداخلية",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The State pattern allows an object to change its behavior when its internal state changes. Instead of using many conditional statements, each state is represented by a separate class. The object delegates behavior to its current state object, which can change at runtime.",
        ),
        AnalogyContent(
          "Think of a vending machine. It has different states: Idle, HasMoney, Dispensing, OutOfStock. The same action (press button) does different things in different states. In Idle: 'insert money first'. In HasMoney: 'dispense product'. In OutOfStock: 'sold out'. The machine's behavior changes based on its state, without complex if-else chains.",
        ),
        StrContent(
          "State is similar to Strategy, but the intent differs. Strategy lets you swap algorithms. State represents the object being in different states where behavior changes. State transitions often happen automatically based on events, while Strategy is usually set explicitly by the client.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Context: Maintains instance of current state, delegates to state object",
            "State: Interface defining behavior for each state",
            "Concrete States: Implement behavior specific to each state",
            "State transitions can happen within state objects themselves",
          ],
        ),
        DiagramContent(
          r"Pattern Flow:\nContext\n  ↓ (has current state)\nState Interface\n  ↙  ↓  ↘\nState1  State2  State3\n\nContext.request() → currentState.handle()",
        ),
        NoteContent(
          "State vs Strategy: Both use composition and have similar structure. State is about being in different states (internal change triggers behavior change). Strategy is about using different algorithms (external choice of algorithm). States often know about and transition to other states; strategies don't know about each other.",
          type: .important,
        ),
        StrContent(
          "Common use cases in Flutter/Dart: connection states (connecting, connected, disconnected), document states (draft, review, published), player states (playing, paused, stopped), order states (pending, confirmed, shipped), and authentication states. BLoC/Cubit state management is essentially State pattern.",
        ),
      ],
      ar: [
        StrContent(
          "نمط الحالة يسمح لكائن بتغيير سلوكه عندما تتغير حالته الداخلية. بدلاً من استخدام العديد من العبارات الشرطية، كل حالة تُمثل بفئة منفصلة. الكائن يُفوّض السلوك لكائن حالته الحالي، الذي يمكن أن يتغير في وقت التشغيل.",
        ),
        AnalogyContent(
          "فكر في آلة بيع. لها حالات مختلفة: خامل، لديه نقود، يُوزّع، نفذ المخزون. نفس الإجراء (ضغط زر) يفعل أشياء مختلفة في حالات مختلفة. في خامل: 'أدخل نقوداً أولاً'. في لديه نقود: 'وزّع المنتج'. في نفذ المخزون: 'نفذ'. سلوك الآلة يتغير بناءً على حالتها، دون سلاسل if-else معقدة.",
        ),
        StrContent(
          "الحالة مشابهة للاستراتيجية، لكن النية تختلف. الاستراتيجية تتيح لك تبديل الخوارزميات. الحالة تمثل الكائن في حالات مختلفة حيث يتغير السلوك. انتقالات الحالة غالباً تحدث تلقائياً بناءً على الأحداث، بينما الاستراتيجية عادةً تُحدد صراحةً من قبل العميل.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "السياق: يحتفظ بنسخة من الحالة الحالية، يُفوّض لكائن الحالة",
            "الحالة: واجهة تحدد السلوك لكل حالة",
            "الحالات المحددة: تنفذ السلوك الخاص بكل حالة",
            "انتقالات الحالة يمكن أن تحدث داخل كائنات الحالة نفسها",
          ],
        ),
        DiagramContent(
          r"تدفق النمط:\nالسياق\n  ↓ (لديه حالة حالية)\nواجهة الحالة\n  ↙  ↓  ↘\nحالة1  حالة2  حالة3\n\nالسياق.request() → currentState.handle()",
        ),
        NoteContent(
          "الحالة مقابل الاستراتيجية: كلاهما يستخدم التركيب ولهما بنية مماثلة. الحالة تتعلق بالوجود في حالات مختلفة (التغيير الداخلي يُحفز تغيير السلوك). الاستراتيجية تتعلق باستخدام خوارزميات مختلفة (اختيار خارجي للخوارزمية). الحالات غالباً تعرف وتنتقل لحالات أخرى؛ الاستراتيجيات لا تعرف عن بعضها البعض.",
          type: .important,
        ),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: حالات الاتصال (يتصل، متصل، منفصل)، حالات المستند (مسودة، مراجعة، منشور)، حالات المشغل (يشغل، متوقف، موقوف)، حالات الطلب (معلق، مؤكد، مُشحن)، وحالات المصادقة. إدارة حالة BLoC/Cubit هي في الأساس نمط الحالة.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Vending Machine
        StrCodeBlock(r"""// Example 1: Vending Machine State Pattern
// Use case: Machine behavior changes based on current state

// Context
class VendingMachine {
  VendingMachineState _state;
  int _itemCount;
  int _balance = 0;

  VendingMachine(int itemCount)
      : _itemCount = itemCount,
        _state = itemCount > 0 ? IdleState() : OutOfStockState() {
    _state.setContext(this);
  }

  void setState(VendingMachineState state) {
    print('State transition: ${_state.runtimeType} → ${state.runtimeType}');
    _state = state;
    _state.setContext(this);
  }

  int get itemCount => _itemCount;
  int get balance => _balance;

  void addItem(int count) {
    _itemCount += count;
    print('Added $count items. Total: $_itemCount');
  }

  void removeItem() {
    if (_itemCount > 0) {
      _itemCount--;
      print('Dispensed item. Remaining: $_itemCount');
    }
  }

  void addMoney(int amount) {
    _balance += amount;
  }

  void resetBalance() {
    _balance = 0;
  }

  // Delegate to current state
  void insertMoney(int amount) => _state.insertMoney(amount);
  void pressButton() => _state.pressButton();
  void dispense() => _state.dispense();
}

// State interface
abstract class VendingMachineState {
  late VendingMachine _context;

  void setContext(VendingMachine context) {
    _context = context;
  }

  void insertMoney(int amount);
  void pressButton();
  void dispense();
}

// Concrete States
class IdleState implements VendingMachineState {
  @override
  late VendingMachine _context;

  @override
  void setContext(VendingMachine context) => _context = context;

  @override
  void insertMoney(int amount) {
    print('💵 Money inserted: \$$amount');
    _context.addMoney(amount);
    _context.setState(HasMoneyState());
  }

  @override
  void pressButton() {
    print('❌ Please insert money first');
  }

  @override
  void dispense() {
    print('❌ Cannot dispense - no money inserted');
  }
}

class HasMoneyState implements VendingMachineState {
  @override
  late VendingMachine _context;

  @override
  void setContext(VendingMachine context) => _context = context;

  @override
  void insertMoney(int amount) {
    print('💵 Additional money inserted: \$$amount');
    _context.addMoney(amount);
    print('Total balance: \$${_context.balance}');
  }

  @override
  void pressButton() {
    const itemPrice = 5;
    if (_context.balance >= itemPrice) {
      print('✓ Selection confirmed');
      _context.setState(DispensingState());
    } else {
      print('❌ Insufficient funds. Need \$$itemPrice, have \$${_context.balance}');
    }
  }

  @override
  void dispense() {
    print('❌ Press button to select item first');
  }
}

class DispensingState implements VendingMachineState {
  @override
  late VendingMachine _context;

  @override
  void setContext(VendingMachine context) => _context = context;

  @override
  void insertMoney(int amount) {
    print('❌ Already dispensing. Please wait.');
  }

  @override
  void pressButton() {
    print('❌ Already dispensing. Please wait.');
  }

  @override
  void dispense() {
    print('📦 Dispensing item...');
    _context.removeItem();
    
    const itemPrice = 5;
    final change = _context.balance - itemPrice;
    if (change > 0) {
      print('💰 Returning change: \$$change');
    }
    _context.resetBalance();

    // Transition to next state
    if (_context.itemCount > 0) {
      _context.setState(IdleState());
    } else {
      print('⚠️ Last item sold!');
      _context.setState(OutOfStockState());
    }
  }
}

class OutOfStockState implements VendingMachineState {
  @override
  late VendingMachine _context;

  @override
  void setContext(VendingMachine context) => _context = context;

  @override
  void insertMoney(int amount) {
    print('❌ OUT OF STOCK - returning money');
    print('💰 Returned: \$$amount');
  }

  @override
  void pressButton() {
    print('❌ OUT OF STOCK');
  }

  @override
  void dispense() {
    print('❌ OUT OF STOCK - cannot dispense');
  }
}

void main() {
  print('=== Vending Machine State Pattern ===');
  print('');

  final machine = VendingMachine(2); // 2 items in stock

  print('--- Scenario 1: Normal purchase ---');
  machine.insertMoney(10);
  machine.pressButton();
  machine.dispense();

  print('');
  print('--- Scenario 2: Try to buy without money ---');
  machine.pressButton();

  print('');
  print('--- Scenario 3: Insufficient funds ---');
  machine.insertMoney(3);
  machine.pressButton();
  machine.insertMoney(5);
  machine.pressButton();
  machine.dispense();

  print('');
  print('--- Scenario 4: Machine out of stock ---');
  machine.insertMoney(10);
  machine.pressButton();
}"""),

        // Example 2: Document Workflow
        StrCodeBlock(r"""// Example 2: Document Workflow State Pattern
// Use case: Document goes through approval states

enum UserRole { author, reviewer, publisher }

class Document {
  final String title;
  String content;
  DocumentState _state;
  final List<String> _comments = [];

  Document(this.title, this.content)
      : _state = DraftState() {
    _state.setContext(this);
  }

  void setState(DocumentState state) {
    print('📄 Document state: ${_state.runtimeType} → ${state.runtimeType}');
    _state = state;
    _state.setContext(this);
  }

  DocumentState get state => _state;
  List<String> get comments => _comments;

  void addComment(String comment) {
    _comments.add(comment);
  }

  // Delegate to current state
  void edit(String newContent, UserRole role) =>
      _state.edit(newContent, role);

  void submitForReview(UserRole role) =>
      _state.submitForReview(role);

  void approve(UserRole role) =>
      _state.approve(role);

  void reject(String reason, UserRole role) =>
      _state.reject(reason, role);

  void publish(UserRole role) =>
      _state.publish(role);

  void archive(UserRole role) =>
      _state.archive(role);

  void printStatus() {
    print('Document: "$title"');
    print('State: ${_state.runtimeType}');
    print('Content length: ${content.length} chars');
    if (_comments.isNotEmpty) {
      print('Comments:');
      for (final comment in _comments) {
        print('  - $comment');
      }
    }
  }
}

// State interface
abstract class DocumentState {
  late Document _context;

  void setContext(Document context) => _context = context;

  void edit(String newContent, UserRole role);
  void submitForReview(UserRole role);
  void approve(UserRole role);
  void reject(String reason, UserRole role);
  void publish(UserRole role);
  void archive(UserRole role);
}

// Concrete States
class DraftState implements DocumentState {
  @override
  late Document _context;

  @override
  void setContext(Document context) => _context = context;

  @override
  void edit(String newContent, UserRole role) {
    if (role == UserRole.author) {
      _context.content = newContent;
      print('✓ Draft updated by author');
    } else {
      print('❌ Only author can edit draft');
    }
  }

  @override
  void submitForReview(UserRole role) {
    if (role == UserRole.author) {
      print('✓ Submitted for review');
      _context.setState(InReviewState());
    } else {
      print('❌ Only author can submit for review');
    }
  }

  @override
  void approve(UserRole role) {
    print('❌ Cannot approve draft - submit for review first');
  }

  @override
  void reject(String reason, UserRole role) {
    print('❌ Cannot reject draft');
  }

  @override
  void publish(UserRole role) {
    print('❌ Cannot publish draft - needs review');
  }

  @override
  void archive(UserRole role) {
    print('✓ Draft archived');
    _context.setState(ArchivedState());
  }
}

class InReviewState implements DocumentState {
  @override
  late Document _context;

  @override
  void setContext(Document context) => _context = context;

  @override
  void edit(String newContent, UserRole role) {
    print('❌ Cannot edit while in review');
  }

  @override
  void submitForReview(UserRole role) {
    print('❌ Already in review');
  }

  @override
  void approve(UserRole role) {
    if (role == UserRole.reviewer) {
      print('✓ Approved by reviewer');
      _context.setState(ApprovedState());
    } else {
      print('❌ Only reviewer can approve');
    }
  }

  @override
  void reject(String reason, UserRole role) {
    if (role == UserRole.reviewer) {
      print('✗ Rejected: $reason');
      _context.addComment('Rejection: $reason');
      _context.setState(DraftState());
    } else {
      print('❌ Only reviewer can reject');
    }
  }

  @override
  void publish(UserRole role) {
    print('❌ Must be approved before publishing');
  }

  @override
  void archive(UserRole role) {
    print('✓ Review cancelled, archived');
    _context.setState(ArchivedState());
  }
}

class ApprovedState implements DocumentState {
  @override
  late Document _context;

  @override
  void setContext(Document context) => _context = context;

  @override
  void edit(String newContent, UserRole role) {
    print('❌ Cannot edit approved document');
  }

  @override
  void submitForReview(UserRole role) {
    print('❌ Already approved');
  }

  @override
  void approve(UserRole role) {
    print('❌ Already approved');
  }

  @override
  void reject(String reason, UserRole role) {
    print('❌ Cannot reject - already approved');
  }

  @override
  void publish(UserRole role) {
    if (role == UserRole.publisher) {
      print('✓ Published!');
      _context.setState(PublishedState());
    } else {
      print('❌ Only publisher can publish');
    }
  }

  @override
  void archive(UserRole role) {
    print('✓ Approved document archived');
    _context.setState(ArchivedState());
  }
}

class PublishedState implements DocumentState {
  @override
  late Document _context;

  @override
  void setContext(Document context) => _context = context;

  @override
  void edit(String newContent, UserRole role) {
    print('❌ Cannot edit published document');
  }

  @override
  void submitForReview(UserRole role) {
    print('❌ Already published');
  }

  @override
  void approve(UserRole role) {
    print('❌ Already published');
  }

  @override
  void reject(String reason, UserRole role) {
    print('❌ Cannot reject published document');
  }

  @override
  void publish(UserRole role) {
    print('❌ Already published');
  }

  @override
  void archive(UserRole role) {
    if (role == UserRole.publisher) {
      print('✓ Published document archived');
      _context.setState(ArchivedState());
    } else {
      print('❌ Only publisher can archive published document');
    }
  }
}

class ArchivedState implements DocumentState {
  @override
  late Document _context;

  @override
  void setContext(Document context) => _context = context;

  @override
  void edit(String newContent, UserRole role) {
    print('❌ Cannot edit archived document');
  }

  @override
  void submitForReview(UserRole role) {
    print('❌ Document is archived');
  }

  @override
  void approve(UserRole role) {
    print('❌ Document is archived');
  }

  @override
  void reject(String reason, UserRole role) {
    print('❌ Document is archived');
  }

  @override
  void publish(UserRole role) {
    print('❌ Document is archived');
  }

  @override
  void archive(UserRole role) {
    print('❌ Already archived');
  }
}

void main() {
  print('=== Document Workflow State Pattern ===');
  print('');

  final doc = Document(
    'Product Launch Plan',
    'Initial draft of product launch strategy...',
  );

  print('--- Author edits draft ---');
  doc.edit('Updated product launch strategy with Q1 timeline...', UserRole.author);

  print('');
  print('--- Author submits for review ---');
  doc.submitForReview(UserRole.author);

  print('');
  print('--- Reviewer requests changes ---');
  doc.reject('Please add budget details', UserRole.reviewer);

  print('');
  print('--- Author updates and resubmits ---');
  doc.edit('Added budget section...', UserRole.author);
  doc.submitForReview(UserRole.author);

  print('');
  print('--- Reviewer approves ---');
  doc.approve(UserRole.reviewer);

  print('');
  print('--- Publisher publishes ---');
  doc.publish(UserRole.publisher);

  print('');
  doc.printStatus();
}"""),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Eliminates large conditional statements for state-dependent behavior",
        "Single Responsibility Principle - each state in separate class",
        "Open/Closed Principle - add new states without changing existing ones",
        "Makes state transitions explicit and clear",
        "Context code becomes simpler - just delegates to state",
      ],
      ar: [
        "يزيل العبارات الشرطية الكبيرة للسلوك المعتمد على الحالة",
        "مبدأ المسؤولية الواحدة - كل حالة في فئة منفصلة",
        "مبدأ المفتوح/المغلق - إضافة حالات جديدة دون تغيير الموجودة",
        "يجعل انتقالات الحالة صريحة وواضحة",
        "كود السياق يصبح أبسط - فقط يُفوّض للحالة",
      ],
    ),
    cons: LocSL(
      en: [
        "Increases number of classes (one per state)",
        "Can be overkill for simple state machines",
        "State transition logic might be scattered across state classes",
      ],
      ar: [
        "يزيد عدد الفئات (واحدة لكل حالة)",
        "قد يكون مبالغاً فيه لآلات الحالة البسيطة",
        "منطق انتقال الحالة قد يكون منتشراً عبر فئات الحالة",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use State when:"),
        ULContent(
          value: [
            "Object behavior depends on its state and changes at runtime",
            "You have large conditional statements based on state",
            "State transitions need to be explicit and managed",
            "Different states have significantly different behaviors",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الحالة عندما:"),
        ULContent(
          value: [
            "سلوك الكائن يعتمد على حالته ويتغير في وقت التشغيل",
            "لديك عبارات شرطية كبيرة بناءً على الحالة",
            "انتقالات الحالة تحتاج لأن تكون صريحة ومُدارة",
            "حالات مختلفة لها سلوكيات مختلفة بشكل كبير",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Creating too many states for minor behavior variations",
        "Not deciding where state transitions should occur (context vs state)",
        "Forgetting to set context reference in new states",
        "Using State when simple enum + switch would suffice",
      ],
      ar: [
        "إنشاء حالات كثيرة جداً لاختلافات سلوك بسيطة",
        "عدم تحديد أين يجب أن تحدث انتقالات الحالة (السياق مقابل الحالة)",
        "نسيان تعيين مرجع السياق في الحالات الجديدة",
        "استخدام الحالة عندما يكفي enum بسيط + switch",
      ],
    ),
    relatedPatterns: [PK.strategy, PK.singleton, PK.flyweight],
    oftenConfusedWith: [PK.strategy],
  ),

  PK.strategy: DesignPattern(
    id: PK.strategy,
    title: LocS(en: "Strategy", ar: "الاستراتيجية (Strategy)"),
    description: LocS(
      en: "Defines a family of algorithms, encapsulates each one, and makes them interchangeable",
      ar: "يُعرّف عائلة من الخوارزميات، يُغلف كل واحدة، ويجعلها قابلة للتبادل",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "The Strategy pattern defines a family of algorithms, encapsulates each algorithm in a separate class, and makes them interchangeable. Strategy lets the algorithm vary independently from clients that use it. The client chooses which algorithm to use at runtime.",
        ),
        AnalogyContent(
          "Think of navigation apps. You can choose different routing strategies: fastest route, shortest route, avoid highways, scenic route. The destination is the same, but the algorithm to get there differs. You pick the strategy before starting, and the app uses that algorithm. You can switch strategies for the next trip without changing the app itself.",
        ),
        StrContent(
          "Strategy is one of the simplest and most useful patterns. Instead of complex conditionals to choose behavior, you simply swap the strategy object. This follows Open/Closed Principle - add new strategies without modifying existing code. It's perfect when you have multiple ways to do something and want to choose at runtime.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Strategy: Interface defining the algorithm",
            "Concrete Strategies: Different implementations of the algorithm",
            "Context: Uses a Strategy, can switch strategies at runtime",
            "Client: Creates strategy and passes to context",
          ],
        ),
        DiagramContent(
          r"Pattern Flow:\nContext\n  ↓ (uses)\nStrategy Interface\n  ↙  ↓  ↘\nStrategyA  StrategyB  StrategyC\n\nClient chooses which strategy to use",
        ),
        StrContent(
          "Common use cases in Flutter/Dart: sorting algorithms, payment methods, validation strategies, compression algorithms, rendering strategies, and any scenario where you have multiple ways to accomplish the same task. Dart's Comparator<T> functions are essentially strategies.",
        ),
      ],
      ar: [
        StrContent(
          "نمط الاستراتيجية يُعرّف عائلة من الخوارزميات، يُغلف كل خوارزمية في فئة منفصلة، ويجعلها قابلة للتبادل. الاستراتيجية تتيح للخوارزمية أن تتغير بشكل مستقل عن العملاء الذين يستخدمونها. العميل يختار أي خوارزمية يستخدم في وقت التشغيل.",
        ),
        AnalogyContent(
          "فكر في تطبيقات الملاحة. يمكنك اختيار استراتيجيات توجيه مختلفة: أسرع طريق، أقصر طريق، تجنب الطرق السريعة، طريق ذو مناظر خلابة. الوجهة هي نفسها، لكن الخوارزمية للوصول إليها تختلف. تختار الاستراتيجية قبل البدء، والتطبيق يستخدم تلك الخوارزمية. يمكنك تبديل الاستراتيجيات للرحلة التالية دون تغيير التطبيق نفسه.",
        ),
        StrContent(
          "الاستراتيجية واحدة من أبسط وأكثر الأنماط فائدة. بدلاً من الشروط المعقدة لاختيار السلوك، تقوم ببساطة بتبديل كائن الاستراتيجية. هذا يتبع مبدأ المفتوح/المغلق - إضافة استراتيجيات جديدة دون تعديل الكود الموجود. إنه مثالي عندما يكون لديك طرق متعددة لفعل شيء ما وتريد الاختيار في وقت التشغيل.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "الاستراتيجية: واجهة تحدد الخوارزمية",
            "الاستراتيجيات المحددة: تطبيقات مختلفة للخوارزمية",
            "السياق: يستخدم استراتيجية، يمكنه تبديل الاستراتيجيات في وقت التشغيل",
            "العميل: ينشئ الاستراتيجية ويمررها للسياق",
          ],
        ),
        DiagramContent(
          r"تدفق النمط:\nالسياق\n  ↓ (يستخدم)\nواجهة الاستراتيجية\n  ↙  ↓  ↘\nاستراتيجيةA  استراتيجيةB  استراتيجيةC\n\nالعميل يختار أي استراتيجية يستخدم",
        ),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: خوارزميات الترتيب، طرق الدفع، استراتيجيات التحقق، خوارزميات الضغط، استراتيجيات العرض، وأي سيناريو لديك فيه طرق متعددة لإنجاز نفس المهمة. وظائف Comparator<T> في Dart هي في الأساس استراتيجيات.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Payment Strategies
        StrCodeBlock(r"""// Example 1: Payment Strategy Pattern
// Use case: Different payment methods in an e-commerce app

// Strategy interface
abstract class PaymentStrategy {
  String get methodName;
  bool processPayment(double amount);
}

// Concrete Strategies
class CreditCardPayment implements PaymentStrategy {
  final String cardNumber;
  final String cvv;
  final String expiryDate;

  CreditCardPayment({
    required this.cardNumber,
    required this.cvv,
    required this.expiryDate,
  });

  @override
  String get methodName => 'Credit Card';

  @override
  bool processPayment(double amount) {
    print('$methodName: Processing \$${amount.toStringAsFixed(2)}');
    print('  Card: **** **** **** ${cardNumber.substring(cardNumber.length - 4)}');
    print('  Expiry: $expiryDate');
    
    // Simulate payment processing
    if (_validateCard()) {
      print('  ✓ Payment successful');
      return true;
    } else {
      print('  ✗ Payment failed - invalid card');
      return false;
    }
  }

  bool _validateCard() {
    // Simplified validation
    return cardNumber.length == 16 && cvv.length == 3;
  }
}

class PayPalPayment implements PaymentStrategy {
  final String email;
  final String password;

  PayPalPayment({required this.email, required this.password});

  @override
  String get methodName => 'PayPal';

  @override
  bool processPayment(double amount) {
    print('$methodName: Processing \$${amount.toStringAsFixed(2)}');
    print('  Account: $email');
    
    if (_authenticate()) {
      print('  ✓ Payment successful via PayPal');
      return true;
    } else {
      print('  ✗ Authentication failed');
      return false;
    }
  }

  bool _authenticate() {
    return email.contains('@') && password.length >= 6;
  }
}

class CryptoPayment implements PaymentStrategy {
  final String walletAddress;
  final String cryptoType;

  CryptoPayment({required this.walletAddress, required this.cryptoType});

  @override
  String get methodName => '$cryptoType Payment';

  @override
  bool processPayment(double amount) {
    print('$methodName: Processing \$${amount.toStringAsFixed(2)}');
    print('  Wallet: ${walletAddress.substring(0, 8)}...');
    print('  Converting USD to $cryptoType...');
    
    final cryptoAmount = _convertToCrypto(amount);
    print('  Amount: $cryptoAmount $cryptoType');
    print('  ✓ Transaction broadcast to blockchain');
    return true;
  }

  double _convertToCrypto(double usdAmount) {
    // Simplified conversion
    final rates = {'BTC': 0.000025, 'ETH': 0.00045};
    return usdAmount * (rates[cryptoType] ?? 1.0);
  }
}

// Context
class ShoppingCart {
  final List<String> _items = [];
  double _total = 0;
  PaymentStrategy? _paymentStrategy;

  void addItem(String item, double price) {
    _items.add(item);
    _total += price;
    print('Added: $item (\$$price)');
  }

  void setPaymentStrategy(PaymentStrategy strategy) {
    _paymentStrategy = strategy;
    print('Payment method set to: ${strategy.methodName}');
  }

  bool checkout() {
    if (_items.isEmpty) {
      print('Cart is empty');
      return false;
    }

    if (_paymentStrategy == null) {
      print('Please select a payment method');
      return false;
    }

    print('');
    print('=== Checkout ===');
    print('Items: ${_items.join(', ')}');
    print('Total: \$${_total.toStringAsFixed(2)}');
    print('');

    final success = _paymentStrategy!.processPayment(_total);
    
    if (success) {
      _items.clear();
      _total = 0;
      print('');
      print('Thank you for your purchase! 🎉');
    }

    return success;
  }

  double get total => _total;
}

void main() {
  print('=== Payment Strategy Pattern ===');
  print('');

  final cart = ShoppingCart();
  
  cart.addItem('Laptop', 999.99);
  cart.addItem('Mouse', 29.99);
  cart.addItem('Keyboard', 79.99);

  print('');
  print('--- Attempt 1: Credit Card ---');
  cart.setPaymentStrategy(CreditCardPayment(
    cardNumber: '1234567812345678',
    cvv: '123',
    expiryDate: '12/25',
  ));
  cart.checkout();

  // Add more items
  print('');
  print('--- New purchase ---');
  cart.addItem('Monitor', 299.99);
  cart.addItem('Webcam', 89.99);

  print('');
  print('--- Attempt 2: PayPal ---');
  cart.setPaymentStrategy(PayPalPayment(
    email: 'user@example.com',
    password: 'securepass',
  ));
  cart.checkout();

  // Another purchase
  print('');
  print('--- New purchase ---');
  cart.addItem('Headphones', 199.99);

  print('');
  print('--- Attempt 3: Cryptocurrency ---');
  cart.setPaymentStrategy(CryptoPayment(
    walletAddress: '0x742d35Cc6634C0532925a3b844Bc9e7595f0bEb',
    cryptoType: 'ETH',
  ));
  cart.checkout();
}"""),

        // Example 2: Sorting Strategies
        StrCodeBlock(r"""// Example 2: Sorting Strategy Pattern
// Use case: Different sorting algorithms for a list

// Strategy interface
abstract class SortStrategy<T> {
  String get algorithmName;
  List<T> sort(List<T> items, int Function(T a, T b) compare);
}

// Concrete Strategies
class BubbleSortStrategy<T> implements SortStrategy<T> {
  @override
  String get algorithmName => 'Bubble Sort';

  @override
  List<T> sort(List<T> items, int Function(T a, T b) compare) {
    final list = List<T>.from(items);
    final n = list.length;
    int swaps = 0;

    for (int i = 0; i < n - 1; i++) {
      for (int j = 0; j < n - i - 1; j++) {
        if (compare(list[j], list[j + 1]) > 0) {
          final temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;
          swaps++;
        }
      }
    }

    print('$algorithmName: Completed with $swaps swaps');
    return list;
  }
}

class QuickSortStrategy<T> implements SortStrategy<T> {
  @override
  String get algorithmName => 'Quick Sort';

  @override
  List<T> sort(List<T> items, int Function(T a, T b) compare) {
    final list = List<T>.from(items);
    _quickSort(list, 0, list.length - 1, compare);
    print('$algorithmName: Completed');
    return list;
  }

  void _quickSort(List<T> list, int low, int high, int Function(T a, T b) compare) {
    if (low < high) {
      final pi = _partition(list, low, high, compare);
      _quickSort(list, low, pi - 1, compare);
      _quickSort(list, pi + 1, high, compare);
    }
  }

  int _partition(List<T> list, int low, int high, int Function(T a, T b) compare) {
    final pivot = list[high];
    int i = low - 1;

    for (int j = low; j < high; j++) {
      if (compare(list[j], pivot) <= 0) {
        i++;
        final temp = list[i];
        list[i] = list[j];
        list[j] = temp;
      }
    }

    final temp = list[i + 1];
    list[i + 1] = list[high];
    list[high] = temp;
    return i + 1;
  }
}

class MergeSortStrategy<T> implements SortStrategy<T> {
  @override
  String get algorithmName => 'Merge Sort';

  @override
  List<T> sort(List<T> items, int Function(T a, T b) compare) {
    final list = List<T>.from(items);
    _mergeSort(list, 0, list.length - 1, compare);
    print('$algorithmName: Completed');
    return list;
  }

  void _mergeSort(List<T> list, int left, int right, int Function(T a, T b) compare) {
    if (left < right) {
      final mid = (left + right) ~/ 2;
      _mergeSort(list, left, mid, compare);
      _mergeSort(list, mid + 1, right, compare);
      _merge(list, left, mid, right, compare);
    }
  }

  void _merge(List<T> list, int left, int mid, int right, int Function(T a, T b) compare) {
    final leftList = list.sublist(left, mid + 1);
    final rightList = list.sublist(mid + 1, right + 1);

    int i = 0, j = 0, k = left;

    while (i < leftList.length && j < rightList.length) {
      if (compare(leftList[i], rightList[j]) <= 0) {
        list[k++] = leftList[i++];
      } else {
        list[k++] = rightList[j++];
      }
    }

    while (i < leftList.length) {
      list[k++] = leftList[i++];
    }

    while (j < rightList.length) {
      list[k++] = rightList[j++];
    }
  }
}

// Context
class DataSorter<T> {
  SortStrategy<T>? _strategy;

  void setStrategy(SortStrategy<T> strategy) {
    _strategy = strategy;
  }

  List<T> sort(List<T> items, int Function(T a, T b) compare) {
    if (_strategy == null) {
      throw StateError('Sorting strategy not set');
    }

    print('Using ${_strategy!.algorithmName} on ${items.length} items');
    final start = DateTime.now();
    final sorted = _strategy!.sort(items, compare);
    final duration = DateTime.now().difference(start);
    print('Time: ${duration.inMicroseconds}μs');
    
    return sorted;
  }
}

void main() {
  print('=== Sorting Strategy Pattern ===');
  print('');

  final numbers = [64, 34, 25, 12, 22, 11, 90, 88, 45, 50, 23, 36];
  print('Original: $numbers');
  print('');

  final sorter = DataSorter<int>();

  print('--- Strategy 1: Bubble Sort ---');
  sorter.setStrategy(BubbleSortStrategy<int>());
  final bubbleSorted = sorter.sort(numbers, (a, b) => a.compareTo(b));
  print('Result: $bubbleSorted');
  print('');

  print('--- Strategy 2: Quick Sort ---');
  sorter.setStrategy(QuickSortStrategy<int>());
  final quickSorted = sorter.sort(numbers, (a, b) => a.compareTo(b));
  print('Result: $quickSorted');
  print('');

  print('--- Strategy 3: Merge Sort ---');
  sorter.setStrategy(MergeSortStrategy<int>());
  final mergeSorted = sorter.sort(numbers, (a, b) => a.compareTo(b));
  print('Result: $mergeSorted');
  print('');

  // Sorting strings
  final words = ['banana', 'apple', 'cherry', 'date', 'elderberry'];
  print('--- Sorting strings with Quick Sort ---');
  print('Original: $words');
  
  final stringSorter = DataSorter<String>();
  stringSorter.setStrategy(QuickSortStrategy<String>());
  final sortedWords = stringSorter.sort(words, (a, b) => a.compareTo(b));
  print('Result: $sortedWords');
}"""),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Swap algorithms at runtime without changing context",
        "Open/Closed Principle - add new strategies without modifying code",
        "Single Responsibility Principle - each algorithm isolated",
        "Eliminates conditional statements for algorithm selection",
        "Encapsulates algorithm implementation details",
        "Makes algorithms interchangeable and reusable",
      ],
      ar: [
        "تبديل الخوارزميات في وقت التشغيل دون تغيير السياق",
        "مبدأ المفتوح/المغلق - إضافة استراتيجيات جديدة دون تعديل الكود",
        "مبدأ المسؤولية الواحدة - كل خوارزمية معزولة",
        "يزيل العبارات الشرطية لاختيار الخوارزمية",
        "يُغلف تفاصيل تنفيذ الخوارزمية",
        "يجعل الخوارزميات قابلة للتبادل وإعادة الاستخدام",
      ],
    ),
    cons: LocSL(
      en: [
        "Clients must be aware of different strategies to choose",
        "Increases number of classes",
        "Overhead if strategies are very simple",
      ],
      ar: [
        "العملاء يجب أن يكونوا على دراية بالاستراتيجيات المختلفة للاختيار",
        "يزيد عدد الفئات",
        "عبء إضافي إذا كانت الاستراتيجيات بسيطة جداً",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Strategy when:"),
        ULContent(
          value: [
            "You have multiple ways to accomplish a task",
            "You want to choose algorithm at runtime",
            "You have many related classes differing only in behavior",
            "You need to hide algorithm implementation details from client",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الاستراتيجية عندما:"),
        ULContent(
          value: [
            "لديك طرق متعددة لإنجاز مهمة",
            "تريد اختيار الخوارزمية في وقت التشغيل",
            "لديك فئات مترابطة كثيرة تختلف فقط في السلوك",
            "تحتاج لإخفاء تفاصيل تنفيذ الخوارزمية عن العميل",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Using when simple conditional would suffice",
        "Not considering if strategies need to share state",
        "Creating too many strategies for minor variations",
        "Forgetting to set strategy before using context",
      ],
      ar: [
        "الاستخدام عندما يكفي شرط بسيط",
        "عدم النظر فيما إذا كانت الاستراتيجيات تحتاج لمشاركة الحالة",
        "إنشاء استراتيجيات كثيرة جداً لاختلافات بسيطة",
        "نسيان تعيين الاستراتيجية قبل استخدام السياق",
      ],
    ),
    relatedPatterns: [PK.state, PK.templateMethod, PK.command],
    oftenConfusedWith: [PK.state],
  ),

  PK.templateMethod: DesignPattern(
    id: PK.templateMethod,
    title: LocS(en: "Template Method", ar: "طريقة النموذج (Template Method)"),
    description: LocS(
      en: "Defines skeleton of algorithm in base class, letting subclasses override specific steps",
      ar: "يُعرّف هيكل الخوارزمية في الفئة الأساسية، مما يتيح للفئات الفرعية تجاوز خطوات محددة",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Template Method pattern defines the skeleton of an algorithm in a base class, but lets subclasses override specific steps without changing the algorithm's structure. The template method calls a series of steps, some implemented in the base class (invariant) and some left for subclasses (variant).",
        ),
        AnalogyContent(
          "Think of a recipe template for making tea. The steps are always: (1) boil water, (2) steep ingredient, (3) pour in cup, (4) add condiments. Step 1 and 3 are the same for all teas. But step 2 varies (green tea vs black tea vs herbal), and step 4 varies (sugar, milk, lemon). The recipe structure stays the same; specific steps differ.",
        ),
        StrContent(
          "Template Method is inheritance-based, unlike Strategy which uses composition. The algorithm structure is fixed in the base class. Subclasses can't change the sequence of steps, only the implementation of specific steps. This enforces a consistent algorithm structure across all variants.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Abstract Class: Defines template method and abstract primitive operations",
            "Template Method: Defines algorithm skeleton, calls primitive operations",
            "Primitive Operations: Abstract methods that subclasses must implement",
            "Hook Methods: Optional methods with default implementation that can be overridden",
            "Concrete Class: Implements primitive operations for specific variant",
          ],
        ),
        DiagramContent(
          r"Pattern Flow:\nAbstractClass\n  - templateMethod() {     // Fixed structure\n      step1();               // Implemented\n      step2();               // Abstract - subclass implements\n      step3();               // Hook - optional override\n    }\n    ↓ (subclasses)\nConcreteClassA  ConcreteClassB",
        ),
        NoteContent(
          "Template Method vs Strategy: Template Method uses inheritance (subclasses override steps). Strategy uses composition (swap entire algorithm). Template Method: algorithm structure fixed, steps vary. Strategy: entire algorithm varies. Use Template Method when structure is stable and only parts change.",
          type: .important,
        ),
        StrContent(
          "Common use cases in Flutter/Dart: data processing pipelines, testing frameworks, initialization sequences, widget lifecycle methods (initState, build, dispose), and any multi-step process where some steps are common and others vary.",
        ),
      ],
      ar: [
        StrContent(
          "نمط طريقة النموذج يُعرّف هيكل الخوارزمية في فئة أساسية، لكن يتيح للفئات الفرعية تجاوز خطوات محددة دون تغيير بنية الخوارزمية. طريقة النموذج تستدعي سلسلة من الخطوات، بعضها مُنفذ في الفئة الأساسية (ثابت) وبعضها متروك للفئات الفرعية (متغير).",
        ),
        AnalogyContent(
          "فكر في قالب وصفة لصنع الشاي. الخطوات دائماً: (1) غلي الماء، (2) نقع المكون، (3) صب في الكوب، (4) إضافة التوابل. الخطوة 1 و3 هي نفسها لجميع أنواع الشاي. لكن الخطوة 2 تختلف (شاي أخضر مقابل أسود مقابل عشبي)، والخطوة 4 تختلف (سكر، حليب، ليمون). بنية الوصفة تبقى نفسها؛ خطوات محددة تختلف.",
        ),
        StrContent(
          "طريقة النموذج تعتمد على الوراثة، على عكس الاستراتيجية التي تستخدم التركيب. بنية الخوارزمية ثابتة في الفئة الأساسية. الفئات الفرعية لا يمكنها تغيير تسلسل الخطوات، فقط تنفيذ خطوات محددة. هذا يُطبق بنية خوارزمية متسقة عبر جميع المتغيرات.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "الفئة المجردة: تُعرّف طريقة النموذج والعمليات البدائية المجردة",
            "طريقة النموذج: تُعرّف هيكل الخوارزمية، تستدعي العمليات البدائية",
            "العمليات البدائية: طرق مجردة يجب على الفئات الفرعية تنفيذها",
            "طرق الخطاف: طرق اختيارية مع تنفيذ افتراضي يمكن تجاوزها",
            "الفئة المحددة: تنفذ العمليات البدائية لمتغير محدد",
          ],
        ),
        DiagramContent(
          r"تدفق النمط:\nالفئة المجردة\n  - templateMethod() {     // بنية ثابتة\n      step1();               // مُنفذة\n      step2();               // مجردة - فئة فرعية تنفذ\n      step3();               // خطاف - تجاوز اختياري\n    }\n    ↓ (فئات فرعية)\nفئة محددةA  فئة محددةB",
        ),
        NoteContent(
          "طريقة النموذج مقابل الاستراتيجية: طريقة النموذج تستخدم الوراثة (فئات فرعية تتجاوز الخطوات). الاستراتيجية تستخدم التركيب (تبديل الخوارزمية بأكملها). طريقة النموذج: بنية الخوارزمية ثابتة، الخطوات تختلف. الاستراتيجية: الخوارزمية بأكملها تختلف. استخدم طريقة النموذج عندما تكون البنية مستقرة وفقط الأجزاء تتغير.",
          type: .important,
        ),
        StrContent(
          "حالات الاستخدام الشائعة في Flutter/Dart: خطوط أنابيب معالجة البيانات، أطر الاختبار، تسلسلات التهيئة، طرق دورة حياة الويدجت (initState، build، dispose)، وأي عملية متعددة الخطوات حيث بعض الخطوات مشتركة وأخرى تختلف.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Data Processing Template
        StrCodeBlock(r"""// Example 1: Data Processing Template Method
// Use case: ETL (Extract, Transform, Load) pipeline with common structure

abstract class DataProcessor {
  // Template method - defines the algorithm structure
  void process() {
    print('=== Starting Data Processing ===');
    
    final data = extractData();
    print('Extracted ${data.length} records');
    
    final validated = validateData(data);
    print('Validated: ${validated.length} valid records');
    
    final transformed = transformData(validated);
    print('Transformed data');
    
    loadData(transformed);
    print('Loaded to destination');
    
    // Hook method - optional
    if (shouldCleanup()) {
      cleanup();
    }
    
    print('=== Processing Complete ===');
  }

  // Abstract primitive operations - subclasses must implement
  List<Map<String, dynamic>> extractData();
  List<Map<String, dynamic>> transformData(List<Map<String, dynamic>> data);
  void loadData(List<Map<String, dynamic>> data);

  // Concrete operation with default implementation
  List<Map<String, dynamic>> validateData(List<Map<String, dynamic>> data) {
    return data.where((record) {
      // Default validation: non-empty
      return record.isNotEmpty;
    }).toList();
  }

  // Hook methods - optional, have default implementation
  bool shouldCleanup() => true;

  void cleanup() {
    print('Performing cleanup...');
  }
}

// Concrete implementation 1: CSV Processor
class CsvDataProcessor extends DataProcessor {
  final String csvContent;

  CsvDataProcessor(this.csvContent);

  @override
  List<Map<String, dynamic>> extractData() {
    print('Extracting from CSV...');
    final lines = csvContent.split('\n');
    final headers = lines[0].split(',');
    
    return lines.skip(1).map((line) {
      final values = line.split(',');
      return Map.fromIterables(headers, values);
    }).toList();
  }

  @override
  List<Map<String, dynamic>> transformData(List<Map<String, dynamic>> data) {
    print('Transforming CSV data (uppercase keys)...');
    return data.map((record) {
      return record.map((key, value) => MapEntry(key.toUpperCase(), value));
    }).toList();
  }

  @override
  void loadData(List<Map<String, dynamic>> data) {
    print('Loading to database...');
    for (final record in data) {
      print('  INSERT: $record');
    }
  }
}

// Concrete implementation 2: JSON API Processor
class JsonApiProcessor extends DataProcessor {
  final String apiEndpoint;

  JsonApiProcessor(this.apiEndpoint);

  @override
  List<Map<String, dynamic>> extractData() {
    print('Fetching from API: $apiEndpoint');
    // Simulate API response
    return [
      {'id': '1', 'name': 'Alice', 'age': '30'},
      {'id': '2', 'name': 'Bob', 'age': '25'},
      {'id': '3', 'name': '', 'age': '35'}, // Invalid
    ];
  }

  @override
  List<Map<String, dynamic>> validateData(List<Map<String, dynamic>> data) {
    print('Custom validation: checking required fields...');
    return data.where((record) {
      return record['name'] != null && 
             record['name'].toString().isNotEmpty &&
             record['age'] != null;
    }).toList();
  }

  @override
  List<Map<String, dynamic>> transformData(List<Map<String, dynamic>> data) {
    print('Transforming API data (parsing age to int)...');
    return data.map((record) {
      return {
        ...record,
        'age': int.tryParse(record['age'].toString()) ?? 0,
      };
    }).toList();
  }

  @override
  void loadData(List<Map<String, dynamic>> data) {
    print('Sending to webhook...');
    for (final record in data) {
      print('  POST: $record');
    }
  }

  @override
  bool shouldCleanup() => false; // Override hook - no cleanup needed
}

void main() {
  print('=== Template Method Pattern ===');
  print('');

  final csvData = '''name,age,city
Alice,30,NYC
Bob,25,LA
Charlie,35,Chicago''';

  print('--- CSV Processor ---');
  final csvProcessor = CsvDataProcessor(csvData);
  csvProcessor.process();

  print('');
  print('--- JSON API Processor ---');
  final apiProcessor = JsonApiProcessor('https://api.example.com/users');
  apiProcessor.process();
}"""),

        // Example 2: Game Level Template
        StrCodeBlock(r"""// Example 2: Game Level Template Method
// Use case: Game levels share common structure but differ in details

abstract class GameLevel {
  final int levelNumber;

  GameLevel(this.levelNumber);

  // Template method
  void playLevel() {
    print('=== Level $levelNumber ===');
    
    initialize();
    
    displayIntro();
    
    while (!isLevelComplete() && !isPlayerDead()) {
      update();
      
      if (shouldSpawnEnemy()) {
        spawnEnemy();
      }
      
      if (shouldShowHint()) {
        showHint();
      }
    }
    
    if (isLevelComplete()) {
      displayVictory();
      calculateScore();
    } else {
      displayGameOver();
    }
    
    cleanup();
  }

  // Abstract methods - must be implemented by subclasses
  void initialize();
  void displayIntro();
  void update();
  void spawnEnemy();
  void displayVictory();

  // Concrete methods with default implementation
  void displayGameOver() {
    print('💀 Game Over!');
  }

  void calculateScore() {
    print('📊 Calculating score...');
  }

  void cleanup() {
    print('🧹 Level cleanup complete');
  }

  // Hook methods - optional override
  bool shouldSpawnEnemy() => false;
  bool shouldShowHint() => false;
  void showHint() {}

  // Simulated game state
  bool isLevelComplete() => _updates >= 3;
  bool isPlayerDead() => false;
  int _updates = 0;
}

// Concrete Level 1: Tutorial
class TutorialLevel extends GameLevel {
  TutorialLevel() : super(1);

  @override
  void initialize() {
    print('📚 Initializing tutorial level...');
    print('  Loading simple map');
    print('  Setting easy difficulty');
  }

  @override
  void displayIntro() {
    print('👋 Welcome to the game!');
    print('💡 Use arrow keys to move');
    print('');
  }

  @override
  void update() {
    _updates++;
    print('Update ${_updates}/3: Player learning controls...');
  }

  @override
  void spawnEnemy() {
    print('🤖 Spawning practice dummy (harmless)');
  }

  @override
  void displayVictory() {
    print('🎉 Tutorial complete!');
    print('✓ You learned the basics');
  }

  @override
  bool shouldShowHint() => _updates == 1;

  @override
  void showHint() {
    print('💡 HINT: Press SPACE to jump');
  }
}

// Concrete Level 2: Boss Fight
class BossLevel extends GameLevel {
  BossLevel() : super(5); // Level 5

  @override
  void initialize() {
    print('⚔️ Initializing boss level...');
    print('  Loading boss arena');
    print('  Setting hard difficulty');
    print('  Playing epic music 🎵');
  }

  @override
  void displayIntro() {
    print('🐉 A wild boss appears!');
    print('⚡ Prepare for battle!');
    print('');
  }

  @override
  void update() {
    _updates++;
    print('Update ${_updates}/3: Battle phase ${_updates}');
    print('  Boss HP: ${100 - _updates * 30}%');
    print('  Player dodging attacks...');
  }

  @override
  void spawnEnemy() {
    print('👾 Boss summons minions!');
  }

  @override
  bool shouldSpawnEnemy() => _updates == 2;

  @override
  void displayVictory() {
    print('🏆 BOSS DEFEATED!');
    print('💎 Legendary item acquired');
    print('⭐ Achievement unlocked: Dragon Slayer');
  }

  @override
  void calculateScore() {
    super.calculateScore();
    print('  Base score: 1000');
    print('  Boss bonus: +500');
    print('  Total: 1500 points');
  }
}

void main() {
  print('=== Game Level Template Method ===');
  print('');

  final tutorial = TutorialLevel();
  tutorial.playLevel();

  print('');
  print('');

  final bossLevel = BossLevel();
  bossLevel.playLevel();
}"""),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Reuses common code in base class - avoid duplication",
        "Enforces algorithm structure - subclasses can't change sequence",
        "Controlled extension points - only specific steps are customizable",
        "Inversion of control - framework calls into subclass code",
        "Easy to add new variants - just subclass and override specific steps",
      ],
      ar: [
        "يعيد استخدام الكود الشائع في الفئة الأساسية - تجنب التكرار",
        "يُطبق بنية الخوارزمية - الفئات الفرعية لا يمكنها تغيير التسلسل",
        "نقاط توسعة محكومة - فقط خطوات محددة قابلة للتخصيص",
        "عكس التحكم - الإطار يستدعي كود الفئة الفرعية",
        "سهل إضافة متغيرات جديدة - فقط فئة فرعية وتجاوز خطوات محددة",
      ],
    ),
    cons: LocSL(
      en: [
        "Uses inheritance - tighter coupling than composition",
        "Can violate Liskov Substitution Principle if not careful",
        "Limited flexibility - algorithm structure is fixed",
        "Subclasses must know about base class implementation",
      ],
      ar: [
        "يستخدم الوراثة - اقتران أوثق من التركيب",
        "قد ينتهك مبدأ استبدال ليسكوف إذا لم تكن حذراً",
        "مرونة محدودة - بنية الخوارزمية ثابتة",
        "الفئات الفرعية يجب أن تعرف عن تنفيذ الفئة الأساسية",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Template Method when:"),
        ULContent(
          value: [
            "You have an algorithm with fixed structure but varying steps",
            "Multiple classes share common behavior but differ in details",
            "You want to control which parts of algorithm can be customized",
            "You want to avoid code duplication in similar classes",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم طريقة النموذج عندما:"),
        ULContent(
          value: [
            "لديك خوارزمية ببنية ثابتة لكن خطوات متفاوتة",
            "فئات متعددة تشارك سلوكاً مشتركاً لكن تختلف في التفاصيل",
            "تريد التحكم في أي أجزاء من الخوارزمية يمكن تخصيصها",
            "تريد تجنب تكرار الكود في فئات مماثلة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Making too many steps abstract - makes subclasses complex",
        "Not providing good default implementations for hook methods",
        "Using when Strategy (composition) would be more flexible",
        "Not documenting which methods subclasses should override",
      ],
      ar: [
        "جعل خطوات كثيرة جداً مجردة - يجعل الفئات الفرعية معقدة",
        "عدم توفير تطبيقات افتراضية جيدة لطرق الخطاف",
        "الاستخدام عندما تكون الاستراتيجية (التركيب) أكثر مرونة",
        "عدم توثيق أي طرق يجب على الفئات الفرعية تجاوزها",
      ],
    ),
    relatedPatterns: [PK.strategy, PK.factoryMethod],
    oftenConfusedWith: [PK.strategy],
  ),

  PK.visitor: DesignPattern(
    id: PK.visitor,
    title: LocS(en: "Visitor", ar: "الزائر (Visitor)"),
    description: LocS(
      en: "Separates algorithms from objects they operate on by adding new operations without modifying classes",
      ar: "يفصل الخوارزميات عن الكائنات التي تعمل عليها من خلال إضافة عمليات جديدة دون تعديل الفئات",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "The Visitor pattern lets you add new operations to existing object structures without modifying those structures. You create a visitor class that implements the new operation. Objects accept a visitor and call the visitor's appropriate method. This separates operations from the object structure.",
        ),
        AnalogyContent(
          "Think of a house inspector visiting homes. Different rooms (bedroom, kitchen, bathroom) are the elements. Different inspectors (safety inspector, tax assessor, architect) are visitors. Each inspector performs different operations on the same rooms without changing the rooms themselves. The room just 'accepts' the visitor and lets them do their job.",
        ),
        StrContent(
          "Visitor is useful when you have a stable object structure (elements rarely change) but frequently need to add new operations. It follows Open/Closed Principle for operations but violates it for elements. Adding a new element type requires modifying all visitors.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Visitor: Interface with visit() method for each element type",
            "Concrete Visitor: Implements each visit() method (the operation)",
            "Element: Interface with accept(visitor) method",
            "Concrete Element: Implements accept() by calling visitor.visit(this)",
            "Object Structure: Collection of elements that can be visited",
          ],
        ),
        DiagramContent(
          r"Pattern Flow:\nElement.accept(visitor)\n  → calls visitor.visit(this)\n      → visitor performs operation on element\n\nDouble dispatch: Element type AND Visitor type determine behavior",
        ),
        NoteContent(
          "Visitor uses double dispatch. The operation depends on both the visitor type (which operation) and element type (which element). This is why accept(visitor) calls visitor.visit(this) - the correct visit() method is chosen based on both types.",
          type: .important,
        ),
        StrContent(
          "Common use cases: compilers (AST traversal), serializers, export to different formats, validators, and any scenario where you have a complex object structure and need to perform many distinct operations on it. Rarely used in typical Flutter apps due to complexity.",
        ),
      ],
      ar: [
        StrContent(
          "نمط الزائر يتيح لك إضافة عمليات جديدة لبنى كائنات موجودة دون تعديل تلك البنى. تُنشئ فئة زائر تنفذ العملية الجديدة. الكائنات تقبل الزائر وتستدعي طريقة الزائر المناسبة. هذا يفصل العمليات عن بنية الكائن.",
        ),
        AnalogyContent(
          "فكر في مفتش منزل يزور المنازل. غرف مختلفة (غرفة نوم، مطبخ، حمام) هي العناصر. مفتشون مختلفون (مفتش سلامة، مقيم ضرائب، معماري) هم الزوار. كل مفتش يقوم بعمليات مختلفة على نفس الغرف دون تغيير الغرف نفسها. الغرفة فقط 'تقبل' الزائر وتتركه يقوم بعمله.",
        ),
        StrContent(
          "الزائر مفيد عندما يكون لديك بنية كائن مستقرة (العناصر نادراً ما تتغير) لكن تحتاج بشكل متكرر لإضافة عمليات جديدة. يتبع مبدأ المفتوح/المغلق للعمليات لكن ينتهكه للعناصر. إضافة نوع عنصر جديد يتطلب تعديل جميع الزوار.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "الزائر: واجهة مع طريقة visit() لكل نوع عنصر",
            "الزائر المحدد: ينفذ كل طريقة visit() (العملية)",
            "العنصر: واجهة مع طريقة accept(visitor)",
            "العنصر المحدد: ينفذ accept() باستدعاء visitor.visit(this)",
            "بنية الكائن: مجموعة من العناصر يمكن زيارتها",
          ],
        ),
        DiagramContent(
          r"تدفق النمط:\nالعنصر.accept(visitor)\n  → يستدعي visitor.visit(this)\n      → الزائر ينفذ العملية على العنصر\n\nإرسال مزدوج: نوع العنصر ونوع الزائر يحددان السلوك",
        ),
        NoteContent(
          "الزائر يستخدم الإرسال المزدوج. العملية تعتمد على كل من نوع الزائر (أي عملية) ونوع العنصر (أي عنصر). هذا هو السبب في أن accept(visitor) يستدعي visitor.visit(this) - طريقة visit() الصحيحة تُختار بناءً على كلا النوعين.",
          type: .important,
        ),
        StrContent(
          "حالات الاستخدام الشائعة: المُترجمات (اجتياز AST)، المُسلسلات، التصدير لتنسيقات مختلفة، المُحققات، وأي سيناريو لديك فيه بنية كائن معقدة وتحتاج لإجراء عمليات مميزة كثيرة عليها. نادراً ما تُستخدم في تطبيقات Flutter النموذجية بسبب التعقيد.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Document Export
        StrCodeBlock(r"""// Example 1: Document Element Visitor
// Use case: Export document elements to different formats

// Element interface
abstract class DocumentElement {
  void accept(DocumentVisitor visitor);
}

// Concrete Elements
class Paragraph implements DocumentElement {
  final String text;

  Paragraph(this.text);

  @override
  void accept(DocumentVisitor visitor) {
    visitor.visitParagraph(this);
  }
}

class Heading implements DocumentElement {
  final String text;
  final int level; // 1-6

  Heading(this.text, this.level);

  @override
  void accept(DocumentVisitor visitor) {
    visitor.visitHeading(this);
  }
}

class Image implements DocumentElement {
  final String url;
  final String altText;

  Image(this.url, this.altText);

  @override
  void accept(DocumentVisitor visitor) {
    visitor.visitImage(this);
  }
}

class CodeBlock implements DocumentElement {
  final String code;
  final String language;

  CodeBlock(this.code, this.language);

  @override
  void accept(DocumentVisitor visitor) {
    visitor.visitCodeBlock(this);
  }
}

// Visitor interface
abstract class DocumentVisitor {
  void visitParagraph(Paragraph paragraph);
  void visitHeading(Heading heading);
  void visitImage(Image image);
  void visitCodeBlock(CodeBlock codeBlock);
}

// Concrete Visitors
class HtmlExporter implements DocumentVisitor {
  final StringBuffer _html = StringBuffer();

  @override
  void visitParagraph(Paragraph paragraph) {
    _html.writeln('<p>${paragraph.text}</p>');
  }

  @override
  void visitHeading(Heading heading) {
    _html.writeln('<h${heading.level}>${heading.text}</h${heading.level}>');
  }

  @override
  void visitImage(Image image) {
    _html.writeln('<img src="${image.url}" alt="${image.altText}">');
  }

  @override
  void visitCodeBlock(CodeBlock codeBlock) {
    _html.writeln('<pre><code class="language-${codeBlock.language}">');
    _html.writeln(codeBlock.code);
    _html.writeln('</code></pre>');
  }

  String getHtml() => _html.toString();
}

class MarkdownExporter implements DocumentVisitor {
  final StringBuffer _markdown = StringBuffer();

  @override
  void visitParagraph(Paragraph paragraph) {
    _markdown.writeln('${paragraph.text}\n');
  }

  @override
  void visitHeading(Heading heading) {
    final prefix = '#' * heading.level;
    _markdown.writeln('$prefix ${heading.text}\n');
  }

  @override
  void visitImage(Image image) {
    _markdown.writeln('![${image.altText}](${image.url})\n');
  }

  @override
  void visitCodeBlock(CodeBlock codeBlock) {
    _markdown.writeln('```${codeBlock.language}');
    _markdown.writeln(codeBlock.code);
    _markdown.writeln('```\n');
  }

  String getMarkdown() => _markdown.toString();
}

class PlainTextExporter implements DocumentVisitor {
  final StringBuffer _text = StringBuffer();

  @override
  void visitParagraph(Paragraph paragraph) {
    _text.writeln('${paragraph.text}\n');
  }

  @override
  void visitHeading(Heading heading) {
    _text.writeln('${heading.text.toUpperCase()}\n${'=' * heading.text.length}\n');
  }

  @override
  void visitImage(Image image) {
    _text.writeln('[Image: ${image.altText}]\n');
  }

  @override
  void visitCodeBlock(CodeBlock codeBlock) {
    _text.writeln('Code (${codeBlock.language}):');
    _text.writeln(codeBlock.code);
    _text.writeln();
  }

  String getText() => _text.toString();
}

// Document structure
class Document {
  final List<DocumentElement> elements = [];

  void add(DocumentElement element) {
    elements.add(element);
  }

  void export(DocumentVisitor visitor) {
    for (final element in elements) {
      element.accept(visitor);
    }
  }
}

void main() {
  print('=== Document Visitor Pattern ===');
  print('');

  // Build document
  final doc = Document();
  doc.add(Heading('Welcome to Visitor Pattern', 1));
  doc.add(Paragraph('The Visitor pattern separates operations from object structure.'));
  doc.add(Heading('Example Code', 2));
  doc.add(CodeBlock('void accept(Visitor v) { v.visit(this); }', 'dart'));
  doc.add(Paragraph('This allows adding new operations without modifying elements.'));
  doc.add(Image('https://example.com/diagram.png', 'Visitor pattern diagram'));

  // Export to HTML
  print('--- HTML Export ---');
  final htmlExporter = HtmlExporter();
  doc.export(htmlExporter);
  print(htmlExporter.getHtml());

  // Export to Markdown
  print('--- Markdown Export ---');
  final markdownExporter = MarkdownExporter();
  doc.export(markdownExporter);
  print(markdownExporter.getMarkdown());

  // Export to Plain Text
  print('--- Plain Text Export ---');
  final textExporter = PlainTextExporter();
  doc.export(textExporter);
  print(textExporter.getText());
}"""),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Open/Closed for operations - add new operations without modifying elements",
        "Single Responsibility - operations gathered in visitor classes",
        "Can accumulate state while visiting elements",
        "Can visit elements of different types in object structure",
      ],
      ar: [
        "المفتوح/المغلق للعمليات - إضافة عمليات جديدة دون تعديل العناصر",
        "المسؤولية الواحدة - العمليات مُجمعة في فئات الزائر",
        "يمكن تجميع الحالة أثناء زيارة العناصر",
        "يمكن زيارة عناصر من أنواع مختلفة في بنية الكائن",
      ],
    ),
    cons: LocSL(
      en: [
        "Adding new element types is hard - requires updating all visitors",
        "Violates encapsulation - visitors need access to element internals",
        "Complex pattern - harder to understand and maintain",
        "Requires stable element hierarchy",
      ],
      ar: [
        "إضافة أنواع عناصر جديدة صعبة - يتطلب تحديث جميع الزوار",
        "ينتهك التغليف - الزوار يحتاجون للوصول لداخليات العنصر",
        "نمط معقد - أصعب للفهم والصيانة",
        "يتطلب تسلسلاً هرمياً للعنصر مستقراً",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Visitor when:"),
        ULContent(
          value: [
            "You need many distinct operations on object structure",
            "Object structure is stable but operations change frequently",
            "Operations don't belong to element classes conceptually",
            "You want to gather related operations in one place",
          ],
        ),
        NoteContent(
          "Visitor is complex and rarely needed in typical applications. Consider simpler alternatives first. Only use when you have a stable element hierarchy with frequently changing operations.",
          type: .warning,
        ),
      ],
      ar: [
        StrContent("استخدم الزائر عندما:"),
        ULContent(
          value: [
            "تحتاج لعمليات مميزة كثيرة على بنية الكائن",
            "بنية الكائن مستقرة لكن العمليات تتغير بشكل متكرر",
            "العمليات لا تنتمي لفئات العنصر مفاهيمياً",
            "تريد جمع عمليات ذات صلة في مكان واحد",
          ],
        ),
        NoteContent(
          "الزائر معقد ونادراً ما يُحتاج في التطبيقات النموذجية. اعتبر البدائل الأبسط أولاً. استخدمه فقط عندما يكون لديك تسلسل هرمي للعنصر مستقر مع عمليات تتغير بشكل متكرر.",
          type: .warning,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Using when element hierarchy is not stable",
        "Over-engineering simple problems with Visitor",
        "Not considering simpler alternatives like Strategy",
        "Exposing too much element internal state to visitors",
      ],
      ar: [
        "الاستخدام عندما لا يكون التسلسل الهرمي للعنصر مستقراً",
        "الإفراط في الهندسة لمشاكل بسيطة مع الزائر",
        "عدم النظر في بدائل أبسط مثل الاستراتيجية",
        "كشف الكثير من الحالة الداخلية للعنصر للزوار",
      ],
    ),
    relatedPatterns: [PK.composite, PK.interpreter, PK.iterator],
    oftenConfusedWith: [],
  ),

  PK.dependencyInjection: DesignPattern(
    id: PK.dependencyInjection,
    title: LocS(
      en: "Dependency Injection",
      ar: "حقن التبعية (Dependency Injection)",
    ),
    description: LocS(
      en: "Provides dependencies to objects from outside rather than having them create dependencies themselves",
      ar: "يوفر التبعيات للكائنات من الخارج بدلاً من جعلها تُنشئ التبعيات بنفسها",
    ),
    group: .design,
    type: .behavioral,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "Dependency Injection is a technique where objects receive their dependencies from external sources rather than creating them. Instead of 'new MyDependency()' inside a class, dependencies are passed in via constructor, method, or property. This inverts control - the framework or caller decides which implementation to provide.",
        ),
        AnalogyContent(
          "Think of a chef in a restaurant. The chef doesn't go to the market to buy ingredients (create dependencies). The restaurant provides all ingredients (injects dependencies). This lets the restaurant swap suppliers, ensure quality, and reuse ingredients across dishes. The chef just cooks with what's provided.",
        ),
        StrContent(
          "DI solves tight coupling. Without DI, class A creates class B directly - changing B requires changing A. With DI, class A receives B from outside - you can swap B's implementation without touching A. This makes code more testable, flexible, and maintainable.",
        ),
        ULContent(
          title: "DI Types:",
          value: [
            "Constructor Injection: Dependencies passed via constructor (most common)",
            "Method Injection: Dependencies passed to specific methods",
            "Property Injection: Dependencies set via properties/setters",
            "Interface Injection: Object provides method for injector to pass dependency",
          ],
        ),
        DiagramContent(
          r"Without DI:\nClass A\n  └─ creates → Class B (tight coupling)\n\nWith DI:\nInjector → creates Class B → passes to → Class A\n(Class A depends on interface, not concrete B)",
        ),
        NoteContent(
          "DI vs Service Locator: DI pushes dependencies into objects (inversion of control). Service Locator lets objects pull dependencies from a registry. DI is generally preferred as it makes dependencies explicit and easier to test.",
          type: .important,
        ),
        StrContent(
          "Common in Flutter/Dart: Provider package, GetIt, Riverpod all use DI. Flutter's InheritedWidget is a form of DI. You inject dependencies down the widget tree. Constructor injection is most common in Dart - pass dependencies as constructor parameters.",
        ),
      ],
      ar: [
        StrContent(
          "حقن التبعية هي تقنية حيث تتلقى الكائنات تبعياتها من مصادر خارجية بدلاً من إنشائها. بدلاً من 'new MyDependency()' داخل الفئة، يتم تمرير التبعيات عبر المُنشئ أو الطريقة أو الخاصية. هذا يعكس التحكم - الإطار أو المُستدعي يقرر أي تطبيق يوفره.",
        ),
        AnalogyContent(
          "فكر في طاهٍ في مطعم. الطاهي لا يذهب للسوق لشراء المكونات (إنشاء التبعيات). المطعم يوفر جميع المكونات (حقن التبعيات). هذا يتيح للمطعم تبديل الموردين، ضمان الجودة، وإعادة استخدام المكونات عبر الأطباق. الطاهي فقط يطبخ بما يُوفر له.",
        ),
        StrContent(
          "حقن التبعية يحل الاقتران الوثيق. بدون DI، الفئة A تُنشئ الفئة B مباشرة - تغيير B يتطلب تغيير A. مع DI، الفئة A تتلقى B من الخارج - يمكنك تبديل تطبيق B دون المساس بـ A. هذا يجعل الكود أكثر قابلية للاختبار والمرونة والصيانة.",
        ),
        ULContent(
          title: "أنواع حقن التبعية:",
          value: [
            "حقن المُنشئ: التبعيات تُمرر عبر المُنشئ (الأكثر شيوعاً)",
            "حقن الطريقة: التبعيات تُمرر لطرق محددة",
            "حقن الخاصية: التبعيات تُحدد عبر الخصائص/setters",
            "حقن الواجهة: الكائن يوفر طريقة للحاقن لتمرير التبعية",
          ],
        ),
        DiagramContent(
          r"بدون DI:\nالفئة A\n  └─ تُنشئ → الفئة B (اقتران وثيق)\n\nمع DI:\nالحاقن → ينشئ الفئة B → يمرر لـ → الفئة A\n(الفئة A تعتمد على الواجهة، وليس B المحدد)",
        ),
        NoteContent(
          "حقن التبعية مقابل محدد الخدمة: DI يدفع التبعيات للكائنات (عكس التحكم). محدد الخدمة يتيح للكائنات سحب التبعيات من سجل. DI مُفضل عموماً لأنه يجعل التبعيات صريحة وأسهل للاختبار.",
          type: .important,
        ),
        StrContent(
          "شائع في Flutter/Dart: حزمة Provider، GetIt، Riverpod كلها تستخدم DI. InheritedWidget في Flutter هو شكل من أشكال DI. تحقن التبعيات أسفل شجرة الويدجت. حقن المُنشئ هو الأكثر شيوعاً في Dart - مرر التبعيات كمعاملات المُنشئ.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Constructor Injection
        StrCodeBlock(r"""// Example 1: Constructor Injection
// Use case: Making classes testable and decoupled

// Without DI - tight coupling (BAD)
class BadUserService {
  final ApiClient _apiClient = ApiClient(); // Hard-coded dependency!
  final Logger _logger = Logger(); // Hard-coded!

  Future<User> getUser(String id) async {
    _logger.log('Fetching user $id');
    return _apiClient.get('/users/$id');
  }
}
// Problem: Can't test without real ApiClient, can't swap implementations

// Abstractions (depend on interfaces, not concrete classes)
abstract class ApiClient {
  Future<User> get(String endpoint);
}

abstract class Logger {
  void log(String message);
}

// With DI - loose coupling (GOOD)
class UserService {
  final ApiClient _apiClient;
  final Logger _logger;

  // Dependencies injected via constructor
  UserService({
    required ApiClient apiClient,
    required Logger logger,
  })  : _apiClient = apiClient,
        _logger = logger;

  Future<User> getUser(String id) async {
    _logger.log('Fetching user $id');
    return _apiClient.get('/users/$id');
  }

  Future<List<User>> getAllUsers() async {
    _logger.log('Fetching all users');
    return [
      await _apiClient.get('/users/1'),
      await _apiClient.get('/users/2'),
    ];
  }
}

// Concrete implementations
class HttpApiClient implements ApiClient {
  @override
  Future<User> get(String endpoint) async {
    print('HTTP GET: $endpoint');
    await Future.delayed(const Duration(milliseconds: 100));
    return User('1', 'Alice');
  }
}

class MockApiClient implements ApiClient {
  @override
  Future<User> get(String endpoint) async {
    print('MOCK GET: $endpoint');
    return User('mock', 'Mock User');
  }
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print('[LOG] $message');
  }
}

class SilentLogger implements Logger {
  @override
  void log(String message) {
    // Do nothing - useful for tests
  }
}

class User {
  final String id;
  final String name;

  User(this.id, this.name);

  @override
  String toString() => 'User($id: $name)';
}

void main() async {
  print('=== Dependency Injection Pattern ===');
  print('');

  print('--- Production configuration ---');
  final prodService = UserService(
    apiClient: HttpApiClient(),
    logger: ConsoleLogger(),
  );
  final user1 = await prodService.getUser('1');
  print('Got: $user1');

  print('');
  print('--- Test configuration ---');
  final testService = UserService(
    apiClient: MockApiClient(),
    logger: SilentLogger(), // No logs in tests
  );
  final user2 = await testService.getUser('1');
  print('Got: $user2');

  print('');
  print('--- Development configuration (verbose logging) ---');
  final devService = UserService(
    apiClient: HttpApiClient(),
    logger: ConsoleLogger(),
  );
  final users = await devService.getAllUsers();
  print('Got ${users.length} users');
}"""),

        // Example 2: DI Container
        StrCodeBlock(r"""// Example 2: Simple DI Container
// Use case: Centralized dependency management

import 'dart:collection';

// Simple DI Container
class DependencyContainer {
  final Map<Type, Object Function()> _factories = {};
  final Map<Type, Object> _singletons = {};

  // Register a factory (creates new instance each time)
  void registerFactory<T>(T Function() factory) {
    _factories[T] = factory;
    print('Registered factory for ${T}');
  }

  // Register a singleton (reuses same instance)
  void registerSingleton<T>(T instance) {
    _singletons[T] = instance;
    print('Registered singleton for ${T}');
  }

  // Register a lazy singleton (created on first access)
  void registerLazySingleton<T>(T Function() factory) {
    _factories[T] = () {
      if (!_singletons.containsKey(T)) {
        _singletons[T] = factory();
        print('Created singleton instance of ${T}');
      }
      return _singletons[T] as T;
    };
    print('Registered lazy singleton for ${T}');
  }

  // Resolve a dependency
  T resolve<T>() {
    // Check singletons first
    if (_singletons.containsKey(T)) {
      return _singletons[T] as T;
    }

    // Use factory
    if (_factories.containsKey(T)) {
      return _factories[T]!() as T;
    }

    throw Exception('No registration found for type ${T}');
  }

  // Check if type is registered
  bool isRegistered<T>() {
    return _factories.containsKey(T) || _singletons.containsKey(T);
  }

  void clear() {
    _factories.clear();
    _singletons.clear();
  }
}

// Example services
abstract class DatabaseService {
  void connect();
  void query(String sql);
}

class SqliteDatabase implements DatabaseService {
  final String dbPath;

  SqliteDatabase(this.dbPath);

  @override
  void connect() {
    print('Connected to SQLite at $dbPath');
  }

  @override
  void query(String sql) {
    print('Executing: $sql');
  }
}

abstract class CacheService {
  void set(String key, dynamic value);
  dynamic get(String key);
}

class InMemoryCache implements CacheService {
  final Map<String, dynamic> _cache = {};

  @override
  void set(String key, dynamic value) {
    _cache[key] = value;
    print('Cached: $key');
  }

  @override
  dynamic get(String key) {
    return _cache[key];
  }
}

class UserRepository {
  final DatabaseService _db;
  final CacheService _cache;

  UserRepository({
    required DatabaseService db,
    required CacheService cache,
  })  : _db = db,
        _cache = cache;

  void findUser(String id) {
    print('UserRepository: Finding user $id');
    
    // Check cache first
    final cached = _cache.get('user:$id');
    if (cached != null) {
      print('  Found in cache');
      return;
    }

    // Query database
    _db.query('SELECT * FROM users WHERE id = $id');
    _cache.set('user:$id', 'User data');
  }
}

class AuthService {
  final UserRepository _userRepo;

  AuthService({required UserRepository userRepo}) : _userRepo = userRepo;

  void login(String userId) {
    print('AuthService: Logging in user $userId');
    _userRepo.findUser(userId);
  }
}

void main() {
  print('=== DI Container Pattern ===');
  print('');

  final container = DependencyContainer();

  print('--- Registering dependencies ---');
  
  // Register services
  container.registerLazySingleton<DatabaseService>(
    () => SqliteDatabase('/data/app.db'),
  );

  container.registerLazySingleton<CacheService>(
    () => InMemoryCache(),
  );

  // Register repository (needs db and cache)
  container.registerFactory<UserRepository>(
    () => UserRepository(
      db: container.resolve<DatabaseService>(),
      cache: container.resolve<CacheService>(),
    ),
  );

  // Register service (needs repository)
  container.registerFactory<AuthService>(
    () => AuthService(
      userRepo: container.resolve<UserRepository>(),
    ),
  );

  print('');
  print('--- Resolving dependencies ---');

  final authService = container.resolve<AuthService>();
  authService.login('user_123');

  print('');
  print('--- Singleton behavior ---');
  final db1 = container.resolve<DatabaseService>();
  final db2 = container.resolve<DatabaseService>();
  print('Same database instance? ${identical(db1, db2)}');

  final repo1 = container.resolve<UserRepository>();
  final repo2 = container.resolve<UserRepository>();
  print('Same repository instance? ${identical(repo1, repo2)} (Factory - should be false)');
}"""),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Loose coupling - classes depend on abstractions, not concrete classes",
        "Testability - easy to inject mocks/stubs for testing",
        "Flexibility - swap implementations without changing code",
        "Single Responsibility - classes don't manage dependency creation",
        "Open/Closed Principle - add new implementations without modifying existing code",
      ],
      ar: [
        "اقتران ضعيف - الفئات تعتمد على التجريدات، وليس الفئات المحددة",
        "قابلية الاختبار - سهل حقن mocks/stubs للاختبار",
        "المرونة - تبديل التطبيقات دون تغيير الكود",
        "المسؤولية الواحدة - الفئات لا تدير إنشاء التبعية",
        "مبدأ المفتوح/المغلق - إضافة تطبيقات جديدة دون تعديل الكود الموجود",
      ],
    ),
    cons: LocSL(
      en: [
        "More initial setup required",
        "Can be harder to trace dependency flow",
        "Overuse can lead to complex configuration",
      ],
      ar: [
        "مزيد من الإعداد الأولي مطلوب",
        "قد يكون أصعب لتتبع تدفق التبعية",
        "الإفراط في الاستخدام قد يؤدي لتكوين معقد",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Dependency Injection when:"),
        ULContent(
          value: [
            "You want testable code with mockable dependencies",
            "You need to swap implementations (dev/prod/test)",
            "Classes have many dependencies that should be managed centrally",
            "You want loose coupling between components",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم حقن التبعية عندما:"),
        ULContent(
          value: [
            "تريد كوداً قابلاً للاختبار مع تبعيات قابلة للـ mock",
            "تحتاج لتبديل التطبيقات (dev/prod/test)",
            "الفئات لها تبعيات كثيرة يجب إدارتها مركزياً",
            "تريد اقتراناً ضعيفاً بين المكونات",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Injecting too many dependencies (split class if >3-4 dependencies)",
        "Not using interfaces - defeats the purpose",
        "Creating dependencies inside classes instead of injecting",
        "Overcomplicating with DI when simple constructor parameters suffice",
      ],
      ar: [
        "حقن تبعيات كثيرة جداً (قسّم الفئة إذا >3-4 تبعيات)",
        "عدم استخدام الواجهات - يُفشل الغرض",
        "إنشاء التبعيات داخل الفئات بدلاً من الحقن",
        "الإفراط في التعقيد مع DI عندما تكفي معاملات المُنشئ البسيطة",
      ],
    ),
    relatedPatterns: [PK.serviceLocator, PK.factoryMethod, PK.singleton],
    oftenConfusedWith: [PK.serviceLocator],
  ),

  PK.serviceLocator: DesignPattern(
    id: PK.serviceLocator,
    title: LocS(en: "Service Locator", ar: "محدد الخدمة (Service Locator)"),
    description: LocS(
      en: "Provides a central registry where objects can locate services they need",
      ar: "يوفر سجلاً مركزياً حيث يمكن للكائنات تحديد موقع الخدمات التي تحتاجها",
    ),
    group: .design,
    type: .behavioral,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "Service Locator provides a central registry for services. Instead of objects creating dependencies or having them injected, objects ask the Service Locator for what they need. The locator maintains a registry of services and returns them on request.",
        ),
        AnalogyContent(
          "Think of a phone directory or yellow pages. When you need a plumber, you don't have one injected into your home (DI). Instead, you look up 'plumbers' in the directory (Service Locator) and call one. The directory knows all service providers and connects you to them.",
        ),
        StrContent(
          "Service Locator is simpler than DI frameworks but has downsides. Dependencies are hidden - you can't see what a class needs just by looking at its constructor. It's harder to test because you must configure the locator before tests. Dependency Injection is generally preferred in modern code.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Service Locator: Central registry that stores and retrieves services",
            "Services: Objects registered in the locator",
            "Client: Code that uses locator to get services",
            "Registration: Process of adding services to locator",
          ],
        ),
        DiagramContent(
          r"Pattern Flow:\nService Locator (Registry)\n  - DatabaseService\n  - ApiService\n  - CacheService\n       ↓ (locate)\nClient asks: getService<ApiService>()\n       ↓\nLocator returns instance",
        ),
        NoteContent(
          "Service Locator vs Dependency Injection: Service Locator is pull-based (objects pull dependencies from locator). DI is push-based (dependencies pushed into objects). DI makes dependencies explicit and is easier to test. Service Locator hides dependencies and creates global state.",
          type: .important,
        ),
        StrContent(
          "Common in Flutter/Dart: GetIt package is a popular Service Locator. While DI is generally preferred, Service Locator can be simpler for small apps or when DI feels like overkill. Many Flutter apps use GetIt for simple dependency management.",
        ),
      ],
      ar: [
        StrContent(
          "محدد الخدمة يوفر سجلاً مركزياً للخدمات. بدلاً من إنشاء الكائنات للتبعيات أو حقنها، تسأل الكائنات محدد الخدمة عما تحتاجه. المحدد يحتفظ بسجل من الخدمات ويُرجعها عند الطلب.",
        ),
        AnalogyContent(
          "فكر في دليل الهاتف أو الصفحات الصفراء. عندما تحتاج لسباك، لا يُحقن واحد في منزلك (DI). بدلاً من ذلك، تبحث عن 'سباكين' في الدليل (محدد الخدمة) وتتصل بواحد. الدليل يعرف جميع مقدمي الخدمات ويربطك بهم.",
        ),
        StrContent(
          "محدد الخدمة أبسط من أطر DI لكن له سلبيات. التبعيات مخفية - لا يمكنك رؤية ما تحتاجه الفئة فقط بالنظر لمُنشئها. أصعب للاختبار لأنه يجب عليك تكوين المحدد قبل الاختبارات. حقن التبعية مُفضل عموماً في الكود الحديث.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "محدد الخدمة: سجل مركزي يخزن ويسترجع الخدمات",
            "الخدمات: كائنات مُسجلة في المحدد",
            "العميل: كود يستخدم المحدد للحصول على الخدمات",
            "التسجيل: عملية إضافة الخدمات للمحدد",
          ],
        ),
        DiagramContent(
          r"تدفق النمط:\nمحدد الخدمة (السجل)\n  - خدمة قاعدة البيانات\n  - خدمة API\n  - خدمة الذاكرة المؤقتة\n       ↓ (تحديد الموقع)\nالعميل يسأل: getService<ApiService>()\n       ↓\nالمحدد يُرجع النسخة",
        ),
        NoteContent(
          "محدد الخدمة مقابل حقن التبعية: محدد الخدمة قائم على السحب (الكائنات تسحب التبعيات من المحدد). DI قائم على الدفع (التبعيات تُدفع للكائنات). DI يجعل التبعيات صريحة وأسهل للاختبار. محدد الخدمة يخفي التبعيات وينشئ حالة عالمية.",
          type: .important,
        ),
        StrContent(
          "شائع في Flutter/Dart: حزمة GetIt هي محدد خدمة شهير. بينما DI مُفضل عموماً، محدد الخدمة يمكن أن يكون أبسط للتطبيقات الصغيرة أو عندما يبدو DI مبالغاً فيه. العديد من تطبيقات Flutter تستخدم GetIt لإدارة التبعية البسيطة.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: Simple Service Locator
        StrCodeBlock(r"""// Example 1: Basic Service Locator
// Use case: Simple centralized service registry

class ServiceLocator {
  static final ServiceLocator _instance = ServiceLocator._internal();
  factory ServiceLocator() => _instance;
  ServiceLocator._internal();

  final Map<Type, dynamic> _services = {};

  // Register a service instance
  void register<T>(T service) {
    _services[T] = service;
    print('Registered: ${T}');
  }

  // Register a factory
  void registerFactory<T>(T Function() factory) {
    _services[T] = factory;
    print('Registered factory: ${T}');
  }

  // Get a service
  T get<T>() {
    final service = _services[T];
    
    if (service == null) {
      throw Exception('Service of type ${T} not registered');
    }

    // If it's a factory, call it
    if (service is Function) {
      return service() as T;
    }

    return service as T;
  }

  // Check if service is registered
  bool isRegistered<T>() => _services.containsKey(T);

  // Clear all services
  void clear() {
    _services.clear();
  }
}

// Example services
abstract class Logger {
  void log(String message);
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print('[LOG] $message');
  }
}

abstract class ConfigService {
  String get apiUrl;
  String get apiKey;
}

class AppConfig implements ConfigService {
  @override
  String get apiUrl => 'https://api.example.com';
  
  @override
  String get apiKey => 'secret_key_123';
}

class UserService {
  // Service Locator - pulls dependencies when needed
  final Logger _logger = ServiceLocator().get<Logger>();
  final ConfigService _config = ServiceLocator().get<ConfigService>();

  void createUser(String name) {
    _logger.log('Creating user: $name');
    _logger.log('Using API: ${_config.apiUrl}');
    
    // Simulate API call
    print('POST ${_config.apiUrl}/users');
    print('API-Key: ${_config.apiKey}');
    print('Body: {"name": "$name"}');
  }
}

void main() {
  print('=== Service Locator Pattern ===');
  print('');

  final locator = ServiceLocator();

  print('--- Registering services ---');
  locator.register<Logger>(ConsoleLogger());
  locator.register<ConfigService>(AppConfig());

  print('');
  print('--- Using services ---');
  final userService = UserService();
  userService.createUser('Alice');

  print('');
  print('--- Direct service access ---');
  final logger = locator.get<Logger>();
  logger.log('Direct access to logger');

  final config = locator.get<ConfigService>();
  print('API URL from locator: ${config.apiUrl}');
}"""),

        // Example 2: Service Locator with Scopes
        StrCodeBlock(r"""// Example 2: Service Locator with Lifecycle Scopes
// Use case: Different service lifetimes (singleton, transient, scoped)

enum ServiceLifetime { singleton, transient, scoped }

class ServiceRegistration {
  final Type type;
  final dynamic factory;
  final ServiceLifetime lifetime;
  dynamic instance; // For singletons and scoped

  ServiceRegistration({
    required this.type,
    required this.factory,
    required this.lifetime,
  });
}

class ServiceScope {
  final Map<Type, dynamic> _scopedInstances = {};

  T get<T>(ServiceRegistration registration) {
    if (registration.lifetime == ServiceLifetime.scoped) {
      if (!_scopedInstances.containsKey(T)) {
        _scopedInstances[T] = registration.factory();
        print('Created scoped instance of ${T}');
      }
      return _scopedInstances[T] as T;
    }
    return registration.factory() as T;
  }

  void dispose() {
    _scopedInstances.clear();
    print('Scope disposed');
  }
}

class AdvancedServiceLocator {
  static final AdvancedServiceLocator _instance = AdvancedServiceLocator._internal();
  factory AdvancedServiceLocator() => _instance;
  AdvancedServiceLocator._internal();

  final Map<Type, ServiceRegistration> _registrations = {};

  void registerSingleton<T>(T Function() factory) {
    _registrations[T] = ServiceRegistration(
      type: T,
      factory: factory,
      lifetime: ServiceLifetime.singleton,
    );
    print('Registered singleton: ${T}');
  }

  void registerTransient<T>(T Function() factory) {
    _registrations[T] = ServiceRegistration(
      type: T,
      factory: factory,
      lifetime: ServiceLifetime.transient,
    );
    print('Registered transient: ${T}');
  }

  void registerScoped<T>(T Function() factory) {
    _registrations[T] = ServiceRegistration(
      type: T,
      factory: factory,
      lifetime: ServiceLifetime.scoped,
    );
    print('Registered scoped: ${T}');
  }

  T get<T>({ServiceScope? scope}) {
    final registration = _registrations[T];
    if (registration == null) {
      throw Exception('Service ${T} not registered');
    }

    switch (registration.lifetime) {
      case ServiceLifetime.singleton:
        registration.instance ??= registration.factory();
        return registration.instance as T;

      case ServiceLifetime.transient:
        return registration.factory() as T;

      case ServiceLifetime.scoped:
        if (scope == null) {
          throw Exception('Scoped service ${T} requires a scope');
        }
        return scope.get<T>(registration);
    }
  }

  ServiceScope createScope() {
    return ServiceScope();
  }

  void clear() {
    _registrations.clear();
  }
}

// Example services
abstract class DatabaseConnection {
  void query(String sql);
  int get connectionId;
}

class SqlConnection implements DatabaseConnection {
  static int _idCounter = 0;
  @override
  final int connectionId = ++_idCounter;

  SqlConnection() {
    print('Opening database connection #$connectionId');
  }

  @override
  void query(String sql) {
    print('Connection #$connectionId executing: $sql');
  }
}

abstract class RequestContext {
  String get requestId;
}

class HttpRequestContext implements RequestContext {
  static int _requestCounter = 0;
  @override
  final String requestId = 'req_${++_requestCounter}';

  HttpRequestContext() {
    print('Created request context: $requestId');
  }
}

class DataService {
  final AdvancedServiceLocator _locator;
  final ServiceScope? _scope;

  DataService(this._locator, this._scope);

  void processRequest() {
    // Get singleton - same instance always
    final conn1 = _locator.get<DatabaseConnection>();
    final conn2 = _locator.get<DatabaseConnection>();
    print('Same connection? ${identical(conn1, conn2)} (singleton)');

    // Get scoped - same instance within scope
    if (_scope != null) {
      final ctx1 = _locator.get<RequestContext>(scope: _scope);
      final ctx2 = _locator.get<RequestContext>(scope: _scope);
      print('Same context? ${identical(ctx1, ctx2)} (scoped)');
      
      ctx1.query('SELECT * FROM users');
    }
  }
}

void main() {
  print('=== Advanced Service Locator with Scopes ===');
  print('');

  final locator = AdvancedServiceLocator();

  print('--- Registering services ---');
  // Singleton - created once, shared everywhere
  locator.registerSingleton<DatabaseConnection>(() => SqlConnection());

  // Scoped - one instance per scope (e.g., per HTTP request)
  locator.registerScoped<RequestContext>(() => HttpRequestContext());

  print('');
  print('--- Scope 1 (Request 1) ---');
  final scope1 = locator.createScope();
  final service1 = DataService(locator, scope1);
  service1.processRequest();
  scope1.dispose();

  print('');
  print('--- Scope 2 (Request 2) ---');
  final scope2 = locator.createScope();
  final service2 = DataService(locator, scope2);
  service2.processRequest();
  scope2.dispose();

  print('');
  print('Notice: Database connection is same (singleton)');
  print('Notice: Request context is different per scope');
}"""),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Simple to understand and implement",
        "Centralized service management",
        "No need for constructor parameter passing chains",
        "Easy to swap implementations globally",
      ],
      ar: [
        "بسيط للفهم والتنفيذ",
        "إدارة خدمات مركزية",
        "لا حاجة لسلاسل تمرير معاملات المُنشئ",
        "سهل تبديل التطبيقات عالمياً",
      ],
    ),
    cons: LocSL(
      en: [
        "Hides dependencies - can't see what class needs from constructor",
        "Harder to test - must configure locator before tests",
        "Creates global state - can cause issues in large apps",
        "Runtime errors if service not registered",
        "Generally considered an anti-pattern compared to DI",
      ],
      ar: [
        "يخفي التبعيات - لا يمكن رؤية ما تحتاجه الفئة من المُنشئ",
        "أصعب للاختبار - يجب تكوين المحدد قبل الاختبارات",
        "ينشئ حالة عالمية - قد يسبب مشاكل في التطبيقات الكبيرة",
        "أخطاء وقت التشغيل إذا لم تُسجل الخدمة",
        "يُعتبر عموماً نمطاً مضاداً مقارنة بـ DI",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Service Locator when:"),
        ULContent(
          value: [
            "You have a small to medium app where DI feels like overkill",
            "You need simple dependency management without framework",
            "You're retrofitting legacy code with dependency management",
            "Team is more comfortable with pull-based approach",
          ],
        ),
        NoteContent(
          "Prefer Dependency Injection over Service Locator for new code. DI makes dependencies explicit, is easier to test, and follows better design principles. Use Service Locator only when DI is impractical.",
          type: .warning,
        ),
      ],
      ar: [
        StrContent("استخدم محدد الخدمة عندما:"),
        ULContent(
          value: [
            "لديك تطبيق صغير إلى متوسط حيث يبدو DI مبالغاً فيه",
            "تحتاج لإدارة تبعية بسيطة دون إطار",
            "تُعدل كوداً قديماً بإدارة التبعية",
            "الفريق أكثر راحة مع نهج قائم على السحب",
          ],
        ),
        NoteContent(
          "فضّل حقن التبعية على محدد الخدمة للكود الجديد. DI يجعل التبعيات صريحة، أسهل للاختبار، ويتبع مبادئ تصميم أفضل. استخدم محدد الخدمة فقط عندما يكون DI غير عملي.",
          type: .warning,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Using as default instead of considering DI first",
        "Not handling missing service registrations gracefully",
        "Creating too many global service locator instances",
        "Overusing - makes dependencies unclear",
      ],
      ar: [
        "الاستخدام كافتراضي بدلاً من النظر في DI أولاً",
        "عدم التعامل مع تسجيلات الخدمة المفقودة بلطف",
        "إنشاء نسخ محدد خدمة عالمية كثيرة جداً",
        "الإفراط في الاستخدام - يجعل التبعيات غير واضحة",
      ],
    ),
    relatedPatterns: [PK.dependencyInjection, PK.singleton],
    oftenConfusedWith: [PK.dependencyInjection],
  ),

  PK.repository: DesignPattern(
    id: PK.repository,
    title: LocS(en: "Repository", ar: "المستودع (Repository)"),
    description: LocS(
      en: "Mediates between domain and data layers using a collection-like interface",
      ar: "يتوسط بين طبقة النطاق والبيانات باستخدام واجهة تشبه المجموعة",
    ),
    group: .design,
    type: .behavioral,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Repository pattern mediates between the domain and data mapping layers. It acts like an in-memory collection of domain objects. Clients use the repository to query and persist objects without knowing about database, API, or storage details. Repository encapsulates data access logic.",
        ),
        AnalogyContent(
          "Think of a library. You don't need to know the Dewey Decimal System or where books are physically stored. You ask the librarian (repository) to find a book by title or author. The librarian knows how to locate books, manages checkouts/returns, and handles the complex catalog system. You work with books (domain objects), not filing systems.",
        ),
        StrContent(
          "Repository differs from Data Mapper. Data Mapper translates between domain objects and database rows. Repository provides a collection-like interface (add, remove, findById, findAll) and may use Data Mapper internally. Repository is about domain object persistence, Data Mapper is about object-relational mapping.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Repository Interface: Defines collection-like operations (add, remove, find)",
            "Concrete Repository: Implements data access using database, API, etc.",
            "Domain Objects: Business objects that repository manages",
            "Data Source: Underlying storage (database, API, file system)",
          ],
        ),
        DiagramContent(
          r"Pattern Flow:\nDomain Layer\n     ↓ (uses)\nRepository Interface\n     ↓ (implements)\nConcrete Repository\n     ↓ (accesses)\nData Source (DB/API)",
        ),
        NoteContent(
          "Repository vs DAO: DAO (Data Access Object) is lower-level, closely tied to database tables. Repository is domain-centric, provides collection-like interface, and may aggregate data from multiple sources. Repository is higher-level abstraction than DAO.",
          type: .important,
        ),
        StrContent(
          "Common in Flutter/Dart: Repository is extremely common in clean architecture. It sits between UI/BLoC layer and data sources. Repositories abstract data sources - domain layer doesn't know if data comes from API, local database, or cache. Many Flutter apps use UserRepository, ProductRepository, etc.",
        ),
      ],
      ar: [
        StrContent(
          "نمط المستودع يتوسط بين طبقة النطاق وطبقة تعيين البيانات. يعمل كمجموعة في الذاكرة من كائنات النطاق. يستخدم العملاء المستودع للاستعلام والاستمرارية للكائنات دون معرفة تفاصيل قاعدة البيانات أو API أو التخزين. المستودع يُغلف منطق الوصول للبيانات.",
        ),
        AnalogyContent(
          "فكر في مكتبة. لا تحتاج لمعرفة نظام ديوي العشري أو أين تُخزن الكتب فعلياً. تسأل أمين المكتبة (المستودع) لإيجاد كتاب بالعنوان أو المؤلف. أمين المكتبة يعرف كيفية تحديد موقع الكتب، يدير الإعارات/الإرجاعات، ويتعامل مع نظام الفهرس المعقد. تعمل مع الكتب (كائنات النطاق)، وليس أنظمة الأرشفة.",
        ),
        StrContent(
          "المستودع يختلف عن مُعيّن البيانات. مُعيّن البيانات يترجم بين كائنات النطاق وصفوف قاعدة البيانات. المستودع يوفر واجهة تشبه المجموعة (add، remove، findById، findAll) وقد يستخدم مُعيّن البيانات داخلياً. المستودع يتعلق باستمرارية كائن النطاق، مُعيّن البيانات يتعلق بتعيين الكائن-العلائقي.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "واجهة المستودع: تُعرّف عمليات تشبه المجموعة (add، remove، find)",
            "المستودع المحدد: ينفذ الوصول للبيانات باستخدام قاعدة البيانات، API، إلخ",
            "كائنات النطاق: كائنات العمل التي يديرها المستودع",
            "مصدر البيانات: التخزين الأساسي (قاعدة البيانات، API، نظام الملفات)",
          ],
        ),
        DiagramContent(
          r"تدفق النمط:\nطبقة النطاق\n     ↓ (يستخدم)\nواجهة المستودع\n     ↓ (ينفذ)\nالمستودع المحدد\n     ↓ (يصل إلى)\nمصدر البيانات (DB/API)",
        ),
        NoteContent(
          "المستودع مقابل DAO: DAO (كائن وصول البيانات) أقل مستوى، مرتبط بإحكام بجداول قاعدة البيانات. المستودع يتمحور حول النطاق، يوفر واجهة تشبه المجموعة، وقد يجمع البيانات من مصادر متعددة. المستودع هو تجريد أعلى مستوى من DAO.",
          type: .important,
        ),
        StrContent(
          "شائع في Flutter/Dart: المستودع شائع للغاية في المعمارية النظيفة. يقع بين طبقة UI/BLoC ومصادر البيانات. المستودعات تُجرد مصادر البيانات - طبقة النطاق لا تعرف إذا كانت البيانات تأتي من API، قاعدة بيانات محلية، أو ذاكرة مؤقتة. العديد من تطبيقات Flutter تستخدم UserRepository، ProductRepository، إلخ.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example 1: User Repository
        StrCodeBlock(r"""// Example 1: User Repository Pattern
// Use case: Abstract data access from domain layer

// Domain model
class User {
  final String id;
  final String name;
  final String email;
  final DateTime createdAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.createdAt,
  });

  @override
  String toString() => 'User($id: $name, $email)';
}

// Repository interface (collection-like)
abstract class UserRepository {
  Future<User?> findById(String id);
  Future<List<User>> findAll();
  Future<List<User>> findByEmail(String email);
  Future<void> save(User user);
  Future<void> delete(String id);
  Future<bool> exists(String id);
}

// Data source abstraction
abstract class UserDataSource {
  Future<Map<String, dynamic>?> getUser(String id);
  Future<List<Map<String, dynamic>>> getAllUsers();
  Future<void> insertUser(Map<String, dynamic> userData);
  Future<void> updateUser(String id, Map<String, dynamic> userData);
  Future<void> deleteUser(String id);
}

// Concrete data source: Local database
class LocalUserDataSource implements UserDataSource {
  final Map<String, Map<String, dynamic>> _db = {};

  @override
  Future<Map<String, dynamic>?> getUser(String id) async {
    print('LocalDB: SELECT * FROM users WHERE id = $id');
    await Future.delayed(const Duration(milliseconds: 50));
    return _db[id];
  }

  @override
  Future<List<Map<String, dynamic>>> getAllUsers() async {
    print('LocalDB: SELECT * FROM users');
    await Future.delayed(const Duration(milliseconds: 50));
    return _db.values.toList();
  }

  @override
  Future<void> insertUser(Map<String, dynamic> userData) async {
    print('LocalDB: INSERT INTO users VALUES ${userData}');
    await Future.delayed(const Duration(milliseconds: 50));
    _db[userData['id']] = userData;
  }

  @override
  Future<void> updateUser(String id, Map<String, dynamic> userData) async {
    print('LocalDB: UPDATE users SET ... WHERE id = $id');
    await Future.delayed(const Duration(milliseconds: 50));
    _db[id] = userData;
  }

  @override
  Future<void> deleteUser(String id) async {
    print('LocalDB: DELETE FROM users WHERE id = $id');
    await Future.delayed(const Duration(milliseconds: 50));
    _db.remove(id);
  }
}

// Concrete data source: Remote API
class RemoteUserDataSource implements UserDataSource {
  final String apiUrl;

  RemoteUserDataSource(this.apiUrl);

  @override
  Future<Map<String, dynamic>?> getUser(String id) async {
    print('API: GET $apiUrl/users/$id');
    await Future.delayed(const Duration(milliseconds: 100));
    return {
      'id': id,
      'name': 'Remote User',
      'email': 'remote@example.com',
      'created_at': DateTime.now().toIso8601String(),
    };
  }

  @override
  Future<List<Map<String, dynamic>>> getAllUsers() async {
    print('API: GET $apiUrl/users');
    await Future.delayed(const Duration(milliseconds: 100));
    return [];
  }

  @override
  Future<void> insertUser(Map<String, dynamic> userData) async {
    print('API: POST $apiUrl/users');
    await Future.delayed(const Duration(milliseconds: 100));
  }

  @override
  Future<void> updateUser(String id, Map<String, dynamic> userData) async {
    print('API: PUT $apiUrl/users/$id');
    await Future.delayed(const Duration(milliseconds: 100));
  }

  @override
  Future<void> deleteUser(String id) async {
    print('API: DELETE $apiUrl/users/$id');
    await Future.delayed(const Duration(milliseconds: 100));
  }
}

// Concrete repository implementation
class UserRepositoryImpl implements UserRepository {
  final UserDataSource _localSource;
  final UserDataSource _remoteSource;

  UserRepositoryImpl({
    required UserDataSource localSource,
    required UserDataSource remoteSource,
  })  : _localSource = localSource,
        _remoteSource = remoteSource;

  @override
  Future<User?> findById(String id) async {
    // Try local first
    var userData = await _localSource.getUser(id);
    
    if (userData == null) {
      print('Not in local DB, fetching from API...');
      userData = await _remoteSource.getUser(id);
      
      if (userData != null) {
        // Cache in local DB
        await _localSource.insertUser(userData);
      }
    }

    return userData != null ? _mapToUser(userData) : null;
  }

  @override
  Future<List<User>> findAll() async {
    final usersData = await _localSource.getAllUsers();
    return usersData.map(_mapToUser).toList();
  }

  @override
  Future<List<User>> findByEmail(String email) async {
    final allUsers = await findAll();
    return allUsers.where((user) => user.email == email).toList();
  }

  @override
  Future<void> save(User user) async {
    final userData = _mapFromUser(user);
    
    // Save to both local and remote
    await _localSource.insertUser(userData);
    await _remoteSource.insertUser(userData);
  }

  @override
  Future<void> delete(String id) async {
    await _localSource.deleteUser(id);
    await _remoteSource.deleteUser(id);
  }

  @override
  Future<bool> exists(String id) async {
    final user = await _localSource.getUser(id);
    return user != null;
  }

  // Mapping (Data Mapper pattern internally)
  User _mapToUser(Map<String, dynamic> data) {
    return User(
      id: data['id'],
      name: data['name'],
      email: data['email'],
      createdAt: DateTime.parse(data['created_at']),
    );
  }

  Map<String, dynamic> _mapFromUser(User user) {
    return {
      'id': user.id,
      'name': user.name,
      'email': user.email,
      'created_at': user.createdAt.toIso8601String(),
    };
  }
}

void main() async {
  print('=== Repository Pattern ===');
  print('');

  final repository = UserRepositoryImpl(
    localSource: LocalUserDataSource(),
    remoteSource: RemoteUserDataSource('https://api.example.com'),
  );

  print('--- Saving new user ---');
  final newUser = User(
    id: 'user_001',
    name: 'Alice Johnson',
    email: 'alice@example.com',
    createdAt: DateTime.now(),
  );
  await repository.save(newUser);

  print('');
  print('--- Finding user by ID (from local cache) ---');
  final found = await repository.findById('user_001');
  print('Found: $found');

  print('');
  print('--- Finding non-existent user (fetches from API) ---');
  final remote = await repository.findById('user_002');
  print('Found: $remote');

  print('');
  print('--- Finding all users ---');
  final allUsers = await repository.findAll();
  print('Total users: ${allUsers.length}');
  for (final user in allUsers) {
    print('  - $user');
  }

  print('');
  print('--- Deleting user ---');
  await repository.delete('user_001');
  print('Deleted user_001');

  final exists = await repository.exists('user_001');
  print('User still exists? $exists');
}"""),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Decouples domain logic from data access",
        "Provides collection-like interface - easy to understand",
        "Centralized data access logic",
        "Easy to swap data sources (database, API, cache)",
        "Testable - can mock repository interface",
        "Can aggregate data from multiple sources transparently",
      ],
      ar: [
        "يفصل منطق النطاق عن الوصول للبيانات",
        "يوفر واجهة تشبه المجموعة - سهلة الفهم",
        "منطق وصول بيانات مركزي",
        "سهل تبديل مصادر البيانات (قاعدة بيانات، API، ذاكرة مؤقتة)",
        "قابل للاختبار - يمكن mock واجهة المستودع",
        "يمكن تجميع البيانات من مصادر متعددة بشفافية",
      ],
    ),
    cons: LocSL(
      en: [
        "Additional abstraction layer adds complexity",
        "Can become bloated with too many query methods",
        "May not fit well with very complex queries",
        "Can hide performance issues if not careful",
      ],
      ar: [
        "طبقة تجريد إضافية تضيف تعقيداً",
        "قد يصبح منتفخاً مع طرق استعلام كثيرة جداً",
        "قد لا يتناسب جيداً مع الاستعلامات المعقدة جداً",
        "قد يخفي مشاكل الأداء إذا لم تكن حذراً",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Repository when:"),
        ULContent(
          value: [
            "You want to decouple domain layer from data layer",
            "You need to aggregate data from multiple sources",
            "You want to provide a collection-like interface for domain objects",
            "You need to swap data sources (testing, different environments)",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المستودع عندما:"),
        ULContent(
          value: [
            "تريد فصل طبقة النطاق عن طبقة البيانات",
            "تحتاج لتجميع البيانات من مصادر متعددة",
            "تريد توفير واجهة تشبه المجموعة لكائنات النطاق",
            "تحتاج لتبديل مصادر البيانات (الاختبار، بيئات مختلفة)",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Putting business logic in repository - it should only handle data access",
        "Creating one repository per database table - repository is per aggregate root",
        "Not using repository interface - defeats testability",
        "Exposing data source details through repository interface",
      ],
      ar: [
        "وضع منطق العمل في المستودع - يجب فقط التعامل مع الوصول للبيانات",
        "إنشاء مستودع واحد لكل جدول قاعدة بيانات - المستودع لكل جذر مجمع",
        "عدم استخدام واجهة المستودع - يُفشل قابلية الاختبار",
        "كشف تفاصيل مصدر البيانات عبر واجهة المستودع",
      ],
    ),
    relatedPatterns: [PK.dataMapper, PK.unitOfWork, PK.specification],
    oftenConfusedWith: [PK.dataMapper, PK.dto],
  ),

  PK.unitOfWork: DesignPattern(
    id: PK.unitOfWork,
    title: LocS(en: "Unit of Work", ar: "وحدة العمل (Unit of Work)"),
    description: LocS(
      en: "Maintains list of objects affected by transaction and coordinates writing changes",
      ar: "يحتفظ بقائمة الكائنات المتأثرة بالمعاملة وينسق كتابة التغييرات",
    ),
    group: .design,
    type: .behavioral,
    category: .practical,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "Unit of Work tracks changes to objects during a business transaction and coordinates writing changes to the database as a single atomic operation. Instead of saving after each change, you make multiple changes then commit them all at once. This ensures data consistency and can improve performance.",
        ),
        AnalogyContent(
          "Think of a shopping cart. You add items (track changes), remove items (track more changes), update quantities (more changes). You don't check out after each action. When you're done shopping, you checkout once (commit). If payment fails, nothing is processed (rollback). All changes happen together or not at all.",
        ),
        StrContent(
          "Unit of Work solves multiple database round-trips. Without it, each save() call hits the database. With Unit of Work, changes accumulate in memory, then flush to database in one batch. It also handles transaction consistency - all changes succeed together or all fail together.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Unit of Work: Tracks new, modified, deleted objects",
            "Register methods: registerNew(), registerDirty(), registerDeleted()",
            "Commit: Persists all changes to database as transaction",
            "Rollback: Discards all pending changes",
            "Works with Repository to coordinate persistence",
          ],
        ),
        DiagramContent(
          r"Pattern Flow:\n1. Begin UnitOfWork\n2. Make changes to objects (tracked automatically)\n3. Call commit() → All changes persist atomically\n   OR rollback() → All changes discarded",
        ),
        StrContent(
          "Common in Flutter/Dart: Less common than Repository because Dart apps often use simpler patterns. However, useful in complex business logic where multiple entities change together. Works well with SQLite transactions, batch API calls, or coordinating multiple repository saves.",
        ),
      ],
      ar: [
        StrContent(
          "وحدة العمل تتتبع التغييرات على الكائنات خلال معاملة عمل وتنسق كتابة التغييرات لقاعدة البيانات كعملية ذرية واحدة. بدلاً من الحفظ بعد كل تغيير، تقوم بتغييرات متعددة ثم تلتزم بها جميعاً دفعة واحدة. هذا يضمن اتساق البيانات ويمكن أن يحسن الأداء.",
        ),
        AnalogyContent(
          "فكر في سلة تسوق. تضيف عناصر (تتبع التغييرات)، تزيل عناصر (تتبع المزيد من التغييرات)، تحدث الكميات (المزيد من التغييرات). لا تدفع بعد كل إجراء. عندما تنتهي من التسوق، تدفع مرة واحدة (الالتزام). إذا فشل الدفع، لا يتم معالجة شيء (التراجع). جميع التغييرات تحدث معاً أو لا شيء على الإطلاق.",
        ),
        StrContent(
          "وحدة العمل تحل جولات قاعدة بيانات متعددة. بدونها، كل استدعاء save() يضرب قاعدة البيانات. مع وحدة العمل، التغييرات تتراكم في الذاكرة، ثم تتدفق لقاعدة البيانات في دفعة واحدة. تتعامل أيضاً مع اتساق المعاملات - جميع التغييرات تنجح معاً أو تفشل جميعها معاً.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "وحدة العمل: تتتبع الكائنات الجديدة، المعدلة، المحذوفة",
            "طرق التسجيل: registerNew()، registerDirty()، registerDeleted()",
            "الالتزام: يستمر جميع التغييرات لقاعدة البيانات كمعاملة",
            "التراجع: يتجاهل جميع التغييرات المعلقة",
            "يعمل مع المستودع لتنسيق الاستمرارية",
          ],
        ),
        DiagramContent(
          r"تدفق النمط:\n1. بدء وحدة العمل\n2. إجراء تغييرات على الكائنات (يُتتبع تلقائياً)\n3. استدعاء commit() → جميع التغييرات تستمر ذرياً\n   أو rollback() → جميع التغييرات تُهمل",
        ),
        StrContent(
          "شائع في Flutter/Dart: أقل شيوعاً من المستودع لأن تطبيقات Dart غالباً تستخدم أنماطاً أبسط. ومع ذلك، مفيد في منطق العمل المعقد حيث تتغير كيانات متعددة معاً. يعمل جيداً مع معاملات SQLite، استدعاءات API دفعية، أو تنسيق حفوظات مستودعات متعددة.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example: Unit of Work with tracking
        StrCodeBlock(r"""// Example: Unit of Work Pattern
// Use case: Coordinating multiple changes as a transaction

// Domain model
class Product {
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
  String toString() => 'Product($id: $name, \$$price, stock: $stock)';
}

// Unit of Work
class UnitOfWork {
  final List<Product> _newProducts = [];
  final List<Product> _dirtyProducts = [];
  final List<String> _deletedProductIds = [];
  bool _isCommitted = false;

  void registerNew(Product product) {
    if (_isCommitted) {
      throw StateError('Cannot register after commit');
    }
    print('UnitOfWork: Registered new product ${product.id}');
    _newProducts.add(product);
  }

  void registerDirty(Product product) {
    if (_isCommitted) {
      throw StateError('Cannot register after commit');
    }
    
    // Don't track if already in new (will be inserted anyway)
    if (_newProducts.contains(product)) return;
    
    if (!_dirtyProducts.contains(product)) {
      print('UnitOfWork: Registered modified product ${product.id}');
      _dirtyProducts.add(product);
    }
  }

  void registerDeleted(String productId) {
    if (_isCommitted) {
      throw StateError('Cannot register after commit');
    }
    print('UnitOfWork: Registered deleted product $productId');
    _deletedProductIds.add(productId);
  }

  Future<void> commit() async {
    if (_isCommitted) {
      throw StateError('Already committed');
    }

    print('');
    print('UnitOfWork: Committing transaction...');
    print('  New: ${_newProducts.length}');
    print('  Modified: ${_dirtyProducts.length}');
    print('  Deleted: ${_deletedProductIds.length}');

    // Simulate database transaction
    try {
      // INSERT new products
      for (final product in _newProducts) {
        await _insertProduct(product);
      }

      // UPDATE modified products
      for (final product in _dirtyProducts) {
        await _updateProduct(product);
      }

      // DELETE products
      for (final id in _deletedProductIds) {
        await _deleteProduct(id);
      }

      print('UnitOfWork: ✓ Transaction committed successfully');
      _isCommitted = true;
    } catch (e) {
      print('UnitOfWork: ✗ Transaction failed, rolling back');
      await rollback();
      rethrow;
    }
  }

  Future<void> rollback() async {
    print('UnitOfWork: Rolling back all changes');
    _newProducts.clear();
    _dirtyProducts.clear();
    _deletedProductIds.clear();
  }

  bool get hasChanges =>
      _newProducts.isNotEmpty ||
      _dirtyProducts.isNotEmpty ||
      _deletedProductIds.isNotEmpty;

  // Simulate database operations
  Future<void> _insertProduct(Product product) async {
    print('  DB: INSERT INTO products VALUES (${product.id}, ${product.name})');
    await Future.delayed(const Duration(milliseconds: 50));
  }

  Future<void> _updateProduct(Product product) async {
    print('  DB: UPDATE products SET name="${product.name}", price=${product.price} WHERE id="${product.id}"');
    await Future.delayed(const Duration(milliseconds: 50));
  }

  Future<void> _deleteProduct(String id) async {
    print('  DB: DELETE FROM products WHERE id="$id"');
    await Future.delayed(const Duration(milliseconds: 50));
  }
}

// Repository that works with Unit of Work
class ProductRepository {
  final UnitOfWork _unitOfWork;
  final Map<String, Product> _cache = {};

  ProductRepository(this._unitOfWork);

  void add(Product product) {
    _cache[product.id] = product;
    _unitOfWork.registerNew(product);
  }

  void update(Product product) {
    _cache[product.id] = product;
    _unitOfWork.registerDirty(product);
  }

  void delete(String id) {
    _cache.remove(id);
    _unitOfWork.registerDeleted(id);
  }

  Product? findById(String id) => _cache[id];
}

// Service that coordinates business operations
class OrderFulfillmentService {
  final ProductRepository _productRepo;
  final UnitOfWork _unitOfWork;

  OrderFulfillmentService(this._productRepo, this._unitOfWork);

  Future<void> processOrder(List<String> productIds) async {
    print('Processing order for products: $productIds');
    
    for (final id in productIds) {
      final product = _productRepo.findById(id);
      if (product == null) {
        throw Exception('Product $id not found');
      }

      if (product.stock < 1) {
        throw Exception('Product ${product.name} out of stock');
      }

      // Update stock (tracked by Unit of Work)
      product.stock--;
      _productRepo.update(product);
      print('  Reserved: ${product.name} (${product.stock} left)');
    }

    // Commit all changes at once
    print('');
    print('Finalizing order...');
    await _unitOfWork.commit();
  }
}

void main() async {
  print('=== Unit of Work Pattern ===');
  print('');

  // Setup
  final unitOfWork = UnitOfWork();
  final productRepo = ProductRepository(unitOfWork);

  // Initial products
  final laptop = Product(id: 'p1', name: 'Laptop', price: 999, stock: 5);
  final mouse = Product(id: 'p2', name: 'Mouse', price: 29, stock: 10);
  final keyboard = Product(id: 'p3', name: 'Keyboard', price: 79, stock: 3);

  productRepo.add(laptop);
  productRepo.add(mouse);
  productRepo.add(keyboard);

  print('--- Committing initial inventory ---');
  await unitOfWork.commit();

  print('');
  print('--- Processing order ---');
  final unitOfWork2 = UnitOfWork();
  final productRepo2 = ProductRepository(unitOfWork2);
  
  // Simulating finding products from DB (in real app, they'd be loaded)
  productRepo2.update(laptop);
  productRepo2.update(mouse);

  final service = OrderFulfillmentService(productRepo2, unitOfWork2);
  
  try {
    await service.processOrder(['p1', 'p2']);
    print('');
    print('Order processed successfully! 🎉');
    print('Laptop stock: ${laptop.stock}');
    print('Mouse stock: ${mouse.stock}');
  } catch (e) {
    print('Order failed: $e');
  }

  print('');
  print('--- Attempting order that will fail ---');
  final unitOfWork3 = UnitOfWork();
  final productRepo3 = ProductRepository(unitOfWork3);
  productRepo3.update(laptop);
  productRepo3.update(keyboard);
  
  final service2 = OrderFulfillmentService(productRepo3, unitOfWork3);
  
  // This will fail - not enough keyboard stock
  try {
    await service2.processOrder(['p1', 'p1', 'p1', 'p1', 'p3', 'p3', 'p3', 'p3']);
  } catch (e) {
    print('Expected failure: $e');
    print('Changes rolled back - stock unchanged');
  }
}"""),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Ensures transaction consistency - all changes succeed or fail together",
        "Reduces database round-trips - batch operations",
        "Simplifies transaction management",
        "Automatic change tracking in some implementations",
        "Can improve performance with batching",
      ],
      ar: [
        "يضمن اتساق المعاملات - جميع التغييرات تنجح أو تفشل معاً",
        "يقلل جولات قاعدة البيانات - عمليات دفعية",
        "يُبسط إدارة المعاملات",
        "تتبع تغيير تلقائي في بعض التطبيقات",
        "يمكن أن يحسن الأداء مع الدفعات",
      ],
    ),
    cons: LocSL(
      en: [
        "Adds complexity - another abstraction layer",
        "Can be overkill for simple applications",
        "Memory overhead from tracking changes",
        "Requires careful management of UoW lifecycle",
      ],
      ar: [
        "يضيف تعقيداً - طبقة تجريد أخرى",
        "قد يكون مبالغاً فيه للتطبيقات البسيطة",
        "عبء ذاكرة من تتبع التغييرات",
        "يتطلب إدارة دقيقة لدورة حياة UoW",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Unit of Work when:"),
        ULContent(
          value: [
            "You have complex transactions involving multiple entities",
            "You need to ensure all-or-nothing transaction semantics",
            "You want to optimize database access with batching",
            "You're implementing complex business operations that span multiple repositories",
          ],
        ),
        NoteContent(
          "Unit of Work is advanced and often unnecessary in Flutter apps. Use only when you have genuinely complex transactions. For simple CRUD, Repository alone is sufficient.",
          type: .warning,
        ),
      ],
      ar: [
        StrContent("استخدم وحدة العمل عندما:"),
        ULContent(
          value: [
            "لديك معاملات معقدة تتضمن كيانات متعددة",
            "تحتاج لضمان دلالات معاملة الكل أو لا شيء",
            "تريد تحسين الوصول لقاعدة البيانات مع الدفعات",
            "تنفذ عمليات عمل معقدة تمتد عبر مستودعات متعددة",
          ],
        ),
        NoteContent(
          "وحدة العمل متقدمة وغالباً غير ضرورية في تطبيقات Flutter. استخدمها فقط عندما يكون لديك معاملات معقدة حقاً. لـ CRUD البسيط، المستودع وحده كافٍ.",
          type: .warning,
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Not committing - forgetting to call commit() loses all changes",
        "Reusing Unit of Work instance across multiple transactions",
        "Tracking too many objects in memory",
        "Not handling rollback on errors properly",
      ],
      ar: [
        "عدم الالتزام - نسيان استدعاء commit() يفقد جميع التغييرات",
        "إعادة استخدام نسخة وحدة العمل عبر معاملات متعددة",
        "تتبع كائنات كثيرة جداً في الذاكرة",
        "عدم التعامل مع التراجع على الأخطاء بشكل صحيح",
      ],
    ),
    relatedPatterns: [PK.repository, PK.command, PK.memento],
    oftenConfusedWith: [PK.repository],
  ),

  PK.specification: DesignPattern(
    id: PK.specification,
    title: LocS(en: "Specification", ar: "المواصفة (Specification)"),
    description: LocS(
      en: "Encapsulates business rules as reusable, combinable objects",
      ar: "يُغلف قواعد العمل ككائنات قابلة لإعادة الاستخدام والدمج",
    ),
    group: .design,
    type: .behavioral,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Specification pattern encapsulates business rules or criteria into reusable objects. Instead of scattering validation logic throughout your code, specifications define testable business rules. Specifications can be combined (AND, OR, NOT) to create complex criteria from simple building blocks.",
        ),
        AnalogyContent(
          "Think of loan approval criteria. A bank has rules: 'credit score > 650', 'debt-to-income < 40%', 'employment > 2 years'. Each rule is a specification. You can combine them: (GoodCredit AND LowDebt) OR (ExcellentCredit). Each specification is reusable, testable, and can be combined into complex approval logic.",
        ),
        StrContent(
          "Specification solves scattered business rules. Without it, validation logic is copy-pasted or buried in if-statements. With Specification, each rule is an object you can name, test, and reuse. You can build complex queries or validation from simple, well-tested specifications.",
        ),
        ULContent(
          title: "Key Components:",
          value: [
            "Specification Interface: isSatisfiedBy(candidate) method",
            "Concrete Specifications: Implement specific business rules",
            "Composite Specifications: AND, OR, NOT combinations",
            "Used for: Validation, filtering, querying, selection",
          ],
        ),
        DiagramContent(
          r"Pattern Flow:\nAgeSpecification.isSatisfiedBy(user)\n  → Returns true/false\n\nCombined:\n(AgeBetween18And65 AND HasLicense).isSatisfiedBy(user)",
        ),
        StrContent(
          "Common in Flutter/Dart: Useful for complex validation, business rule engines, filtering lists with reusable criteria, and query building. While not as common as other patterns, very powerful when you have complex, combinable business rules.",
        ),
      ],
      ar: [
        StrContent(
          "نمط المواصفة يُغلف قواعد العمل أو المعايير في كائنات قابلة لإعادة الاستخدام. بدلاً من تشتيت منطق التحقق في جميع أنحاء الكود، المواصفات تُعرّف قواعد عمل قابلة للاختبار. يمكن دمج المواصفات (AND، OR، NOT) لإنشاء معايير معقدة من كتل بناء بسيطة.",
        ),
        AnalogyContent(
          "فكر في معايير الموافقة على القرض. البنك لديه قواعد: 'درجة الائتمان > 650'، 'نسبة الدين للدخل < 40%'، 'التوظيف > سنتان'. كل قاعدة هي مواصفة. يمكنك دمجها: (ائتمان جيد AND دين منخفض) OR (ائتمان ممتاز). كل مواصفة قابلة لإعادة الاستخدام والاختبار ويمكن دمجها في منطق موافقة معقد.",
        ),
        StrContent(
          "المواصفة تحل قواعد العمل المتناثرة. بدونها، منطق التحقق يُنسخ ويُلصق أو يُدفن في عبارات if. مع المواصفة، كل قاعدة هي كائن يمكنك تسميته واختباره وإعادة استخدامه. يمكنك بناء استعلامات أو تحقق معقد من مواصفات بسيطة ومُختبرة جيداً.",
        ),
        ULContent(
          title: "المكونات الأساسية:",
          value: [
            "واجهة المواصفة: طريقة isSatisfiedBy(candidate)",
            "المواصفات المحددة: تنفذ قواعد عمل محددة",
            "المواصفات المركبة: مجموعات AND، OR، NOT",
            "تُستخدم لـ: التحقق، التصفية، الاستعلام، الاختيار",
          ],
        ),
        DiagramContent(
          r"تدفق النمط:\nمواصفة العمر.isSatisfiedBy(user)\n  → يُرجع true/false\n\nمُدمج:\n(العمر بين 18 و65 AND لديه رخصة).isSatisfiedBy(user)",
        ),
        StrContent(
          "شائع في Flutter/Dart: مفيد للتحقق المعقد، محركات قواعد العمل، تصفية القوائم بمعايير قابلة لإعادة الاستخدام، وبناء الاستعلام. بينما ليس شائعاً مثل الأنماط الأخرى، قوي جداً عندما يكون لديك قواعد عمل معقدة قابلة للدمج.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example: Product filtering specifications
        StrCodeBlock(r"""// Example: Specification Pattern
// Use case: Reusable business rules for filtering and validation

class Product {
  final String id;
  final String name;
  final double price;
  final String category;
  final int stock;
  final bool featured;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.stock,
    required this.featured,
  });

  @override
  String toString() => '$name (\$$price, stock: $stock, $category)';
}

// Specification interface
abstract class Specification<T> {
  bool isSatisfiedBy(T candidate);

  // Combinators
  Specification<T> and(Specification<T> other) => AndSpecification(this, other);
  Specification<T> or(Specification<T> other) => OrSpecification(this, other);
  Specification<T> not() => NotSpecification(this);
}

// Composite Specifications
class AndSpecification<T> extends Specification<T> {
  final Specification<T> left;
  final Specification<T> right;

  AndSpecification(this.left, this.right);

  @override
  bool isSatisfiedBy(T candidate) {
    return left.isSatisfiedBy(candidate) && right.isSatisfiedBy(candidate);
  }
}

class OrSpecification<T> extends Specification<T> {
  final Specification<T> left;
  final Specification<T> right;

  OrSpecification(this.left, this.right);

  @override
  bool isSatisfiedBy(T candidate) {
    return left.isSatisfiedBy(candidate) || right.isSatisfiedBy(candidate);
  }
}

class NotSpecification<T> extends Specification<T> {
  final Specification<T> spec;

  NotSpecification(this.spec);

  @override
  bool isSatisfiedBy(T candidate) {
    return !spec.isSatisfiedBy(candidate);
  }
}

// Concrete Specifications for Product
class PriceRangeSpecification extends Specification<Product> {
  final double minPrice;
  final double maxPrice;

  PriceRangeSpecification(this.minPrice, this.maxPrice);

  @override
  bool isSatisfiedBy(Product product) {
    return product.price >= minPrice && product.price <= maxPrice;
  }
}

class CategorySpecification extends Specification<Product> {
  final String category;

  CategorySpecification(this.category);

  @override
  bool isSatisfiedBy(Product product) {
    return product.category == category;
  }
}

class InStockSpecification extends Specification<Product> {
  @override
  bool isSatisfiedBy(Product product) {
    return product.stock > 0;
  }
}

class FeaturedSpecification extends Specification<Product> {
  @override
  bool isSatisfiedBy(Product product) {
    return product.featured;
  }
}

class LowStockSpecification extends Specification<Product> {
  final int threshold;

  LowStockSpecification({this.threshold = 5});

  @override
  bool isSatisfiedBy(Product product) {
    return product.stock > 0 && product.stock <= threshold;
  }
}

// Extension to filter lists using specifications
extension SpecificationListFilter<T> on List<T> {
  List<T> satisfying(Specification<T> spec) {
    return where((item) => spec.isSatisfiedBy(item)).toList();
  }
}

void main() {
  print('=== Specification Pattern ===');
  print('');

  // Sample products
  final products = [
    Product(id: '1', name: 'Laptop', price: 999, category: 'Electronics', stock: 5, featured: true),
    Product(id: '2', name: 'Mouse', price: 29, category: 'Electronics', stock: 50, featured: false),
    Product(id: '3', name: 'Desk', price: 299, category: 'Furniture', stock: 3, featured: false),
    Product(id: '4', name: 'Chair', price: 199, category: 'Furniture', stock: 0, featured: false),
    Product(id: '5', name: 'Monitor', price: 399, category: 'Electronics', stock: 8, featured: true),
  ];

  print('All products:');
  for (final p in products) {
    print('  - $p');
  }

  print('');
  print('--- Spec 1: Electronics in stock ---');
  final electronicsInStock = CategorySpecification('Electronics')
      .and(InStockSpecification());
  
  final result1 = products.satisfying(electronicsInStock);
  print('Found ${result1.length}:');
  for (final p in result1) {
    print('  - $p');
  }

  print('');
  print('--- Spec 2: Affordable (under \$300) OR Featured ---');
  final affordable = PriceRangeSpecification(0, 300);
  final affordableOrFeatured = affordable.or(FeaturedSpecification());
  
  final result2 = products.satisfying(affordableOrFeatured);
  print('Found ${result2.length}:');
  for (final p in result2) {
    print('  - $p');
  }

  print('');
  print('--- Spec 3: Low stock alert (stock <= 5 and > 0) ---');
  final lowStock = LowStockSpecification(threshold: 5);
  
  final result3 = products.satisfying(lowStock);
  print('Low stock items (${result3.length}):');
  for (final p in result3) {
    print('  ⚠️ $p');
  }

  print('');
  print('--- Spec 4: Complex: Featured electronics NOT low stock ---');
  final complex = FeaturedSpecification()
      .and(CategorySpecification('Electronics'))
      .and(LowStockSpecification().not());
  
  final result4 = products.satisfying(complex);
  print('Found ${result4.length}:');
  for (final p in result4) {
    print('  - $p');
  }

  print('');
  print('--- Validation Example ---');
  final laptop = products[0];
  
  final isPremium = PriceRangeSpecification(500, 2000)
      .and(FeaturedSpecification());
  
  if (isPremium.isSatisfiedBy(laptop)) {
    print('${laptop.name} qualifies for premium promotion! 🎉');
  } else {
    print('${laptop.name} does not qualify for premium promotion');
  }
}"""),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Encapsulates business rules in testable objects",
        "Reusable specifications across different contexts",
        "Combinable - build complex rules from simple ones",
        "Explicit and named business rules - self-documenting",
        "Easy to test specifications in isolation",
      ],
      ar: [
        "يُغلف قواعد العمل في كائنات قابلة للاختبار",
        "مواصفات قابلة لإعادة الاستخدام عبر سياقات مختلفة",
        "قابلة للدمج - بناء قواعد معقدة من قواعد بسيطة",
        "قواعد عمل صريحة ومُسماة - موثقة ذاتياً",
        "سهل اختبار المواصفات بشكل منفصل",
      ],
    ),
    cons: LocSL(
      en: [
        "Can lead to many small specification classes",
        "May be overkill for simple validation",
        "Can be less efficient than direct queries",
      ],
      ar: [
        "قد يؤدي لفئات مواصفات صغيرة كثيرة",
        "قد يكون مبالغاً فيه للتحقق البسيط",
        "قد يكون أقل كفاءة من الاستعلامات المباشرة",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Specification when:"),
        ULContent(
          value: [
            "You have complex business rules that combine in various ways",
            "You need to reuse validation logic across different parts of application",
            "Business rules should be testable in isolation",
            "You want to build queries or filters from composable rules",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المواصفة عندما:"),
        ULContent(
          value: [
            "لديك قواعد عمل معقدة تتحد بطرق مختلفة",
            "تحتاج لإعادة استخدام منطق التحقق عبر أجزاء مختلفة من التطبيق",
            "قواعد العمل يجب أن تكون قابلة للاختبار بشكل منفصل",
            "تريد بناء استعلامات أو فلاتر من قواعد قابلة للتركيب",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Making specifications too granular - balance reusability with practicality",
        "Not using combinators - defeats the purpose",
        "Putting business logic outside specifications",
        "Using for simple cases where direct validation suffices",
      ],
      ar: [
        "جعل المواصفات دقيقة جداً - وازن إعادة الاستخدام مع العملية",
        "عدم استخدام المُدمجات - يُفشل الغرض",
        "وضع منطق العمل خارج المواصفات",
        "الاستخدام للحالات البسيطة حيث يكفي التحقق المباشر",
      ],
    ),
    relatedPatterns: [PK.strategy, PK.composite, PK.interpreter],
    oftenConfusedWith: [PK.strategy],
  ),

  PK.policy: DesignPattern(
    id: PK.policy,
    title: LocS(en: "Policy", ar: "السياسة (Policy)"),
    description: LocS(
      en: "Encapsulates business logic as pluggable, interchangeable policies",
      ar: "يُغلف منطق العمل كسياسات قابلة للتوصيل والتبديل",
    ),
    group: .design,
    type: .behavioral,
    category: .practical,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Policy pattern encapsulates business logic and rules into separate policy objects. Policies define how certain operations should be performed or how decisions should be made. They're similar to Strategy but specifically for business rules and domain logic rather than algorithms.",
        ),
        AnalogyContent(
          "Think of insurance policies. A health insurance policy defines what is covered, copay amounts, deductibles, limits. Different policies have different rules. You can have basic, premium, or family policies - each with their own rules. The policy object encapsulates all these rules and can be swapped without changing the insurance system.",
        ),
        StrContent(
          "Policy differs from Strategy in intent. Strategy focuses on swappable algorithms (how to do something). Policy focuses on business rules (what is allowed, what should happen). Policies often involve more complex domain logic and may involve multiple decision points, while strategies typically have a single execute operation.",
        ),
        ULContent(
          title: "Key Characteristics:",
          value: [
            "Encapsulates business rules and domain logic",
            "Often more complex than simple algorithms",
            "May involve multiple methods/decision points",
            "Typically domain-specific (pricing policy, approval policy, discount policy)",
            "Interchangeable at runtime like Strategy",
          ],
        ),
        StrContent(
          "Common in Flutter/Dart: Pricing policies (calculate final price), discount policies (apply discounts), validation policies (what data is valid), retry policies (how to retry failed operations), and caching policies (what/when to cache). Policy is useful whenever business rules need to be configurable or vary.",
        ),
      ],
      ar: [
        StrContent(
          "نمط السياسة يُغلف منطق العمل والقواعد في كائنات سياسة منفصلة. السياسات تُعرّف كيف يجب تنفيذ عمليات معينة أو كيف يجب اتخاذ القرارات. إنها مشابهة للاستراتيجية لكن خصيصاً لقواعد العمل ومنطق النطاق بدلاً من الخوارزميات.",
        ),
        AnalogyContent(
          "فكر في بوالص التأمين. بوليصة التأمين الصحي تُعرّف ما يُغطى، مبالغ المشاركة في الدفع، القابل للخصم، الحدود. بوالص مختلفة لها قواعد مختلفة. يمكن أن يكون لديك بوالص أساسية أو مميزة أو عائلية - كل منها بقواعدها الخاصة. كائن السياسة يُغلف كل هذه القواعد ويمكن تبديله دون تغيير نظام التأمين.",
        ),
        StrContent(
          "السياسة تختلف عن الاستراتيجية في النية. الاستراتيجية تركز على الخوارزميات القابلة للتبديل (كيفية فعل شيء). السياسة تركز على قواعد العمل (ما هو مسموح، ما الذي يجب أن يحدث). السياسات غالباً تتضمن منطق نطاق أكثر تعقيداً وقد تتضمن نقاط قرار متعددة، بينما الاستراتيجيات عادةً لها عملية تنفيذ واحدة.",
        ),
        ULContent(
          title: "الخصائص الأساسية:",
          value: [
            "يُغلف قواعد العمل ومنطق النطاق",
            "غالباً أكثر تعقيداً من الخوارزميات البسيطة",
            "قد تتضمن طرق/نقاط قرار متعددة",
            "عادةً خاصة بالنطاق (سياسة التسعير، سياسة الموافقة، سياسة الخصم)",
            "قابلة للتبديل في وقت التشغيل مثل الاستراتيجية",
          ],
        ),
        StrContent(
          "شائع في Flutter/Dart: سياسات التسعير (حساب السعر النهائي)، سياسات الخصم (تطبيق الخصومات)، سياسات التحقق (ما البيانات الصالحة)، سياسات إعادة المحاولة (كيفية إعادة محاولة العمليات الفاشلة)، وسياسات التخزين المؤقت (ماذا/متى يُخزن). السياسة مفيدة عندما تحتاج قواعد العمل لأن تكون قابلة للتكوين أو تختلف.",
        ),
      ],
    ),
    examples: LocV(
      en: [
        // Example: Pricing Policy
        StrCodeBlock(r"""// Example: Policy Pattern
// Use case: Configurable pricing and discount policies

class Order {
  final String id;
  final List<OrderItem> items;
  final String customerType;
  final bool isBulkOrder;

  Order({
    required this.id,
    required this.items,
    required this.customerType,
    required this.isBulkOrder,
  });

  double get subtotal =>
      items.fold(0.0, (sum, item) => sum + item.totalPrice);
}

class OrderItem {
  final String productName;
  final double unitPrice;
  final int quantity;

  OrderItem({
    required this.productName,
    required this.unitPrice,
    required this.quantity,
  });

  double get totalPrice => unitPrice * quantity;
}

// Policy interfaces
abstract class PricingPolicy {
  double calculateFinalPrice(Order order);
}

abstract class DiscountPolicy {
  double calculateDiscount(Order order);
  String get discountDescription;
}

// Concrete Pricing Policies
class StandardPricingPolicy implements PricingPolicy {
  final DiscountPolicy discountPolicy;

  StandardPricingPolicy(this.discountPolicy);

  @override
  double calculateFinalPrice(Order order) {
    final subtotal = order.subtotal;
    final discount = discountPolicy.calculateDiscount(order);
    final tax = subtotal * 0.08; // 8% tax
    
    print('Subtotal: \$${subtotal.toStringAsFixed(2)}');
    print('Discount: -\$${discount.toStringAsFixed(2)} (${discountPolicy.discountDescription})');
    print('Tax: \$${tax.toStringAsFixed(2)}');
    
    return subtotal - discount + tax;
  }
}

class WholesalePricingPolicy implements PricingPolicy {
  @override
  double calculateFinalPrice(Order order) {
    final subtotal = order.subtotal;
    final wholesale = subtotal * 0.70; // 30% off for wholesale
    final tax = wholesale * 0.08;
    
    print('Retail: \$${subtotal.toStringAsFixed(2)}');
    print('Wholesale (30% off): \$${wholesale.toStringAsFixed(2)}');
    print('Tax: \$${tax.toStringAsFixed(2)}');
    
    return wholesale + tax;
  }
}

// Concrete Discount Policies
class NoDiscountPolicy implements DiscountPolicy {
  @override
  double calculateDiscount(Order order) => 0.0;

  @override
  String get discountDescription => 'No discount';
}

class PercentageDiscountPolicy implements DiscountPolicy {
  final double percentage;

  PercentageDiscountPolicy(this.percentage);

  @override
  double calculateDiscount(Order order) {
    return order.subtotal * (percentage / 100);
  }

  @override
  String get discountDescription => '$percentage% off';
}

class BulkOrderDiscountPolicy implements DiscountPolicy {
  @override
  double calculateDiscount(Order order) {
    if (!order.isBulkOrder) return 0.0;
    
    final itemCount = order.items.fold<int>(0, (sum, item) => sum + item.quantity);
    
    if (itemCount >= 100) {
      return order.subtotal * 0.20; // 20% for 100+ items
    } else if (itemCount >= 50) {
      return order.subtotal * 0.15; // 15% for 50+ items
    } else if (itemCount >= 20) {
      return order.subtotal * 0.10; // 10% for 20+ items
    }
    
    return 0.0;
  }

  @override
  String get discountDescription => 'Bulk order discount';
}

class LoyaltyDiscountPolicy implements DiscountPolicy {
  @override
  double calculateDiscount(Order order) {
    return switch (order.customerType) {
      'gold' => order.subtotal * 0.15,
      'silver' => order.subtotal * 0.10,
      'bronze' => order.subtotal * 0.05,
      _ => 0.0,
    };
  }

  @override
  String get discountDescription => 'Loyalty discount';
}

// Policy factory/selector
class PricingPolicyFactory {
  static PricingPolicy createPolicy({
    required String customerType,
    required bool isBulkOrder,
  }) {
    if (customerType == 'wholesale') {
      return WholesalePricingPolicy();
    }

    // Choose discount policy based on order characteristics
    DiscountPolicy discountPolicy;
    
    if (isBulkOrder) {
      discountPolicy = BulkOrderDiscountPolicy();
    } else if (customerType != 'regular') {
      discountPolicy = LoyaltyDiscountPolicy();
    } else {
      discountPolicy = NoDiscountPolicy();
    }

    return StandardPricingPolicy(discountPolicy);
  }
}

// Order processing service
class OrderService {
  double processOrder(Order order) {
    print('Processing order ${order.id} (${order.customerType})');
    print('Items: ${order.items.length}');
    for (final item in order.items) {
      print('  - ${item.quantity}x ${item.productName} @ \$${item.unitPrice}');
    }
    print('');

    final policy = PricingPolicyFactory.createPolicy(
      customerType: order.customerType,
      isBulkOrder: order.isBulkOrder,
    );

    final total = policy.calculateFinalPrice(order);
    print('Total: \$${total.toStringAsFixed(2)}');
    
    return total;
  }
}

void main() {
  print('=== Policy Pattern ===');
  print('');

  final orderService = OrderService();

  // Regular customer, small order
  print('--- Order 1: Regular customer ---');
  final order1 = Order(
    id: 'ORD-001',
    customerType: 'regular',
    isBulkOrder: false,
    items: [
      OrderItem(productName: 'Widget', unitPrice: 10.0, quantity: 5),
      OrderItem(productName: 'Gadget', unitPrice: 20.0, quantity: 2),
    ],
  );
  orderService.processOrder(order1);

  print('');
  print('--- Order 2: Gold loyalty customer ---');
  final order2 = Order(
    id: 'ORD-002',
    customerType: 'gold',
    isBulkOrder: false,
    items: [
      OrderItem(productName: 'Widget', unitPrice: 10.0, quantity: 10),
      OrderItem(productName: 'Gadget', unitPrice: 20.0, quantity: 5),
    ],
  );
  orderService.processOrder(order2);

  print('');
  print('--- Order 3: Bulk order ---');
  final order3 = Order(
    id: 'ORD-003',
    customerType: 'regular',
    isBulkOrder: true,
    items: [
      OrderItem(productName: 'Widget', unitPrice: 10.0, quantity: 50),
      OrderItem(productName: 'Gadget', unitPrice: 20.0, quantity: 30),
    ],
  );
  orderService.processOrder(order3);

  print('');
  print('--- Order 4: Wholesale customer ---');
  final order4 = Order(
    id: 'ORD-004',
    customerType: 'wholesale',
    isBulkOrder: true,
    items: [
      OrderItem(productName: 'Widget', unitPrice: 10.0, quantity: 100),
    ],
  );
  orderService.processOrder(order4);
}"""),
      ],
      ar: [],
    ),
    pros: LocSL(
      en: [
        "Encapsulates complex business rules",
        "Business logic is interchangeable",
        "Easy to test policies in isolation",
        "Can configure different policies per customer, environment, etc.",
        "Follows Open/Closed Principle - add new policies without modifying code",
      ],
      ar: [
        "يُغلف قواعد عمل معقدة",
        "منطق العمل قابل للتبديل",
        "سهل اختبار السياسات بشكل منفصل",
        "يمكن تكوين سياسات مختلفة لكل عميل، بيئة، إلخ",
        "يتبع مبدأ المفتوح/المغلق - إضافة سياسات جديدة دون تعديل الكود",
      ],
    ),
    cons: LocSL(
      en: [
        "Can lead to many policy classes",
        "May be overkill for simple business rules",
        "Requires careful design of policy interfaces",
      ],
      ar: [
        "قد يؤدي لفئات سياسة كثيرة",
        "قد يكون مبالغاً فيه لقواعد عمل بسيطة",
        "يتطلب تصميم دقيق لواجهات السياسة",
      ],
    ),
    whenToUse: LocV(
      en: [
        StrContent("Use Policy when:"),
        ULContent(
          value: [
            "Business rules need to be configurable or vary by context",
            "You have complex domain logic that changes based on conditions",
            "Different customers/users need different rule sets",
            "Business rules should be testable independently",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم السياسة عندما:"),
        ULContent(
          value: [
            "قواعد العمل تحتاج لأن تكون قابلة للتكوين أو تختلف حسب السياق",
            "لديك منطق نطاق معقد يتغير بناءً على الظروف",
            "عملاء/مستخدمون مختلفون يحتاجون لمجموعات قواعد مختلفة",
            "قواعد العمل يجب أن تكون قابلة للاختبار بشكل مستقل",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Confusing with Strategy - Policy is for business rules, Strategy for algorithms",
        "Making policies too complex - keep them focused",
        "Not using policy pattern when business rules vary",
        "Hardcoding business logic instead of using policies",
      ],
      ar: [
        "الخلط مع الاستراتيجية - السياسة لقواعد العمل، الاستراتيجية للخوارزميات",
        "جعل السياسات معقدة جداً - أبقها مركزة",
        "عدم استخدام نمط السياسة عندما تختلف قواعد العمل",
        "تشفير منطق العمل بدلاً من استخدام السياسات",
      ],
    ),
    relatedPatterns: [PK.strategy, PK.specification, PK.state],
    oftenConfusedWith: [PK.strategy],
  ),
};
