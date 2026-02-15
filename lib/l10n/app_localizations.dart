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
  /// **'LoopsBase'**
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

  /// No description provided for @factoryMethod.
  ///
  /// In en, this message translates to:
  /// **'Factory Method'**
  String get factoryMethod;

  /// No description provided for @abstractFactory.
  ///
  /// In en, this message translates to:
  /// **'Abstract Factory'**
  String get abstractFactory;

  /// No description provided for @builder.
  ///
  /// In en, this message translates to:
  /// **'Builder'**
  String get builder;

  /// No description provided for @prototype.
  ///
  /// In en, this message translates to:
  /// **'Prototype'**
  String get prototype;

  /// No description provided for @singleton.
  ///
  /// In en, this message translates to:
  /// **'Singleton'**
  String get singleton;

  /// No description provided for @structuralPatterns.
  ///
  /// In en, this message translates to:
  /// **'Structural Patterns'**
  String get structuralPatterns;

  /// No description provided for @adapter.
  ///
  /// In en, this message translates to:
  /// **'Adapter'**
  String get adapter;

  /// No description provided for @bridge.
  ///
  /// In en, this message translates to:
  /// **'Bridge'**
  String get bridge;

  /// No description provided for @composite.
  ///
  /// In en, this message translates to:
  /// **'Composite'**
  String get composite;

  /// No description provided for @decorator.
  ///
  /// In en, this message translates to:
  /// **'Decorator'**
  String get decorator;

  /// No description provided for @facade.
  ///
  /// In en, this message translates to:
  /// **'Facade'**
  String get facade;

  /// No description provided for @flyweight.
  ///
  /// In en, this message translates to:
  /// **'Flyweight'**
  String get flyweight;

  /// No description provided for @proxy.
  ///
  /// In en, this message translates to:
  /// **'Proxy'**
  String get proxy;

  /// No description provided for @behavioralPatterns.
  ///
  /// In en, this message translates to:
  /// **'Behavioral Patterns'**
  String get behavioralPatterns;

  /// No description provided for @chainOfResponsibility.
  ///
  /// In en, this message translates to:
  /// **'Chain of Responsibility'**
  String get chainOfResponsibility;

  /// No description provided for @command.
  ///
  /// In en, this message translates to:
  /// **'Command'**
  String get command;

  /// No description provided for @iterator.
  ///
  /// In en, this message translates to:
  /// **'Iterator'**
  String get iterator;

  /// No description provided for @interpreter.
  ///
  /// In en, this message translates to:
  /// **'Interpreter'**
  String get interpreter;

  /// No description provided for @mediator.
  ///
  /// In en, this message translates to:
  /// **'Mediator'**
  String get mediator;

  /// No description provided for @memento.
  ///
  /// In en, this message translates to:
  /// **'Memento'**
  String get memento;

  /// No description provided for @observer.
  ///
  /// In en, this message translates to:
  /// **'Observer'**
  String get observer;

  /// No description provided for @state.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get state;

  /// No description provided for @strategy.
  ///
  /// In en, this message translates to:
  /// **'Strategy'**
  String get strategy;

  /// No description provided for @templateMethod.
  ///
  /// In en, this message translates to:
  /// **'Template Method'**
  String get templateMethod;

  /// No description provided for @visitor.
  ///
  /// In en, this message translates to:
  /// **'Visitor'**
  String get visitor;

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

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard!'**
  String get copied;

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

  /// No description provided for @intermediateLevel.
  ///
  /// In en, this message translates to:
  /// **'Intermediate'**
  String get intermediateLevel;

  /// No description provided for @advancedLevel.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get advancedLevel;

  /// No description provided for @expertLevel.
  ///
  /// In en, this message translates to:
  /// **'Expert'**
  String get expertLevel;

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

  /// No description provided for @codeExample.
  ///
  /// In en, this message translates to:
  /// **'Code Example'**
  String get codeExample;

  /// No description provided for @programmingTerms.
  ///
  /// In en, this message translates to:
  /// **'Programming Terms'**
  String get programmingTerms;

  /// No description provided for @usefulPubPackages.
  ///
  /// In en, this message translates to:
  /// **'Useful Pub Packages'**
  String get usefulPubPackages;

  /// No description provided for @tags.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get tags;

  /// No description provided for @theoretical.
  ///
  /// In en, this message translates to:
  /// **'Theoretical'**
  String get theoretical;

  /// No description provided for @practical.
  ///
  /// In en, this message translates to:
  /// **'Practical'**
  String get practical;

  /// No description provided for @cBasic.
  ///
  /// In en, this message translates to:
  /// **'Basic'**
  String get cBasic;

  /// No description provided for @cSecurity.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get cSecurity;

  /// No description provided for @cOOP.
  ///
  /// In en, this message translates to:
  /// **'OOP'**
  String get cOOP;

  /// No description provided for @cSolid.
  ///
  /// In en, this message translates to:
  /// **'SOLID'**
  String get cSolid;

  /// No description provided for @cDesignPatterns.
  ///
  /// In en, this message translates to:
  /// **'Design Patterns'**
  String get cDesignPatterns;

  /// No description provided for @cDataStructures.
  ///
  /// In en, this message translates to:
  /// **'Data Structures'**
  String get cDataStructures;

  /// No description provided for @cStateManagement.
  ///
  /// In en, this message translates to:
  /// **'State Management'**
  String get cStateManagement;

  /// No description provided for @cPerformance.
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get cPerformance;

  /// No description provided for @cTesting.
  ///
  /// In en, this message translates to:
  /// **'Testing'**
  String get cTesting;

  /// No description provided for @cNetworking.
  ///
  /// In en, this message translates to:
  /// **'Networking'**
  String get cNetworking;

  /// No description provided for @cDatabase.
  ///
  /// In en, this message translates to:
  /// **'Database'**
  String get cDatabase;

  /// No description provided for @cArchitecture.
  ///
  /// In en, this message translates to:
  /// **'Architecture'**
  String get cArchitecture;

  /// No description provided for @cDartBasics.
  ///
  /// In en, this message translates to:
  /// **'Dart Basics'**
  String get cDartBasics;

  /// No description provided for @cFlutterBasics.
  ///
  /// In en, this message translates to:
  /// **'Flutter Basics'**
  String get cFlutterBasics;

  /// No description provided for @cUI.
  ///
  /// In en, this message translates to:
  /// **'UI'**
  String get cUI;

  /// No description provided for @cNativePlatform.
  ///
  /// In en, this message translates to:
  /// **'Native Platform'**
  String get cNativePlatform;

  /// No description provided for @cAnimations.
  ///
  /// In en, this message translates to:
  /// **'Animations'**
  String get cAnimations;

  /// No description provided for @cModernFeatures.
  ///
  /// In en, this message translates to:
  /// **'Modern Features'**
  String get cModernFeatures;

  /// No description provided for @cDeployment.
  ///
  /// In en, this message translates to:
  /// **'Deployment'**
  String get cDeployment;

  /// No description provided for @questionNotFound.
  ///
  /// In en, this message translates to:
  /// **'Question not found'**
  String get questionNotFound;

  /// No description provided for @onlyBookmarked.
  ///
  /// In en, this message translates to:
  /// **'Only Bookmarked'**
  String get onlyBookmarked;

  /// No description provided for @allLevels.
  ///
  /// In en, this message translates to:
  /// **'All Levels'**
  String get allLevels;

  /// No description provided for @commonMistakes.
  ///
  /// In en, this message translates to:
  /// **'Common Mistakes'**
  String get commonMistakes;

  /// No description provided for @noPattern.
  ///
  /// In en, this message translates to:
  /// **'No pattern'**
  String get noPattern;

  /// No description provided for @pGoF.
  ///
  /// In en, this message translates to:
  /// **'Classic (GoF)'**
  String get pGoF;

  /// No description provided for @pNonGoF.
  ///
  /// In en, this message translates to:
  /// **'Non-GoF'**
  String get pNonGoF;

  /// No description provided for @pPractical.
  ///
  /// In en, this message translates to:
  /// **'Practical'**
  String get pPractical;

  /// No description provided for @pModern.
  ///
  /// In en, this message translates to:
  /// **'Modern'**
  String get pModern;

  /// No description provided for @designPattern.
  ///
  /// In en, this message translates to:
  /// **'Design Pattern'**
  String get designPattern;

  /// No description provided for @architecturalPattern.
  ///
  /// In en, this message translates to:
  /// **'Architectural Pattern'**
  String get architecturalPattern;

  /// No description provided for @stateManagementPattern.
  ///
  /// In en, this message translates to:
  /// **'State Management Pattern'**
  String get stateManagementPattern;

  /// No description provided for @uiPattern.
  ///
  /// In en, this message translates to:
  /// **'UI Pattern'**
  String get uiPattern;

  /// No description provided for @projectStructurePattern.
  ///
  /// In en, this message translates to:
  /// **'Project Structure Pattern'**
  String get projectStructurePattern;

  /// No description provided for @creationalPattern.
  ///
  /// In en, this message translates to:
  /// **'Creational Pattern'**
  String get creationalPattern;

  /// No description provided for @structuralPattern.
  ///
  /// In en, this message translates to:
  /// **'Structural Pattern'**
  String get structuralPattern;

  /// No description provided for @behavioralPattern.
  ///
  /// In en, this message translates to:
  /// **'Behavioral Pattern'**
  String get behavioralPattern;

  /// No description provided for @relatedPatterns.
  ///
  /// In en, this message translates to:
  /// **'Related Patterns'**
  String get relatedPatterns;

  /// No description provided for @oftenConfusedWith.
  ///
  /// In en, this message translates to:
  /// **'Often Confused With'**
  String get oftenConfusedWith;

  /// No description provided for @termNotFound.
  ///
  /// In en, this message translates to:
  /// **'Term not found'**
  String get termNotFound;

  /// No description provided for @bookmarks.
  ///
  /// In en, this message translates to:
  /// **'Bookmarks'**
  String get bookmarks;

  /// No description provided for @termTypeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get termTypeLanguage;

  /// No description provided for @termTypeConcept.
  ///
  /// In en, this message translates to:
  /// **'Concept'**
  String get termTypeConcept;

  /// No description provided for @termTypeParadigm.
  ///
  /// In en, this message translates to:
  /// **'Paradigm'**
  String get termTypeParadigm;

  /// No description provided for @termTypePattern.
  ///
  /// In en, this message translates to:
  /// **'Pattern'**
  String get termTypePattern;

  /// No description provided for @termTypePrinciple.
  ///
  /// In en, this message translates to:
  /// **'Principle'**
  String get termTypePrinciple;

  /// No description provided for @termTypeSyntax.
  ///
  /// In en, this message translates to:
  /// **'Syntax'**
  String get termTypeSyntax;

  /// No description provided for @termTypeKeyword.
  ///
  /// In en, this message translates to:
  /// **'Keyword'**
  String get termTypeKeyword;

  /// No description provided for @termTypeFeature.
  ///
  /// In en, this message translates to:
  /// **'Feature'**
  String get termTypeFeature;

  /// No description provided for @termTypeArchitecture.
  ///
  /// In en, this message translates to:
  /// **'Architecture'**
  String get termTypeArchitecture;

  /// No description provided for @termTypeDataStructure.
  ///
  /// In en, this message translates to:
  /// **'Data Structure'**
  String get termTypeDataStructure;

  /// No description provided for @termTypeAlgorithm.
  ///
  /// In en, this message translates to:
  /// **'Algorithm'**
  String get termTypeAlgorithm;

  /// No description provided for @termTypeTool.
  ///
  /// In en, this message translates to:
  /// **'Tool'**
  String get termTypeTool;

  /// No description provided for @termTypeFramework.
  ///
  /// In en, this message translates to:
  /// **'Framework'**
  String get termTypeFramework;

  /// No description provided for @termTypeLibrary.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get termTypeLibrary;

  /// No description provided for @termTypeRuntime.
  ///
  /// In en, this message translates to:
  /// **'Runtime'**
  String get termTypeRuntime;

  /// No description provided for @termTypeProtocol.
  ///
  /// In en, this message translates to:
  /// **'Protocol'**
  String get termTypeProtocol;

  /// No description provided for @termTypeMethodology.
  ///
  /// In en, this message translates to:
  /// **'Methodology'**
  String get termTypeMethodology;

  /// No description provided for @termTypeDesignSystem.
  ///
  /// In en, this message translates to:
  /// **'Design System'**
  String get termTypeDesignSystem;

  /// No description provided for @termCategoryFundamentals.
  ///
  /// In en, this message translates to:
  /// **'Fundamentals'**
  String get termCategoryFundamentals;

  /// No description provided for @termCategoryOOP.
  ///
  /// In en, this message translates to:
  /// **'Object-Oriented Programming'**
  String get termCategoryOOP;

  /// No description provided for @termCategoryFunctionalProgramming.
  ///
  /// In en, this message translates to:
  /// **'Functional Programming'**
  String get termCategoryFunctionalProgramming;

  /// No description provided for @termCategoryProceduralProgramming.
  ///
  /// In en, this message translates to:
  /// **'Procedural Programming'**
  String get termCategoryProceduralProgramming;

  /// No description provided for @termCategoryReactiveProgramming.
  ///
  /// In en, this message translates to:
  /// **'Reactive Programming'**
  String get termCategoryReactiveProgramming;

  /// No description provided for @termCategoryConcurrency.
  ///
  /// In en, this message translates to:
  /// **'Concurrency'**
  String get termCategoryConcurrency;

  /// No description provided for @termCategoryMemoryManagement.
  ///
  /// In en, this message translates to:
  /// **'Memory Management'**
  String get termCategoryMemoryManagement;

  /// No description provided for @termCategoryNetworking.
  ///
  /// In en, this message translates to:
  /// **'Networking'**
  String get termCategoryNetworking;

  /// No description provided for @termCategorySecurity.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get termCategorySecurity;

  /// No description provided for @termCategoryDatabases.
  ///
  /// In en, this message translates to:
  /// **'Databases'**
  String get termCategoryDatabases;

  /// No description provided for @termCategoryUiUx.
  ///
  /// In en, this message translates to:
  /// **'UI/UX'**
  String get termCategoryUiUx;

  /// No description provided for @termCategoryFrontend.
  ///
  /// In en, this message translates to:
  /// **'Frontend'**
  String get termCategoryFrontend;

  /// No description provided for @termCategoryBackend.
  ///
  /// In en, this message translates to:
  /// **'Backend'**
  String get termCategoryBackend;

  /// No description provided for @termCategoryMobileDevelopment.
  ///
  /// In en, this message translates to:
  /// **'Mobile Development'**
  String get termCategoryMobileDevelopment;

  /// No description provided for @termCategoryWebDevelopment.
  ///
  /// In en, this message translates to:
  /// **'Web Development'**
  String get termCategoryWebDevelopment;

  /// No description provided for @termCategoryDevOps.
  ///
  /// In en, this message translates to:
  /// **'DevOps'**
  String get termCategoryDevOps;

  /// No description provided for @termCategoryTesting.
  ///
  /// In en, this message translates to:
  /// **'Testing'**
  String get termCategoryTesting;

  /// No description provided for @termCategoryArchitecture.
  ///
  /// In en, this message translates to:
  /// **'Architecture'**
  String get termCategoryArchitecture;

  /// No description provided for @termCategoryStateManagement.
  ///
  /// In en, this message translates to:
  /// **'State Management'**
  String get termCategoryStateManagement;

  /// No description provided for @termCategoryPerformance.
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get termCategoryPerformance;

  /// No description provided for @termCategoryCompilerInternals.
  ///
  /// In en, this message translates to:
  /// **'Compiler Internals'**
  String get termCategoryCompilerInternals;

  /// No description provided for @termCategoryVersionControl.
  ///
  /// In en, this message translates to:
  /// **'Version Control'**
  String get termCategoryVersionControl;

  /// No description provided for @termCategoryCloud.
  ///
  /// In en, this message translates to:
  /// **'Cloud Computing'**
  String get termCategoryCloud;

  /// No description provided for @termCategoryNativePlatform.
  ///
  /// In en, this message translates to:
  /// **'Native Platform'**
  String get termCategoryNativePlatform;

  /// No description provided for @termCategoryArtificialIntelligence.
  ///
  /// In en, this message translates to:
  /// **'Artificial Intelligence'**
  String get termCategoryArtificialIntelligence;

  /// No description provided for @termEraClassic.
  ///
  /// In en, this message translates to:
  /// **'Classic'**
  String get termEraClassic;

  /// No description provided for @termEraModern.
  ///
  /// In en, this message translates to:
  /// **'Modern'**
  String get termEraModern;

  /// No description provided for @termEraEmerging.
  ///
  /// In en, this message translates to:
  /// **'Emerging'**
  String get termEraEmerging;

  /// No description provided for @popularityTierLabel.
  ///
  /// In en, this message translates to:
  /// **'Popularity'**
  String get popularityTierLabel;

  /// No description provided for @popularityTierVeryHigh.
  ///
  /// In en, this message translates to:
  /// **'Very High'**
  String get popularityTierVeryHigh;

  /// No description provided for @popularityTierHigh.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get popularityTierHigh;

  /// No description provided for @popularityTierMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get popularityTierMedium;

  /// No description provided for @popularityTierLow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get popularityTierLow;

  /// No description provided for @popularityTierNiche.
  ///
  /// In en, this message translates to:
  /// **'Niche'**
  String get popularityTierNiche;

  /// No description provided for @aliases.
  ///
  /// In en, this message translates to:
  /// **'Aliases'**
  String get aliases;

  /// No description provided for @relatedTerms.
  ///
  /// In en, this message translates to:
  /// **'Related Terms'**
  String get relatedTerms;

  /// No description provided for @patternBeginnerLevel.
  ///
  /// In en, this message translates to:
  /// **'Beginner'**
  String get patternBeginnerLevel;

  /// No description provided for @patternIntermediateLevel.
  ///
  /// In en, this message translates to:
  /// **'Intermediate'**
  String get patternIntermediateLevel;

  /// No description provided for @patternAdvancedLevel.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get patternAdvancedLevel;

  /// No description provided for @patterns.
  ///
  /// In en, this message translates to:
  /// **'Patterns'**
  String get patterns;

  /// No description provided for @viewDetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewDetails;

  /// No description provided for @keyCharacteristics.
  ///
  /// In en, this message translates to:
  /// **'Key Characteristics'**
  String get keyCharacteristics;

  /// No description provided for @commonUseCases.
  ///
  /// In en, this message translates to:
  /// **'Common Use Cases'**
  String get commonUseCases;

  /// No description provided for @realWorldExamples.
  ///
  /// In en, this message translates to:
  /// **'Real World Examples'**
  String get realWorldExamples;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome back'**
  String get welcomeBack;

  /// No description provided for @featured.
  ///
  /// In en, this message translates to:
  /// **'Featured'**
  String get featured;

  /// No description provided for @designPatternsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Master the blueprints of reusable object-oriented software.'**
  String get designPatternsSubtitle;

  /// No description provided for @programmingTermsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Glossary & definitions'**
  String get programmingTermsSubtitle;

  /// No description provided for @interviewQuestionsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Prep for your job'**
  String get interviewQuestionsSubtitle;

  /// No description provided for @refactoringSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Clean code techniques'**
  String get refactoringSubtitle;

  /// No description provided for @usefulPubPackagesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Essential libraries'**
  String get usefulPubPackagesSubtitle;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming Soon'**
  String get comingSoon;

  /// No description provided for @extraTopics.
  ///
  /// In en, this message translates to:
  /// **'Extra Topics'**
  String get extraTopics;

  /// No description provided for @explore.
  ///
  /// In en, this message translates to:
  /// **'Explore'**
  String get explore;
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
