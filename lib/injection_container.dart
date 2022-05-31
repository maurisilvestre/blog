import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'core/services/auth/auth_notifier.dart';
// import 'core/services/auth/auth_service.dart';
import 'core/services/auth/auth.dart';
import 'features/auth/data/datasources/repositories.dart';
import 'features/auth/data/repositories/repositories.dart';
import 'features/auth/domain/repositories/repositories.dart';
import 'features/auth/domain/usecases/usecases.dart';
import 'features/auth/presentation/bloc/blocs.dart';
import 'features/home/presentation/bloc/blocs.dart';
import 'features/microblogging/data/datasources/datasources.dart';
import 'features/microblogging/data/repositories/repositories.dart';
import 'features/microblogging/domain/repositories/repositories.dart';
import 'features/microblogging/presentation/bloc/blocs.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(() => AuthNotifier(sl()));
  sl.registerFactory(() => HomeBloc());
  sl.registerFactory(() => SignUpBloc());
  sl.registerFactory(() => PostBloc(sl(), sl()));

  // Use cases
  sl.registerLazySingleton(() => SignInUsecase(sl()));
  sl.registerLazySingleton(() => SignOutUsecase(sl()));
  sl.registerLazySingleton(() => SignUpUsecase(sl()));

  // Repository
  sl.registerLazySingleton<IAuthRepository>(
    () => AuthRepositoryImpl(
      localDataSource: sl(),
    ),
  );
  sl.registerLazySingleton<IPostRepository>(
    () => PostRepositoryImpl(
      localDatasource: sl(),
      remoteDatasource: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<IAuthLocalDataSource>(
    () => AuthLocalDataSource(sharedPreferences: sl()),
  );

  sl.registerLazySingleton<IMicrobloggingLocalDatasource>(
    () => MicrobloggingLocalDataSource(
        sharedPreferences: sl(), authService: sl()),
  );

  sl.registerLazySingleton<IMicrobloggingRemoteDatasource>(
    () => MicrobloggingRemoteDatasource(sl(),
        baseUrl: "https://gb-mobile-app-teste.s3.amazonaws.com"),
  );

  // Service
  sl.registerLazySingleton<IAuthService>(
    () => AuthService(sl(), sl()),
  );

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
}
