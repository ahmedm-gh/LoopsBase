import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuts/core/services/locator.dart';
import 'package:tuts/features/design_patterns/design_patterns_screen.dart';
import 'package:tuts/features/design_patterns/pattern_details_screen.dart';
import 'package:tuts/features/home/view/home_screen.dart';
import 'package:tuts/features/interview_questions/controller/cubit/questions_cubit.dart';
import 'package:tuts/features/interview_questions/view/interview_questions_page.dart';
import 'package:tuts/features/interview_questions/view/question_details_page.dart';
import 'package:tuts/features/programming_terms/controller/cubit/terms_cubit.dart';
import 'package:tuts/features/refactoring/refactoring_details_page.dart';
import 'package:tuts/features/refactoring/refactoring_page.dart';
import 'package:tuts/features/splash/splash_screen.dart';
import 'package:tuts/shared/methods/to_value.dart';

import '../../features/programming_terms/view/programming_terms.dart';
import '../../features/programming_terms/view/term_details.dart';
import '../../features/useful_plugins/plugin_details.dart';
import '../../features/useful_plugins/useful_plugins.dart';

abstract class Routes {
  //
  static const splash = "/";
  static const home = "/home";

  //
  static const designPattern = "/design-pattern";
  static const designPatternDetails = "/design-pattern-details";

  //
  static const questionList = "/question-list";
  static const questionDetails = "/question-details";

  //
  static const refactoringList = "/refactoring-list";
  static const refactoringDetails = "/refactoring-details";

  //
  static const programmingTermsList = "/programming-terms-list";
  static const programmingTermDetails = "/programming-term-details";

  //
  static const usefulPluginsList = "/useful-plugins-list";
  static const usefulPluginsDetails = "/useful-plugins-details";

  //
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    log("$settings", name: "route");

    return switch (settings.name) {
      splash => MaterialPageRoute(builder: (_) => const SplashScreen()),
      home => MaterialPageRoute(builder: (_) => const HomeScreen()),
      designPattern => MaterialPageRoute(
        builder: (_) => const DesignPatternsScreen(),
      ),
      designPatternDetails => MaterialPageRoute(
        builder: (_) {
          return PatternDetailsScreen(
            pattern: toValue<PatternDetailsScreenArguments>(
              settings.arguments,
              const .none(),
            ).pattern,
          );
        },
      ),
      questionList => MaterialPageRoute(
        builder: (_) {
          return BlocProvider<QuestionsCubit>(
            create: (context) => sl(),
            child: const InterviewQuestionsScreen(),
          );
        },
      ),
      questionDetails => MaterialPageRoute(
        builder: (_) {
          return QuestionDetailsScreen(
            arguments: toValue(settings.arguments, null),
          );
        },
      ),
      refactoringList => MaterialPageRoute(
        builder: (_) => const RefactoringScreen(),
      ),
      refactoringDetails => MaterialPageRoute(
        builder: (_) => const RefactoringDetailsScreen(),
      ),
      programmingTermsList => MaterialPageRoute(
        builder: (_) {
          return BlocProvider<TermsCubit>(
            create: (context) => sl(),
            child: const ProgrammingTermsScreen(),
          );
        },
      ),
      programmingTermDetails => MaterialPageRoute(
        builder: (_) {
          return ProgrammingTermDetailsScreen(
            arguments: toValue(settings.arguments, null),
          );
        },
      ),
      usefulPluginsList => MaterialPageRoute(
        builder: (_) => const UsefulPluginsScreen(),
      ),
      usefulPluginsDetails => MaterialPageRoute(
        builder: (_) => const UsefulPluginsDetailsScreen(),
      ),
      _ => null,
    };
  }
}
