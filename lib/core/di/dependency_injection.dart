
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../feature/login/data/repos/login_repo.dart';
import '../../feature/login/logic/cubit/login_cubit.dart';
import '../../feature/sign_up/data/repos/sign_up_repo.dart';
import '../../feature/sign_up/logic/sign_up_cubit.dart';
import '../networks/api_service.dart';
import '../networks/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  // getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  // getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}
