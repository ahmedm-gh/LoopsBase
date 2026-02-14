import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loopsbase/core/services/locator.dart';
import 'package:loopsbase/features/design_patterns/view/design_pattern_categories_screen.dart';
import 'package:loopsbase/features/design_patterns/view/pattern_details_screen.dart';
import 'package:loopsbase/features/design_patterns/controller/cubit/design_patterns_cubit.dart';
import 'package:loopsbase/features/design_patterns/view/patterns_list.dart'
    show PatternsListScreen;
import 'package:loopsbase/features/home/view/home_screen.dart';
import 'package:loopsbase/features/interview_questions/controller/cubit/questions_cubit.dart';
import 'package:loopsbase/features/interview_questions/view/interview_questions_page.dart';
import 'package:loopsbase/features/interview_questions/view/question_details_page.dart';
import 'package:loopsbase/features/terms/controller/cubit/terms_cubit.dart';
import 'package:loopsbase/features/refactoring/refactoring_details_page.dart';
import 'package:loopsbase/features/refactoring/refactoring_page.dart';
import 'package:loopsbase/features/splash/splash_screen.dart';
import 'package:loopsbase/shared/methods/to_value.dart';

import '../../features/terms/view/terms.dart';
import '../../features/terms/view/term_details.dart';
import '../../features/useful_plugins/plugin_details.dart';
import '../../features/useful_plugins/useful_plugins.dart';

abstract class Routes {
  static const splash = "/";
  static const home = "/home";

  static const designPatternCategoriesScreen = "/design-pattern";
  static const designPatternListScreen = "/design-pattern-list";
  static const designPatternDetails = "/design-pattern-details";

  static const questionList = "/question-list";
  static const questionDetails = "/question-details";

  static const refactoringList = "/refactoring-list";
  static const refactoringDetails = "/refactoring-details";

  static const programmingTermsList = "/programming-terms-list";
  static const programmingTermDetails = "/programming-term-details";

  static const usefulPluginsList = "/useful-plugins-list";
  static const usefulPluginsDetails = "/useful-plugins-details";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    log("$settings", name: "route");

    return switch (settings.name) {
      splash => MaterialPageRoute(builder: (_) => const SplashScreen()),
      home => MaterialPageRoute(builder: (_) => const HomeScreen()),
      designPatternCategoriesScreen => MaterialPageRoute(
        builder: (_) {
          return BlocProvider<DesignPatternsCubit>(
            create: (context) => sl(),
            child: const DesignPatternCategoriesScreen(),
          );
        },
      ),
      designPatternListScreen => MaterialPageRoute(
        builder: (_) {
          return PatternsListScreen(
            arguments: toValue(settings.arguments, null),
          );
        },
      ),
      designPatternDetails => MaterialPageRoute(
        builder: (_) {
          return PatternDetailsScreen(
            arguments: toValue(settings.arguments, null),
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
          return TermDetailsScreen(
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
