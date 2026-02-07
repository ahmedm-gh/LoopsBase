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
}
