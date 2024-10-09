import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:netro_mart_official/Provider/auth_provider.dart';
import 'package:netro_mart_official/Provider/category_provider.dart';
import 'package:netro_mart_official/Provider/timer_Provider.dart';
import 'package:netro_mart_official/Utils/constants.dart';
import 'package:netro_mart_official/remote/dio/dio_client.dart';
import 'package:netro_mart_official/remote/dio/logging_interceptor.dart';
import 'package:netro_mart_official/repository/auth_repo.dart';
import 'package:netro_mart_official/repository/category_repo.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core
  sl.registerLazySingleton(() => DioClient(
        AppConstants.baseUrl, sl(),
        loggingInterceptor: sl(),
        //  sharedPreferences: sl()
      ));

  // Repository
  sl.registerLazySingleton(() => AuthRepo(
      // sharedPreferences: sl(),
      dioClient: sl()));
  sl.registerLazySingleton(() => CategoryRepo(
      // sharedPreferences: sl(),
      dioClient: sl()));

  // Provider
  sl.registerFactory(() => AuthProvider(authRepo: sl()));
  sl.registerFactory(() => CategoryProvider(categoryRepo: sl()));
  sl.registerFactory(() => TimerProvider());

  // External
  //final sharedPreferences = await SharedPreferences.getInstance();
  //sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => LoggingInterceptor());
}
