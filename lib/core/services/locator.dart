import 'package:get_it/get_it.dart';

import '../../features/interview_questions/controller/cubit/questions_cubit.dart';
import '../../features/programming_terms/controller/cubit/terms_cubit.dart';
import '../app_controller/app_controller_cubit.dart';

final sl = GetIt.instance;

void setupLocator() {
  sl.registerFactory<AppControllerCubit>(AppControllerCubit.new);
  sl.registerFactory<QuestionsCubit>(QuestionsCubit.new);
  sl.registerFactory<TermsCubit>(TermsCubit.new);
}
