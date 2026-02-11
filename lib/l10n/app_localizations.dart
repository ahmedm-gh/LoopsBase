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
  /// **'Design Patterns'**
  String get designPattern;

  /// No description provided for @architecturalPattern.
  ///
  /// In en, this message translates to:
  /// **'Architectural Patterns'**
  String get architecturalPattern;

  /// No description provided for @stateManagementPattern.
  ///
  /// In en, this message translates to:
  /// **'State Management Patterns'**
  String get stateManagementPattern;

  /// No description provided for @uiPattern.
  ///
  /// In en, this message translates to:
  /// **'UI Patterns'**
  String get uiPattern;

  /// No description provided for @projectStructurePattern.
  ///
  /// In en, this message translates to:
  /// **'Project Structure Patterns'**
  String get projectStructurePattern;

  /// No description provided for @creationalPattern.
  ///
  /// In en, this message translates to:
  /// **'Creational Patterns'**
  String get creationalPattern;

  /// No description provided for @structuralPattern.
  ///
  /// In en, this message translates to:
  /// **'Structural Patterns'**
  String get structuralPattern;

  /// No description provided for @behavioralPattern.
  ///
  /// In en, this message translates to:
  /// **'Behavioral Patterns'**
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
