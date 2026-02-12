import '../core/models/content.dart';
import '../core/models/localized_text.dart';
import '../core/models/term.dart';

// Assuming TermKeys remains the same as provided in the start of the file
abstract class TermKeys {
  static const fundamentalsVariable = "fundamentals_variable";
  static const fundamentalsDataType = "fundamentals_data_type";
  static const fundamentalsFunction = "fundamentals_function";
  static const fundamentalsArgument = "fundamentals_argument";
  static const fundamentalsConditional = "fundamentals_conditional";
  static const fundamentalsLoop = "fundamentals_loop";
  static const fundamentalsAlgorithm = "fundamentals_algorithm";
  static const fundamentalsBigO = "fundamentals_big_o";
  static const dataStructureArray = "data_structure_array";
  static const dataStructureSet = "data_structure_set";
  static const dataStructureMap = "data_structure_map";
  static const dataStructureStack = "data_structure_stack";
  static const dataStructureQueue = "data_structure_queue";
  static const dataStructureLinkedList = "data_structure_linked_list";
  static const dataStructureTree = "data_structure_tree";
  static const dataStructureGraph = "data_structure_graph";
  static const oopClass = "oop_class";
  static const oopObject = "oop_object";
  static const oopInterface = "oop_interface";
  static const oopAbstractClass = "oop_abstract_class";
  static const oopInheritance = "oop_inheritance";
  static const oopPolymorphism = "oop_polymorphism";
  static const oopEncapsulation = "oop_encapsulation";
  static const oopAbstraction = "oop_abstraction";
  static const oopMethod = "oop_method";
  static const paradigmOop = "paradigm_oop";
  static const paradigmFunctional = "paradigm_functional";
  static const paradigmProcedural = "paradigm_procedural";
  static const concurrencyThread = "concurrency_thread";
  static const concurrencyProcess = "concurrency_process";
  static const concurrencySemaphore = "concurrency_semaphore";
  static const concurrencyDeadlock = "concurrency_deadlock";
  static const concurrencyRaceCondition = "concurrency_race_condition";
  static const concurrencyAsync = "concurrency_async";
  static const dartLanguage = "dart_language";
  static const flutterFramework = "flutter_framework";
  static const flutterWidget = "flutter_widget";
  static const flutterStatelessWidget = "flutter_stateless_widget";
  static const flutterStatefulWidget = "flutter_stateful_widget";
  static const flutterHotReload = "flutter_hot_reload";
  static const flutterHotRestart = "flutter_hot_restart";
  static const flutterMaterialDesign = "flutter_material_design";
  static const dartNullSafety = "dart_null_safety";
  static const dartPub = "dart_pub";
  static const dartIsolate = "dart_isolate";
  static const dartFuture = "dart_future";
  static const dartStream = "dart_stream";
  static const dartMixin = "dart_mixin";
}

