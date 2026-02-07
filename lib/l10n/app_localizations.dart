import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'OOP Mastery'**
  String get appTitle;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @designPatterns.
  ///
  /// In en, this message translates to:
  /// **'Design Patterns'**
  String get designPatterns;

  /// No description provided for @refactoring.
  ///
  /// In en, this message translates to:
  /// **'Refactoring'**
  String get refactoring;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get lightMode;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @creationalPatterns.
  ///
  /// In en, this message translates to:
  /// **'Creational Patterns'**
  String get creationalPatterns;

  /// No description provided for @creationalPatternsDesc.
  ///
  /// In en, this message translates to:
  /// **'Creational patterns abstract the instantiation process. They help make a system independent of how its objects are created, composed, and represented.'**
  String get creationalPatternsDesc;

  /// No description provided for @factoryMethod.
  ///
  /// In en, this message translates to:
  /// **'Factory Method'**
  String get factoryMethod;

  /// No description provided for @factoryMethodDesc.
  ///
  /// In en, this message translates to:
  /// **'Provides an interface for creating objects in a superclass, but allows subclasses to alter the type of objects that will be created.'**
  String get factoryMethodDesc;

  /// No description provided for @abstractFactory.
  ///
  /// In en, this message translates to:
  /// **'Abstract Factory'**
  String get abstractFactory;

  /// No description provided for @abstractFactoryDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you produce families of related objects without specifying their concrete classes.'**
  String get abstractFactoryDesc;

  /// No description provided for @builder.
  ///
  /// In en, this message translates to:
  /// **'Builder'**
  String get builder;

  /// No description provided for @builderDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you construct complex objects step by step. The pattern allows you to produce different types and representations of an object using the same construction code.'**
  String get builderDesc;

  /// No description provided for @prototype.
  ///
  /// In en, this message translates to:
  /// **'Prototype'**
  String get prototype;

  /// No description provided for @prototypeDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you copy existing objects without making your code dependent on their classes.'**
  String get prototypeDesc;

  /// No description provided for @singleton.
  ///
  /// In en, this message translates to:
  /// **'Singleton'**
  String get singleton;

  /// No description provided for @singletonDesc.
  ///
  /// In en, this message translates to:
  /// **'Ensures that a class has only one instance, while providing a global access point to this instance.'**
  String get singletonDesc;

  /// No description provided for @structuralPatterns.
  ///
  /// In en, this message translates to:
  /// **'Structural Patterns'**
  String get structuralPatterns;

  /// No description provided for @structuralPatternsDesc.
  ///
  /// In en, this message translates to:
  /// **'These patterns explain how to assemble objects and classes into larger structures while keeping these structures flexible and efficient.'**
  String get structuralPatternsDesc;

  /// No description provided for @adapter.
  ///
  /// In en, this message translates to:
  /// **'Adapter'**
  String get adapter;

  /// No description provided for @adapterDesc.
  ///
  /// In en, this message translates to:
  /// **'Allows objects with incompatible interfaces to collaborate.'**
  String get adapterDesc;

  /// No description provided for @bridge.
  ///
  /// In en, this message translates to:
  /// **'Bridge'**
  String get bridge;

  /// No description provided for @bridgeDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you split a large class or a set of closely related classes into two separate hierarchies—abstraction and implementation—which can be developed independently of each other.'**
  String get bridgeDesc;

  /// No description provided for @composite.
  ///
  /// In en, this message translates to:
  /// **'Composite'**
  String get composite;

  /// No description provided for @compositeDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you compose objects into tree structures and then work with these structures as if they were individual objects.'**
  String get compositeDesc;

  /// No description provided for @decorator.
  ///
  /// In en, this message translates to:
  /// **'Decorator'**
  String get decorator;

  /// No description provided for @decoratorDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you attach new behaviors to objects by placing these objects inside special wrapper objects that contain the behaviors.'**
  String get decoratorDesc;

  /// No description provided for @facade.
  ///
  /// In en, this message translates to:
  /// **'Facade'**
  String get facade;

  /// No description provided for @facadeDesc.
  ///
  /// In en, this message translates to:
  /// **'Provides a simplified interface to a library, a framework, or any other complex set of classes.'**
  String get facadeDesc;

  /// No description provided for @flyweight.
  ///
  /// In en, this message translates to:
  /// **'Flyweight'**
  String get flyweight;

  /// No description provided for @flyweightDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you fit more objects into the available amount of RAM by sharing common parts of state between multiple objects instead of keeping all of the data in each object.'**
  String get flyweightDesc;

  /// No description provided for @proxy.
  ///
  /// In en, this message translates to:
  /// **'Proxy'**
  String get proxy;

  /// No description provided for @proxyDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you provide a substitute or placeholder for another object. A proxy controls access to the original object, allowing you to perform something either before or after the request gets through to the original object.'**
  String get proxyDesc;

  /// No description provided for @behavioralPatterns.
  ///
  /// In en, this message translates to:
  /// **'Behavioral Patterns'**
  String get behavioralPatterns;

  /// No description provided for @behavioralPatternsDesc.
  ///
  /// In en, this message translates to:
  /// **'Behavioral patterns are concerned with algorithms and the assignment of responsibilities between objects.'**
  String get behavioralPatternsDesc;

  /// No description provided for @chainOfResponsibility.
  ///
  /// In en, this message translates to:
  /// **'Chain of Responsibility'**
  String get chainOfResponsibility;

  /// No description provided for @chainOfResponsibilityDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you pass requests along a chain of handlers. Upon receiving a request, each handler decides either to process the request or to pass it to the next handler in the chain.'**
  String get chainOfResponsibilityDesc;

  /// No description provided for @command.
  ///
  /// In en, this message translates to:
  /// **'Command'**
  String get command;

  /// No description provided for @commandDesc.
  ///
  /// In en, this message translates to:
  /// **'Turns a request into a stand-alone object that contains all information about the request. This transformation lets you pass requests as a method arguments, delay or queue a request\'s execution, and support undoable operations.'**
  String get commandDesc;

  /// No description provided for @iterator.
  ///
  /// In en, this message translates to:
  /// **'Iterator'**
  String get iterator;

  /// No description provided for @iteratorDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you traverse elements of a collection without exposing its underlying representation (list, stack, tree, etc.).'**
  String get iteratorDesc;

  /// No description provided for @interpreter.
  ///
  /// In en, this message translates to:
  /// **'Interpreter'**
  String get interpreter;

  /// No description provided for @interpreterDesc.
  ///
  /// In en, this message translates to:
  /// **'Given a language, defines a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.'**
  String get interpreterDesc;

  /// No description provided for @mediator.
  ///
  /// In en, this message translates to:
  /// **'Mediator'**
  String get mediator;

  /// No description provided for @mediatorDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you reduce chaotic dependencies between objects. The pattern restricts direct communications between the objects and forces them to collaborate only via a mediator object.'**
  String get mediatorDesc;

  /// No description provided for @memento.
  ///
  /// In en, this message translates to:
  /// **'Memento'**
  String get memento;

  /// No description provided for @mementoDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you save and restore the previous state of an object without revealing the details of its implementation.'**
  String get mementoDesc;

  /// No description provided for @observer.
  ///
  /// In en, this message translates to:
  /// **'Observer'**
  String get observer;

  /// No description provided for @observerDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you define a subscription mechanism to notify multiple objects about any events that happen to the object they\'re observing.'**
  String get observerDesc;

  /// No description provided for @state.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get state;

  /// No description provided for @stateDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets an object alter its behavior when its internal state changes. It appears as if the object changed its class.'**
  String get stateDesc;

  /// No description provided for @strategy.
  ///
  /// In en, this message translates to:
  /// **'Strategy'**
  String get strategy;

  /// No description provided for @strategyDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you define a family of algorithms, put each of them into a separate class, and make their objects interchangeable.'**
  String get strategyDesc;

  /// No description provided for @templateMethod.
  ///
  /// In en, this message translates to:
  /// **'Template Method'**
  String get templateMethod;

  /// No description provided for @templateMethodDesc.
  ///
  /// In en, this message translates to:
  /// **'Defines the skeleton of an algorithm in the superclass but lets subclasses override specific steps of the algorithm without changing its structure.'**
  String get templateMethodDesc;

  /// No description provided for @visitor.
  ///
  /// In en, this message translates to:
  /// **'Visitor'**
  String get visitor;

  /// No description provided for @visitorDesc.
  ///
  /// In en, this message translates to:
  /// **'Lets you separate algorithms from the objects on which they operate.'**
  String get visitorDesc;

  /// No description provided for @refactoringCategories.
  ///
  /// In en, this message translates to:
  /// **'Refactoring Categories'**
  String get refactoringCategories;

  /// No description provided for @composingMethods.
  ///
  /// In en, this message translates to:
  /// **'Composing Methods'**
  String get composingMethods;

  /// No description provided for @composingMethodsDesc.
  ///
  /// In en, this message translates to:
  /// **'Much of refactoring is devoted to correctly composing methods. In most cases, excessively long methods are the root of all evil.'**
  String get composingMethodsDesc;

  /// No description provided for @movingFeatures.
  ///
  /// In en, this message translates to:
  /// **'Moving Features'**
  String get movingFeatures;

  /// No description provided for @movingFeaturesDesc.
  ///
  /// In en, this message translates to:
  /// **'These techniques show how to safely move functionality between classes, create new classes, and hide implementation details.'**
  String get movingFeaturesDesc;

  /// No description provided for @organizingData.
  ///
  /// In en, this message translates to:
  /// **'Organizing Data'**
  String get organizingData;

  /// No description provided for @organizingDataDesc.
  ///
  /// In en, this message translates to:
  /// **'These techniques help with data handling, replacing primitives with rich class functionality.'**
  String get organizingDataDesc;

  /// No description provided for @simplifyingConditionals.
  ///
  /// In en, this message translates to:
  /// **'Simplifying Conditionals'**
  String get simplifyingConditionals;

  /// No description provided for @simplifyingConditionalsDesc.
  ///
  /// In en, this message translates to:
  /// **'Conditionals have a tendency to become more complex in logic over time, and these techniques help combat that.'**
  String get simplifyingConditionalsDesc;

  /// No description provided for @simplifyingMethodCalls.
  ///
  /// In en, this message translates to:
  /// **'Simplifying Method Calls'**
  String get simplifyingMethodCalls;

  /// No description provided for @simplifyingMethodCallsDesc.
  ///
  /// In en, this message translates to:
  /// **'These techniques make method calls simpler and easier to understand.'**
  String get simplifyingMethodCallsDesc;

  /// No description provided for @generalization.
  ///
  /// In en, this message translates to:
  /// **'Generalization'**
  String get generalization;

  /// No description provided for @generalizationDesc.
  ///
  /// In en, this message translates to:
  /// **'Generalization is primarily about moving functionality along the class inheritance hierarchy.'**
  String get generalizationDesc;

  /// No description provided for @notes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notes;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @example.
  ///
  /// In en, this message translates to:
  /// **'Dart Example'**
  String get example;

  /// No description provided for @goodExample.
  ///
  /// In en, this message translates to:
  /// **'Good Example'**
  String get goodExample;

  /// No description provided for @badExample.
  ///
  /// In en, this message translates to:
  /// **'Bad Example'**
  String get badExample;

  /// No description provided for @seeMore.
  ///
  /// In en, this message translates to:
  /// **'See More'**
  String get seeMore;

  /// No description provided for @reference.
  ///
  /// In en, this message translates to:
  /// **'Reference'**
  String get reference;

  /// No description provided for @references.
  ///
  /// In en, this message translates to:
  /// **'References'**
  String get references;

  /// No description provided for @pros.
  ///
  /// In en, this message translates to:
  /// **'Pros'**
  String get pros;

  /// No description provided for @cons.
  ///
  /// In en, this message translates to:
  /// **'Cons'**
  String get cons;

  /// No description provided for @whenToUse.
  ///
  /// In en, this message translates to:
  /// **'When to Use'**
  String get whenToUse;

  /// No description provided for @bestUse.
  ///
  /// In en, this message translates to:
  /// **'Best Use Cases'**
  String get bestUse;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @extractMethod.
  ///
  /// In en, this message translates to:
  /// **'Extract Method'**
  String get extractMethod;

  /// No description provided for @inlineMethod.
  ///
  /// In en, this message translates to:
  /// **'Inline Method'**
  String get inlineMethod;

  /// No description provided for @extractVariable.
  ///
  /// In en, this message translates to:
  /// **'Extract Variable'**
  String get extractVariable;

  /// No description provided for @moveMethod.
  ///
  /// In en, this message translates to:
  /// **'Move Method'**
  String get moveMethod;

  /// No description provided for @moveField.
  ///
  /// In en, this message translates to:
  /// **'Move Field'**
  String get moveField;

  /// No description provided for @extractClass.
  ///
  /// In en, this message translates to:
  /// **'Extract Class'**
  String get extractClass;

  /// No description provided for @selfEncapsulateField.
  ///
  /// In en, this message translates to:
  /// **'Self Encapsulate Field'**
  String get selfEncapsulateField;

  /// No description provided for @replaceDataValueWithObject.
  ///
  /// In en, this message translates to:
  /// **'Replace Data Value with Object'**
  String get replaceDataValueWithObject;

  /// No description provided for @refactoringTip.
  ///
  /// In en, this message translates to:
  /// **'This technique helps simplify code structure and improve maintainability.'**
  String get refactoringTip;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard!'**
  String get copied;

  /// No description provided for @singletonNote.
  ///
  /// In en, this message translates to:
  /// **'Singletons should have a private constructor and a static instance accessor.'**
  String get singletonNote;

  /// No description provided for @factoryMethodNote.
  ///
  /// In en, this message translates to:
  /// **'Avoid \'if-else\' ladders for object creation; use sub-classes to decide the concrete type.'**
  String get factoryMethodNote;

  /// No description provided for @builderNote.
  ///
  /// In en, this message translates to:
  /// **'Builders solve the \'Telescoping Constructor\' problem and provide readable code.'**
  String get builderNote;

  /// No description provided for @singletonPros.
  ///
  /// In en, this message translates to:
  /// **'Controlled access to the sole instance.\nReduced name space (avoiding global variables).\nPermits refinement of operations and representation via subclassing.\nPermits a variable number of instances if logic changes.'**
  String get singletonPros;

  /// No description provided for @singletonCons.
  ///
  /// In en, this message translates to:
  /// **'Violates Single Responsibility Principle.\nCan mask bad design where components know too much about each other.\nRequires special handling in multi-threaded environments.\nDifficult to unit test due to global state.'**
  String get singletonCons;

  /// No description provided for @singletonWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when a class should have exactly one instance available to all clients (e.g., a database object or a file system manager).'**
  String get singletonWhenToUse;

  /// No description provided for @singletonBestUse.
  ///
  /// In en, this message translates to:
  /// **'Logging services, database connection pools, configuration managers, or hardware access.'**
  String get singletonBestUse;

  /// No description provided for @factoryMethodPros.
  ///
  /// In en, this message translates to:
  /// **'Avoids tight coupling between the creator and the concrete products.\nSingle Responsibility Principle: You can move the product creation code into one place.\nOpen/Closed Principle: You can introduce new product types without breaking client code.'**
  String get factoryMethodPros;

  /// No description provided for @factoryMethodCons.
  ///
  /// In en, this message translates to:
  /// **'The code may become more complicated since you need to introduce a lot of new subclasses to implement the pattern.'**
  String get factoryMethodCons;

  /// No description provided for @factoryMethodWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when you don\'t know beforehand the exact types and dependencies of the objects your code should work with.'**
  String get factoryMethodWhenToUse;

  /// No description provided for @factoryMethodBestUse.
  ///
  /// In en, this message translates to:
  /// **'UI frameworks providing hooks for creating different components, or any system where the exact type is determined at runtime.'**
  String get factoryMethodBestUse;

  /// No description provided for @abstractFactoryPros.
  ///
  /// In en, this message translates to:
  /// **'Guarantees compatibility of products.\nAvoids tight coupling.\nSingle Responsibility Principle.\nOpen/Closed Principle.'**
  String get abstractFactoryPros;

  /// No description provided for @abstractFactoryCons.
  ///
  /// In en, this message translates to:
  /// **'Code complexity increases with many new interfaces and classes.'**
  String get abstractFactoryCons;

  /// No description provided for @abstractFactoryWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when your code needs to work with various families of related products, but you don\'t want it to depend on the concrete classes of those products.'**
  String get abstractFactoryWhenToUse;

  /// No description provided for @abstractFactoryBestUse.
  ///
  /// In en, this message translates to:
  /// **'Cross-platform UI toolkits (Windows/Android/iOS styles), or multiple theme support.'**
  String get abstractFactoryBestUse;

  /// No description provided for @builderPros.
  ///
  /// In en, this message translates to:
  /// **'Construct objects step-by-step.\nReuse the same construction code for various representations.\nSingle Responsibility Principle (isolated complex construction).'**
  String get builderPros;

  /// No description provided for @builderCons.
  ///
  /// In en, this message translates to:
  /// **'Increased overall complexity due to multiple new classes.'**
  String get builderCons;

  /// No description provided for @builderWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use to get rid of a \'telescoping constructor\' (too many parameters) or when you need different representations of an object.'**
  String get builderWhenToUse;

  /// No description provided for @builderBestUse.
  ///
  /// In en, this message translates to:
  /// **'Complex configurations, Document builders (HTML/JSON/PDF), or complex data models.'**
  String get builderBestUse;

  /// No description provided for @prototypePros.
  ///
  /// In en, this message translates to:
  /// **'Clone objects without coupling to concrete classes.\nGet rid of repeated initialization code.\nProduce complex objects more conveniently.'**
  String get prototypePros;

  /// No description provided for @prototypeCons.
  ///
  /// In en, this message translates to:
  /// **'Cloning complex objects with circular references might be tricky.'**
  String get prototypeCons;

  /// No description provided for @prototypeWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when the cost of creating a new object is higher than cloning an existing one.'**
  String get prototypeWhenToUse;

  /// No description provided for @prototypeBestUse.
  ///
  /// In en, this message translates to:
  /// **'Game engines (spawning units), Graphics software, or Object caching.'**
  String get prototypeBestUse;

  /// No description provided for @adapterPros.
  ///
  /// In en, this message translates to:
  /// **'Single Responsibility Principle (separable interface/data conversion).\nOpen/Closed Principle (new adapters without breaking client code).'**
  String get adapterPros;

  /// No description provided for @adapterCons.
  ///
  /// In en, this message translates to:
  /// **'Over-engineering (code complexity increases).'**
  String get adapterCons;

  /// No description provided for @adapterWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when you want to use an existing class, but its interface isn\'t compatible with the rest of your code.'**
  String get adapterWhenToUse;

  /// No description provided for @adapterBestUse.
  ///
  /// In en, this message translates to:
  /// **'Integrating 3rd party libraries, Legacy code migration, or XML/JSON data mapping.'**
  String get adapterBestUse;

  /// No description provided for @bridgePros.
  ///
  /// In en, this message translates to:
  /// **'Decouples abstraction from implementation.\nPlatform-independent code.\nOpen/Closed Principle.'**
  String get bridgePros;

  /// No description provided for @bridgeCons.
  ///
  /// In en, this message translates to:
  /// **'Might make code more complicated in highly cohesive classes.'**
  String get bridgeCons;

  /// No description provided for @bridgeWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when you want to divide and organize a monolithic class that has several variants of some functionality.'**
  String get bridgeWhenToUse;

  /// No description provided for @bridgeBestUse.
  ///
  /// In en, this message translates to:
  /// **'GUI frameworks, Cross-platform drivers, or Graphics libraries.'**
  String get bridgeBestUse;

  /// No description provided for @compositePros.
  ///
  /// In en, this message translates to:
  /// **'Work with complex tree structures conveniently.\nOpen/Closed Principle.'**
  String get compositePros;

  /// No description provided for @compositeCons.
  ///
  /// In en, this message translates to:
  /// **'Difficult to provide a common interface for classes whose functionality differs too much.'**
  String get compositeCons;

  /// No description provided for @compositeWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when you have to implement a tree-like object structure.'**
  String get compositeWhenToUse;

  /// No description provided for @compositeBestUse.
  ///
  /// In en, this message translates to:
  /// **'File systems, UI component hierarchies (widgets), or XML structures.'**
  String get compositeBestUse;

  /// No description provided for @decoratorPros.
  ///
  /// In en, this message translates to:
  /// **'Extend object\'s behavior without making a new subclass.\nAdd or remove responsibilities from an object at runtime.\nCombine several behaviors by wrapping an object into multiple decorators.'**
  String get decoratorPros;

  /// No description provided for @decoratorCons.
  ///
  /// In en, this message translates to:
  /// **'Difficult to remove a specific wrapper from the wrappers stack.\nHard to implement a decorator in such a way that its behavior doesn\'t depend on the order in the decorators stack.'**
  String get decoratorCons;

  /// No description provided for @decoratorWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when you need to be able to assign extra behaviors to objects at runtime without breaking the code that uses these objects.'**
  String get decoratorWhenToUse;

  /// No description provided for @decoratorBestUse.
  ///
  /// In en, this message translates to:
  /// **'Streams (IO), Notification systems, or UI component wrappers (borders/scrollbars).'**
  String get decoratorBestUse;

  /// No description provided for @facadePros.
  ///
  /// In en, this message translates to:
  /// **'Isolate your code from the complexity of a subsystem.'**
  String get facadePros;

  /// No description provided for @facadeCons.
  ///
  /// In en, this message translates to:
  /// **'A facade can become a god object coupled to all classes of an app.'**
  String get facadeCons;

  /// No description provided for @facadeWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when you need to have a limited but straightforward interface to a complex subsystem.'**
  String get facadeWhenToUse;

  /// No description provided for @facadeBestUse.
  ///
  /// In en, this message translates to:
  /// **'Complex 3rd party SDKs, Audio/Video processing libraries, or Multi-service API clients.'**
  String get facadeBestUse;

  /// No description provided for @proxyPros.
  ///
  /// In en, this message translates to:
  /// **'Control the service object without clients knowing about it.\nManage life cycle of the service object.\nWorks even if the service object isn\'t ready or is not available.'**
  String get proxyPros;

  /// No description provided for @proxyCons.
  ///
  /// In en, this message translates to:
  /// **'The code may become more complicated since you need to introduce a lot of new classes.\nThe response from the service might be delayed.'**
  String get proxyCons;

  /// No description provided for @proxyWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use for Lazy initialization (virtual proxy), Access control (protection proxy), or Logging requests (logging proxy).'**
  String get proxyWhenToUse;

  /// No description provided for @proxyBestUse.
  ///
  /// In en, this message translates to:
  /// **'Caching, Access Control, Lazy Loading, or Remote Service Proxy.'**
  String get proxyBestUse;

  /// No description provided for @observerPros.
  ///
  /// In en, this message translates to:
  /// **'Open/Closed Principle.\nEstablish relations between objects at runtime.'**
  String get observerPros;

  /// No description provided for @observerCons.
  ///
  /// In en, this message translates to:
  /// **'Subscribers are notified in random order.'**
  String get observerCons;

  /// No description provided for @observerWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when changes to the state of one object may require changing other objects, and the actual set of objects is unknown beforehand or changes dynamically.'**
  String get observerWhenToUse;

  /// No description provided for @observerBestUse.
  ///
  /// In en, this message translates to:
  /// **'Event handling systems, UI updates in response to state changes (Streams/Notifiers), or Stock market trackers.'**
  String get observerBestUse;

  /// No description provided for @strategyPros.
  ///
  /// In en, this message translates to:
  /// **'Swap algorithms used inside an object at runtime.\nIsolate implementation details of an algorithm from code that uses it.\nOpen/Closed Principle.'**
  String get strategyPros;

  /// No description provided for @strategyCons.
  ///
  /// In en, this message translates to:
  /// **'If you only have a couple of algorithms and they rarely change, no real reason to over-complicate the program with new classes.'**
  String get strategyCons;

  /// No description provided for @strategyWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when you want to use different variants of an algorithm within an object and be able to switch from one algorithm to another during runtime.'**
  String get strategyWhenToUse;

  /// No description provided for @strategyBestUse.
  ///
  /// In en, this message translates to:
  /// **'Payment methods, Sorting algorithms, Route planning, or Compression styles.'**
  String get strategyBestUse;

  /// No description provided for @commandPros.
  ///
  /// In en, this message translates to:
  /// **'Single Responsibility Principle.\nOpen/Closed Principle.\nImplement undo/redo.\nImplement deferred execution.'**
  String get commandPros;

  /// No description provided for @commandCons.
  ///
  /// In en, this message translates to:
  /// **'Code may become more complicated since you introduce a whole new layer between senders and receivers.'**
  String get commandCons;

  /// No description provided for @commandWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when you want to parametrize objects with operations or queue/schedule their execution.'**
  String get commandWhenToUse;

  /// No description provided for @commandBestUse.
  ///
  /// In en, this message translates to:
  /// **'GUI button actions, Undo/Redo systems, Task queues, or Transaction logs.'**
  String get commandBestUse;

  /// No description provided for @statePros.
  ///
  /// In en, this message translates to:
  /// **'Single Responsibility Principle.\nOpen/Closed Principle.\nSimplify state-dependent code (eliminate massive switch/if-else).'**
  String get statePros;

  /// No description provided for @stateCons.
  ///
  /// In en, this message translates to:
  /// **'Applying the pattern can be overkill if a state machine has only a few states or rarely changes.'**
  String get stateCons;

  /// No description provided for @stateWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when you have an object that behaves differently depending on its current state, the number of states is enormous, and the state-specific code changes frequently.'**
  String get stateWhenToUse;

  /// No description provided for @stateBestUse.
  ///
  /// In en, this message translates to:
  /// **'Vending machines, Game character behaviors, Order processing, or Media players.'**
  String get stateBestUse;

  /// No description provided for @chainOfResponsibilityPros.
  ///
  /// In en, this message translates to:
  /// **'You can control the order of request handling.\nSingle Responsibility Principle.\nOpen/Closed Principle.'**
  String get chainOfResponsibilityPros;

  /// No description provided for @chainOfResponsibilityCons.
  ///
  /// In en, this message translates to:
  /// **'Some requests may end up unhandled.'**
  String get chainOfResponsibilityCons;

  /// No description provided for @chainOfResponsibilityWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when your program is expected to process different kinds of requests in various ways, but the exact types of requests and their sequences are unknown beforehand.'**
  String get chainOfResponsibilityWhenToUse;

  /// No description provided for @chainOfResponsibilityBestUse.
  ///
  /// In en, this message translates to:
  /// **'Middleware in web frameworks, event bubbling in UI, or sequential validation logic.'**
  String get chainOfResponsibilityBestUse;

  /// No description provided for @iteratorPros.
  ///
  /// In en, this message translates to:
  /// **'Single Responsibility Principle.\nOpen/Closed Principle.\nYou can delay an iteration and continue it when needed.'**
  String get iteratorPros;

  /// No description provided for @iteratorCons.
  ///
  /// In en, this message translates to:
  /// **'Applying the pattern can be an overkill if your app only works with simple collections.'**
  String get iteratorCons;

  /// No description provided for @iteratorWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when your collection has a complex data structure under the hood, but you want to hide its complexity from clients.'**
  String get iteratorWhenToUse;

  /// No description provided for @iteratorBestUse.
  ///
  /// In en, this message translates to:
  /// **'Custom collection types, directory traversal, or complex data streaming.'**
  String get iteratorBestUse;

  /// No description provided for @interpreterPros.
  ///
  /// In en, this message translates to:
  /// **'Easy to change and extend the grammar.\nImplementing the grammar is straightforward.'**
  String get interpreterPros;

  /// No description provided for @interpreterCons.
  ///
  /// In en, this message translates to:
  /// **'Maintenance becomes difficult as the number of rules in the grammar increases.'**
  String get interpreterCons;

  /// No description provided for @interpreterWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when you have a simple grammar to interpret and you can represent statements in the language as abstract syntax trees.'**
  String get interpreterWhenToUse;

  /// No description provided for @interpreterBestUse.
  ///
  /// In en, this message translates to:
  /// **'SQL parsing, regular expressions, or mathematical expression evaluators.'**
  String get interpreterBestUse;

  /// No description provided for @mediatorPros.
  ///
  /// In en, this message translates to:
  /// **'Single Responsibility Principle.\nOpen/Closed Principle.\nReduces coupling between various components of a program.'**
  String get mediatorPros;

  /// No description provided for @mediatorCons.
  ///
  /// In en, this message translates to:
  /// **'Over time a mediator can evolve into a God Object.'**
  String get mediatorCons;

  /// No description provided for @mediatorWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when it\'s hard to change some of the classes because they are tightly coupled to a bunch of other classes.'**
  String get mediatorWhenToUse;

  /// No description provided for @mediatorBestUse.
  ///
  /// In en, this message translates to:
  /// **'Chat application rooms, UI dialog coordination, or airline traffic control systems.'**
  String get mediatorBestUse;

  /// No description provided for @mementoPros.
  ///
  /// In en, this message translates to:
  /// **'You can produce snapshots of the object\'s state without violating its encapsulation.\nYou can simplify the originator\'s code.'**
  String get mementoPros;

  /// No description provided for @mementoCons.
  ///
  /// In en, this message translates to:
  /// **'The app might consume lots of RAM if clients create mementos too often.'**
  String get mementoCons;

  /// No description provided for @mementoWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when you want to produce snapshots of the object\'s state to be able to restore a previous state of the object.'**
  String get mementoWhenToUse;

  /// No description provided for @mementoBestUse.
  ///
  /// In en, this message translates to:
  /// **'Undo/Redo systems, game checkpoints, or configuration rollbacks.'**
  String get mementoBestUse;

  /// No description provided for @templateMethodPros.
  ///
  /// In en, this message translates to:
  /// **'You can let clients override only certain parts of a large algorithm.\nYou can pull the duplicate code into a superclass.'**
  String get templateMethodPros;

  /// No description provided for @templateMethodCons.
  ///
  /// In en, this message translates to:
  /// **'Some clients may be limited by the provided skeleton of an algorithm.'**
  String get templateMethodCons;

  /// No description provided for @templateMethodWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when you want to let clients extend only particular steps of an algorithm, but not the whole algorithm or its structure.'**
  String get templateMethodWhenToUse;

  /// No description provided for @templateMethodBestUse.
  ///
  /// In en, this message translates to:
  /// **'Data processing frameworks, build scripts, or standard algorithm hooks.'**
  String get templateMethodBestUse;

  /// No description provided for @visitorPros.
  ///
  /// In en, this message translates to:
  /// **'Open/Closed Principle.\nSingle Responsibility Principle.\nA visitor object can accumulate some useful information while working with various objects.'**
  String get visitorPros;

  /// No description provided for @visitorCons.
  ///
  /// In en, this message translates to:
  /// **'You need to update all visitors each time a class gets added to or removed from the element hierarchy.'**
  String get visitorCons;

  /// No description provided for @visitorWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use when you need to perform an operation on all elements of a complex object structure (e.g., an object tree).'**
  String get visitorWhenToUse;

  /// No description provided for @visitorBestUse.
  ///
  /// In en, this message translates to:
  /// **'Document exporting, code analysis tools (AST visitors), or operations on heterogeneous collections.'**
  String get visitorBestUse;

  /// No description provided for @flyweightPros.
  ///
  /// In en, this message translates to:
  /// **'You can save lots of RAM, assuming your app has tons of similar objects.'**
  String get flyweightPros;

  /// No description provided for @flyweightCons.
  ///
  /// In en, this message translates to:
  /// **'You might be exchanging RAM for CPU cycles when some of the context data needs to be recalculated.\nThe code becomes much more complicated.'**
  String get flyweightCons;

  /// No description provided for @flyweightWhenToUse.
  ///
  /// In en, this message translates to:
  /// **'Use the Flyweight pattern only when your program must support a huge number of objects which barely fit into available RAM.'**
  String get flyweightWhenToUse;

  /// No description provided for @flyweightBestUse.
  ///
  /// In en, this message translates to:
  /// **'Particle systems (smoke, fire), map markers in large datasets, or text editors handling millions of characters.'**
  String get flyweightBestUse;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
