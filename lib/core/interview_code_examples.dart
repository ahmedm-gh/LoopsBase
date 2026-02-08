/// Interview Questions - Code Examples
/// Extracted from extra_questions.json, stored as raw strings
library;

abstract class InterviewCodeExamples {
  // StatelessWidget vs StatefulWidget
  static const statelessVsStateful = r'''
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $counter'),
        ElevatedButton(
          onPressed: () { setState(() { counter++; }); },
          child: Text('Increment'),
        ),
      ],
    );
  }
}
''';

  // Mixins example
  static const mixinsExample = r'''
mixin Logger {
  void log(String message) {
    print('LOG: $message');
  }
}

class MyClass with Logger {
  void doSomething() {
    log('Doing something!');
  }
}
''';

  // Extension methods example
  static const extensionMethodsExample = r'''
extension NumberParsing on String {
  int toIntOrZero() {
    return int.tryParse(this) ?? 0;
  }
}

void example() {
  String s = '123';
  int x = s.toIntOrZero(); // 123
}
''';

  // Future vs Stream example
  static const futureVsStreamExample = r'''
// Future example
Future<String> fetchUserOrder() async {
  // simulate network delay
  await Future.delayed(Duration(seconds: 2));
  return 'Large Latte';
}

// Stream example
Stream<int> countStream() async* {
  for (int i = 1; i <= 3; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
''';

  // Factory constructor example
  static const factoryConstructorExample = r'''
class Point {
  final int x, y;
  Point(this.x, this.y);

  factory Point.origin() {
    return Point(0, 0);
  }
}
''';

  // Singleton pattern example
  static const singletonExample = r'''
class Singleton {
  static final Singleton _instance = Singleton._internal();
  
  factory Singleton() => _instance;
  
  Singleton._internal();
}
''';

  /// Returns the code example for a given question key
  static String? getCode(String questionKey) {
    return switch (questionKey) {
      "statelessVsStateful" => statelessVsStateful,
      "whatAreMixins" => mixinsExample,
      "extensionMethods" => extensionMethodsExample,
      "futureVsStream" => futureVsStreamExample,
      "constructorFactory" => factoryConstructorExample,
      "singletonPattern" => singletonExample,
      _ => null,
    };
  }
}
