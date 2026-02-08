// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'OOP Mastery';

  @override
  String get home => 'Home';

  @override
  String get designPatterns => 'Design Patterns';

  @override
  String get refactoring => 'Refactoring';

  @override
  String get interviewQuestions => 'Interview Questions';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get language => 'Language';

  @override
  String get creationalPatterns => 'Creational Patterns';

  @override
  String get creationalPatternsDesc =>
      'Creational patterns abstract the instantiation process. They help make a system independent of how its objects are created, composed, and represented.';

  @override
  String get factoryMethod => 'Factory Method';

  @override
  String get factoryMethodDesc =>
      'Provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created.';

  @override
  String get abstractFactory => 'Abstract Factory';

  @override
  String get abstractFactoryDesc =>
      'Lets you produce families of related objects without specifying their concrete classes.';

  @override
  String get builder => 'Builder';

  @override
  String get builderDesc =>
      'Lets you construct complex objects step by step. The pattern allows you to produce different types and representations of an object using the same construction code.';

  @override
  String get prototype => 'Prototype';

  @override
  String get prototypeDesc =>
      'Lets you copy existing objects without making your code dependent on their classes.';

  @override
  String get singleton => 'Singleton';

  @override
  String get singletonDesc =>
      'Ensures that a class has only one instance, while providing a global access point to this instance.';

  @override
  String get structuralPatterns => 'Structural Patterns';

  @override
  String get structuralPatternsDesc =>
      'These patterns explain how to assemble objects and classes into larger structures while keeping these structures flexible and efficient.';

  @override
  String get adapter => 'Adapter';

  @override
  String get adapterDesc =>
      'Allows objects with incompatible interfaces to collaborate.';

  @override
  String get bridge => 'Bridge';

  @override
  String get bridgeDesc =>
      'Lets you split a large class or a set of closely related classes into two separate hierarchies—abstraction and implementation—which can be developed independently of each other.';

  @override
  String get composite => 'Composite';

  @override
  String get compositeDesc =>
      'Lets you compose objects into tree structures and then work with these structures as if they were individual objects.';

  @override
  String get decorator => 'Decorator';

  @override
  String get decoratorDesc =>
      'Lets you attach new behaviors to objects by placing these objects inside special wrapper objects that contain the behaviors.';

  @override
  String get facade => 'Facade';

  @override
  String get facadeDesc =>
      'Provides a simplified interface to a library, a framework, or any other complex set of classes.';

  @override
  String get flyweight => 'Flyweight';

  @override
  String get flyweightDesc =>
      'Lets you fit more objects into the available amount of RAM by sharing common parts of state between multiple objects instead of keeping all of the data in each object.';

  @override
  String get proxy => 'Proxy';

  @override
  String get proxyDesc =>
      'Lets you provide a substitute or placeholder for another object. A proxy controls access to the original object, allowing you to perform something either before or after the request gets through to the original object.';

  @override
  String get behavioralPatterns => 'Behavioral Patterns';

  @override
  String get behavioralPatternsDesc =>
      'Behavioral patterns are concerned with algorithms and the assignment of responsibilities between objects.';

  @override
  String get chainOfResponsibility => 'Chain of Responsibility';

  @override
  String get chainOfResponsibilityDesc =>
      'Lets you pass requests along a chain of handlers. Upon receiving a request, each handler decides either to process the request or to pass it to the next handler in the chain.';

  @override
  String get command => 'Command';

  @override
  String get commandDesc =>
      'Turns a request into a stand-alone object that contains all information about the request. This transformation lets you pass requests as a method arguments, delay or queue a request\'s execution, and support undoable operations.';

  @override
  String get iterator => 'Iterator';

  @override
  String get iteratorDesc =>
      'Lets you traverse elements of a collection without exposing its underlying representation (list, stack, tree, etc.).';

  @override
  String get interpreter => 'Interpreter';

  @override
  String get interpreterDesc =>
      'Given a language, defines a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.';

  @override
  String get mediator => 'Mediator';

  @override
  String get mediatorDesc =>
      'Lets you reduce chaotic dependencies between objects. The pattern restricts direct communications between the objects and forces them to collaborate only via a mediator object.';

  @override
  String get memento => 'Memento';

  @override
  String get mementoDesc =>
      'Lets you save and restore the previous state of an object without revealing the details of its implementation.';

  @override
  String get observer => 'Observer';

  @override
  String get observerDesc =>
      'Lets you define a subscription mechanism to notify multiple objects about any events that happen to the object they\'re observing.';

  @override
  String get state => 'State';

  @override
  String get stateDesc =>
      'Lets an object alter its behavior when its internal state changes. It appears as if the object changed its class.';

  @override
  String get strategy => 'Strategy';

  @override
  String get strategyDesc =>
      'Lets you define a family of algorithms, put each of them into a separate class, and make their objects interchangeable.';

  @override
  String get templateMethod => 'Template Method';

  @override
  String get templateMethodDesc =>
      'Defines the skeleton of an algorithm in the superclass but lets subclasses override specific steps of the algorithm without changing its structure.';

  @override
  String get visitor => 'Visitor';

  @override
  String get visitorDesc =>
      'Lets you separate algorithms from the objects on which they operate.';

  @override
  String get refactoringCategories => 'Refactoring Categories';

  @override
  String get composingMethods => 'Composing Methods';

  @override
  String get composingMethodsDesc =>
      'Much of refactoring is devoted to correctly composing methods. In most cases, excessively long methods are the root of all evil.';

  @override
  String get movingFeatures => 'Moving Features';

  @override
  String get movingFeaturesDesc =>
      'These techniques show how to safely move functionality between classes, create new classes, and hide implementation details.';

  @override
  String get organizingData => 'Organizing Data';

  @override
  String get organizingDataDesc =>
      'These techniques help with data handling, replacing primitives with rich class functionality.';

  @override
  String get simplifyingConditionals => 'Simplifying Conditionals';

  @override
  String get simplifyingConditionalsDesc =>
      'Conditionals have a tendency to become more complex in logic over time, and these techniques help combat that.';

  @override
  String get simplifyingMethodCalls => 'Simplifying Method Calls';

  @override
  String get simplifyingMethodCallsDesc =>
      'These techniques make method calls simpler and easier to understand.';

  @override
  String get generalization => 'Generalization';

  @override
  String get generalizationDesc =>
      'Generalization is primarily about moving functionality along the class inheritance hierarchy.';

  @override
  String get notes => 'Notes';

  @override
  String get details => 'Details';

  @override
  String get example => 'Dart Example';

  @override
  String get goodExample => 'Good Example';

  @override
  String get badExample => 'Bad Example';

  @override
  String get seeMore => 'See More';

  @override
  String get reference => 'Reference';

  @override
  String get references => 'References';

  @override
  String get pros => 'Pros';

  @override
  String get cons => 'Cons';

  @override
  String get whenToUse => 'When to Use';

  @override
  String get bestUse => 'Best Use Cases';

  @override
  String get close => 'Close';

  @override
  String get extractMethod => 'Extract Method';

  @override
  String get inlineMethod => 'Inline Method';

  @override
  String get extractVariable => 'Extract Variable';

  @override
  String get moveMethod => 'Move Method';

  @override
  String get moveField => 'Move Field';

  @override
  String get extractClass => 'Extract Class';

  @override
  String get selfEncapsulateField => 'Self Encapsulate Field';

  @override
  String get replaceDataValueWithObject => 'Replace Data Value with Object';

  @override
  String get refactoringTip =>
      'This technique helps simplify code structure and improve maintainability.';

  @override
  String get copied => 'Copied to clipboard!';

  @override
  String get singletonNote =>
      'Singletons should have a private constructor and a static instance accessor.';

  @override
  String get factoryMethodNote =>
      'Avoid \'if-else\' ladders for object creation; use sub-classes to decide the concrete type.';

  @override
  String get builderNote =>
      'Builders solve the \'Telescoping Constructor\' problem and provide readable code.';

  @override
  String get singletonPros =>
      'Controlled access to the sole instance.\nReduced name space (avoiding global variables).\nPermits refinement of operations and representation via subclassing.\nPermits a variable number of instances if logic changes.';

  @override
  String get singletonCons =>
      'Violates Single Responsibility Principle.\nCan mask bad design where components know too much about each other.\nRequires special handling in multi-threaded environments.\nDifficult to unit test due to global state.';

  @override
  String get singletonWhenToUse =>
      'Use when a class should have exactly one instance available to all clients (e.g., a database object or a file system manager).';

  @override
  String get singletonBestUse =>
      'Logging services, database connection pools, configuration managers, or hardware access.';

  @override
  String get factoryMethodPros =>
      'Avoids tight coupling between the creator and the concrete products.\nSingle Responsibility Principle: You can move the product creation code into one place.\nOpen/Closed Principle: You can introduce new product types without breaking client code.';

  @override
  String get factoryMethodCons =>
      'The code may become more complicated since you need to introduce a lot of new subclasses to implement the pattern.';

  @override
  String get factoryMethodWhenToUse =>
      'Use when you don\'t know beforehand the exact types and dependencies of the objects your code should work with.';

  @override
  String get factoryMethodBestUse =>
      'UI frameworks providing hooks for creating different components, or any system where the exact type is determined at runtime.';

  @override
  String get abstractFactoryPros =>
      'Guarantees compatibility of products.\nAvoids tight coupling.\nSingle Responsibility Principle.\nOpen/Closed Principle.';

  @override
  String get abstractFactoryCons =>
      'Code complexity increases with many new interfaces and classes.';

  @override
  String get abstractFactoryWhenToUse =>
      'Use when your code needs to work with various families of related products, but you don\'t want it to depend on the concrete classes of those products.';

  @override
  String get abstractFactoryBestUse =>
      'Cross-platform UI toolkits (Windows/Android/iOS styles), or multiple theme support.';

  @override
  String get builderPros =>
      'Construct objects step-by-step.\nReuse the same construction code for various representations.\nSingle Responsibility Principle (isolated complex construction).';

  @override
  String get builderCons =>
      'Increased overall complexity due to multiple new classes.';

  @override
  String get builderWhenToUse =>
      'Use to get rid of a \'telescoping constructor\' (too many parameters) or when you need different representations of an object.';

  @override
  String get builderBestUse =>
      'Complex configurations, Document builders (HTML/JSON/PDF), or complex data models.';

  @override
  String get prototypePros =>
      'Clone objects without coupling to concrete classes.\nGet rid of repeated initialization code.\nProduce complex objects more conveniently.';

  @override
  String get prototypeCons =>
      'Cloning complex objects with circular references might be tricky.';

  @override
  String get prototypeWhenToUse =>
      'Use when the cost of creating a new object is higher than cloning an existing one.';

  @override
  String get prototypeBestUse =>
      'Game engines (spawning units), Graphics software, or Object caching.';

  @override
  String get adapterPros =>
      'Single Responsibility Principle (separable interface/data conversion).\nOpen/Closed Principle (new adapters without breaking client code).';

  @override
  String get adapterCons => 'Over-engineering (code complexity increases).';

  @override
  String get adapterWhenToUse =>
      'Use when you want to use an existing class, but its interface isn\'t compatible with the rest of your code.';

  @override
  String get adapterBestUse =>
      'Integrating 3rd party libraries, Legacy code migration, or XML/JSON data mapping.';

  @override
  String get bridgePros =>
      'Decouples abstraction from implementation.\nPlatform-independent code.\nOpen/Closed Principle.';

  @override
  String get bridgeCons =>
      'Might make code more complicated in highly cohesive classes.';

  @override
  String get bridgeWhenToUse =>
      'Use when you want to divide and organize a monolithic class that has several variants of some functionality.';

  @override
  String get bridgeBestUse =>
      'GUI frameworks, Cross-platform drivers, or Graphics libraries.';

  @override
  String get compositePros =>
      'Work with complex tree structures conveniently.\nOpen/Closed Principle.';

  @override
  String get compositeCons =>
      'Difficult to provide a common interface for classes whose functionality differs too much.';

  @override
  String get compositeWhenToUse =>
      'Use when you have to implement a tree-like object structure.';

  @override
  String get compositeBestUse =>
      'File systems, UI component hierarchies (widgets), or XML structures.';

  @override
  String get decoratorPros =>
      'Extend object\'s behavior without making a new subclass.\nAdd or remove responsibilities from an object at runtime.\nCombine several behaviors by wrapping an object into multiple decorators.';

  @override
  String get decoratorCons =>
      'Difficult to remove a specific wrapper from the wrappers stack.\nHard to implement a decorator in such a way that its behavior doesn\'t depend on the order in the decorators stack.';

  @override
  String get decoratorWhenToUse =>
      'Use when you need to be able to assign extra behaviors to objects at runtime without breaking the code that uses these objects.';

  @override
  String get decoratorBestUse =>
      'Streams (IO), Notification systems, or UI component wrappers (borders/scrollbars).';

  @override
  String get facadePros =>
      'Isolate your code from the complexity of a subsystem.';

  @override
  String get facadeCons =>
      'A facade can become a god object coupled to all classes of an app.';

  @override
  String get facadeWhenToUse =>
      'Use when you need to have a limited but straightforward interface to a complex subsystem.';

  @override
  String get facadeBestUse =>
      'Complex 3rd party SDKs, Audio/Video processing libraries, or Multi-service API clients.';

  @override
  String get proxyPros =>
      'Control the service object without clients knowing about it.\nManage life cycle of the service object.\nWorks even if the service object isn\'t ready or is not available.';

  @override
  String get proxyCons =>
      'The code may become more complicated since you need to introduce a lot of new classes.\nThe response from the service might be delayed.';

  @override
  String get proxyWhenToUse =>
      'Use for Lazy initialization (virtual proxy), Access control (protection proxy), or Logging requests (logging proxy).';

  @override
  String get proxyBestUse =>
      'Caching, Access Control, Lazy Loading, or Remote Service Proxy.';

  @override
  String get observerPros =>
      'Open/Closed Principle.\nEstablish relations between objects at runtime.';

  @override
  String get observerCons => 'Subscribers are notified in random order.';

  @override
  String get observerWhenToUse =>
      'Use when changes to the state of one object may require changing other objects, and the actual set of objects is unknown beforehand or changes dynamically.';

  @override
  String get observerBestUse =>
      'Event handling systems, UI updates in response to state changes (Streams/Notifiers), or Stock market trackers.';

  @override
  String get strategyPros =>
      'Swap algorithms used inside an object at runtime.\nIsolate implementation details of an algorithm from code that uses it.\nOpen/Closed Principle.';

  @override
  String get strategyCons =>
      'If you only have a couple of algorithms and they rarely change, no real reason to over-complicate the program with new classes.';

  @override
  String get strategyWhenToUse =>
      'Use when you want to use different variants of an algorithm within an object and be able to switch from one algorithm to another during runtime.';

  @override
  String get strategyBestUse =>
      'Payment methods, Sorting algorithms, Route planning, or Compression styles.';

  @override
  String get commandPros =>
      'Single Responsibility Principle.\nOpen/Closed Principle.\nImplement undo/redo.\nImplement deferred execution.';

  @override
  String get commandCons =>
      'Code may become more complicated since you introduce a whole new layer between senders and receivers.';

  @override
  String get commandWhenToUse =>
      'Use when you want to parametrize objects with operations or queue/schedule their execution.';

  @override
  String get commandBestUse =>
      'GUI button actions, Undo/Redo systems, Task queues, or Transaction logs.';

  @override
  String get statePros =>
      'Single Responsibility Principle.\nOpen/Closed Principle.\nSimplify state-dependent code (eliminate massive switch/if-else).';

  @override
  String get stateCons =>
      'Applying the pattern can be overkill if a state machine has only a few states or rarely changes.';

  @override
  String get stateWhenToUse =>
      'Use when you have an object that behaves differently depending on its current state, the number of states is enormous, and the state-specific code changes frequently.';

  @override
  String get stateBestUse =>
      'Vending machines, Game character behaviors, Order processing, or Media players.';

  @override
  String get chainOfResponsibilityPros =>
      'You can control the order of request handling.\nSingle Responsibility Principle.\nOpen/Closed Principle.';

  @override
  String get chainOfResponsibilityCons => 'Some requests may end up unhandled.';

  @override
  String get chainOfResponsibilityWhenToUse =>
      'Use when your program is expected to process different kinds of requests in various ways, but the exact types of requests and their sequences are unknown beforehand.';

  @override
  String get chainOfResponsibilityBestUse =>
      'Middleware in web frameworks, event bubbling in UI, or sequential validation logic.';

  @override
  String get iteratorPros =>
      'Single Responsibility Principle.\nOpen/Closed Principle.\nYou can delay an iteration and continue it when needed.';

  @override
  String get iteratorCons =>
      'Applying the pattern can be an overkill if your app only works with simple collections.';

  @override
  String get iteratorWhenToUse =>
      'Use when your collection has a complex data structure under the hood, but you want to hide its complexity from clients.';

  @override
  String get iteratorBestUse =>
      'Custom collection types, directory traversal, or complex data streaming.';

  @override
  String get interpreterPros =>
      'Easy to change and extend the grammar.\nImplementing the grammar is straightforward.';

  @override
  String get interpreterCons =>
      'Maintenance becomes difficult as the number of rules in the grammar increases.';

  @override
  String get interpreterWhenToUse =>
      'Use when you have a simple grammar to interpret and you can represent statements in the language as abstract syntax trees.';

  @override
  String get interpreterBestUse =>
      'SQL parsing, regular expressions, or mathematical expression evaluators.';

  @override
  String get mediatorPros =>
      'Single Responsibility Principle.\nOpen/Closed Principle.\nReduces coupling between various components of a program.';

  @override
  String get mediatorCons =>
      'Over time a mediator can evolve into a God Object.';

  @override
  String get mediatorWhenToUse =>
      'Use when it\'s hard to change some of the classes because they are tightly coupled to a bunch of other classes.';

  @override
  String get mediatorBestUse =>
      'Chat application rooms, UI dialog coordination, or airline traffic control systems.';

  @override
  String get mementoPros =>
      'You can produce snapshots of the object\'s state without violating its encapsulation.\nYou can simplify the originator\'s code.';

  @override
  String get mementoCons =>
      'The app might consume lots of RAM if clients create mementos too often.';

  @override
  String get mementoWhenToUse =>
      'Use when you want to produce snapshots of the object\'s state to be able to restore a previous state of the object.';

  @override
  String get mementoBestUse =>
      'Undo/Redo systems, game checkpoints, or configuration rollbacks.';

  @override
  String get templateMethodPros =>
      'You can let clients override only certain parts of a large algorithm.\nYou can pull the duplicate code into a superclass.';

  @override
  String get templateMethodCons =>
      'Some clients may be limited by the provided skeleton of an algorithm.';

  @override
  String get templateMethodWhenToUse =>
      'Use when you want to let clients extend only particular steps of an algorithm, but not the whole algorithm or its structure.';

  @override
  String get templateMethodBestUse =>
      'Data processing frameworks, build scripts, or standard algorithm hooks.';

  @override
  String get visitorPros =>
      'Open/Closed Principle.\nSingle Responsibility Principle.\nA visitor object can accumulate some useful information while working with various objects.';

  @override
  String get visitorCons =>
      'You need to update all visitors each time a class gets added to or removed from the element hierarchy.';

  @override
  String get visitorWhenToUse =>
      'Use when you need to perform an operation on all elements of a complex object structure (e.g., an object tree).';

  @override
  String get visitorBestUse =>
      'Document exporting, code analysis tools (AST visitors), or operations on heterogeneous collections.';

  @override
  String get flyweightPros =>
      'You can save lots of RAM, assuming your app has tons of similar objects.';

  @override
  String get flyweightCons =>
      'You might be exchanging RAM for CPU cycles when some of the context data needs to be recalculated.\nThe code becomes much more complicated.';

  @override
  String get flyweightWhenToUse =>
      'Use the Flyweight pattern only when your program must support a huge number of objects which barely fit into available RAM.';

  @override
  String get flyweightBestUse =>
      'Particle systems (smoke, fire), map markers in large datasets, or text editors handling millions of characters.';

  @override
  String get answer => 'Answer';

  @override
  String get basicLevel => 'Basic';

  @override
  String get basicLevelDesc =>
      'Fundamental concepts every Flutter developer should know.';

  @override
  String get intermediateLevel => 'Intermediate';

  @override
  String get intermediateLevelDesc =>
      'Deeper understanding of Flutter and Dart features.';

  @override
  String get advancedLevel => 'Advanced';

  @override
  String get advancedLevelDesc => 'Expert-level topics for senior developers.';

  @override
  String get qWhatIsFlutter => 'What is Flutter?';

  @override
  String get qWhatIsFlutterNotes =>
      'Flutter is an open-source UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase. It uses the Dart programming language and provides a rich set of customizable widgets and tools for fast development.';

  @override
  String get qWhatIsFlutterPros =>
      'High performance due to native compilation.\nHot reload for fast development.\nSingle codebase for multiple platforms.';

  @override
  String get qWhatIsFlutterCons =>
      'Larger app size compared to some alternatives.\nFewer third-party libraries.\nLearning Dart may be challenging for new developers.';

  @override
  String get qWhatIsFlutterBestUse =>
      'Ideal for building cross-platform mobile apps with beautiful custom UI and fast development cycles.';

  @override
  String get qWhatIsDart => 'What is Dart, and why is it used in Flutter?';

  @override
  String get qWhatIsDartNotes =>
      'Dart is a modern object-oriented programming language optimized for building UI, used to develop Flutter applications. It compiles to native code for high performance and has features like sound null-safety and a rich standard library.';

  @override
  String get qWhatIsDartPros =>
      'Easy to learn for developers familiar with C-style syntax.\nSupports both AOT and JIT compilation.\nStrong null-safety features.';

  @override
  String get qWhatIsDartCons =>
      'Smaller ecosystem compared to JavaScript.\nPrimarily used with Flutter, limiting server-side reuse.';

  @override
  String get qWhatIsDartBestUse =>
      'Best used for Flutter app development and client-side applications where performance and developer productivity matter.';

  @override
  String get qWhatAreWidgets => 'What are Widgets in Flutter?';

  @override
  String get qWhatAreWidgetsNotes =>
      'Widgets are the basic building blocks of a Flutter app\'s UI. Everything you see on screen in Flutter is a Widget, which can be either stateful or stateless. Widgets describe how to display elements on the screen in a declarative manner.';

  @override
  String get qWhatAreWidgetsPros =>
      'Highly customizable and composable.\nYou can build complex UIs by combining simpler widgets.\nFlutter\'s hot reload works well with its widget tree.';

  @override
  String get qWhatAreWidgetsCons =>
      'Deep widget hierarchies can become complex.\nRequires understanding of widget lifecycle for effective state management.';

  @override
  String get qWhatAreWidgetsBestUse =>
      'Use widgets for all UI components; take advantage of stateless widgets for static parts and stateful widgets for interactive parts.';

  @override
  String get qStatelessVsStateful =>
      'What is the difference between StatelessWidget and StatefulWidget?';

  @override
  String get qStatelessVsStatefulNotes =>
      'A StatelessWidget cannot change its state once built; it\'s immutable. A StatefulWidget has mutable state (via a State object) that can change over time, triggering rebuilds. StatelessWidget is simpler and more performant for static content. StatefulWidget allows dynamic and interactive UI.';

  @override
  String get qStatelessVsStatefulPros =>
      'StatelessWidget is simpler and more performant for static content.\nStatefulWidget allows dynamic and interactive UI.';

  @override
  String get qStatelessVsStatefulCons =>
      'StatelessWidget can\'t update UI based on changes.\nStatefulWidget introduces overhead of state management and rebuilds.';

  @override
  String get qStatelessVsStatefulBestUse =>
      'Use StatelessWidget for UI that doesn\'t change (e.g., static text), and StatefulWidget when UI needs to update (e.g., forms, animations).';

  @override
  String get qWhatIsKey => 'What is a Key in Flutter and why is it used?';

  @override
  String get qWhatIsKeyNotes =>
      'A Key is an identifier for Widgets, Elements, and SemanticsNodes. Keys preserve state and control widget identity when the widget tree changes (e.g., reordering). Using keys helps Flutter match widgets between builds.';

  @override
  String get qWhatIsKeyPros =>
      'Using keys (especially UniqueKey or ValueKey) helps avoid unexpected behavior when reordering or dynamically changing lists of widgets.';

  @override
  String get qWhatIsKeyCons =>
      'Often not needed unless you manage dynamic widget lists.\nOverusing keys can complicate the code.';

  @override
  String get qWhatIsKeyBestUse =>
      'Use keys when you have multiple widgets of the same type and need to preserve their state when they move or change position.';

  @override
  String get qHotReloadVsRestart =>
      'Explain the difference between Hot Reload and Hot Restart in Flutter.';

  @override
  String get qHotReloadVsRestartNotes =>
      'Hot Reload injects updated source code into a running Dart VM, preserving the app state and making UI changes visible almost instantly. Hot Restart completely restarts the app, rebuilding the widget tree and reinitializing state, which is slower than hot reload.';

  @override
  String get qHotReloadVsRestartPros =>
      'Hot Reload greatly speeds up UI development by preserving state.\nHot Restart ensures full reset, useful when major changes require clean state.';

  @override
  String get qHotReloadVsRestartCons =>
      'Hot Reload may not reflect changes outside widget code or initial setup.\nHot Restart is slower and loses the current state.';

  @override
  String get qHotReloadVsRestartBestUse =>
      'Use Hot Reload for quick iterations during UI development; use Hot Restart when you need to apply changes that require restarting the app.';

  @override
  String get qMaterialAppScaffold =>
      'What is the purpose of MaterialApp and Scaffold widgets?';

  @override
  String get qMaterialAppScaffoldNotes =>
      'MaterialApp is a convenience widget that wraps a number of widgets commonly required for Material Design applications, such as themes and navigation. Scaffold provides a framework for implementing the basic visual layout structure of Material Design (app bars, drawers, bottom sheets, etc.).';

  @override
  String get qMaterialAppScaffoldPros =>
      'MaterialApp handles app-level configurations (theme, locale, navigator).\nScaffold provides standard UI elements out of the box.';

  @override
  String get qMaterialAppScaffoldCons =>
      'They impose Material Design.\nFor a custom look or non-Material design, one might use WidgetsApp or a custom layout.';

  @override
  String get qMaterialAppScaffoldBestUse =>
      'Use MaterialApp and Scaffold when developing a Flutter app following Material Design guidelines.';

  @override
  String get qWidgetLifecycle =>
      'What is a Flutter Widget\'s lifecycle (StatefulWidget lifecycle)?';

  @override
  String get qWidgetLifecycleNotes =>
      'A StatefulWidget has a State object whose lifecycle includes initState(), didChangeDependencies(), build(), setState(), deactivate(), dispose(), and reassemble (during hot reload). initState is called once when the widget is inserted into the widget tree; build() is called often to redraw; dispose() is called when the widget is removed.';

  @override
  String get qWidgetLifecyclePros =>
      'Understanding lifecycle is crucial for resource management (e.g., initializing and disposing controllers) and for controlling rebuilds.';

  @override
  String get qWidgetLifecycleCons =>
      'Managing complex lifecycles can be error-prone.\nForgetting to dispose can cause memory leaks.';

  @override
  String get qWidgetLifecycleBestUse =>
      'Use initState for one-time initialization, build to construct the UI, and dispose to clean up resources like animations or streams.';

  @override
  String get qWhatAreMixins => 'What are mixins in Dart and how are they used?';

  @override
  String get qWhatAreMixinsNotes =>
      'Mixins allow a class to use methods and properties from multiple classes without multiple inheritance. In Dart, you define a mixin with the \'mixin\' keyword and then use it with the \'with\' keyword in a class declaration. They are useful for code reuse.';

  @override
  String get qWhatAreMixinsPros =>
      'Provide a way to add common functionality to multiple classes without forcing an inheritance relationship.\nThey keep classes more modular.';

  @override
  String get qWhatAreMixinsCons =>
      'Overusing mixins can lead to complex hierarchies and unexpected behavior if many mixins modify similar properties.';

  @override
  String get qWhatAreMixinsBestUse =>
      'Use mixins when you want to share functionality (like logging, validation, etc.) across different classes without creating a base class.';

  @override
  String get qExtensionMethods => 'What are extension methods in Dart?';

  @override
  String get qExtensionMethodsNotes =>
      'Extension methods allow you to add new methods (or getters/setters) to existing libraries or classes without modifying them. Defined using the \'extension\' keyword, they are a syntactic convenience to extend functionality.';

  @override
  String get qExtensionMethodsPros =>
      'Enable cleaner code by extending functionality of built-in types or classes (e.g., adding utility methods to String).';

  @override
  String get qExtensionMethodsCons =>
      'They can make code harder to discover, as methods are not visible on the original class definition.';

  @override
  String get qExtensionMethodsBestUse =>
      'Use extension methods to add helper functions to types in your project without creating utility classes.';

  @override
  String get qListsSetsMaps =>
      'What are Lists, Sets, and Maps in Dart and when to use each?';

  @override
  String get qListsSetsMapsNotes =>
      'List is an ordered collection allowing duplicates; use when order matters. Set is an unordered collection of unique items; use when you need uniqueness. Map is a key-value store; use when you need to associate values with keys for fast lookup.';

  @override
  String get qListsSetsMapsProsPros =>
      'Lists allow indexed access and ordering.\nSets ensure no duplicates and provide fast membership checks.\nMaps provide fast key-based lookup.';

  @override
  String get qListsSetsMapsProsCons =>
      'Lists may be inefficient if you need to enforce uniqueness.\nSets do not maintain insertion order.\nMaps use more memory per entry than a simple list.';

  @override
  String get qListsSetsMapsProsBestUse =>
      'Use List for ordered data sequences, Set for unique collections, and Map for key-value associations.';

  @override
  String get qSolidPrinciples =>
      'What are the SOLID principles and how do they apply in Flutter?';

  @override
  String get qSolidPrinciplesNotes =>
      'SOLID refers to five principles of object-oriented design: Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, and Dependency Inversion. In Flutter, keep widgets/controllers with a single responsibility, use abstractions for dependencies, and make classes open for extension but closed for modification.';

  @override
  String get qSolidPrinciplesPros =>
      'Following SOLID makes code more maintainable, testable, and extensible.\nFor Flutter, it encourages clean separation of UI and logic.';

  @override
  String get qSolidPrinciplesCons =>
      'Strict adherence can lead to more abstraction and boilerplate.\nIt may complicate simple projects if overdone.';

  @override
  String get qSolidPrinciplesBestUse =>
      'Use SOLID to structure larger Flutter apps; start simple but refactor towards SOLID as complexity grows.';

  @override
  String get qBlocPattern => 'What is the BLoC pattern in Flutter?';

  @override
  String get qBlocPatternNotes =>
      'BLoC (Business Logic Component) is an architectural pattern that separates business logic from UI by using Streams. BLoC exposes streams of data, and UI widgets listen to them. This makes the code more testable and reusable.';

  @override
  String get qBlocPatternPros =>
      'Promotes separation of concerns and testability.\nWorks well with reactive programming.\nSimplifies state management for complex apps.';

  @override
  String get qBlocPatternCons =>
      'Adds boilerplate (stream controllers, sinks, etc.).\nCan be overkill for simple apps.\nLearning curve is higher than simple setState.';

  @override
  String get qBlocPatternBestUse =>
      'Use BLoC for medium to large apps where separation of logic is beneficial. For smaller apps, simpler methods may suffice.';

  @override
  String get qProviderVsBloc =>
      'What is Provider in Flutter and how does it differ from BLoC?';

  @override
  String get qProviderVsBlocNotes =>
      'Provider is a wrapper around InheritedWidget that makes state management easier by providing and accessing state objects. Unlike BLoC (which uses Streams), Provider often uses ChangeNotifier or simple objects. Provider simplifies passing data down the widget tree.';

  @override
  String get qProviderVsBlocPros =>
      'Lightweight and easy to use.\nLess boilerplate than BLoC.\nWell-integrated with Flutter.';

  @override
  String get qProviderVsBlocCons =>
      'Does not enforce a strict pattern, which can lead to scattered state logic if not organized.\nLess formal separation than BLoC.';

  @override
  String get qProviderVsBlocBestUse =>
      'Use Provider for simpler state management needs or smaller apps. It integrates well with Flutter and is easier to start with than BLoC.';

  @override
  String get qFutureVsStream =>
      'What is the difference between Future and Stream in Dart?';

  @override
  String get qFutureVsStreamNotes =>
      'A Future represents a single asynchronous computation that either completes with a value or an error. A Stream represents a sequence of asynchronous events or data over time. FutureBuilder is used for one-time async results, StreamBuilder for ongoing data streams.';

  @override
  String get qFutureVsStreamPros =>
      'Use Future for single HTTP requests or quick async tasks.\nUse Stream for events like WebSocket messages, sensor data, or periodic updates.';

  @override
  String get qFutureVsStreamCons =>
      'Future cannot handle multiple values or continuous updates.\nStreams introduce more complexity (listeners, cancellations).';

  @override
  String get qFutureVsStreamBestUse =>
      'Use Future when expecting a single result. Use Stream when listening for multiple results or changes over time.';

  @override
  String get qNavigationPushReplace =>
      'How do you navigate between screens in Flutter? (push, pushReplacement)';

  @override
  String get qNavigationPushReplaceNotes =>
      'Navigation in Flutter uses the Navigator widget. Navigator.push adds a route to the stack (user can press back to return). Navigator.pushReplacement replaces the current route with a new one, removing the previous from the stack.';

  @override
  String get qNavigationPushReplacePros =>
      'push keeps the previous screen in memory (user can go back).\npushReplacement removes it (suitable for login screens or flows where going back is not needed).';

  @override
  String get qNavigationPushReplaceCons =>
      'push can accumulate many routes if not managed (memory).\npushReplacement prevents back navigation but loses previous screen state.';

  @override
  String get qNavigationPushReplaceBestUse =>
      'Use push for normal forward navigation. Use pushReplacement for replacing screens permanently (e.g., after login or splash screen).';

  @override
  String get qNavigator1Vs2 =>
      'What is the difference between Navigator 1.0 and Navigator 2.0?';

  @override
  String get qNavigator1Vs2Notes =>
      'Navigator 1.0 is the classic imperative API (push/pop by widget), while Navigator 2.0 is a declarative, URL-based API with Router and RouteInformationParser. Navigator 2.0 offers more control over browser URL and deep linking.';

  @override
  String get qNavigator1Vs2Pros =>
      'Navigator 2.0 enables web and more complex navigation patterns (deep linking).';

  @override
  String get qNavigator1Vs2Cons =>
      'Navigator 2.0 has a steeper learning curve and more code overhead.\nFor simple apps, Navigator 1.0 is easier to use.';

  @override
  String get qNavigator1Vs2BestUse =>
      'Use Navigator 2.0 for web apps or apps requiring deep linking and custom routing behavior. For basic navigation, 1.0 is sufficient.';

  @override
  String get qBuildContext =>
      'What is Flutter\'s build() method context parameter?';

  @override
  String get qBuildContextNotes =>
      'BuildContext is an object which represents the location of a widget in the widget tree. It is passed to the build method and can be used to access theme data, localization, and to find ancestor widgets in the tree.';

  @override
  String get qBuildContextPros =>
      'Allows widgets to access inherited widgets like Theme or MediaQuery.\nEssential for widget communication.';

  @override
  String get qBuildContextCons =>
      'Misusing context (e.g., using it before initState or in async) can lead to errors.';

  @override
  String get qBuildContextBestUse =>
      'Use context inside build() to obtain theme or other inherited data, or Navigator for navigation.';

  @override
  String get qWhatIsIsolate => 'What is an Isolate in Dart and how is it used?';

  @override
  String get qWhatIsIsolateNotes =>
      'An Isolate is a separate thread of execution that doesn\'t share memory with the main isolate. It has its own memory heap. Communication is done via message passing (SendPort/ReceivePort). Use isolates for CPU-intensive tasks to avoid blocking the main UI thread.';

  @override
  String get qWhatIsIsolatePros =>
      'Enables true parallel computation in Dart without shared-memory concurrency bugs.\nImproves performance for heavy tasks.';

  @override
  String get qWhatIsIsolateCons =>
      'Communication via message passing can be complex and slower.\nStarting an isolate has overhead; not suitable for small tasks.';

  @override
  String get qWhatIsIsolateBestUse =>
      'Use isolates for expensive computations (image processing, large computations) off the main thread. For most UI tasks, use async/await instead.';

  @override
  String get qFutureBuilderStreamBuilder =>
      'What are FutureBuilder and StreamBuilder used for in Flutter?';

  @override
  String get qFutureBuilderStreamBuilderNotes =>
      'FutureBuilder is a widget that builds itself based on the latest snapshot of interaction with a Future. StreamBuilder similarly rebuilds when new Stream events arrive. They simplify handling of asynchronous data in the UI without manual listeners.';

  @override
  String get qFutureBuilderStreamBuilderPros =>
      'Makes it easy to update UI based on async results or stream data.\nHandles connection states and snapshots automatically.';

  @override
  String get qFutureBuilderStreamBuilderCons =>
      'Can lead to rebuilds on every event.\nNeed to manage performance if streams are frequent.';

  @override
  String get qFutureBuilderStreamBuilderBestUse =>
      'Use FutureBuilder for one-time async calls (like HTTP requests) and StreamBuilder for continuous data (like realtime updates or web sockets).';

  @override
  String get qConstructorFactory =>
      'What is a Constructor in Dart and what are factory constructors?';

  @override
  String get qConstructorFactoryNotes =>
      'A constructor in Dart is a special method to create objects of a class. A factory constructor is a special type of constructor that can return an existing instance or a subclass. It\'s declared with the \'factory\' keyword. Useful for singleton or cache implementations.';

  @override
  String get qConstructorFactoryPros =>
      'Factory constructors allow control over instance creation (e.g., implementing singletons or caches).\nCan return different subtypes.';

  @override
  String get qConstructorFactoryCons =>
      'Factory constructors cannot access \'this\' and don\'t automatically create a new instance.\nThey add complexity compared to a normal constructor.';

  @override
  String get qConstructorFactoryBestUse =>
      'Use factory constructors for patterns like singleton or when you need custom logic to decide which instance to return.';

  @override
  String get qSingletonPattern =>
      'What is a Singleton pattern and how can you implement it in Dart?';

  @override
  String get qSingletonPatternNotes =>
      'Singleton ensures a class has only one instance and provides a global access point. In Dart, you can implement a singleton by using a private constructor and a static instance. Useful for caches or shared resources.';

  @override
  String get qSingletonPatternPros =>
      'Ensures a single shared instance across the app (useful for caches, shared resources).';

  @override
  String get qSingletonPatternCons =>
      'Global state can make testing harder and lead to hidden dependencies.';

  @override
  String get qSingletonPatternBestUse =>
      'Use singleton for classes that manage global state or resources (e.g., a settings manager or network client).';

  @override
  String get qFlutterPerformance =>
      'How do you optimize Flutter application performance?';

  @override
  String get qFlutterPerformanceNotes =>
      'Common Flutter performance optimizations include: using const constructors to avoid rebuilds, splitting widgets to reduce rebuild scope, using efficient data structures, minimizing widget layers (RepaintBoundary), and caching images or data. Avoid large asset sizes and excessive rebuilds.';

  @override
  String get qFlutterPerformancePros =>
      'Applying these techniques can significantly improve frame rates and responsiveness.';

  @override
  String get qFlutterPerformanceCons =>
      'Over-optimizing early can complicate code.\nFocus on bottlenecks identified by profiling.';

  @override
  String get qFlutterPerformanceBestUse =>
      'Use performance profiling (DevTools) to find bottlenecks. Apply optimizations like const constructors, efficient layout, and offloading work to isolates as needed.';

  @override
  String get qRenderingEngine =>
      'What is Flutter\'s rendering engine and how does it work (e.g., Skia, Impeller)?';

  @override
  String get qRenderingEngineNotes =>
      'Flutter\'s default rendering engine is Skia, a C++ based 2D graphics library. The newer Impeller engine improves performance and reduces graphical issues on some platforms. These engines compile Flutter\'s UI to native graphics commands on each platform.';

  @override
  String get qRenderingEnginePros =>
      'Skia provides high-quality, fast rendering.\nImpeller further optimizes GPU use and predictability.';

  @override
  String get qRenderingEngineCons =>
      'Engine details are mostly abstracted away.\nDevelopers should be aware for debugging only.\nImpeller is still maturing on some platforms.';

  @override
  String get qRenderingEngineBestUse =>
      'Benefit from engine improvements via Flutter upgrades. For advanced needs (e.g., custom shaders), learn how to use the appropriate engine.';

  @override
  String get qFlutterVsReactNative =>
      'Compare Flutter with React Native: what are the pros and cons?';

  @override
  String get qFlutterVsReactNativeNotes =>
      'Flutter and React Native are both cross-platform frameworks. Flutter compiles to native ARM code and has its own rendering, offering high performance. React Native uses a JavaScript bridge to native components, which can be slower. Flutter\'s UI is highly customizable, while React Native uses native widgets with less flexibility.';

  @override
  String get qFlutterVsReactNativePros =>
      'Flutter: high performance, full UI control, one codebase.\nReact Native: larger library ecosystem, JavaScript familiarity for web developers.';

  @override
  String get qFlutterVsReactNativeCons =>
      'Flutter: larger app size, Dart is less known, fewer third-party packages.\nReact Native: performance overhead from JS bridge, UI consistency issues.';

  @override
  String get qFlutterVsReactNativeBestUse =>
      'Use Flutter when performance and custom UI are top priorities. Use React Native if leveraging existing JavaScript code or ecosystem matters more.';

  @override
  String get qInheritanceVsComposition =>
      'Explain inheritance and composition in Dart.';

  @override
  String get qInheritanceVsCompositionNotes =>
      'Inheritance is when a class extends another class, inheriting its properties and methods (\"is-a\" relationship). Composition is when a class includes instances of other classes as fields (\"has-a\" relationship). Composition is often preferred for flexibility.';

  @override
  String get qInheritanceVsCompositionPros =>
      'Inheritance makes code reuse easy for closely related classes.\nComposition provides more flexibility and looser coupling.';

  @override
  String get qInheritanceVsCompositionCons =>
      'Inheritance can lead to rigid hierarchies and tight coupling.\nComposition can lead to more boilerplate but is more adaptable.';

  @override
  String get qInheritanceVsCompositionBestUse =>
      'Use inheritance when classes have clear hierarchy and share behavior. Use composition to assemble behavior from multiple classes for flexibility.';

  @override
  String get qWhatIsPolymorphism =>
      'What is polymorphism in object-oriented programming?';

  @override
  String get qWhatIsPolymorphismNotes =>
      'Polymorphism means \"many forms\". In Dart, it allows treating objects of different classes through a common interface (e.g., methods overridden in subclasses). A function can accept a base class type and operate on any subclass instance.';

  @override
  String get qWhatIsPolymorphismPros =>
      'Makes code more flexible and reusable by programming to an interface or superclass rather than concrete classes.';

  @override
  String get qWhatIsPolymorphismCons =>
      'May make code harder to understand if overused, as the actual object type is less obvious.';

  @override
  String get qWhatIsPolymorphismBestUse =>
      'Use polymorphism when you want to use a common interface (abstract class or base class) for different concrete implementations.';

  @override
  String get search => 'Search questions...';

  @override
  String get noResults => 'No results found';

  @override
  String get all => 'All';

  @override
  String get expertLevel => 'Expert';

  @override
  String get codeExample => 'Code Example';
}
