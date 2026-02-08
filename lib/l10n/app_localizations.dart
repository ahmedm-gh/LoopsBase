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

  /// No description provided for @interviewQuestions.
  ///
  /// In en, this message translates to:
  /// **'Interview Questions'**
  String get interviewQuestions;

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

  /// No description provided for @answer.
  ///
  /// In en, this message translates to:
  /// **'Answer'**
  String get answer;

  /// No description provided for @basicLevel.
  ///
  /// In en, this message translates to:
  /// **'Basic'**
  String get basicLevel;

  /// No description provided for @basicLevelDesc.
  ///
  /// In en, this message translates to:
  /// **'Fundamental concepts every Flutter developer should know.'**
  String get basicLevelDesc;

  /// No description provided for @intermediateLevel.
  ///
  /// In en, this message translates to:
  /// **'Intermediate'**
  String get intermediateLevel;

  /// No description provided for @intermediateLevelDesc.
  ///
  /// In en, this message translates to:
  /// **'Deeper understanding of Flutter and Dart features.'**
  String get intermediateLevelDesc;

  /// No description provided for @advancedLevel.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get advancedLevel;

  /// No description provided for @advancedLevelDesc.
  ///
  /// In en, this message translates to:
  /// **'Expert-level topics for senior developers.'**
  String get advancedLevelDesc;

  /// No description provided for @qWhatIsFlutter.
  ///
  /// In en, this message translates to:
  /// **'What is Flutter?'**
  String get qWhatIsFlutter;

  /// No description provided for @qWhatIsFlutterNotes.
  ///
  /// In en, this message translates to:
  /// **'Flutter is an open-source UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase. It uses the Dart programming language and provides a rich set of customizable widgets and tools for fast development.'**
  String get qWhatIsFlutterNotes;

  /// No description provided for @qWhatIsFlutterPros.
  ///
  /// In en, this message translates to:
  /// **'High performance due to native compilation.\nHot reload for fast development.\nSingle codebase for multiple platforms.'**
  String get qWhatIsFlutterPros;

  /// No description provided for @qWhatIsFlutterCons.
  ///
  /// In en, this message translates to:
  /// **'Larger app size compared to some alternatives.\nFewer third-party libraries.\nLearning Dart may be challenging for new developers.'**
  String get qWhatIsFlutterCons;

  /// No description provided for @qWhatIsFlutterBestUse.
  ///
  /// In en, this message translates to:
  /// **'Ideal for building cross-platform mobile apps with beautiful custom UI and fast development cycles.'**
  String get qWhatIsFlutterBestUse;

  /// No description provided for @qWhatIsDart.
  ///
  /// In en, this message translates to:
  /// **'What is Dart, and why is it used in Flutter?'**
  String get qWhatIsDart;

  /// No description provided for @qWhatIsDartNotes.
  ///
  /// In en, this message translates to:
  /// **'Dart is a modern object-oriented programming language optimized for building UI, used to develop Flutter applications. It compiles to native code for high performance and has features like sound null-safety and a rich standard library.'**
  String get qWhatIsDartNotes;

  /// No description provided for @qWhatIsDartPros.
  ///
  /// In en, this message translates to:
  /// **'Easy to learn for developers familiar with C-style syntax.\nSupports both AOT and JIT compilation.\nStrong null-safety features.'**
  String get qWhatIsDartPros;

  /// No description provided for @qWhatIsDartCons.
  ///
  /// In en, this message translates to:
  /// **'Smaller ecosystem compared to JavaScript.\nPrimarily used with Flutter, limiting server-side reuse.'**
  String get qWhatIsDartCons;

  /// No description provided for @qWhatIsDartBestUse.
  ///
  /// In en, this message translates to:
  /// **'Best used for Flutter app development and client-side applications where performance and developer productivity matter.'**
  String get qWhatIsDartBestUse;

  /// No description provided for @qWhatAreWidgets.
  ///
  /// In en, this message translates to:
  /// **'What are Widgets in Flutter?'**
  String get qWhatAreWidgets;

  /// No description provided for @qWhatAreWidgetsNotes.
  ///
  /// In en, this message translates to:
  /// **'Widgets are the basic building blocks of a Flutter app\'s UI. Everything you see on screen in Flutter is a Widget, which can be either stateful or stateless. Widgets describe how to display elements on the screen in a declarative manner.'**
  String get qWhatAreWidgetsNotes;

  /// No description provided for @qWhatAreWidgetsPros.
  ///
  /// In en, this message translates to:
  /// **'Highly customizable and composable.\nYou can build complex UIs by combining simpler widgets.\nFlutter\'s hot reload works well with its widget tree.'**
  String get qWhatAreWidgetsPros;

  /// No description provided for @qWhatAreWidgetsCons.
  ///
  /// In en, this message translates to:
  /// **'Deep widget hierarchies can become complex.\nRequires understanding of widget lifecycle for effective state management.'**
  String get qWhatAreWidgetsCons;

  /// No description provided for @qWhatAreWidgetsBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use widgets for all UI components; take advantage of stateless widgets for static parts and stateful widgets for interactive parts.'**
  String get qWhatAreWidgetsBestUse;

  /// No description provided for @qStatelessVsStateful.
  ///
  /// In en, this message translates to:
  /// **'What is the difference between StatelessWidget and StatefulWidget?'**
  String get qStatelessVsStateful;

  /// No description provided for @qStatelessVsStatefulNotes.
  ///
  /// In en, this message translates to:
  /// **'A StatelessWidget cannot change its state once built; it\'s immutable. A StatefulWidget has mutable state (via a State object) that can change over time, triggering rebuilds. StatelessWidget is simpler and more performant for static content. StatefulWidget allows dynamic and interactive UI.'**
  String get qStatelessVsStatefulNotes;

  /// No description provided for @qStatelessVsStatefulPros.
  ///
  /// In en, this message translates to:
  /// **'StatelessWidget is simpler and more performant for static content.\nStatefulWidget allows dynamic and interactive UI.'**
  String get qStatelessVsStatefulPros;

  /// No description provided for @qStatelessVsStatefulCons.
  ///
  /// In en, this message translates to:
  /// **'StatelessWidget can\'t update UI based on changes.\nStatefulWidget introduces overhead of state management and rebuilds.'**
  String get qStatelessVsStatefulCons;

  /// No description provided for @qStatelessVsStatefulBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use StatelessWidget for UI that doesn\'t change (e.g., static text), and StatefulWidget when UI needs to update (e.g., forms, animations).'**
  String get qStatelessVsStatefulBestUse;

  /// No description provided for @qWhatIsKey.
  ///
  /// In en, this message translates to:
  /// **'What is a Key in Flutter and why is it used?'**
  String get qWhatIsKey;

  /// No description provided for @qWhatIsKeyNotes.
  ///
  /// In en, this message translates to:
  /// **'A Key is an identifier for Widgets, Elements, and SemanticsNodes. Keys preserve state and control widget identity when the widget tree changes (e.g., reordering). Using keys helps Flutter match widgets between builds.'**
  String get qWhatIsKeyNotes;

  /// No description provided for @qWhatIsKeyPros.
  ///
  /// In en, this message translates to:
  /// **'Using keys (especially UniqueKey or ValueKey) helps avoid unexpected behavior when reordering or dynamically changing lists of widgets.'**
  String get qWhatIsKeyPros;

  /// No description provided for @qWhatIsKeyCons.
  ///
  /// In en, this message translates to:
  /// **'Often not needed unless you manage dynamic widget lists.\nOverusing keys can complicate the code.'**
  String get qWhatIsKeyCons;

  /// No description provided for @qWhatIsKeyBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use keys when you have multiple widgets of the same type and need to preserve their state when they move or change position.'**
  String get qWhatIsKeyBestUse;

  /// No description provided for @qHotReloadVsRestart.
  ///
  /// In en, this message translates to:
  /// **'Explain the difference between Hot Reload and Hot Restart in Flutter.'**
  String get qHotReloadVsRestart;

  /// No description provided for @qHotReloadVsRestartNotes.
  ///
  /// In en, this message translates to:
  /// **'Hot Reload injects updated source code into a running Dart VM, preserving the app state and making UI changes visible almost instantly. Hot Restart completely restarts the app, rebuilding the widget tree and reinitializing state, which is slower than hot reload.'**
  String get qHotReloadVsRestartNotes;

  /// No description provided for @qHotReloadVsRestartPros.
  ///
  /// In en, this message translates to:
  /// **'Hot Reload greatly speeds up UI development by preserving state.\nHot Restart ensures full reset, useful when major changes require clean state.'**
  String get qHotReloadVsRestartPros;

  /// No description provided for @qHotReloadVsRestartCons.
  ///
  /// In en, this message translates to:
  /// **'Hot Reload may not reflect changes outside widget code or initial setup.\nHot Restart is slower and loses the current state.'**
  String get qHotReloadVsRestartCons;

  /// No description provided for @qHotReloadVsRestartBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use Hot Reload for quick iterations during UI development; use Hot Restart when you need to apply changes that require restarting the app.'**
  String get qHotReloadVsRestartBestUse;

  /// No description provided for @qMaterialAppScaffold.
  ///
  /// In en, this message translates to:
  /// **'What is the purpose of MaterialApp and Scaffold widgets?'**
  String get qMaterialAppScaffold;

  /// No description provided for @qMaterialAppScaffoldNotes.
  ///
  /// In en, this message translates to:
  /// **'MaterialApp is a convenience widget that wraps a number of widgets commonly required for Material Design applications, such as themes and navigation. Scaffold provides a framework for implementing the basic visual layout structure of Material Design (app bars, drawers, bottom sheets, etc.).'**
  String get qMaterialAppScaffoldNotes;

  /// No description provided for @qMaterialAppScaffoldPros.
  ///
  /// In en, this message translates to:
  /// **'MaterialApp handles app-level configurations (theme, locale, navigator).\nScaffold provides standard UI elements out of the box.'**
  String get qMaterialAppScaffoldPros;

  /// No description provided for @qMaterialAppScaffoldCons.
  ///
  /// In en, this message translates to:
  /// **'They impose Material Design.\nFor a custom look or non-Material design, one might use WidgetsApp or a custom layout.'**
  String get qMaterialAppScaffoldCons;

  /// No description provided for @qMaterialAppScaffoldBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use MaterialApp and Scaffold when developing a Flutter app following Material Design guidelines.'**
  String get qMaterialAppScaffoldBestUse;

  /// No description provided for @qWidgetLifecycle.
  ///
  /// In en, this message translates to:
  /// **'What is a Flutter Widget\'s lifecycle (StatefulWidget lifecycle)?'**
  String get qWidgetLifecycle;

  /// No description provided for @qWidgetLifecycleNotes.
  ///
  /// In en, this message translates to:
  /// **'A StatefulWidget has a State object whose lifecycle includes initState(), didChangeDependencies(), build(), setState(), deactivate(), dispose(), and reassemble (during hot reload). initState is called once when the widget is inserted into the widget tree; build() is called often to redraw; dispose() is called when the widget is removed.'**
  String get qWidgetLifecycleNotes;

  /// No description provided for @qWidgetLifecyclePros.
  ///
  /// In en, this message translates to:
  /// **'Understanding lifecycle is crucial for resource management (e.g., initializing and disposing controllers) and for controlling rebuilds.'**
  String get qWidgetLifecyclePros;

  /// No description provided for @qWidgetLifecycleCons.
  ///
  /// In en, this message translates to:
  /// **'Managing complex lifecycles can be error-prone.\nForgetting to dispose can cause memory leaks.'**
  String get qWidgetLifecycleCons;

  /// No description provided for @qWidgetLifecycleBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use initState for one-time initialization, build to construct the UI, and dispose to clean up resources like animations or streams.'**
  String get qWidgetLifecycleBestUse;

  /// No description provided for @qWhatAreMixins.
  ///
  /// In en, this message translates to:
  /// **'What are mixins in Dart and how are they used?'**
  String get qWhatAreMixins;

  /// No description provided for @qWhatAreMixinsNotes.
  ///
  /// In en, this message translates to:
  /// **'Mixins allow a class to use methods and properties from multiple classes without multiple inheritance. In Dart, you define a mixin with the \'mixin\' keyword and then use it with the \'with\' keyword in a class declaration. They are useful for code reuse.'**
  String get qWhatAreMixinsNotes;

  /// No description provided for @qWhatAreMixinsPros.
  ///
  /// In en, this message translates to:
  /// **'Provide a way to add common functionality to multiple classes without forcing an inheritance relationship.\nThey keep classes more modular.'**
  String get qWhatAreMixinsPros;

  /// No description provided for @qWhatAreMixinsCons.
  ///
  /// In en, this message translates to:
  /// **'Overusing mixins can lead to complex hierarchies and unexpected behavior if many mixins modify similar properties.'**
  String get qWhatAreMixinsCons;

  /// No description provided for @qWhatAreMixinsBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use mixins when you want to share functionality (like logging, validation, etc.) across different classes without creating a base class.'**
  String get qWhatAreMixinsBestUse;

  /// No description provided for @qExtensionMethods.
  ///
  /// In en, this message translates to:
  /// **'What are extension methods in Dart?'**
  String get qExtensionMethods;

  /// No description provided for @qExtensionMethodsNotes.
  ///
  /// In en, this message translates to:
  /// **'Extension methods allow you to add new methods (or getters/setters) to existing libraries or classes without modifying them. Defined using the \'extension\' keyword, they are a syntactic convenience to extend functionality.'**
  String get qExtensionMethodsNotes;

  /// No description provided for @qExtensionMethodsPros.
  ///
  /// In en, this message translates to:
  /// **'Enable cleaner code by extending functionality of built-in types or classes (e.g., adding utility methods to String).'**
  String get qExtensionMethodsPros;

  /// No description provided for @qExtensionMethodsCons.
  ///
  /// In en, this message translates to:
  /// **'They can make code harder to discover, as methods are not visible on the original class definition.'**
  String get qExtensionMethodsCons;

  /// No description provided for @qExtensionMethodsBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use extension methods to add helper functions to types in your project without creating utility classes.'**
  String get qExtensionMethodsBestUse;

  /// No description provided for @qListsSetsMaps.
  ///
  /// In en, this message translates to:
  /// **'What are Lists, Sets, and Maps in Dart and when to use each?'**
  String get qListsSetsMaps;

  /// No description provided for @qListsSetsMapsNotes.
  ///
  /// In en, this message translates to:
  /// **'List is an ordered collection allowing duplicates; use when order matters. Set is an unordered collection of unique items; use when you need uniqueness. Map is a key-value store; use when you need to associate values with keys for fast lookup.'**
  String get qListsSetsMapsNotes;

  /// No description provided for @qListsSetsMapsProsPros.
  ///
  /// In en, this message translates to:
  /// **'Lists allow indexed access and ordering.\nSets ensure no duplicates and provide fast membership checks.\nMaps provide fast key-based lookup.'**
  String get qListsSetsMapsProsPros;

  /// No description provided for @qListsSetsMapsProsCons.
  ///
  /// In en, this message translates to:
  /// **'Lists may be inefficient if you need to enforce uniqueness.\nSets do not maintain insertion order.\nMaps use more memory per entry than a simple list.'**
  String get qListsSetsMapsProsCons;

  /// No description provided for @qListsSetsMapsProsBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use List for ordered data sequences, Set for unique collections, and Map for key-value associations.'**
  String get qListsSetsMapsProsBestUse;

  /// No description provided for @qSolidPrinciples.
  ///
  /// In en, this message translates to:
  /// **'What are the SOLID principles and how do they apply in Flutter?'**
  String get qSolidPrinciples;

  /// No description provided for @qSolidPrinciplesNotes.
  ///
  /// In en, this message translates to:
  /// **'SOLID refers to five principles of object-oriented design: Single Responsibility, Open/Closed, Liskov Substitution, Interface Segregation, and Dependency Inversion. In Flutter, keep widgets/controllers with a single responsibility, use abstractions for dependencies, and make classes open for extension but closed for modification.'**
  String get qSolidPrinciplesNotes;

  /// No description provided for @qSolidPrinciplesPros.
  ///
  /// In en, this message translates to:
  /// **'Following SOLID makes code more maintainable, testable, and extensible.\nFor Flutter, it encourages clean separation of UI and logic.'**
  String get qSolidPrinciplesPros;

  /// No description provided for @qSolidPrinciplesCons.
  ///
  /// In en, this message translates to:
  /// **'Strict adherence can lead to more abstraction and boilerplate.\nIt may complicate simple projects if overdone.'**
  String get qSolidPrinciplesCons;

  /// No description provided for @qSolidPrinciplesBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use SOLID to structure larger Flutter apps; start simple but refactor towards SOLID as complexity grows.'**
  String get qSolidPrinciplesBestUse;

  /// No description provided for @qBlocPattern.
  ///
  /// In en, this message translates to:
  /// **'What is the BLoC pattern in Flutter?'**
  String get qBlocPattern;

  /// No description provided for @qBlocPatternNotes.
  ///
  /// In en, this message translates to:
  /// **'BLoC (Business Logic Component) is an architectural pattern that separates business logic from UI by using Streams. BLoC exposes streams of data, and UI widgets listen to them. This makes the code more testable and reusable.'**
  String get qBlocPatternNotes;

  /// No description provided for @qBlocPatternPros.
  ///
  /// In en, this message translates to:
  /// **'Promotes separation of concerns and testability.\nWorks well with reactive programming.\nSimplifies state management for complex apps.'**
  String get qBlocPatternPros;

  /// No description provided for @qBlocPatternCons.
  ///
  /// In en, this message translates to:
  /// **'Adds boilerplate (stream controllers, sinks, etc.).\nCan be overkill for simple apps.\nLearning curve is higher than simple setState.'**
  String get qBlocPatternCons;

  /// No description provided for @qBlocPatternBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use BLoC for medium to large apps where separation of logic is beneficial. For smaller apps, simpler methods may suffice.'**
  String get qBlocPatternBestUse;

  /// No description provided for @qProviderVsBloc.
  ///
  /// In en, this message translates to:
  /// **'What is Provider in Flutter and how does it differ from BLoC?'**
  String get qProviderVsBloc;

  /// No description provided for @qProviderVsBlocNotes.
  ///
  /// In en, this message translates to:
  /// **'Provider is a wrapper around InheritedWidget that makes state management easier by providing and accessing state objects. Unlike BLoC (which uses Streams), Provider often uses ChangeNotifier or simple objects. Provider simplifies passing data down the widget tree.'**
  String get qProviderVsBlocNotes;

  /// No description provided for @qProviderVsBlocPros.
  ///
  /// In en, this message translates to:
  /// **'Lightweight and easy to use.\nLess boilerplate than BLoC.\nWell-integrated with Flutter.'**
  String get qProviderVsBlocPros;

  /// No description provided for @qProviderVsBlocCons.
  ///
  /// In en, this message translates to:
  /// **'Does not enforce a strict pattern, which can lead to scattered state logic if not organized.\nLess formal separation than BLoC.'**
  String get qProviderVsBlocCons;

  /// No description provided for @qProviderVsBlocBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use Provider for simpler state management needs or smaller apps. It integrates well with Flutter and is easier to start with than BLoC.'**
  String get qProviderVsBlocBestUse;

  /// No description provided for @qFutureVsStream.
  ///
  /// In en, this message translates to:
  /// **'What is the difference between Future and Stream in Dart?'**
  String get qFutureVsStream;

  /// No description provided for @qFutureVsStreamNotes.
  ///
  /// In en, this message translates to:
  /// **'A Future represents a single asynchronous computation that either completes with a value or an error. A Stream represents a sequence of asynchronous events or data over time. FutureBuilder is used for one-time async results, StreamBuilder for ongoing data streams.'**
  String get qFutureVsStreamNotes;

  /// No description provided for @qFutureVsStreamPros.
  ///
  /// In en, this message translates to:
  /// **'Use Future for single HTTP requests or quick async tasks.\nUse Stream for events like WebSocket messages, sensor data, or periodic updates.'**
  String get qFutureVsStreamPros;

  /// No description provided for @qFutureVsStreamCons.
  ///
  /// In en, this message translates to:
  /// **'Future cannot handle multiple values or continuous updates.\nStreams introduce more complexity (listeners, cancellations).'**
  String get qFutureVsStreamCons;

  /// No description provided for @qFutureVsStreamBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use Future when expecting a single result. Use Stream when listening for multiple results or changes over time.'**
  String get qFutureVsStreamBestUse;

  /// No description provided for @qNavigationPushReplace.
  ///
  /// In en, this message translates to:
  /// **'How do you navigate between screens in Flutter? (push, pushReplacement)'**
  String get qNavigationPushReplace;

  /// No description provided for @qNavigationPushReplaceNotes.
  ///
  /// In en, this message translates to:
  /// **'Navigation in Flutter uses the Navigator widget. Navigator.push adds a route to the stack (user can press back to return). Navigator.pushReplacement replaces the current route with a new one, removing the previous from the stack.'**
  String get qNavigationPushReplaceNotes;

  /// No description provided for @qNavigationPushReplacePros.
  ///
  /// In en, this message translates to:
  /// **'push keeps the previous screen in memory (user can go back).\npushReplacement removes it (suitable for login screens or flows where going back is not needed).'**
  String get qNavigationPushReplacePros;

  /// No description provided for @qNavigationPushReplaceCons.
  ///
  /// In en, this message translates to:
  /// **'push can accumulate many routes if not managed (memory).\npushReplacement prevents back navigation but loses previous screen state.'**
  String get qNavigationPushReplaceCons;

  /// No description provided for @qNavigationPushReplaceBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use push for normal forward navigation. Use pushReplacement for replacing screens permanently (e.g., after login or splash screen).'**
  String get qNavigationPushReplaceBestUse;

  /// No description provided for @qNavigator1Vs2.
  ///
  /// In en, this message translates to:
  /// **'What is the difference between Navigator 1.0 and Navigator 2.0?'**
  String get qNavigator1Vs2;

  /// No description provided for @qNavigator1Vs2Notes.
  ///
  /// In en, this message translates to:
  /// **'Navigator 1.0 is the classic imperative API (push/pop by widget), while Navigator 2.0 is a declarative, URL-based API with Router and RouteInformationParser. Navigator 2.0 offers more control over browser URL and deep linking.'**
  String get qNavigator1Vs2Notes;

  /// No description provided for @qNavigator1Vs2Pros.
  ///
  /// In en, this message translates to:
  /// **'Navigator 2.0 enables web and more complex navigation patterns (deep linking).'**
  String get qNavigator1Vs2Pros;

  /// No description provided for @qNavigator1Vs2Cons.
  ///
  /// In en, this message translates to:
  /// **'Navigator 2.0 has a steeper learning curve and more code overhead.\nFor simple apps, Navigator 1.0 is easier to use.'**
  String get qNavigator1Vs2Cons;

  /// No description provided for @qNavigator1Vs2BestUse.
  ///
  /// In en, this message translates to:
  /// **'Use Navigator 2.0 for web apps or apps requiring deep linking and custom routing behavior. For basic navigation, 1.0 is sufficient.'**
  String get qNavigator1Vs2BestUse;

  /// No description provided for @qBuildContext.
  ///
  /// In en, this message translates to:
  /// **'What is Flutter\'s build() method context parameter?'**
  String get qBuildContext;

  /// No description provided for @qBuildContextNotes.
  ///
  /// In en, this message translates to:
  /// **'BuildContext is an object which represents the location of a widget in the widget tree. It is passed to the build method and can be used to access theme data, localization, and to find ancestor widgets in the tree.'**
  String get qBuildContextNotes;

  /// No description provided for @qBuildContextPros.
  ///
  /// In en, this message translates to:
  /// **'Allows widgets to access inherited widgets like Theme or MediaQuery.\nEssential for widget communication.'**
  String get qBuildContextPros;

  /// No description provided for @qBuildContextCons.
  ///
  /// In en, this message translates to:
  /// **'Misusing context (e.g., using it before initState or in async) can lead to errors.'**
  String get qBuildContextCons;

  /// No description provided for @qBuildContextBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use context inside build() to obtain theme or other inherited data, or Navigator for navigation.'**
  String get qBuildContextBestUse;

  /// No description provided for @qWhatIsIsolate.
  ///
  /// In en, this message translates to:
  /// **'What is an Isolate in Dart and how is it used?'**
  String get qWhatIsIsolate;

  /// No description provided for @qWhatIsIsolateNotes.
  ///
  /// In en, this message translates to:
  /// **'An Isolate is a separate thread of execution that doesn\'t share memory with the main isolate. It has its own memory heap. Communication is done via message passing (SendPort/ReceivePort). Use isolates for CPU-intensive tasks to avoid blocking the main UI thread.'**
  String get qWhatIsIsolateNotes;

  /// No description provided for @qWhatIsIsolatePros.
  ///
  /// In en, this message translates to:
  /// **'Enables true parallel computation in Dart without shared-memory concurrency bugs.\nImproves performance for heavy tasks.'**
  String get qWhatIsIsolatePros;

  /// No description provided for @qWhatIsIsolateCons.
  ///
  /// In en, this message translates to:
  /// **'Communication via message passing can be complex and slower.\nStarting an isolate has overhead; not suitable for small tasks.'**
  String get qWhatIsIsolateCons;

  /// No description provided for @qWhatIsIsolateBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use isolates for expensive computations (image processing, large computations) off the main thread. For most UI tasks, use async/await instead.'**
  String get qWhatIsIsolateBestUse;

  /// No description provided for @qFutureBuilderStreamBuilder.
  ///
  /// In en, this message translates to:
  /// **'What are FutureBuilder and StreamBuilder used for in Flutter?'**
  String get qFutureBuilderStreamBuilder;

  /// No description provided for @qFutureBuilderStreamBuilderNotes.
  ///
  /// In en, this message translates to:
  /// **'FutureBuilder is a widget that builds itself based on the latest snapshot of interaction with a Future. StreamBuilder similarly rebuilds when new Stream events arrive. They simplify handling of asynchronous data in the UI without manual listeners.'**
  String get qFutureBuilderStreamBuilderNotes;

  /// No description provided for @qFutureBuilderStreamBuilderPros.
  ///
  /// In en, this message translates to:
  /// **'Makes it easy to update UI based on async results or stream data.\nHandles connection states and snapshots automatically.'**
  String get qFutureBuilderStreamBuilderPros;

  /// No description provided for @qFutureBuilderStreamBuilderCons.
  ///
  /// In en, this message translates to:
  /// **'Can lead to rebuilds on every event.\nNeed to manage performance if streams are frequent.'**
  String get qFutureBuilderStreamBuilderCons;

  /// No description provided for @qFutureBuilderStreamBuilderBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use FutureBuilder for one-time async calls (like HTTP requests) and StreamBuilder for continuous data (like realtime updates or web sockets).'**
  String get qFutureBuilderStreamBuilderBestUse;

  /// No description provided for @qConstructorFactory.
  ///
  /// In en, this message translates to:
  /// **'What is a Constructor in Dart and what are factory constructors?'**
  String get qConstructorFactory;

  /// No description provided for @qConstructorFactoryNotes.
  ///
  /// In en, this message translates to:
  /// **'A constructor in Dart is a special method to create objects of a class. A factory constructor is a special type of constructor that can return an existing instance or a subclass. It\'s declared with the \'factory\' keyword. Useful for singleton or cache implementations.'**
  String get qConstructorFactoryNotes;

  /// No description provided for @qConstructorFactoryPros.
  ///
  /// In en, this message translates to:
  /// **'Factory constructors allow control over instance creation (e.g., implementing singletons or caches).\nCan return different subtypes.'**
  String get qConstructorFactoryPros;

  /// No description provided for @qConstructorFactoryCons.
  ///
  /// In en, this message translates to:
  /// **'Factory constructors cannot access \'this\' and don\'t automatically create a new instance.\nThey add complexity compared to a normal constructor.'**
  String get qConstructorFactoryCons;

  /// No description provided for @qConstructorFactoryBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use factory constructors for patterns like singleton or when you need custom logic to decide which instance to return.'**
  String get qConstructorFactoryBestUse;

  /// No description provided for @qSingletonPattern.
  ///
  /// In en, this message translates to:
  /// **'What is a Singleton pattern and how can you implement it in Dart?'**
  String get qSingletonPattern;

  /// No description provided for @qSingletonPatternNotes.
  ///
  /// In en, this message translates to:
  /// **'Singleton ensures a class has only one instance and provides a global access point. In Dart, you can implement a singleton by using a private constructor and a static instance. Useful for caches or shared resources.'**
  String get qSingletonPatternNotes;

  /// No description provided for @qSingletonPatternPros.
  ///
  /// In en, this message translates to:
  /// **'Ensures a single shared instance across the app (useful for caches, shared resources).'**
  String get qSingletonPatternPros;

  /// No description provided for @qSingletonPatternCons.
  ///
  /// In en, this message translates to:
  /// **'Global state can make testing harder and lead to hidden dependencies.'**
  String get qSingletonPatternCons;

  /// No description provided for @qSingletonPatternBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use singleton for classes that manage global state or resources (e.g., a settings manager or network client).'**
  String get qSingletonPatternBestUse;

  /// No description provided for @qFlutterPerformance.
  ///
  /// In en, this message translates to:
  /// **'How do you optimize Flutter application performance?'**
  String get qFlutterPerformance;

  /// No description provided for @qFlutterPerformanceNotes.
  ///
  /// In en, this message translates to:
  /// **'Common Flutter performance optimizations include: using const constructors to avoid rebuilds, splitting widgets to reduce rebuild scope, using efficient data structures, minimizing widget layers (RepaintBoundary), and caching images or data. Avoid large asset sizes and excessive rebuilds.'**
  String get qFlutterPerformanceNotes;

  /// No description provided for @qFlutterPerformancePros.
  ///
  /// In en, this message translates to:
  /// **'Applying these techniques can significantly improve frame rates and responsiveness.'**
  String get qFlutterPerformancePros;

  /// No description provided for @qFlutterPerformanceCons.
  ///
  /// In en, this message translates to:
  /// **'Over-optimizing early can complicate code.\nFocus on bottlenecks identified by profiling.'**
  String get qFlutterPerformanceCons;

  /// No description provided for @qFlutterPerformanceBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use performance profiling (DevTools) to find bottlenecks. Apply optimizations like const constructors, efficient layout, and offloading work to isolates as needed.'**
  String get qFlutterPerformanceBestUse;

  /// No description provided for @qRenderingEngine.
  ///
  /// In en, this message translates to:
  /// **'What is Flutter\'s rendering engine and how does it work (e.g., Skia, Impeller)?'**
  String get qRenderingEngine;

  /// No description provided for @qRenderingEngineNotes.
  ///
  /// In en, this message translates to:
  /// **'Flutter\'s default rendering engine is Skia, a C++ based 2D graphics library. The newer Impeller engine improves performance and reduces graphical issues on some platforms. These engines compile Flutter\'s UI to native graphics commands on each platform.'**
  String get qRenderingEngineNotes;

  /// No description provided for @qRenderingEnginePros.
  ///
  /// In en, this message translates to:
  /// **'Skia provides high-quality, fast rendering.\nImpeller further optimizes GPU use and predictability.'**
  String get qRenderingEnginePros;

  /// No description provided for @qRenderingEngineCons.
  ///
  /// In en, this message translates to:
  /// **'Engine details are mostly abstracted away.\nDevelopers should be aware for debugging only.\nImpeller is still maturing on some platforms.'**
  String get qRenderingEngineCons;

  /// No description provided for @qRenderingEngineBestUse.
  ///
  /// In en, this message translates to:
  /// **'Benefit from engine improvements via Flutter upgrades. For advanced needs (e.g., custom shaders), learn how to use the appropriate engine.'**
  String get qRenderingEngineBestUse;

  /// No description provided for @qFlutterVsReactNative.
  ///
  /// In en, this message translates to:
  /// **'Compare Flutter with React Native: what are the pros and cons?'**
  String get qFlutterVsReactNative;

  /// No description provided for @qFlutterVsReactNativeNotes.
  ///
  /// In en, this message translates to:
  /// **'Flutter and React Native are both cross-platform frameworks. Flutter compiles to native ARM code and has its own rendering, offering high performance. React Native uses a JavaScript bridge to native components, which can be slower. Flutter\'s UI is highly customizable, while React Native uses native widgets with less flexibility.'**
  String get qFlutterVsReactNativeNotes;

  /// No description provided for @qFlutterVsReactNativePros.
  ///
  /// In en, this message translates to:
  /// **'Flutter: high performance, full UI control, one codebase.\nReact Native: larger library ecosystem, JavaScript familiarity for web developers.'**
  String get qFlutterVsReactNativePros;

  /// No description provided for @qFlutterVsReactNativeCons.
  ///
  /// In en, this message translates to:
  /// **'Flutter: larger app size, Dart is less known, fewer third-party packages.\nReact Native: performance overhead from JS bridge, UI consistency issues.'**
  String get qFlutterVsReactNativeCons;

  /// No description provided for @qFlutterVsReactNativeBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use Flutter when performance and custom UI are top priorities. Use React Native if leveraging existing JavaScript code or ecosystem matters more.'**
  String get qFlutterVsReactNativeBestUse;

  /// No description provided for @qInheritanceVsComposition.
  ///
  /// In en, this message translates to:
  /// **'Explain inheritance and composition in Dart.'**
  String get qInheritanceVsComposition;

  /// No description provided for @qInheritanceVsCompositionNotes.
  ///
  /// In en, this message translates to:
  /// **'Inheritance is when a class extends another class, inheriting its properties and methods (\"is-a\" relationship). Composition is when a class includes instances of other classes as fields (\"has-a\" relationship). Composition is often preferred for flexibility.'**
  String get qInheritanceVsCompositionNotes;

  /// No description provided for @qInheritanceVsCompositionPros.
  ///
  /// In en, this message translates to:
  /// **'Inheritance makes code reuse easy for closely related classes.\nComposition provides more flexibility and looser coupling.'**
  String get qInheritanceVsCompositionPros;

  /// No description provided for @qInheritanceVsCompositionCons.
  ///
  /// In en, this message translates to:
  /// **'Inheritance can lead to rigid hierarchies and tight coupling.\nComposition can lead to more boilerplate but is more adaptable.'**
  String get qInheritanceVsCompositionCons;

  /// No description provided for @qInheritanceVsCompositionBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use inheritance when classes have clear hierarchy and share behavior. Use composition to assemble behavior from multiple classes for flexibility.'**
  String get qInheritanceVsCompositionBestUse;

  /// No description provided for @qWhatIsPolymorphism.
  ///
  /// In en, this message translates to:
  /// **'What is polymorphism in object-oriented programming?'**
  String get qWhatIsPolymorphism;

  /// No description provided for @qWhatIsPolymorphismNotes.
  ///
  /// In en, this message translates to:
  /// **'Polymorphism means \"many forms\". In Dart, it allows treating objects of different classes through a common interface (e.g., methods overridden in subclasses). A function can accept a base class type and operate on any subclass instance.'**
  String get qWhatIsPolymorphismNotes;

  /// No description provided for @qWhatIsPolymorphismPros.
  ///
  /// In en, this message translates to:
  /// **'Makes code more flexible and reusable by programming to an interface or superclass rather than concrete classes.'**
  String get qWhatIsPolymorphismPros;

  /// No description provided for @qWhatIsPolymorphismCons.
  ///
  /// In en, this message translates to:
  /// **'May make code harder to understand if overused, as the actual object type is less obvious.'**
  String get qWhatIsPolymorphismCons;

  /// No description provided for @qWhatIsPolymorphismBestUse.
  ///
  /// In en, this message translates to:
  /// **'Use polymorphism when you want to use a common interface (abstract class or base class) for different concrete implementations.'**
  String get qWhatIsPolymorphismBestUse;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search questions...'**
  String get search;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noResults;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @expertLevel.
  ///
  /// In en, this message translates to:
  /// **'Expert'**
  String get expertLevel;

  /// No description provided for @codeExample.
  ///
  /// In en, this message translates to:
  /// **'Code Example'**
  String get codeExample;
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
