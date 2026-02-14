import "../../core/models/code_block.dart";
import "../../core/models/content.dart";
import "../../core/models/design_patterns.dart";
import "../../core/models/localized_text.dart";
import "keys.dart";

const Map<String, DesignPattern> behavioralPatternsData = {
  PK.chainOfResponsibility: DesignPattern(
    id: PK.chainOfResponsibility,
    title: LocS(
      en: "Chain of Responsibility",
      ar: "سلسلة المسؤولية (Chain of Responsibility)",
    ),
    description: LocS(
      en: "Passes requests along a chain of handlers until one handles it",
      ar: "يمرر الطلبات على طول سلسلة من المعالجات حتى يتعامل أحدها معه",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Chain of Responsibility pattern allows you to pass requests along a chain of handlers. Each handler decides either to process the request or to pass it to the next handler in the chain.",
        ),
        StrContent(
          "This pattern promotes loose coupling by preventing a sender from needing to know which object will ultimately handle its request. Handlers can be added, removed, or reordered dynamically.",
        ),
        ULContent(
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
        StrContent(
          "نمط سلسلة المسؤولية يسمح لك بتمرير الطلبات على طول سلسلة من المعالجات. كل معالج يقرر إما معالجة الطلب أو تمريره للمعالج التالي في السلسلة.",
        ),
        StrContent(
          "هذا النمط يعزز الاقتران الفضفاض من خلال منع المُرسل من الحاجة لمعرفة أي كائن سيتعامل في النهاية مع طلبه. يمكن إضافة المعالجات أو إزالتها أو إعادة ترتيبها ديناميكياً.",
        ),
        ULContent(
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
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Chain of Responsibility when:"),
        ULContent(
          value: [
            "Multiple objects may handle a request",
            "The handler isn't known in advance",
            "You want to decouple sender from receiver",
            "You want dynamic handler assignment",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم سلسلة المسؤولية عندما:"),
        ULContent(
          value: [
            "عدة كائنات قد تعالج طلباً",
            "المعالج غير معروف مسبقاً",
            "تريد فصل المُرسل عن المستقبل",
            "تريد تعيين معالج ديناميكي",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.command, PK.composite, PK.decorator],
  ),
  PK.command: DesignPattern(
    id: PK.command,
    title: LocS(en: "Command", ar: "الأمر (Command)"),
    description: LocS(
      en: "Encapsulates a request as an object, allowing parameterization and queuing",
      ar: "يغلف طلباً ككائن، مما يسمح بالمعاملات والوضع في قوائم الانتظار",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .intermediate,
    content: LocV(
      en: [
        StrContent(
          "The Command pattern turns a request into a stand-alone object that contains all information about the request. This transformation lets you pass requests as method arguments, delay or queue execution, and support undoable operations.",
        ),
        StrContent(
          "Commands decouple objects that invoke operations from objects that perform them. This is fundamental for implementing undo/redo, macro recording, and transaction systems.",
        ),
        ULContent(
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
        StrContent(
          "نمط الأمر يحول طلباً إلى كائن مستقل يحتوي على جميع المعلومات عن الطلب. هذا التحويل يتيح لك تمرير الطلبات كمعاملات طرق، وتأخير أو وضع التنفيذ في قائمة انتظار، ودعم العمليات القابلة للتراجع.",
        ),
        StrContent(
          "الأوامر تفصل الكائنات التي تستدعي العمليات عن الكائنات التي تؤديها. هذا أساسي لتنفيذ التراجع/الإعادة، وتسجيل الماكرو، وأنظمة المعاملات.",
        ),
        ULContent(
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
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Command when:"),
        ULContent(
          value: [
            "You want to parameterize objects with operations",
            "You need to queue, schedule, or log operations",
            "You want to support undo/redo",
            "You need to structure a system around high-level operations",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم الأمر عندما:"),
        ULContent(
          value: [
            "تريد معاملة الكائنات بالعمليات",
            "تحتاج لوضع العمليات في قوائم انتظار أو جدولتها أو تسجيلها",
            "تريد دعم التراجع/الإعادة",
            "تحتاج لهيكلة نظام حول عمليات عالية المستوى",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.chainOfResponsibility, PK.memento, PK.composite],
  ),
  PK.interpreter: DesignPattern(
    id: PK.interpreter,
    title: LocS(en: "Interpreter", ar: "المُفسّر (Interpreter)"),
    description: LocS(
      en: "Defines a grammar and interpreter for a language",
      ar: "يُعرّف قواعد نحوية ومُفسّراً للغة",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .advanced,
    content: LocV(
      en: [
        StrContent(
          "The Interpreter pattern defines a representation for a grammar along with an interpreter that uses the representation to interpret sentences in the language.",
        ),
        StrContent(
          "This pattern is useful for designing simple languages, parsers, or expression evaluators. Each grammar rule becomes a class in the pattern.",
        ),
        ULContent(
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
        StrContent(
          "نمط المُفسّر يُعرّف تمثيلاً لقواعد نحوية مع مُفسّر يستخدم التمثيل لتفسير جمل في اللغة.",
        ),
        StrContent(
          "هذا النمط مفيد لتصميم لغات بسيطة أو محللات أو مُقيّمات تعبيرات. كل قاعدة نحوية تصبح فئة في النمط.",
        ),
        ULContent(
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
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Interpreter when:"),
        ULContent(
          value: [
            "Grammar is simple and not likely to change often",
            "Efficiency is not a critical concern",
            "You're building a simple scripting language",
            "Expression evaluation or rule engine needed",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المُفسّر عندما:"),
        ULContent(
          value: [
            "القواعد النحوية بسيطة وليس من المحتمل تغييرها كثيراً",
            "الكفاءة ليست مصدر قلق حرج",
            "تبني لغة برمجة نصية بسيطة",
            "مطلوب تقييم تعبيرات أو محرك قواعد",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
      en: [
        "Using for complex grammars (use parser generators instead)",
        "Not considering performance implications",
        "Making expression classes too complex",
        "Poor separation of parsing and interpretation",
      ],
      ar: [
        "الاستخدام للقواعد النحوية المعقدة (استخدم مولدات المحللات بدلاً من ذلك)",
        "عدم النظر في آثار الأداء",
        "جعل فئات التعبيرات معقدة جداً",
        "فصل سيء بين التحليل والتفسير",
      ],
    ),
    relatedPatterns: [PK.visitor, PK.flyweight],
  ),
  PK.iterator: DesignPattern(
    id: PK.iterator,
    title: LocS(en: "Iterator", ar: "المُكرر (Iterator)"),
    description: LocS(
      en: "Provides sequential access to elements without exposing underlying representation",
      ar: "يوفر وصولاً تسلسلياً للعناصر دون كشف التمثيل الأساسي",
    ),
    group: .design,
    type: .behavioral,
    category: .GoF,
    level: .beginner,
    content: LocV(
      en: [
        StrContent(
          "The Iterator pattern provides a way to access elements of a collection sequentially without exposing the underlying representation (list, stack, tree, etc.).",
        ),
        StrContent(
          "This pattern extracts traversal behavior into a separate iterator object, allowing multiple traversals to happen simultaneously and supporting different traversal algorithms.",
        ),
        ULContent(
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
        StrContent(
          "نمط المُكرر يوفر طريقة للوصول لعناصر مجموعة بشكل تسلسلي دون كشف التمثيل الأساسي (قائمة، مكدس، شجرة، إلخ).",
        ),
        StrContent(
          "هذا النمط يستخرج سلوك الاجتياز في كائن مُكرر منفصل، مما يسمح بحدوث اجتيازات متعددة في وقت واحد ودعم خوارزميات اجتياز مختلفة.",
        ),
        ULContent(
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
    examples: LocV(
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
    pros: LocSL(
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
    cons: LocSL(
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
    whenToUse: LocV(
      en: [
        StrContent("Use Iterator when:"),
        ULContent(
          value: [
            "You want to hide collection's internal structure",
            "You need multiple traversal algorithms",
            "You want a uniform interface for different collections",
            "You need to traverse complex data structures",
          ],
        ),
      ],
      ar: [
        StrContent("استخدم المُكرر عندما:"),
        ULContent(
          value: [
            "تريد إخفاء البنية الداخلية للمجموعة",
            "تحتاج لخوارزميات اجتياز متعددة",
            "تريد واجهة موحدة لمجموعات مختلفة",
            "تحتاج لاجتياز هياكل بيانات معقدة",
          ],
        ),
      ],
    ),
    commonMistakes: LocV(
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
    relatedPatterns: [PK.composite, PK.factoryMethod, PK.visitor],
  ),
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