const List<ProgrammingTerm> allTermsList = [
  // ============================================================================
  // FUNDAMENTALS
  // ============================================================================
  ProgrammingTerm(
    id: TermKeys.fundamentalsVariable,
    title: LocalizedString(en: 'Variable', ar: 'المتغير'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'An abstract storage location with a symbolic name that holds data. Variables allow programs to store and update values during execution.',
        ),
      ],
      ar: [
        StringContent(
          'موقع تخزين مجرد له اسم رمزي يحتوي على البيانات. تسمح المتغيرات للبرامج بتخزين القيم وتحديثها أثناء التنفيذ.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        StringContent(
          'Think of it as a labeled box where you can put different values.',
        ),
        UnorderedListContent(
          title: 'In Dart, variables can be declared using:',
          value: [
            'var - type is inferred automatically',
            'final - value cannot be changed after initialization',
            'const - compile-time constant',
            'Explicit types (int, String, double, etc.)',
          ],
        ),
      ],
      ar: [
        StringContent('فكر فيه كصندوق مُسمى يمكنك وضع قيم مختلفة فيه.'),
        UnorderedListContent(
          title: 'في Dart، يمكن تعريف المتغيرات باستخدام:',
          value: [
            'var - يتم استنتاج النوع تلقائيًا',
            'final - لا يمكن تغيير القيمة بعد التهيئة',
            'const - ثابت وقت الترجمة',
            'أنواع صريحة (int، String، double، إلخ)',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .c, .python, .javascript],
    relatedTerms: [TermKeys.fundamentalsDataType, TermKeys.dartNullSafety],
    tags: ['storage', 'data', 'declaration', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.fundamentalsDataType,
    title: LocalizedString(en: 'Data Type', ar: 'نوع البيانات'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A classification of data that defines what values it can hold and what operations can be performed on it.',
        ),
      ],
      ar: [
        StringContent(
          'تصنيف للبيانات يحدد القيم التي يمكن أن تحتويها والعمليات التي يمكن إجراؤها عليها.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        StringContent(
          'Data types tell the compiler or interpreter how to use the data.',
        ),
        UnorderedListContent(
          title: 'Common primitive types:',
          value: [
            'Integer (int) - whole numbers like 1, 42, -5',
            'Float/Double - decimal numbers like 3.14, -0.5',
            'Boolean (bool) - true or false',
            'String - text like "Hello"',
            "Character (char) - single character like 'A'",
          ],
        ),
        StringContent(
          'Dart has strong, static typing with null safety, meaning types are checked at compile time and null errors are prevented.',
        ),
      ],
      ar: [
        StringContent(
          'تخبر أنواع البيانات المترجم أو المفسر كيفية استخدام البيانات.',
        ),
        UnorderedListContent(
          title: 'الأنواع الأساسية الشائعة:',
          value: [
            'عدد صحيح (int) - أعداد كاملة مثل 1، 42، -5',
            'عدد عشري (Float/Double) - أعداد عشرية مثل 3.14، -0.5',
            'منطقي (bool) - صحيح أو خاطئ',
            'نص (String) - نصوص مثل "مرحبا"',
            "حرف (char) - حرف واحد مثل 'أ'",
          ],
        ),
        StringContent(
          'يمتلك Dart نظام كتابة قوي وثابت مع أمان من القيم الفارغة، مما يعني أن الأنواع يتم فحصها في وقت الترجمة ويتم منع أخطاء القيم الفارغة.',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .java, .c, .python],
    relatedTerms: [TermKeys.fundamentalsVariable, TermKeys.dartNullSafety],
    tags: ['types', 'primitive', 'classification', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.fundamentalsFunction,
    title: LocalizedString(en: 'Function', ar: 'الدالة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A reusable block of code that performs a specific task. Functions take input (parameters), process it, and optionally return a result.',
        ),
      ],
      ar: [
        StringContent(
          'كتلة قابلة لإعادة الاستخدام من التعليمات البرمجية تؤدي مهمة محددة. تأخذ الدوال مدخلات (معاملات)، تعالجها، وتُرجع نتيجة اختياريًا.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Benefits of functions:',
          value: [
            'Code reusability - write once, use many times',
            'Modularity - break complex problems into smaller pieces',
            'Maintainability - easier to update and debug',
            'Abstraction - hide implementation details',
          ],
        ),
        StringContent(
          'In Dart, functions are first-class objects (can be assigned to variables, passed as arguments) and support closures. Methods are functions that belong to a class.',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'فوائد الدوال:',
          value: [
            'إعادة استخدام الكود - اكتب مرة واحدة، استخدم عدة مرات',
            'النمطية - تقسيم المشاكل المعقدة إلى أجزاء أصغر',
            'قابلية الصيانة - أسهل في التحديث وإصلاح الأخطاء',
            'التجريد - إخفاء تفاصيل التنفيذ',
          ],
        ),
        StringContent(
          'في Dart، الدوال هي كائنات من الدرجة الأولى (يمكن تعيينها للمتغيرات، تمريرها كوسائط) وتدعم الإغلاقات. الأساليب هي دوال تنتمي إلى فئة.',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .python, .javascript, .java],
    relatedTerms: [TermKeys.fundamentalsArgument, TermKeys.oopMethod],
    aliases: ['Method', 'Procedure', 'Subroutine'],
    tags: ['reusable', 'modular', 'code organization', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.fundamentalsArgument,
    title: LocalizedString(en: 'Argument', ar: 'الوسيط'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'The actual value or expression passed to a function when it is called. Arguments are the concrete data you provide to a function.',
        ),
      ],
      ar: [
        StringContent(
          'القيمة الفعلية أو التعبير الذي يتم تمريره إلى دالة عند استدعائها. الوسائط هي البيانات الفعلية التي تقدمها للدالة.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Important distinction:',
          value: [
            'Parameter - the variable name in the function definition',
            'Argument - the actual value passed when calling the function',
          ],
        ),
        CodeContent(
          'void greet(String name) { ... }  // "name" is a parameter\n'
          'greet("Alice");  // "Alice" is an argument',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'تمييز مهم:',
          value: [
            'المعامل (Parameter) - اسم المتغير في تعريف الدالة',
            'الوسيط (Argument) - القيمة الفعلية الممررة عند استدعاء الدالة',
          ],
        ),
        CodeContent(
          'void greet(String name) { ... }  // "name" هو معامل\n'
          'greet("Alice");  // "Alice" هو وسيط',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    languages: [.dart, .c, .java, .python],
    relatedTerms: [TermKeys.fundamentalsFunction],
    aliases: ['Parameter value'],
    tags: ['function', 'parameter', 'input', 'basics'],
    era: .classic,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.fundamentalsConditional,
    title: LocalizedString(en: 'Conditional (If-Else)', ar: 'الجملة الشرطية'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A control flow statement that executes different code blocks based on whether a condition is true or false.',
        ),
      ],
      ar: [
        StringContent(
          'جملة تحكم في التدفق تنفذ كتل كود مختلفة بناءً على ما إذا كان الشرط صحيحًا أم خاطئًا.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        StringContent('Conditionals allow programs to make decisions.'),
        UnorderedListContent(
          title: 'Common conditional structures:',
          value: [
            'if - execute code if condition is true',
            'else - execute code if condition is false',
            'else if - check additional conditions',
            'switch/case - choose between multiple options',
            'ternary operator (?:) - compact if-else',
          ],
        ),
        StringContent('Example in Dart:'),
        CodeContent(
          'if (age >= 18) {\n'
          '  print("Adult");\n'
          '} else {\n'
          '  print("Minor");\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StringContent('تسمح الجمل الشرطية للبرامج باتخاذ القرارات.'),
        UnorderedListContent(
          title: 'هياكل الشرط الشائعة:',
          value: [
            'if - تنفيذ الكود إذا كان الشرط صحيحًا',
            'else - تنفيذ الكود إذا كان الشرط خاطئًا',
            'else if - فحص شروط إضافية',
            'switch/case - الاختيار بين خيارات متعددة',
            'العامل الثلاثي (?:) - if-else مضغوط',
          ],
        ),
        StringContent('مثال في Dart:'),
        CodeContent(
          'if (age >= 18) {\n'
          '  print("بالغ");\n'
          '} else {\n'
          '  print("قاصر");\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .syntax,
    category: .fundamentals,
    languages: [.dart, .java, .c, .python, .javascript],
    relatedTerms: [TermKeys.fundamentalsLoop],
    aliases: ['If statement', 'Branching', 'Decision structure'],
    tags: ['control flow', 'decision', 'branching', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.fundamentalsLoop,
    title: LocalizedString(en: 'Loop', ar: 'الحلقة التكرارية'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A control structure that repeats a block of code multiple times until a condition is met.',
        ),
      ],
      ar: [
        StringContent(
          'هيكل تحكم يكرر كتلة من التعليمات البرمجية عدة مرات حتى يتم استيفاء شرط.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        StringContent('Loops allow you to automate repetitive tasks.'),
        UnorderedListContent(
          title: 'Types of loops:',
          value: [
            'for - repeat a specific number of times',
            'while - repeat while condition is true',
            'do-while - execute at least once, then repeat while condition is true',
            'for-in/forEach - iterate over collections',
          ],
        ),
        StringContent('Example in Dart:'),
        CodeContent(
          'for (int i = 0; i < 5; i++) {\n'
          '  print("Count: \$i");\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StringContent('تسمح لك الحلقات بأتمتة المهام المتكررة.'),
        UnorderedListContent(
          title: 'أنواع الحلقات:',
          value: [
            'for - التكرار عدد محدد من المرات',
            'while - التكرار طالما الشرط صحيح',
            'do-while - التنفيذ مرة واحدة على الأقل، ثم التكرار طالما الشرط صحيح',
            'for-in/forEach - التكرار عبر المجموعات',
          ],
        ),
        StringContent('مثال في Dart:'),
        CodeContent(
          'for (int i = 0; i < 5; i++) {\n'
          '  print("العدد: \$i");\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .syntax,
    category: .fundamentals,
    languages: [.dart, .c, .java, .python],
    relatedTerms: [
      TermKeys.fundamentalsConditional,
      TermKeys.dataStructureArray,
    ],
    aliases: ['Iteration', 'Repetition'],
    tags: ['control flow', 'iteration', 'repeat', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.fundamentalsAlgorithm,
    title: LocalizedString(en: 'Algorithm', ar: 'الخوارزمية'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A step-by-step set of instructions designed to solve a specific problem or perform a computation.',
        ),
      ],
      ar: [
        StringContent(
          'مجموعة خطوات متسلسلة من التعليمات المصممة لحل مشكلة محددة أو إجراء عملية حسابية.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'An algorithm must be:',
          value: [
            'Well-defined - each step is clear and unambiguous',
            'Finite - it must eventually end',
            'Effective - each step can be performed',
          ],
        ),
        UnorderedListContent(
          title: 'Examples of algorithms:',
          value: [
            'Sorting algorithms (bubble sort, quick sort, merge sort)',
            'Search algorithms (linear search, binary search)',
            'Path-finding algorithms (Dijkstra, A*)',
            'Encryption algorithms (AES, RSA)',
          ],
        ),
        StringContent(
          'Every program implements one or more algorithms to accomplish its goals.',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'يجب أن تكون الخوارزمية:',
          value: [
            'محددة جيدًا - كل خطوة واضحة ولا لبس فيها',
            'محدودة - يجب أن تنتهي في النهاية',
            'فعالة - يمكن تنفيذ كل خطوة',
          ],
        ),
        UnorderedListContent(
          title: 'أمثلة على الخوارزميات:',
          value: [
            'خوارزميات الترتيب (الفقاعي، السريع، الدمج)',
            'خوارزميات البحث (الخطي، الثنائي)',
            'خوارزميات إيجاد المسار (Dijkstra، A*)',
            'خوارزميات التشفير (AES، RSA)',
          ],
        ),
        StringContent(
          'كل برنامج ينفذ واحدة أو أكثر من الخوارزميات لتحقيق أهدافه.',
        ),
      ],
    ),
    type: .concept,
    category: .fundamentals,
    relatedTerms: [TermKeys.fundamentalsBigO],
    tags: ['problem solving', 'computation', 'logic', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.fundamentalsBigO,
    title: LocalizedString(en: 'Big O Notation', ar: 'ترميز O الكبير'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A mathematical notation that describes how the runtime or space requirements of an algorithm grow as the input size increases.',
        ),
      ],
      ar: [
        StringContent(
          'ترميز رياضي يصف كيف تنمو متطلبات وقت التشغيل أو المساحة للخوارزمية مع زيادة حجم المدخلات.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        StringContent('It measures the worst-case scenario.'),
        UnorderedListContent(
          title: 'Common Big O complexities (from fastest to slowest):',
          value: [
            'O(1) - Constant: same time regardless of input size',
            'O(log n) - Logarithmic: very efficient, doubles with each step',
            'O(n) - Linear: time grows proportionally with input',
            'O(n log n) - Linearithmic: efficient sorting algorithms',
            'O(n²) - Quadratic: nested loops, slower for large inputs',
            'O(2ⁿ) - Exponential: very slow, doubles with each input',
          ],
        ),
        StringContent(
          'Example: Binary search is O(log n), much faster than linear search O(n).',
        ),
      ],
      ar: [
        StringContent('يقيس أسوأ سيناريو.'),
        UnorderedListContent(
          title: 'تعقيدات O الكبير الشائعة (من الأسرع إلى الأبطأ):',
          value: [
            'O(1) - ثابت: نفس الوقت بغض النظر عن حجم المدخلات',
            'O(log n) - لوغاريتمي: فعال جدًا، يتضاعف مع كل خطوة',
            'O(n) - خطي: الوقت ينمو بشكل متناسب مع المدخلات',
            'O(n log n) - خطي لوغاريتمي: خوارزميات الترتيب الفعالة',
            'O(n²) - تربيعي: حلقات متداخلة، أبطأ للمدخلات الكبيرة',
            'O(2ⁿ) - أسي: بطيء جدًا، يتضاعف مع كل مدخل',
          ],
        ),
        StringContent(
          'مثال: البحث الثنائي هو O(log n)، أسرع بكثير من البحث الخطي O(n).',
        ),
      ],
    ),
    type: .concept,
    category: .performance,
    relatedTerms: [TermKeys.fundamentalsAlgorithm],
    aliases: ['Time complexity', 'Space complexity', 'Algorithmic complexity'],
    tags: ['performance', 'complexity', 'analysis', 'optimization'],
    era: .classic,
    popularityTier: .high,
  ),

  // ============================================================================
  // DATA STRUCTURES
  // ============================================================================
  ProgrammingTerm(
    id: TermKeys.dataStructureArray,
    title: LocalizedString(en: 'Array / List', ar: 'المصفوفة / القائمة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'An ordered collection of elements of the same type, accessed by index (position number).',
        ),
      ],
      ar: [
        StringContent(
          'مجموعة مرتبة من العناصر من نفس النوع، يتم الوصول إليها بواسطة الفهرس (رقم الموضع).',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        StringContent(
          'Arrays are one of the most fundamental data structures.',
        ),
        UnorderedListContent(
          title: 'Key features:',
          value: [
            'Fast access - retrieve any element in O(1) time using its index',
            'Sequential storage - elements are stored in contiguous memory',
            'Fixed or dynamic size - depends on the language',
          ],
        ),
        StringContent('In Dart, the List class provides a growable array:'),
        CodeContent(
          'List<int> numbers = [1, 2, 3, 4, 5];\n'
          'print(numbers[0]); // prints 1',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StringContent('المصفوفات هي واحدة من هياكل البيانات الأساسية.'),
        UnorderedListContent(
          title: 'الميزات الرئيسية:',
          value: [
            'وصول سريع - استرجاع أي عنصر في وقت O(1) باستخدام فهرسه',
            'تخزين متسلسل - يتم تخزين العناصر في ذاكرة متجاورة',
            'حجم ثابت أو ديناميكي - يعتمد على اللغة',
          ],
        ),
        StringContent('في Dart، توفر فئة List مصفوفة قابلة للنمو:'),
        CodeContent(
          'List<int> numbers = [1, 2, 3, 4, 5];\n'
          'print(numbers[0]); // يطبع 1',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .c, .java, .python],
    relatedTerms: [TermKeys.fundamentalsLoop, TermKeys.dataStructureLinkedList],
    aliases: ['Vector', 'Dynamic array'],
    tags: ['collection', 'indexed', 'sequence', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.dataStructureSet,
    title: LocalizedString(en: 'Set', ar: 'المجموعة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A collection of unique elements with no particular order. Sets automatically prevent duplicates.',
        ),
      ],
      ar: [
        StringContent(
          'مجموعة من العناصر الفريدة بدون ترتيب معين. تمنع المجموعات التكرارات تلقائيًا.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Key features:',
          value: [
            'Uniqueness - each element appears only once',
            'Fast membership testing - check if element exists quickly',
            'No indexing - elements have no specific order',
            'Set operations - union, intersection, difference',
          ],
        ),
        StringContent('In Dart:'),
        CodeContent(
          "Set<String> fruits = {'apple', 'banana', 'apple'};\n"
          "print(fruits); // {apple, banana} - no duplicates",
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الميزات الرئيسية:',
          value: [
            'التفرد - كل عنصر يظهر مرة واحدة فقط',
            'اختبار عضوية سريع - التحقق من وجود العنصر بسرعة',
            'بدون فهرسة - العناصر ليس لها ترتيب محدد',
            'عمليات المجموعات - الاتحاد، التقاطع، الفرق',
          ],
        ),
        StringContent('في Dart:'),
        CodeContent(
          "Set<String> fruits = {'apple', 'banana', 'apple'};\n"
          "print(fruits); // {apple, banana} - لا تكرارات",
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .python, .java],
    relatedTerms: [TermKeys.dataStructureMap],
    tags: ['collection', 'unique', 'unordered', 'no duplicates'],
    era: .classic,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.dataStructureMap,
    title: LocalizedString(en: 'Map / Dictionary', ar: 'الخريطة / القاموس'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A collection of key-value pairs where each key is unique and maps to exactly one value.',
        ),
      ],
      ar: [
        StringContent(
          'مجموعة من أزواج مفتاح-قيمة حيث كل مفتاح فريد ويرتبط بقيمة واحدة بالضبط.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        StringContent(
          'Also known as a hash table, dictionary, or associative array.',
        ),
        UnorderedListContent(
          title: 'Key features:',
          value: [
            'Fast lookup - find values by key in O(1) average time',
            'Key uniqueness - each key appears only once',
            'Flexible keys - keys can be strings, numbers, or objects',
          ],
        ),
        StringContent('In Dart:'),
        CodeContent(
          'Map<String, int> ages = {\n'
          "  'Alice': 30,\n"
          "  'Bob': 25,\n"
          '};\n'
          "print(ages['Alice']); // 30",
          codeLanguage: .dart,
        ),
      ],
      ar: [
        StringContent(
          'يُعرف أيضًا باسم جدول التجزئة، القاموس، أو المصفوفة الترابطية.',
        ),
        UnorderedListContent(
          title: 'الميزات الرئيسية:',
          value: [
            'بحث سريع - البحث عن القيم بالمفتاح في وقت O(1) في المتوسط',
            'تفرد المفتاح - كل مفتاح يظهر مرة واحدة فقط',
            'مفاتيح مرنة - يمكن أن تكون المفاتيح نصوصًا أو أرقامًا أو كائنات',
          ],
        ),
        StringContent('في Dart:'),
        CodeContent(
          'Map<String, int> ages = {\n'
          "  'Alice': 30,\n"
          "  'Bob': 25,\n"
          '};\n'
          "print(ages['Alice']); // 30",
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .java, .python, .javascript],
    relatedTerms: [TermKeys.dataStructureSet],
    aliases: [
      'Hash table',
      'Hash map',
      'Associative array',
      'Object (JavaScript)',
    ],
    tags: ['collection', 'key-value', 'lookup', 'hash'],
    era: .classic,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.dataStructureStack,
    title: LocalizedString(en: 'Stack', ar: 'المكدس'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A Last-In-First-Out (LIFO) data structure. Think of it like a stack of plates - you can only add or remove from the top.',
        ),
      ],
      ar: [
        StringContent(
          'هيكل بيانات الأخير في الأول خارج (LIFO). فكر فيه مثل كومة من الأطباق - يمكنك فقط الإضافة أو الإزالة من الأعلى.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Key operations:',
          value: [
            'Push - add an element to the top',
            'Pop - remove and return the top element',
            'Peek - view the top element without removing it',
          ],
        ),
        UnorderedListContent(
          title: 'Common uses:',
          value: [
            'Undo functionality in editors',
            'Function call stack (how recursion works)',
            'Expression evaluation',
            'Backtracking algorithms',
          ],
        ),
        StringContent('In Dart, use List as a stack:'),
        CodeContent(
          'List<int> stack = [];\n'
          'stack.add(1);  // push\n'
          'stack.removeLast();  // pop',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'العمليات الرئيسية:',
          value: [
            'دفع (Push) - إضافة عنصر إلى الأعلى',
            'إخراج (Pop) - إزالة وإرجاع العنصر العلوي',
            'نظرة خاطفة (Peek) - عرض العنصر العلوي دون إزالته',
          ],
        ),
        UnorderedListContent(
          title: 'الاستخدامات الشائعة:',
          value: [
            'وظيفة التراجع في المحررات',
            'مكدس استدعاء الدوال (كيف يعمل التكرار)',
            'تقييم التعبيرات',
            'خوارزميات التتبع العكسي',
          ],
        ),
        StringContent('في Dart، استخدم List كمكدس:'),
        CodeContent(
          'List<int> stack = [];\n'
          'stack.add(1);  // دفع\n'
          'stack.removeLast();  // إخراج',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .cpp, .java],
    relatedTerms: [TermKeys.dataStructureQueue],
    tags: ['lifo', 'collection', 'undo', 'recursion'],
    era: .classic,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.dataStructureQueue,
    title: LocalizedString(en: 'Queue', ar: 'الطابور'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A First-In-First-Out (FIFO) data structure. Think of it like a line of people waiting - the first person to arrive is the first to be served.',
        ),
      ],
      ar: [
        StringContent(
          'هيكل بيانات الأول في الأول خارج (FIFO). فكر فيه مثل طابور من الأشخاص المنتظرين - أول شخص يصل هو أول من يتم خدمته.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Key operations:',
          value: [
            'Enqueue - add an element to the back',
            'Dequeue - remove and return the front element',
            'Peek - view the front element without removing it',
          ],
        ),
        UnorderedListContent(
          title: 'Common uses:',
          value: [
            'Task scheduling',
            'Breadth-first search (BFS)',
            'Print job queues',
            'Message queues in systems',
          ],
        ),
        StringContent('In Dart:'),
        CodeContent(
          "import 'dart:collection';\n"
          'Queue<String> queue = Queue();\n'
          "queue.add('first');  // enqueue\n"
          'queue.removeFirst();  // dequeue',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'العمليات الرئيسية:',
          value: [
            'إدخال في الطابور (Enqueue) - إضافة عنصر إلى الخلف',
            'إخراج من الطابور (Dequeue) - إزالة وإرجاع العنصر الأمامي',
            'نظرة خاطفة (Peek) - عرض العنصر الأمامي دون إزالته',
          ],
        ),
        UnorderedListContent(
          title: 'الاستخدامات الشائعة:',
          value: [
            'جدولة المهام',
            'البحث بالعرض أولاً (BFS)',
            'طوابير الطباعة',
            'طوابير الرسائل في الأنظمة',
          ],
        ),
        StringContent('في Dart:'),
        CodeContent(
          "import 'dart:collection';\n"
          'Queue<String> queue = Queue();\n'
          "queue.add('أول');  // إدخال في الطابور\n"
          'queue.removeFirst();  // إخراج من الطابور',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .java, .python],
    relatedTerms: [TermKeys.dataStructureStack],
    tags: ['fifo', 'collection', 'scheduling', 'ordering'],
    era: .classic,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.dataStructureLinkedList,
    title: LocalizedString(en: 'Linked List', ar: 'القائمة المترابطة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A linear data structure where elements (nodes) are connected by pointers. Each node contains data and a reference to the next node.',
        ),
      ],
      ar: [
        StringContent(
          'هيكل بيانات خطي حيث يتم ربط العناصر (العقد) بواسطة مؤشرات. تحتوي كل عقدة على بيانات ومرجع للعقدة التالية.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Advantages:',
          value: [
            'Dynamic size - grows and shrinks easily',
            'Efficient insertion/deletion - O(1) if you have the position',
            'No wasted memory - uses only what it needs',
          ],
        ),
        UnorderedListContent(
          title: 'Disadvantages:',
          value: [
            'No random access - must traverse from the start',
            'Extra memory for pointers',
          ],
        ),
        UnorderedListContent(
          title: 'Types:',
          value: [
            'Singly linked - points to next node only',
            'Doubly linked - points to both next and previous',
            'Circular - last node points back to first',
          ],
        ),
        StringContent(
          "Note: Dart doesn't have a built-in LinkedList, but you can implement it manually.",
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'المزايا:',
          value: [
            'حجم ديناميكي - ينمو ويتقلص بسهولة',
            'إدراج/حذف فعال - O(1) إذا كان لديك الموضع',
            'لا ذاكرة مهدرة - يستخدم فقط ما يحتاجه',
          ],
        ),
        UnorderedListContent(
          title: 'العيوب:',
          value: [
            'لا وصول عشوائي - يجب التنقل من البداية',
            'ذاكرة إضافية للمؤشرات',
          ],
        ),
        UnorderedListContent(
          title: 'الأنواع:',
          value: [
            'مترابطة أحادية - تشير للعقدة التالية فقط',
            'مترابطة مزدوجة - تشير للعقدة التالية والسابقة',
            'دائرية - العقدة الأخيرة تشير للأولى',
          ],
        ),
        StringContent(
          'ملاحظة: Dart ليس لديه LinkedList مدمج، لكن يمكنك تنفيذه يدويًا.',
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.c, .cpp, .java],
    relatedTerms: [TermKeys.dataStructureArray],
    tags: ['linear', 'dynamic', 'pointer', 'nodes'],
    era: .classic,
    popularityTier: .medium,
  ),

  ProgrammingTerm(
    id: TermKeys.dataStructureTree,
    title: LocalizedString(en: 'Tree', ar: 'الشجرة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A hierarchical data structure with nodes connected in a parent-child relationship. It has one root node at the top, and every other node has exactly one parent.',
        ),
      ],
      ar: [
        StringContent(
          'هيكل بيانات هرمي مع عقد متصلة في علاقة والد-طفل. له عقدة جذر واحدة في الأعلى، وكل عقدة أخرى لها والد واحد بالضبط.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Key concepts:',
          value: [
            'Root - the top node with no parent',
            'Parent - a node with children',
            'Child - a node descended from another',
            'Leaf - a node with no children',
            'Height - longest path from root to leaf',
          ],
        ),
        UnorderedListContent(
          title: 'Common types:',
          value: [
            'Binary tree - each node has at most 2 children',
            'Binary search tree - left child < parent < right child',
            'AVL tree - self-balancing binary search tree',
            'Heap - complete binary tree with heap property',
          ],
        ),
        StringContent(
          'Used for: file systems, DOM, databases, decision trees, Flutter widget tree.',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'المفاهيم الرئيسية:',
          value: [
            'الجذر (Root) - العقدة العليا بدون والد',
            'الوالد (Parent) - عقدة لها أطفال',
            'الطفل (Child) - عقدة منحدرة من أخرى',
            'الورقة (Leaf) - عقدة بدون أطفال',
            'الارتفاع (Height) - أطول مسار من الجذر إلى ورقة',
          ],
        ),
        UnorderedListContent(
          title: 'الأنواع الشائعة:',
          value: [
            'الشجرة الثنائية - كل عقدة لها طفلان على الأكثر',
            'شجرة البحث الثنائية - الطفل الأيسر < الوالد < الطفل الأيمن',
            'شجرة AVL - شجرة بحث ثنائية ذاتية التوازن',
            'الكومة (Heap) - شجرة ثنائية كاملة مع خاصية الكومة',
          ],
        ),
        StringContent(
          'تُستخدم في: أنظمة الملفات، DOM، قواعد البيانات، أشجار القرار، شجرة ويدجت Flutter.',
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .java, .cpp],
    relatedTerms: [TermKeys.dataStructureGraph, TermKeys.flutterWidget],
    tags: ['hierarchical', 'nodes', 'binary', 'recursive'],
    era: .classic,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.dataStructureGraph,
    title: LocalizedString(en: 'Graph', ar: 'الرسم البياني'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A collection of vertices (nodes) connected by edges. Graphs model relationships and networks.',
        ),
      ],
      ar: [
        StringContent(
          'مجموعة من الرؤوس (العقد) المتصلة بحواف. تمثل الرسوم البيانية العلاقات والشبكات.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Types:',
          value: [
            'Directed - edges have direction (A → B)',
            'Undirected - edges have no direction (A ↔ B)',
            'Weighted - edges have values/costs',
            'Cyclic - contains cycles (loops back)',
            'Acyclic - no cycles (DAG)',
          ],
        ),
        UnorderedListContent(
          title: 'Representations:',
          value: [
            'Adjacency matrix - 2D array of connections',
            'Adjacency list - map of node to its neighbors',
          ],
        ),
        StringContent(
          'Used for: social networks, maps/GPS, recommendation systems, dependency resolution.',
        ),
        CodeContent(
          '// In Dart, use Map<Node, List<Node>> for adjacency lists.',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الأنواع:',
          value: [
            'موجه - الحواف لها اتجاه (A → B)',
            'غير موجه - الحواف ليس لها اتجاه (A ↔ B)',
            'موزون - الحواف لها قيم/تكاليف',
            'دوري - يحتوي على دورات (يعود للخلف)',
            'لا دوري - لا دورات (DAG)',
          ],
        ),
        UnorderedListContent(
          title: 'التمثيلات:',
          value: [
            'مصفوفة التجاور - مصفوفة ثنائية للاتصالات',
            'قائمة التجاور - خريطة من العقدة إلى جيرانها',
          ],
        ),
        StringContent(
          'تُستخدم في: الشبكات الاجتماعية، الخرائط/GPS، أنظمة التوصيات، حل التبعيات.',
        ),
        CodeContent(
          '// في Dart، استخدم Map<Node, List<Node>> لقوائم التجاور.',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .dataStructure,
    category: .fundamentals,
    languages: [.dart, .java, .python],
    relatedTerms: [TermKeys.dataStructureTree],
    tags: ['network', 'vertices', 'edges', 'relationships'],
    era: .classic,
    popularityTier: .medium,
  ),

  // ============================================================================
  // OBJECT-ORIENTED PROGRAMMING
  // ============================================================================
  ProgrammingTerm(
    id: TermKeys.oopClass,
    title: LocalizedString(en: 'Class', ar: 'الفئة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A blueprint or template for creating objects. A class defines the properties (data) and methods (behavior) that objects of that class will have.',
        ),
      ],
      ar: [
        StringContent(
          'مخطط أو قالب لإنشاء الكائنات. تحدد الفئة الخصائص (البيانات) والأساليب (السلوك) التي ستمتلكها كائنات تلك الفئة.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        StringContent(
          'Think of a class as a cookie cutter, and objects as the cookies made from it.',
        ),
        StringContent('In Dart:'),
        CodeContent(
          'class Person {\n'
          '  String name;\n'
          '  int age;\n'
          '  \n'
          '  Person(this.name, this.age);\n'
          '  \n'
          '  void introduce() {\n'
          '    print("Hi, I\'m \$name, age \$age");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
        StringContent(
          'Classes are fundamental to Object-Oriented Programming (OOP).',
        ),
      ],
      ar: [
        StringContent(
          'فكر في الفئة كقالب البسكويت، والكائنات كالبسكويت المصنوع منه.',
        ),
        StringContent('في Dart:'),
        CodeContent(
          'class Person {\n'
          '  String name;\n'
          '  int age;\n'
          '  \n'
          '  Person(this.name, this.age);\n'
          '  \n'
          '  void introduce() {\n'
          '    print("مرحبًا، أنا \$name، عمري \$age");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
        StringContent('الفئات أساسية للبرمجة الموجهة للكائنات (OOP).'),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .cpp, .python],
    relatedTerms: [TermKeys.oopObject, TermKeys.oopInheritance],
    tags: ['oop', 'blueprint', 'template', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.oopObject,
    title: LocalizedString(en: 'Object', ar: 'الكائن'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'An instance of a class - a concrete entity with actual data. If a class is a blueprint, an object is the actual building created from it.',
        ),
      ],
      ar: [
        StringContent(
          'نسخة من فئة - كيان ملموس ببيانات فعلية. إذا كانت الفئة مخططًا، فالكائن هو المبنى الفعلي المنشأ منه.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Objects have:',
          value: [
            'State - the current values of their properties',
            'Behavior - the methods they can perform',
            'Identity - a unique reference in memory',
          ],
        ),
        StringContent('Example in Dart:'),
        CodeContent(
          'Person alice = Person("Alice", 30);\n'
          'Person bob = Person("Bob", 25);\n'
          'alice.introduce();  // "Hi, I\'m Alice, age 30"',
          codeLanguage: .dart,
        ),
        StringContent(
          'alice and bob are different objects (instances) of the Person class.',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'للكائنات:',
          value: [
            'الحالة - القيم الحالية لخصائصها',
            'السلوك - الأساليب التي يمكنها تنفيذها',
            'الهوية - مرجع فريد في الذاكرة',
          ],
        ),
        StringContent('مثال في Dart:'),
        CodeContent(
          'Person alice = Person("Alice", 30);\n'
          'Person bob = Person("Bob", 25);\n'
          'alice.introduce();  // "مرحبًا، أنا Alice، عمري 30"',
          codeLanguage: .dart,
        ),
        StringContent('alice و bob كائنان مختلفان (نسخ) من فئة Person.'),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .cpp, .python],
    relatedTerms: [TermKeys.oopClass],
    aliases: ['Instance'],
    tags: ['oop', 'instance', 'entity', 'basics'],
    era: .classic,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.oopInterface,
    title: LocalizedString(en: 'Interface', ar: 'الواجهة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A contract that defines a set of method signatures (names and parameters) without implementation. Classes that implement an interface must provide concrete implementations for all its methods.',
        ),
      ],
      ar: [
        StringContent(
          'عقد يحدد مجموعة من تواقيع الأساليب (الأسماء والمعاملات) بدون تنفيذ. الفئات التي تنفذ واجهة يجب أن توفر تطبيقات ملموسة لجميع أساليبها.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Purpose:',
          value: [
            'Define a common API for different classes',
            'Enable polymorphism - treat different objects uniformly',
            'Separate "what" from "how" (interface from implementation)',
          ],
        ),
        StringContent('In Dart, any class can serve as an interface:'),
        CodeContent(
          'class Flyable {\n'
          '  void fly();\n'
          '}\n\n'
          'class Bird implements Flyable {\n'
          '  @override\n'
          '  void fly() => print("Flapping wings");\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الغرض:',
          value: [
            'تحديد واجهة برمجة تطبيقات مشتركة لفئات مختلفة',
            'تمكين تعدد الأشكال - التعامل مع كائنات مختلفة بشكل موحد',
            'فصل "ماذا" عن "كيف" (الواجهة عن التنفيذ)',
          ],
        ),
        StringContent('في Dart، يمكن لأي فئة أن تكون واجهة:'),
        CodeContent(
          'class Flyable {\n'
          '  void fly();\n'
          '}\n\n'
          'class Bird implements Flyable {\n'
          '  @override\n'
          '  void fly() => print("رفرفة الأجنحة");\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .csharp, .typescript],
    relatedTerms: [TermKeys.oopAbstractClass, TermKeys.oopPolymorphism],
    aliases: ['Contract', 'Protocol'],
    tags: ['oop', 'contract', 'abstraction', 'api'],
    era: .classic,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.oopAbstractClass,
    title: LocalizedString(en: 'Abstract Class', ar: 'الفئة المجردة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A class that cannot be instantiated directly and typically contains abstract methods (methods without implementation). It serves as a base class for other classes.',
        ),
      ],
      ar: [
        StringContent(
          'فئة لا يمكن إنشاء نسخ منها مباشرة وعادة تحتوي على أساليب مجردة (أساليب بدون تنفيذ). تعمل كفئة أساس لفئات أخرى.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Differences from interfaces:',
          value: [
            'Can have concrete (implemented) methods',
            'Can have fields/properties',
            'Can have constructors',
            'A class can extend only one abstract class (single inheritance)',
          ],
        ),
        StringContent('In Dart:'),
        CodeContent(
          'abstract class Animal {\n'
          '  String name;\n'
          '  Animal(this.name);\n'
          '  \n'
          '  void speak();  // abstract method\n'
          '  void eat() => print("\$name is eating");  // concrete method\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الفروقات عن الواجهات:',
          value: [
            'يمكن أن تحتوي على أساليب ملموسة (منفذة)',
            'يمكن أن تحتوي على حقول/خصائص',
            'يمكن أن تحتوي على منشئات',
            'يمكن للفئة أن ترث فئة مجردة واحدة فقط (وراثة أحادية)',
          ],
        ),
        StringContent('في Dart:'),
        CodeContent(
          'abstract class Animal {\n'
          '  String name;\n'
          '  Animal(this.name);\n'
          '  \n'
          '  void speak();  // أسلوب مجرد\n'
          '  void eat() => print("\$name يأكل");  // أسلوب ملموس\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .cpp, .csharp],
    relatedTerms: [TermKeys.oopInterface, TermKeys.oopInheritance],
    tags: ['oop', 'base class', 'abstract', 'template'],
    era: .classic,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.oopInheritance,
    title: LocalizedString(en: 'Inheritance', ar: 'الوراثة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A mechanism where a class (child/subclass) derives properties and methods from another class (parent/superclass). It enables code reuse and creates hierarchical relationships.',
        ),
      ],
      ar: [
        StringContent(
          'آلية حيث تستمد فئة (الطفل/الفئة الفرعية) الخصائص والأساليب من فئة أخرى (الوالد/الفئة الأساسية). تمكن من إعادة استخدام الكود وإنشاء علاقات هرمية.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Benefits:',
          value: [
            'Code reusability - inherit existing functionality',
            'Extensibility - add or override behavior',
            'Hierarchical organization - model real-world relationships',
          ],
        ),
        StringContent('In Dart:'),
        CodeContent(
          'class Animal {\n'
          '  void eat() => print("Eating");\n'
          '}\n\n'
          'class Dog extends Animal {\n'
          '  void bark() => print("Woof!");\n'
          '}\n\n'
          'Dog d = Dog();\n'
          'd.eat();  // inherited from Animal\n'
          'd.bark(); // own method',
          codeLanguage: .dart,
        ),
        StringContent('Dart supports single inheritance (one parent only).'),
      ],
      ar: [
        UnorderedListContent(
          title: 'الفوائد:',
          value: [
            'إعادة استخدام الكود - وراثة الوظائف الموجودة',
            'القابلية للتوسع - إضافة أو تجاوز السلوك',
            'التنظيم الهرمي - نمذجة العلاقات الواقعية',
          ],
        ),
        StringContent('في Dart:'),
        CodeContent(
          'class Animal {\n'
          '  void eat() => print("يأكل");\n'
          '}\n\n'
          'class Dog extends Animal {\n'
          '  void bark() => print("عواء!");\n'
          '}\n\n'
          'Dog d = Dog();\n'
          'd.eat();  // موروث من Animal\n'
          'd.bark(); // أسلوب خاص',
          codeLanguage: .dart,
        ),
        StringContent('Dart يدعم الوراثة الأحادية (والد واحد فقط).'),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .cpp, .python],
    relatedTerms: [
      TermKeys.oopClass,
      TermKeys.oopPolymorphism,
      TermKeys.dartMixin,
    ],
    aliases: ['Extends', 'Subclassing'],
    tags: ['oop', 'hierarchy', 'reuse', 'extends'],
    era: .classic,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.oopPolymorphism,
    title: LocalizedString(en: 'Polymorphism', ar: 'تعدد الأشكال'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'The ability of objects of different types to be treated as objects of a common type. "Poly" means many, "morph" means forms - literally "many forms."',
        ),
      ],
      ar: [
        StringContent(
          'قدرة كائنات من أنواع مختلفة على أن تُعامل ككائنات من نوع مشترك. "Poly" تعني كثير، "morph" تعني أشكال - حرفيًا "أشكال كثيرة."',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Two main types:',
          value: [
            'Compile-time (Method Overloading) - same method name, different parameters',
            'Runtime (Method Overriding) - subclass provides specific implementation',
          ],
        ),
        StringContent('Example in Dart:'),
        CodeContent(
          'void makeSound(Animal animal) {\n'
          '  animal.speak();  // different behavior for Dog, Cat, Bird\n'
          '}\n\n'
          'makeSound(Dog());   // "Woof!"\n'
          'makeSound(Cat());   // "Meow!"\n'
          'makeSound(Bird());  // "Tweet!"',
          codeLanguage: .dart,
        ),
        StringContent('This enables writing flexible, reusable code.'),
      ],
      ar: [
        UnorderedListContent(
          title: 'نوعان رئيسيان:',
          value: [
            'وقت الترجمة (تحميل زائد للأساليب) - نفس اسم الأسلوب، معاملات مختلفة',
            'وقت التشغيل (تجاوز الأساليب) - الفئة الفرعية توفر تنفيذًا محددًا',
          ],
        ),
        StringContent('مثال في Dart:'),
        CodeContent(
          'void makeSound(Animal animal) {\n'
          '  animal.speak();  // سلوك مختلف لـ Dog، Cat، Bird\n'
          '}\n\n'
          'makeSound(Dog());   // "عواء!"\n'
          'makeSound(Cat());   // "مواء!"\n'
          'makeSound(Bird());  // "تغريد!"',
          codeLanguage: .dart,
        ),
        StringContent('هذا يمكن من كتابة كود مرن وقابل لإعادة الاستخدام.'),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart, .java, .cpp, .csharp],
    relatedTerms: [TermKeys.oopInheritance, TermKeys.oopInterface],
    aliases: ['Method overriding', 'Dynamic dispatch'],
    tags: ['oop', 'flexibility', 'override', 'interface'],
    era: .classic,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.oopEncapsulation,
    title: LocalizedString(en: 'Encapsulation', ar: 'التغليف'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'Bundling data (properties) and methods that operate on that data within a single unit (class), and restricting direct access to some components.',
        ),
      ],
      ar: [
        StringContent(
          'تجميع البيانات (الخصائص) والأساليب التي تعمل على تلك البيانات ضمن وحدة واحدة (فئة)، وتقييد الوصول المباشر إلى بعض المكونات.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Benefits:',
          value: [
            'Data hiding - internal details are protected',
            'Controlled access - use getters/setters',
            'Flexibility - change implementation without affecting external code',
            'Modularity - self-contained units',
          ],
        ),
        StringContent('In Dart, use underscore prefix for private members:'),
        CodeContent(
          'class BankAccount {\n'
          '  double _balance = 0;  // private\n'
          '  \n'
          '  double get balance => _balance;  // public getter\n'
          '  \n'
          '  void deposit(double amount) {  // public method\n'
          '    if (amount > 0) _balance += amount;\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الفوائد:',
          value: [
            'إخفاء البيانات - التفاصيل الداخلية محمية',
            'وصول محكوم - استخدام getters/setters',
            'المرونة - تغيير التنفيذ دون التأثير على الكود الخارجي',
            'النمطية - وحدات مستقلة',
          ],
        ),
        StringContent('في Dart، استخدم شرطة سفلية كبادئة للأعضاء الخاصة:'),
        CodeContent(
          'class BankAccount {\n'
          '  double _balance = 0;  // خاص\n'
          '  \n'
          '  double get balance => _balance;  // getter عام\n'
          '  \n'
          '  void deposit(double amount) {  // أسلوب عام\n'
          '    if (amount > 0) _balance += amount;\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .principle,
    category: .oop,
    languages: [.dart, .java, .cpp],
    relatedTerms: [TermKeys.oopAbstraction],
    aliases: ['Data hiding', 'Information hiding'],
    tags: ['oop', 'privacy', 'data protection', 'modularity'],
    era: .classic,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.oopAbstraction,
    title: LocalizedString(en: 'Abstraction', ar: 'التجريد'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'Hiding complex implementation details and showing only the essential features. Abstraction simplifies complexity by modeling classes at an appropriate level.',
        ),
      ],
      ar: [
        StringContent(
          'إخفاء تفاصيل التنفيذ المعقدة وإظهار الميزات الأساسية فقط. يبسط التجريد التعقيد من خلال نمذجة الفئات في المستوى المناسب.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Think of driving a car:',
          value: [
            'You use simple interfaces (steering wheel, pedals)',
            "You don't need to know how the engine works internally",
          ],
        ),
        UnorderedListContent(
          title: 'In programming:',
          value: [
            'Abstract classes and interfaces define "what" without "how"',
            'High-level operations hide low-level details',
            'User works with simple, intuitive APIs',
          ],
        ),
        StringContent(
          "Example: Using List in Dart - you don't need to know the internal array implementation, you just use add(), remove(), etc.",
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'فكر في قيادة السيارة:',
          value: [
            'تستخدم واجهات بسيطة (عجلة القيادة، الدواسات)',
            'لا تحتاج لمعرفة كيف يعمل المحرك داخليًا',
          ],
        ),
        UnorderedListContent(
          title: 'في البرمجة:',
          value: [
            'الفئات المجردة والواجهات تحدد "ماذا" بدون "كيف"',
            'العمليات عالية المستوى تخفي التفاصيل منخفضة المستوى',
            'المستخدم يعمل مع واجهات برمجة بسيطة وبديهية',
          ],
        ),
        StringContent(
          'مثال: استخدام List في Dart - لا تحتاج لمعرفة تنفيذ المصفوفة الداخلي، فقط تستخدم add()، remove()، إلخ.',
        ),
      ],
    ),
    type: .principle,
    category: .oop,
    languages: [.dart, .java, .cpp],
    relatedTerms: [
      TermKeys.oopEncapsulation,
      TermKeys.oopInterface,
      TermKeys.oopAbstractClass,
    ],
    tags: ['oop', 'simplification', 'interface', 'hiding complexity'],
    era: .classic,
    popularityTier: .high,
  ),

  // ============================================================================
  // PROGRAMMING PARADIGMS
  // ============================================================================
  ProgrammingTerm(
    id: TermKeys.paradigmOop,
    title: LocalizedString(
      en: 'Object-Oriented Programming',
      ar: 'البرمجة الموجهة للكائنات',
    ),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A programming paradigm based on the concept of "objects" - entities that encapsulate data and behavior. OOP organizes code around objects rather than functions and logic.',
        ),
      ],
      ar: [
        StringContent(
          'نموذج برمجة يعتمد على مفهوم "الكائنات" - كيانات تغلف البيانات والسلوك. تنظم OOP الكود حول الكائنات بدلاً من الدوال والمنطق.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Four pillars of OOP:',
          value: [
            '1. Encapsulation - bundling data and methods',
            '2. Abstraction - hiding complexity',
            '3. Inheritance - code reuse through class hierarchies',
            '4. Polymorphism - objects taking many forms',
          ],
        ),
        UnorderedListContent(
          title: 'Benefits:',
          value: [
            'Modularity - code is organized in self-contained units',
            'Reusability - inherit and reuse existing code',
            'Maintainability - easier to update and extend',
            'Real-world modeling - maps naturally to real concepts',
          ],
        ),
        StringContent(
          'Dart is fundamentally object-oriented - everything is an object.',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الأعمدة الأربعة لـ OOP:',
          value: [
            '1. التغليف - تجميع البيانات والأساليب',
            '2. التجريد - إخفاء التعقيد',
            '3. الوراثة - إعادة استخدام الكود عبر التسلسلات الهرمية للفئات',
            '4. تعدد الأشكال - الكائنات تأخذ أشكالاً عديدة',
          ],
        ),
        UnorderedListContent(
          title: 'الفوائد:',
          value: [
            'النمطية - الكود منظم في وحدات مستقلة',
            'إعادة الاستخدام - وراثة وإعادة استخدام الكود الموجود',
            'قابلية الصيانة - أسهل في التحديث والتوسع',
            'نمذجة العالم الواقعي - يتوافق بشكل طبيعي مع المفاهيم الواقعية',
          ],
        ),
        StringContent('Dart هو في الأساس موجه للكائنات - كل شيء هو كائن.'),
      ],
    ),
    type: .paradigm,
    category: .oop,
    languages: [.dart, .java, .cpp, .csharp, .python],
    relatedTerms: [
      TermKeys.oopClass,
      TermKeys.oopObject,
      TermKeys.oopEncapsulation,
      TermKeys.oopAbstraction,
      TermKeys.oopInheritance,
      TermKeys.oopPolymorphism,
    ],
    aliases: ['OOP'],
    tags: ['paradigm', 'oop', 'objects', 'classes'],
    era: .classic,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.paradigmFunctional,
    title: LocalizedString(
      en: 'Functional Programming',
      ar: 'البرمجة الوظيفية',
    ),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A programming paradigm where computation is done by evaluating mathematical functions and avoiding changing state or mutable data.',
        ),
      ],
      ar: [
        StringContent(
          'نموذج برمجة حيث يتم الحساب من خلال تقييم الدوال الرياضية وتجنب تغيير الحالة أو البيانات القابلة للتعديل.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Key concepts:',
          value: [
            'Pure functions - same input always produces same output, no side effects',
            'Immutability - data cannot be changed after creation',
            'First-class functions - functions as values',
            'Higher-order functions - functions that take or return functions',
            'Function composition - combining simple functions to build complex ones',
          ],
        ),
        StringContent('Common operations: map, filter, reduce'),
        StringContent(
          'Dart supports functional programming with first-class functions:',
        ),
        CodeContent(
          'final numbers = [1, 2, 3, 4];\n'
          'final doubled = numbers.map((n) => n * 2).toList();',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'المفاهيم الرئيسية:',
          value: [
            'دوال نقية - نفس المدخل ينتج دائمًا نفس المخرج، بدون آثار جانبية',
            'عدم القابلية للتغيير - لا يمكن تغيير البيانات بعد إنشائها',
            'دوال من الدرجة الأولى - الدوال كقيم',
            'دوال من رتبة أعلى - دوال تأخذ أو ترجع دوال',
            'تركيب الدوال - دمج دوال بسيطة لبناء دوال معقدة',
          ],
        ),
        StringContent('العمليات الشائعة: map، filter، reduce'),
        StringContent('Dart يدعم البرمجة الوظيفية مع دوال من الدرجة الأولى:'),
        CodeContent(
          'final numbers = [1, 2, 3, 4];\n'
          'final doubled = numbers.map((n) => n * 2).toList();',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .paradigm,
    category: .functionalProgramming,
    languages: [.dart, .haskell, .scala, .javascript],
    relatedTerms: [TermKeys.fundamentalsFunction],
    aliases: ['FP'],
    tags: ['paradigm', 'functional', 'pure functions', 'immutable'],
    era: .classic,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.paradigmProcedural,
    title: LocalizedString(
      en: 'Procedural Programming',
      ar: 'البرمجة الإجرائية',
    ),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A programming paradigm based on the concept of procedure calls - step-by-step instructions organized into procedures (functions/subroutines).',
        ),
      ],
      ar: [
        StringContent(
          'نموذج برمجة يعتمد على مفهوم استدعاءات الإجراءات - تعليمات خطوة بخطوة منظمة في إجراءات (دوال/إجراءات فرعية).',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Characteristics:',
          value: [
            'Sequential execution - code runs from top to bottom',
            'Procedures/functions - organize code into reusable blocks',
            'Shared state - global and local variables',
            'Focus on "how" - step-by-step instructions',
          ],
        ),
        StringContent(
          'Languages like C and Pascal are procedural. Even in OOP languages like Dart, simple scripts often use procedural style:',
        ),
        CodeContent(
          'void main() {\n'
          '  var name = getName();\n'
          '  var greeting = createGreeting(name);\n'
          '  print(greeting);\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الخصائص:',
          value: [
            'تنفيذ متسلسل - الكود يعمل من الأعلى إلى الأسفل',
            'إجراءات/دوال - تنظيم الكود في كتل قابلة لإعادة الاستخدام',
            'حالة مشتركة - متغيرات عامة ومحلية',
            'التركيز على "كيف" - تعليمات خطوة بخطوة',
          ],
        ),
        StringContent(
          'لغات مثل C و Pascal هي إجرائية. حتى في لغات OOP مثل Dart، البرامج النصية البسيطة غالبًا تستخدم الأسلوب الإجرائي:',
        ),
        CodeContent(
          'void main() {\n'
          '  var name = getName();\n'
          '  var greeting = createGreeting(name);\n'
          '  print(greeting);\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .paradigm,
    category: .proceduralProgramming,
    languages: [.c, .dart],
    relatedTerms: [TermKeys.fundamentalsFunction],
    tags: ['paradigm', 'procedural', 'sequential', 'imperative'],
    era: .classic,
    popularityTier: .medium,
  ),

  // ============================================================================
  // CONCURRENCY & PARALLELISM
  // ============================================================================
  ProgrammingTerm(
    id: TermKeys.concurrencyThread,
    title: LocalizedString(en: 'Thread', ar: 'الخيط'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'The smallest sequence of programmed instructions that can be managed independently by a scheduler. Threads allow multiple tasks to run concurrently within a single process.',
        ),
      ],
      ar: [
        StringContent(
          'أصغر تسلسل من التعليمات المبرمجة التي يمكن إدارتها بشكل مستقل بواسطة مجدول. تسمح الخيوط بتشغيل مهام متعددة بشكل متزامن ضمن عملية واحدة.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Key points:',
          value: [
            'Lightweight - share memory and resources within the same process',
            'Concurrent execution - multiple threads can run "simultaneously"',
            'Shared memory - can access same variables (requires synchronization)',
          ],
        ),
        StringContent(
          'Note: Dart uses isolates instead of traditional threads. Isolates have their own memory and communicate via message passing, avoiding shared memory issues.',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'النقاط الرئيسية:',
          value: [
            'خفيف الوزن - يشارك الذاكرة والموارد ضمن نفس العملية',
            'تنفيذ متزامن - يمكن لخيوط متعددة العمل "بشكل متزامن"',
            'ذاكرة مشتركة - يمكن الوصول لنفس المتغيرات (يتطلب تزامن)',
          ],
        ),
        StringContent(
          'ملاحظة: Dart يستخدم isolates بدلاً من الخيوط التقليدية. لدى Isolates ذاكرتها الخاصة وتتواصل عبر تمرير الرسائل، متجنبة مشاكل الذاكرة المشتركة.',
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    languages: [.java, .csharp, .cpp, .python],
    relatedTerms: [
      TermKeys.concurrencyProcess,
      TermKeys.dartIsolate,
      TermKeys.concurrencyRaceCondition,
    ],
    tags: ['concurrency', 'parallelism', 'multithreading'],
    era: .classic,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.concurrencyProcess,
    title: LocalizedString(en: 'Process', ar: 'العملية'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'An instance of a computer program that is being executed. A process has its own memory space, resources, and execution context.',
        ),
      ],
      ar: [
        StringContent(
          'نسخة من برنامج كمبيوتر قيد التنفيذ. للعملية مساحة ذاكرة خاصة بها، موارد، وسياق تنفيذ.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Key differences from threads:',
          value: [
            "Isolated memory - processes don't share memory",
            'Heavier - more overhead to create and manage',
            "Independent - crash in one process doesn't affect others",
            'IPC needed - Inter-Process Communication for data sharing',
          ],
        ),
        StringContent(
          'Operating systems run multiple processes concurrently. Dart/Flutter apps typically run in a single process with multiple isolates.',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الفروقات الرئيسية عن الخيوط:',
          value: [
            'ذاكرة معزولة - العمليات لا تشارك الذاكرة',
            'أثقل - تكلفة أكبر للإنشاء والإدارة',
            'مستقلة - انهيار عملية لا يؤثر على الأخرى',
            'تحتاج IPC - اتصال بين العمليات لمشاركة البيانات',
          ],
        ),
        StringContent(
          'أنظمة التشغيل تشغل عمليات متعددة بشكل متزامن. تطبيقات Dart/Flutter عادة تعمل في عملية واحدة مع isolates متعددة.',
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    relatedTerms: [TermKeys.concurrencyThread, TermKeys.dartIsolate],
    tags: ['os', 'execution', 'memory', 'isolation'],
    era: .classic,
    popularityTier: .medium,
  ),

  ProgrammingTerm(
    id: TermKeys.concurrencySemaphore,
    title: LocalizedString(en: 'Semaphore', ar: 'الإشارة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A synchronization primitive used to control access to shared resources in concurrent systems. A semaphore maintains a counter that limits how many threads/processes can access a resource.',
        ),
      ],
      ar: [
        StringContent(
          'بدائية تزامن تُستخدم للتحكم في الوصول إلى الموارد المشتركة في الأنظمة المتزامنة. تحافظ الإشارة على عداد يحد من عدد الخيوط/العمليات التي يمكنها الوصول إلى مورد.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Types:',
          value: [
            'Binary semaphore (mutex) - allows 0 or 1 thread (like a lock)',
            'Counting semaphore - allows N threads (e.g., connection pool)',
          ],
        ),
        UnorderedListContent(
          title: 'Operations:',
          value: [
            'Wait/P/acquire - decrement counter, block if zero',
            'Signal/V/release - increment counter, wake waiting thread',
          ],
        ),
        StringContent(
          'Used to prevent race conditions and coordinate access to limited resources.',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الأنواع:',
          value: [
            'إشارة ثنائية (mutex) - تسمح بـ 0 أو 1 خيط (مثل القفل)',
            'إشارة عد - تسمح بـ N خيط (مثل، تجمع الاتصالات)',
          ],
        ),
        UnorderedListContent(
          title: 'العمليات:',
          value: [
            'انتظار/P/استحواذ - تقليل العداد، حظر إذا كان صفرًا',
            'إشارة/V/إطلاق - زيادة العداد، إيقاظ خيط منتظر',
          ],
        ),
        StringContent(
          'تُستخدم لمنع ظروف السباق وتنسيق الوصول إلى الموارد المحدودة.',
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    relatedTerms: [
      TermKeys.concurrencyRaceCondition,
      TermKeys.concurrencyDeadlock,
    ],
    tags: ['synchronization', 'concurrency', 'mutex', 'lock'],
    era: .classic,
    popularityTier: .low,
  ),

  ProgrammingTerm(
    id: TermKeys.concurrencyDeadlock,
    title: LocalizedString(en: 'Deadlock', ar: 'الجمود'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A situation in concurrent programming where two or more threads/processes are permanently blocked, each waiting for a resource held by another.',
        ),
      ],
      ar: [
        StringContent(
          'موقف في البرمجة المتزامنة حيث يتم حظر خيطين أو أكثر/عمليات بشكل دائم، كل منها ينتظر موردًا يحتفظ به الآخر.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Classic example:',
          value: [
            'Thread A holds Resource 1, waits for Resource 2',
            'Thread B holds Resource 2, waits for Resource 1',
            'Both threads wait forever → deadlock!',
          ],
        ),
        UnorderedListContent(
          title: 'Four necessary conditions for deadlock:',
          value: [
            "Mutual exclusion - resources can't be shared",
            'Hold and wait - holding while requesting more',
            "No preemption - resources can't be forcibly taken",
            'Circular wait - circular chain of waiting',
          ],
        ),
        StringContent(
          'Prevention: avoid circular dependencies, use timeouts, acquire locks in consistent order.',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'مثال كلاسيكي:',
          value: [
            'الخيط A يحتفظ بالمورد 1، ينتظر المورد 2',
            'الخيط B يحتفظ بالمورد 2، ينتظر المورد 1',
            'كلا الخيطين ينتظران للأبد → جمود!',
          ],
        ),
        UnorderedListContent(
          title: 'أربعة شروط ضرورية للجمود:',
          value: [
            'الاستبعاد المتبادل - لا يمكن مشاركة الموارد',
            'الاحتفاظ والانتظار - الاحتفاظ أثناء طلب المزيد',
            'عدم الانتزاع - لا يمكن أخذ الموارد بالقوة',
            'الانتظار الدائري - سلسلة دائرية من الانتظار',
          ],
        ),
        StringContent(
          'الوقاية: تجنب التبعيات الدائرية، استخدام مهلات، الحصول على الأقفال بترتيب ثابت.',
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    relatedTerms: [
      TermKeys.concurrencySemaphore,
      TermKeys.concurrencyRaceCondition,
    ],
    tags: ['concurrency', 'blocking', 'circular wait', 'bug'],
    era: .classic,
    popularityTier: .medium,
  ),

  ProgrammingTerm(
    id: TermKeys.concurrencyRaceCondition,
    title: LocalizedString(en: 'Race Condition', ar: 'ظرف السباق'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A bug that occurs when the behavior of software depends on the timing or ordering of uncontrollable events.',
        ),
      ],
      ar: [
        StringContent(
          'خطأ يحدث عندما يعتمد سلوك البرنامج على توقيت أو ترتيب الأحداث التي لا يمكن التحكم فيها.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        StringContent(
          'In multi-threaded programs, this happens when multiple threads access shared data without proper synchronization.',
        ),
        UnorderedListContent(
          title: 'Example:',
          value: [
            'Thread 1: reads counter (value = 5)',
            'Thread 2: reads counter (value = 5)',
            'Thread 1: increments and writes (counter = 6)',
            'Thread 2: increments and writes (counter = 6)',
            'Expected: 7, Got: 6 → race condition!',
          ],
        ),
        UnorderedListContent(
          title: 'Prevention:',
          value: [
            'Use locks/mutexes for synchronization',
            'Use atomic operations',
            'Avoid shared mutable state',
            'In Dart, use isolates to avoid shared memory',
          ],
        ),
      ],
      ar: [
        StringContent(
          'في البرامج متعددة الخيوط، يحدث هذا عندما تصل خيوط متعددة إلى بيانات مشتركة بدون تزامن مناسب.',
        ),
        UnorderedListContent(
          title: 'مثال:',
          value: [
            'الخيط 1: يقرأ العداد (القيمة = 5)',
            'الخيط 2: يقرأ العداد (القيمة = 5)',
            'الخيط 1: يزيد ويكتب (العداد = 6)',
            'الخيط 2: يزيد ويكتب (العداد = 6)',
            'المتوقع: 7، الناتج: 6 → ظرف سباق!',
          ],
        ),
        UnorderedListContent(
          title: 'الوقاية:',
          value: [
            'استخدام الأقفال/mutexes للتزامن',
            'استخدام العمليات الذرية',
            'تجنب الحالة المشتركة القابلة للتغيير',
            'في Dart، استخدم isolates لتجنب الذاكرة المشتركة',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    relatedTerms: [
      TermKeys.concurrencyThread,
      TermKeys.concurrencySemaphore,
      TermKeys.dartIsolate,
    ],
    tags: ['concurrency', 'bug', 'synchronization', 'shared state'],
    era: .classic,
    popularityTier: .medium,
  ),

  ProgrammingTerm(
    id: TermKeys.concurrencyAsync,
    title: LocalizedString(
      en: 'Asynchronous Programming',
      ar: 'البرمجة غير المتزامنة',
    ),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A programming model where operations run without blocking the main execution flow.',
        ),
      ],
      ar: [
        StringContent(
          'نموذج برمجة حيث تعمل العمليات دون حظر تدفق التنفيذ الرئيسي.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        StringContent(
          'Long-running tasks (I/O, network requests) run in the background while the program continues.',
        ),
        UnorderedListContent(
          title: 'Benefits:',
          value: [
            'Responsiveness - UI stays responsive during long operations',
            'Efficiency - better resource utilization',
            'Scalability - handle many concurrent operations',
          ],
        ),
        StringContent('In Dart, use async/await:'),
        CodeContent(
          'Future<String> fetchData() async {\n'
          '  final response = await http.get(url);\n'
          '  return response.body;\n'
          '}',
          codeLanguage: .dart,
        ),
        StringContent(
          'The await keyword waits for the Future without blocking the event loop.',
        ),
      ],
      ar: [
        StringContent(
          'المهام طويلة الأمد (الإدخال/الإخراج، طلبات الشبكة) تعمل في الخلفية بينما يستمر البرنامج.',
        ),
        UnorderedListContent(
          title: 'الفوائد:',
          value: [
            'الاستجابة - تبقى واجهة المستخدم مستجيبة أثناء العمليات الطويلة',
            'الكفاءة - استخدام أفضل للموارد',
            'قابلية التوسع - التعامل مع عمليات متزامنة كثيرة',
          ],
        ),
        StringContent('في Dart، استخدم async/await:'),
        CodeContent(
          'Future<String> fetchData() async {\n'
          '  final response = await http.get(url);\n'
          '  return response.body;\n'
          '}',
          codeLanguage: .dart,
        ),
        StringContent(
          'الكلمة المفتاحية await تنتظر Future دون حظر حلقة الأحداث.',
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    languages: [.dart, .javascript, .python, .csharp],
    relatedTerms: [TermKeys.dartFuture, TermKeys.dartStream],
    aliases: ['Async/await', 'Non-blocking'],
    tags: ['async', 'concurrency', 'non-blocking', 'responsive'],
    era: .modern,
    popularityTier: .veryHigh,
  ),

  // ============================================================================
  // DART & FLUTTER SPECIFIC TERMS
  // ============================================================================
  ProgrammingTerm(
    id: TermKeys.dartLanguage,
    title: LocalizedString(en: 'Dart', ar: 'دارت'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A modern, client-optimized programming language developed by Google for building apps on multiple platforms.',
        ),
      ],
      ar: [
        StringContent(
          'لغة برمجة حديثة محسنة للعميل طورتها Google لبناء التطبيقات على منصات متعددة.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        StringContent(
          'Dart is the language used to build Flutter applications.',
        ),
        UnorderedListContent(
          title: 'Key features:',
          value: [
            'Object-oriented - everything is an object',
            'Strongly typed - with type inference',
            'Null safety - prevents null reference errors',
            'AOT & JIT compilation - fast development and performance',
            'Garbage collected - automatic memory management',
            'Async/await - built-in asynchronous programming',
          ],
        ),
        UnorderedListContent(
          title: 'Dart can compile to:',
          value: ['Native machine code (mobile/desktop)', 'JavaScript (web)'],
        ),
        StringContent(
          'Used for: Flutter apps, web apps, server-side development.',
        ),
      ],
      ar: [
        StringContent('Dart هي اللغة المستخدمة لبناء تطبيقات Flutter.'),
        UnorderedListContent(
          title: 'الميزات الرئيسية:',
          value: [
            'موجهة للكائنات - كل شيء هو كائن',
            'كتابة قوية - مع استنتاج النوع',
            'أمان القيم الفارغة - يمنع أخطاء المراجع الفارغة',
            'ترجمة AOT و JIT - تطوير سريع وأداء عالي',
            'جمع القمامة - إدارة تلقائية للذاكرة',
            'Async/await - برمجة غير متزامنة مدمجة',
          ],
        ),
        UnorderedListContent(
          title: 'يمكن لـ Dart الترجمة إلى:',
          value: ['كود آلة أصلي (موبايل/سطح مكتب)', 'JavaScript (ويب)'],
        ),
        StringContent(
          'تُستخدم في: تطبيقات Flutter، تطبيقات الويب، التطوير من جانب الخادم.',
        ),
      ],
    ),
    type: .tool,
    category: .mobileDevelopment,
    languages: [.dart],
    relatedTerms: [TermKeys.flutterFramework, TermKeys.dartNullSafety],
    tags: ['language', 'dart', 'google', 'flutter'],
    era: .modern,
    popularityTier: .veryHigh,
    introducedYear: 2011,
  ),

  ProgrammingTerm(
    id: TermKeys.flutterFramework,
    title: LocalizedString(en: 'Flutter', ar: 'فلاتر'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          "Google's open-source UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase using Dart.",
        ),
      ],
      ar: [
        StringContent(
          'مجموعة أدوات واجهة المستخدم مفتوحة المصدر من Google لبناء تطبيقات جميلة مترجمة أصليًا للموبايل والويب وسطح المكتب من كود واحد باستخدام Dart.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Key features:',
          value: [
            'Write once, run anywhere - single codebase for all platforms',
            'Hot reload - see changes instantly without losing state',
            'Beautiful UIs - rich set of customizable widgets',
            'Fast performance - compiles to native ARM code',
            'Material Design & Cupertino - platform-specific designs',
          ],
        ),
        StringContent(
          'Flutter uses a widget tree architecture where everything is a widget. Widgets describe what the UI should look like.',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الميزات الرئيسية:',
          value: [
            'اكتب مرة، شغل في أي مكان - كود واحد لجميع المنصات',
            'إعادة التحميل الساخن - شاهد التغييرات فورًا دون فقدان الحالة',
            'واجهات مستخدم جميلة - مجموعة غنية من الويدجت القابلة للتخصيص',
            'أداء سريع - يترجم إلى كود ARM أصلي',
            'Material Design و Cupertino - تصاميم خاصة بالمنصة',
          ],
        ),
        StringContent(
          'Flutter يستخدم معمارية شجرة الويدجت حيث كل شيء هو ويدجت. تصف الويدجت كيف يجب أن تبدو واجهة المستخدم.',
        ),
      ],
    ),
    type: .framework,
    category: .mobileDevelopment,
    languages: [.flutter, .dart],
    relatedTerms: [
      TermKeys.dartLanguage,
      TermKeys.flutterWidget,
      TermKeys.flutterHotReload,
    ],
    tags: ['framework', 'ui', 'cross-platform', 'google'],
    era: .modern,
    popularityTier: .veryHigh,
    introducedYear: 2017,
  ),

  ProgrammingTerm(
    id: TermKeys.flutterWidget,
    title: LocalizedString(en: 'Widget', ar: 'الويدجت'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'The fundamental building block of a Flutter user interface. A widget is an immutable description of part of the UI.',
        ),
      ],
      ar: [
        StringContent(
          'اللبنة الأساسية لواجهة المستخدم في Flutter. الويدجت هو وصف ثابت لجزء من واجهة المستخدم.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Everything in Flutter is a widget:',
          value: [
            'Layout widgets - Row, Column, Container, Stack',
            'Interactive widgets - Button, TextField, Slider',
            'Styling widgets - Text, Icon, Image',
            'Material/Cupertino widgets - platform-specific designs',
          ],
        ),
        StringContent(
          'Widgets are arranged in a tree hierarchy. When state changes, Flutter rebuilds the affected widgets efficiently.',
        ),
        UnorderedListContent(
          title: 'Two main types:',
          value: [
            'StatelessWidget - for static content',
            'StatefulWidget - for dynamic content that can change',
          ],
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'كل شيء في Flutter هو ويدجت:',
          value: [
            'ويدجت التخطيط - Row، Column، Container، Stack',
            'ويدجت تفاعلي - Button، TextField، Slider',
            'ويدجت التنسيق - Text، Icon، Image',
            'ويدجت Material/Cupertino - تصاميم خاصة بالمنصة',
          ],
        ),
        StringContent(
          'يتم ترتيب الويدجت في تسلسل هرمي شجري. عندما تتغير الحالة، يعيد Flutter بناء الويدجت المتأثر بكفاءة.',
        ),
        UnorderedListContent(
          title: 'نوعان رئيسيان:',
          value: [
            'StatelessWidget - للمحتوى الثابت',
            'StatefulWidget - للمحتوى الديناميكي الذي يمكن أن يتغير',
          ],
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [
      TermKeys.flutterStatelessWidget,
      TermKeys.flutterStatefulWidget,
      TermKeys.flutterFramework,
    ],
    tags: ['flutter', 'ui', 'component', 'building block'],
    era: .modern,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.flutterStatelessWidget,
    title: LocalizedString(en: 'StatelessWidget', ar: 'ويدجت بدون حالة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          "A Flutter widget that has no mutable state. Its appearance is completely determined by its constructor parameters and doesn't change over time.",
        ),
      ],
      ar: [
        StringContent(
          'ويدجت Flutter ليس له حالة قابلة للتغيير. يتم تحديد مظهره بالكامل بواسطة معاملات المنشئ ولا يتغير مع مرور الوقت.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Use StatelessWidget when:',
          value: [
            "The UI doesn't change dynamically",
            'You only display static information',
            'Widget depends only on constructor parameters',
          ],
        ),
        StringContent('Example:'),
        CodeContent(
          'class Greeting extends StatelessWidget {\n'
          '  final String name;\n'
          '  \n'
          '  const Greeting({required this.name});\n'
          '  \n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Text("Hello, \$name!");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'استخدم StatelessWidget عندما:',
          value: [
            'لا تتغير واجهة المستخدم ديناميكيًا',
            'تعرض معلومات ثابتة فقط',
            'يعتمد الويدجت فقط على معاملات المنشئ',
          ],
        ),
        StringContent('مثال:'),
        CodeContent(
          'class Greeting extends StatelessWidget {\n'
          '  final String name;\n'
          '  \n'
          '  const Greeting({required this.name});\n'
          '  \n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Text("مرحبًا، \$name!");\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterStatefulWidget, TermKeys.flutterWidget],
    tags: ['flutter', 'widget', 'immutable', 'static'],
    era: .modern,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.flutterStatefulWidget,
    title: LocalizedString(en: 'StatefulWidget', ar: 'ويدجت ذو حالة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A Flutter widget that maintains mutable state in a separate State object. When the state changes, the widget can rebuild to reflect those changes.',
        ),
      ],
      ar: [
        StringContent(
          'ويدجت Flutter يحافظ على حالة قابلة للتغيير في كائن State منفصل. عندما تتغير الحالة، يمكن للويدجت إعادة البناء لتعكس تلك التغييرات.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Use StatefulWidget when:',
          value: [
            'The UI changes based on user interaction',
            'You need to update the display dynamically',
            'Widget has internal data that can change',
          ],
        ),
        StringContent('Example:'),
        CodeContent(
          'class Counter extends StatefulWidget {\n'
          '  @override\n'
          '  State<Counter> createState() => _CounterState();\n'
          '}\n\n'
          'class _CounterState extends State<Counter> {\n'
          '  int count = 0;\n'
          '  \n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Column(\n'
          '      children: [\n'
          '        Text("\$count"),\n'
          '        ElevatedButton(\n'
          '          onPressed: () => setState(() => count++),\n'
          '          child: Text("Increment"),\n'
          '        ),\n'
          '      ],\n'
          '    );\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'استخدم StatefulWidget عندما:',
          value: [
            'تتغير واجهة المستخدم بناءً على تفاعل المستخدم',
            'تحتاج لتحديث العرض ديناميكيًا',
            'الويدجت له بيانات داخلية يمكن أن تتغير',
          ],
        ),
        StringContent('مثال:'),
        CodeContent(
          'class Counter extends StatefulWidget {\n'
          '  @override\n'
          '  State<Counter> createState() => _CounterState();\n'
          '}\n\n'
          'class _CounterState extends State<Counter> {\n'
          '  int count = 0;\n'
          '  \n'
          '  @override\n'
          '  Widget build(BuildContext context) {\n'
          '    return Column(\n'
          '      children: [\n'
          '        Text("\$count"),\n'
          '        ElevatedButton(\n'
          '          onPressed: () => setState(() => count++),\n'
          '          child: Text("زيادة"),\n'
          '        ),\n'
          '      ],\n'
          '    );\n'
          '  }\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .stateManagement,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterStatelessWidget, TermKeys.flutterWidget],
    tags: ['flutter', 'widget', 'mutable', 'dynamic', 'state'],
    era: .modern,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.flutterHotReload,
    title: LocalizedString(en: 'Hot Reload', ar: 'إعادة التحميل الساخن'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A Flutter feature that allows you to inject updated source code into a running app and see changes almost instantly without restarting the app or losing its state.',
        ),
      ],
      ar: [
        StringContent(
          'ميزة Flutter تسمح لك بحقن كود مصدر محدث في تطبيق قيد التشغيل ورؤية التغييرات على الفور تقريبًا دون إعادة تشغيل التطبيق أو فقدان حالته.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Benefits:',
          value: [
            'Instant feedback - see changes in less than a second',
            'Preserves state - app stays in the same place',
            'Boosts productivity - faster development cycle',
            'Works on all platforms - mobile, web, desktop',
          ],
        ),
        UnorderedListContent(
          title: 'How to use:',
          value: [
            'Press "r" in terminal',
            'Click hot reload button in IDE',
            'Save the file (if auto-reload enabled)',
          ],
        ),
        StringContent(
          "Hot reload is one of Flutter's most loved features for rapid development.",
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الفوائد:',
          value: [
            'ملاحظات فورية - شاهد التغييرات في أقل من ثانية',
            'يحافظ على الحالة - التطبيق يبقى في نفس المكان',
            'يعزز الإنتاجية - دورة تطوير أسرع',
            'يعمل على جميع المنصات - موبايل، ويب، سطح مكتب',
          ],
        ),
        UnorderedListContent(
          title: 'كيفية الاستخدام:',
          value: [
            'اضغط "r" في الطرفية',
            'انقر زر إعادة التحميل الساخن في IDE',
            'احفظ الملف (إذا كانت إعادة التحميل التلقائي مفعلة)',
          ],
        ),
        StringContent(
          'إعادة التحميل الساخن هي واحدة من أكثر ميزات Flutter المحبوبة للتطوير السريع.',
        ),
      ],
    ),
    type: .feature,
    category: .mobileDevelopment,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterHotRestart, TermKeys.flutterFramework],
    tags: ['flutter', 'development', 'productivity', 'instant'],
    era: .modern,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.flutterHotRestart,
    title: LocalizedString(en: 'Hot Restart', ar: 'إعادة التشغيل الساخن'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A Flutter feature similar to hot reload, but restarts the app from the main() function. This loses the current state but is faster than a full restart.',
        ),
      ],
      ar: [
        StringContent(
          'ميزة Flutter مشابهة لإعادة التحميل الساخن، لكنها تعيد تشغيل التطبيق من دالة main(). هذا يفقد الحالة الحالية لكنه أسرع من إعادة التشغيل الكاملة.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Differences from hot reload:',
          value: [
            'Restarts from main() - loses all state',
            'Slower than hot reload (but faster than full restart)',
            'More thorough - catches more types of changes',
          ],
        ),
        UnorderedListContent(
          title: 'When to use hot restart:',
          value: [
            "When hot reload doesn't pick up changes",
            'After changing app initialization code',
            'To reset the app state quickly',
            'When hot reload shows unexpected behavior',
          ],
        ),
        StringContent(
          'How to use: Press "R" (capital) in terminal or click the hot restart button.',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الفروقات عن إعادة التحميل الساخن:',
          value: [
            'يعيد التشغيل من main() - يفقد كل الحالة',
            'أبطأ من إعادة التحميل الساخن (لكن أسرع من إعادة التشغيل الكاملة)',
            'أكثر شمولاً - يلتقط أنواعًا أكثر من التغييرات',
          ],
        ),
        UnorderedListContent(
          title: 'متى تستخدم إعادة التشغيل الساخن:',
          value: [
            'عندما لا تلتقط إعادة التحميل الساخن التغييرات',
            'بعد تغيير كود تهيئة التطبيق',
            'لإعادة تعيين حالة التطبيق بسرعة',
            'عندما تظهر إعادة التحميل الساخن سلوكًا غير متوقع',
          ],
        ),
        StringContent(
          'كيفية الاستخدام: اضغط "R" (كبير) في الطرفية أو انقر زر إعادة التشغيل الساخن.',
        ),
      ],
    ),
    type: .feature,
    category: .mobileDevelopment,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterHotReload],
    tags: ['flutter', 'development', 'restart', 'debugging'],
    era: .modern,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.flutterMaterialDesign,
    title: LocalizedString(en: 'Material Design', ar: 'تصميم ماتيريال'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'An open-source design system created by Google that provides guidelines for visual, motion, and interaction design across platforms and devices.',
        ),
      ],
      ar: [
        StringContent(
          'نظام تصميم مفتوح المصدر أنشأته Google يوفر إرشادات للتصميم المرئي والحركي والتفاعلي عبر المنصات والأجهزة.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title:
              "Flutter's material library implements Material Design components:",
          value: [
            'MaterialApp - root widget for Material apps',
            'Scaffold - basic app structure with app bar, drawer, etc.',
            'Material widgets - Button, Card, Dialog, AppBar, etc.',
            'Material theming - consistent colors, typography, shapes',
          ],
        ),
        UnorderedListContent(
          title: 'Material Design principles:',
          value: [
            'Material as metaphor - inspired by physical materials',
            'Bold, graphic, intentional - clear visual hierarchy',
            'Motion provides meaning - purposeful animations',
          ],
        ),
        StringContent(
          'Widely used for Android apps and cross-platform consistency.',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'مكتبة material في Flutter تنفذ مكونات Material Design:',
          value: [
            'MaterialApp - ويدجت جذر لتطبيقات Material',
            'Scaffold - هيكل تطبيق أساسي مع شريط تطبيق، درج، إلخ.',
            'ويدجت Material - Button، Card، Dialog، AppBar، إلخ.',
            'تصميم Material - ألوان متسقة، طباعة، أشكال',
          ],
        ),
        UnorderedListContent(
          title: 'مبادئ Material Design:',
          value: [
            'المادة كاستعارة - مستوحى من المواد الفيزيائية',
            'جريء، رسومي، متعمد - تسلسل هرمي بصري واضح',
            'الحركة توفر معنى - رسوم متحركة هادفة',
          ],
        ),
        StringContent(
          'يستخدم على نطاق واسع لتطبيقات Android واتساق عبر المنصات.',
        ),
      ],
    ),
    type: .designSystem,
    category: .uiUx,
    languages: [.flutter],
    relatedTerms: [TermKeys.flutterFramework, TermKeys.flutterWidget],
    tags: ['design system', 'ui', 'google', 'android'],
    era: .modern,
    popularityTier: .veryHigh,
    introducedYear: 2014,
  ),

  ProgrammingTerm(
    id: TermKeys.dartNullSafety,
    title: LocalizedString(en: 'Null Safety', ar: 'أمان القيم الفارغة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A Dart language feature that helps prevent null reference errors by distinguishing between nullable and non-nullable types at compile time.',
        ),
      ],
      ar: [
        StringContent(
          'ميزة لغة Dart تساعد في منع أخطاء المراجع الفارغة من خلال التمييز بين الأنواع القابلة للقيم الفارغة وغير القابلة في وقت الترجمة.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Key concepts:',
          value: [
            "Non-nullable by default - variables can't be null unless explicitly marked",
            'Nullable types - use "?" to allow null (e.g., String?)',
            'Null-aware operators - ?., ??, ??=, !',
            'Compile-time safety - catch errors before runtime',
          ],
        ),
        StringContent('Examples:'),
        CodeContent(
          'String name = "Alice";  // Cannot be null\n'
          'String? nickname;  // Can be null\n'
          'int length = nickname?.length ?? 0;  // Safe access',
          codeLanguage: .dart,
        ),
        StringContent(
          'Null safety eliminates one of the most common sources of runtime errors.',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'المفاهيم الرئيسية:',
          value: [
            'غير فارغة افتراضيًا - المتغيرات لا يمكن أن تكون فارغة إلا إذا وُسمت صراحة',
            'أنواع قابلة للقيم الفارغة - استخدم "?" للسماح بقيم فارغة (مثل، String?)',
            'عوامل واعية بالقيم الفارغة - ?.، ??، ??=، !',
            'أمان وقت الترجمة - اكتشاف الأخطاء قبل وقت التشغيل',
          ],
        ),
        StringContent('أمثلة:'),
        CodeContent(
          'String name = "Alice";  // لا يمكن أن يكون فارغًا\n'
          'String? nickname;  // يمكن أن يكون فارغًا\n'
          'int length = nickname?.length ?? 0;  // وصول آمن',
          codeLanguage: .dart,
        ),
        StringContent(
          'أمان القيم الفارغة يزيل واحدًا من أكثر مصادر أخطاء وقت التشغيل شيوعًا.',
        ),
      ],
    ),
    type: .feature,
    category: .fundamentals,
    languages: [.dart],
    relatedTerms: [TermKeys.fundamentalsDataType, TermKeys.dartLanguage],
    tags: ['safety', 'null', 'type system', 'error prevention'],
    era: .modern,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.dartPub,
    title: LocalizedString(en: 'pub (Package Manager)', ar: 'pub (مدير الحزم)'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          "Dart's package manager and command-line tool for managing dependencies, publishing packages, and running scripts.",
        ),
      ],
      ar: [
        StringContent(
          'مدير حزم Dart وأداة سطر الأوامر لإدارة التبعيات، نشر الحزم، وتشغيل البرامج النصية.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Key features:',
          value: [
            'Dependency management - install and update packages',
            'Package repository - pub.dev hosts thousands of packages',
            'Version resolution - handles compatible versions',
            'Script running - execute Dart scripts',
          ],
        ),
        UnorderedListContent(
          title: 'Common commands:',
          value: [
            'pub get - install dependencies from pubspec.yaml',
            'pub upgrade - update to latest compatible versions',
            'pub publish - publish a package to pub.dev',
          ],
        ),
        StringContent(
          'Similar to: npm (JavaScript), pip (Python), Maven (Java)',
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الميزات الرئيسية:',
          value: [
            'إدارة التبعيات - تثبيت وتحديث الحزم',
            'مستودع الحزم - pub.dev يستضيف آلاف الحزم',
            'حل الإصدار - يتعامل مع الإصدارات المتوافقة',
            'تشغيل البرامج النصية - تنفيذ برامج Dart النصية',
          ],
        ),
        UnorderedListContent(
          title: 'الأوامر الشائعة:',
          value: [
            'pub get - تثبيت التبعيات من pubspec.yaml',
            'pub upgrade - التحديث لأحدث الإصدارات المتوافقة',
            'pub publish - نشر حزمة على pub.dev',
          ],
        ),
        StringContent('مشابه لـ: npm (JavaScript)، pip (Python)، Maven (Java)'),
      ],
    ),
    type: .tool,
    category: .mobileDevelopment,
    languages: [.dart],
    relatedTerms: [TermKeys.dartLanguage],
    aliases: ['Package manager', 'pub.dev'],
    tags: ['package manager', 'dependencies', 'dart', 'tool'],
    era: .modern,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.dartIsolate,
    title: LocalizedString(en: 'Isolate', ar: 'العزلة'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          "Dart's concurrency model - an independent worker with its own memory heap and event loop. Isolates run code in parallel without sharing memory.",
        ),
      ],
      ar: [
        StringContent(
          'نموذج التزامن في Dart - عامل مستقل له كومة ذاكرة خاصة وحلقة أحداث. تعمل Isolates بشكل متوازي دون مشاركة الذاكرة.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Key features:',
          value: [
            'True parallelism - run on separate threads',
            'Memory isolation - each isolate has its own memory',
            'Message passing - communicate via SendPort/ReceivePort',
            'No shared state - prevents race conditions and deadlocks',
          ],
        ),
        UnorderedListContent(
          title: 'Use isolates for:',
          value: [
            'CPU-intensive computations (parsing large JSON, image processing)',
            'Preventing UI freezes in Flutter apps',
            'Running background tasks',
          ],
        ),
        StringContent('Example:'),
        CodeContent(
          'await Isolate.spawn(heavyComputation, data);',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الميزات الرئيسية:',
          value: [
            'توازي حقيقي - تعمل على خيوط منفصلة',
            'عزل الذاكرة - لكل isolate ذاكرتها الخاصة',
            'تمرير الرسائل - التواصل عبر SendPort/ReceivePort',
            'بدون حالة مشتركة - يمنع ظروف السباق والجمود',
          ],
        ),
        UnorderedListContent(
          title: 'استخدم isolates لـ:',
          value: [
            'الحسابات المكثفة لوحدة المعالجة المركزية (تحليل JSON كبير، معالجة الصور)',
            'منع تجميد واجهة المستخدم في تطبيقات Flutter',
            'تشغيل المهام في الخلفية',
          ],
        ),
        StringContent('مثال:'),
        CodeContent(
          'await Isolate.spawn(heavyComputation, data);',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    languages: [.dart],
    relatedTerms: [
      TermKeys.concurrencyThread,
      TermKeys.concurrencyProcess,
      TermKeys.concurrencyAsync,
    ],
    tags: ['concurrency', 'parallelism', 'isolate', 'dart'],
    era: .modern,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.dartFuture,
    title: LocalizedString(en: 'Future', ar: 'المستقبل'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A Dart object representing a value or error that will be available at some point in the future. Futures are used for asynchronous operations.',
        ),
      ],
      ar: [
        StringContent(
          'كائن Dart يمثل قيمة أو خطأ سيكون متاحًا في وقت ما في المستقبل. تُستخدم Futures للعمليات غير المتزامنة.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'States of a Future:',
          value: [
            'Uncompleted - operation still running',
            'Completed with value - operation succeeded',
            'Completed with error - operation failed',
          ],
        ),
        StringContent('Using Futures:'),
        CodeContent(
          'Future<String> fetchData() async {\n'
          '  await Future.delayed(Duration(seconds: 2));\n'
          '  return "Data loaded";\n'
          '}\n\n'
          'void main() async {\n'
          '  String result = await fetchData();\n'
          '  print(result);\n'
          '}',
          codeLanguage: .dart,
        ),
        StringContent('Similar to: Promise in JavaScript, Task in C#'),
      ],
      ar: [
        UnorderedListContent(
          title: 'حالات Future:',
          value: [
            'غير مكتمل - العملية لا تزال قيد التشغيل',
            'مكتمل بقيمة - العملية نجحت',
            'مكتمل بخطأ - العملية فشلت',
          ],
        ),
        StringContent('استخدام Futures:'),
        CodeContent(
          'Future<String> fetchData() async {\n'
          '  await Future.delayed(Duration(seconds: 2));\n'
          '  return "تم تحميل البيانات";\n'
          '}\n\n'
          'void main() async {\n'
          '  String result = await fetchData();\n'
          '  print(result);\n'
          '}',
          codeLanguage: .dart,
        ),
        StringContent('مشابه لـ: Promise في JavaScript، Task في C#'),
      ],
    ),
    type: .concept,
    category: .concurrency,
    languages: [.dart],
    relatedTerms: [TermKeys.concurrencyAsync, TermKeys.dartStream],
    aliases: ['Promise', 'Async result'],
    tags: ['async', 'future', 'promise', 'asynchronous'],
    era: .modern,
    popularityTier: .veryHigh,
  ),

  ProgrammingTerm(
    id: TermKeys.dartStream,
    title: LocalizedString(en: 'Stream', ar: 'التدفق'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A sequence of asynchronous events delivered over time. Unlike Future (single value), Stream can deliver multiple values.',
        ),
      ],
      ar: [
        StringContent(
          'تسلسل من الأحداث غير المتزامنة يتم تسليمها عبر الزمن. على عكس Future (قيمة واحدة)، يمكن لـ Stream تسليم قيم متعددة.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Types:',
          value: [
            'Single-subscription - only one listener allowed',
            'Broadcast - multiple listeners allowed',
          ],
        ),
        UnorderedListContent(
          title: 'Use streams for:',
          value: [
            'User input events (clicks, keyboard)',
            'File I/O - reading files chunk by chunk',
            'Real-time data - WebSocket, sensors',
            'Timer events - periodic updates',
          ],
        ),
        StringContent('Example:'),
        CodeContent(
          'Stream<int> countStream() async* {\n'
          '  for (int i = 1; i <= 5; i++) {\n'
          '    await Future.delayed(Duration(seconds: 1));\n'
          '    yield i;\n'
          '  }\n'
          '}\n\n'
          'await for (int value in countStream()) {\n'
          '  print(value);  // 1, 2, 3, 4, 5 (one per second)\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الأنواع:',
          value: [
            'اشتراك واحد - مستمع واحد فقط مسموح',
            'بث - مستمعون متعددون مسموحون',
          ],
        ),
        UnorderedListContent(
          title: 'استخدم التدفقات لـ:',
          value: [
            'أحداث إدخال المستخدم (نقرات، لوحة المفاتيح)',
            'إدخال/إخراج الملفات - قراءة الملفات جزءًا تلو الآخر',
            'بيانات في الوقت الفعلي - WebSocket، أجهزة الاستشعار',
            'أحداث المؤقت - تحديثات دورية',
          ],
        ),
        StringContent('مثال:'),
        CodeContent(
          'Stream<int> countStream() async* {\n'
          '  for (int i = 1; i <= 5; i++) {\n'
          '    await Future.delayed(Duration(seconds: 1));\n'
          '    yield i;\n'
          '  }\n'
          '}\n\n'
          'await for (int value in countStream()) {\n'
          '  print(value);  // 1، 2، 3، 4، 5 (واحد كل ثانية)\n'
          '}',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .concurrency,
    languages: [.dart],
    relatedTerms: [TermKeys.dartFuture, TermKeys.concurrencyAsync],
    aliases: ['Observable', 'Event stream'],
    tags: ['async', 'stream', 'events', 'reactive'],
    era: .modern,
    popularityTier: .high,
  ),

  ProgrammingTerm(
    id: TermKeys.dartMixin,
    title: LocalizedString(en: 'Mixin', ar: 'المزيج'),
    quickOverview: LocalizedValue(
      en: [
        StringContent(
          'A way to reuse code in multiple class hierarchies without using inheritance. Mixins allow you to add functionality to classes.',
        ),
      ],
      ar: [
        StringContent(
          'طريقة لإعادة استخدام الكود في تسلسلات هرمية متعددة للفئات دون استخدام الوراثة. تسمح لك Mixins بإضافة وظائف للفئات.',
        ),
      ],
    ),
    details: LocalizedValue(
      en: [
        UnorderedListContent(
          title: 'Benefits:',
          value: [
            'Code reuse - share methods across unrelated classes',
            'Multiple "inheritance" - use multiple mixins on one class',
            'Composition over inheritance - more flexible than extending',
          ],
        ),
        StringContent('Example:'),
        CodeContent(
          'mixin Swimmer {\n'
          '  void swim() => print("Swimming");\n'
          '}\n\n'
          'mixin Flyer {\n'
          '  void fly() => print("Flying");\n'
          '}\n\n'
          'class Duck with Swimmer, Flyer {\n'
          '  void quack() => print("Quack!");\n'
          '}\n\n'
          'Duck duck = Duck();\n'
          'duck.swim();  // From Swimmer mixin\n'
          'duck.fly();   // From Flyer mixin\n'
          'duck.quack(); // Own method',
          codeLanguage: .dart,
        ),
      ],
      ar: [
        UnorderedListContent(
          title: 'الفوائد:',
          value: [
            'إعادة استخدام الكود - مشاركة الأساليب عبر فئات غير مرتبطة',
            '"وراثة" متعددة - استخدام mixins متعددة على فئة واحدة',
            'التركيب على الوراثة - أكثر مرونة من التمديد',
          ],
        ),
        StringContent('مثال:'),
        CodeContent(
          'mixin Swimmer {\n'
          '  void swim() => print("سباحة");\n'
          '}\n\n'
          'mixin Flyer {\n'
          '  void fly() => print("طيران");\n'
          '}\n\n'
          'class Duck with Swimmer, Flyer {\n'
          '  void quack() => print("كواك!");\n'
          '}\n\n'
          'Duck duck = Duck();\n'
          'duck.swim();  // من Swimmer mixin\n'
          'duck.fly();   // من Flyer mixin\n'
          'duck.quack(); // أسلوب خاص',
          codeLanguage: .dart,
        ),
      ],
    ),
    type: .concept,
    category: .oop,
    languages: [.dart],
    relatedTerms: [TermKeys.oopInheritance, TermKeys.oopClass],
    aliases: ['Trait', 'Mix-in'],
    tags: ['dart', 'code reuse', 'composition', 'multiple inheritance'],
    era: .modern,
    popularityTier: .high,
  ),
];

final Map<String, ProgrammingTerm> allTerms = {
  for (final t in allTermsList) t.id: t,
};
