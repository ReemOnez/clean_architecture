import 'package:clean_project/core/domain/use_cases/base_use_case.dart';
import 'package:clean_project/features/todo_list/domain/repositories/i_todo_repository.dart';
import 'package:clean_project/features/todo_list/domain/usecases/todo_usecase.dart';
import 'package:clean_project/features/todo_list/infrastructure/data_sources/local/todo_local_data_source.dart';
import 'package:clean_project/features/todo_list/infrastructure/data_sources/remote/todo_remote_data_source.dart';
import 'package:clean_project/features/todo_list/infrastructure/repositories/todo_repository.dart';
import 'package:clean_project/features/todo_list/presentation/bloc/todo_bloc.dart';
import 'package:clean_project/helpers/constants/urls.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  await essentialServices();
  //toDoFeature();
}

Future<void> essentialServices() async {
  /// SharedPreferences service
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton(() => sharedPreferences);

  /// Dio service
  final Dio dio = Dio(BaseOptions(
      baseUrl: Urls.baseUrl,
      contentType: 'application/json',
      followRedirects: false,
      validateStatus: (status) {
        return status == null ? false : status < 500;
      },
      headers: {
        Headers.acceptHeader: "application/json",
        // 'Accept': 'application/json',
        // 'charset': 'utf-8',
        // 'Accept-Charset': 'utf-8',
      },
      responseType: ResponseType.plain));
  dio.interceptors.add(LogInterceptor(requestHeader: true, requestBody: true, responseHeader: true, responseBody: true, request: true));
  serviceLocator.registerLazySingleton(() => dio);

  /// Logger service
  serviceLocator.registerLazySingleton(
    () => Logger(
      printer: PrettyPrinter(),
    ),
  );
  serviceLocator.registerLazySingleton(() => ToDoRemoteDataSource(serviceLocator(), serviceLocator()));
  serviceLocator.registerLazySingleton(() => ToDoLocalDataSource(serviceLocator()));
  serviceLocator.registerLazySingleton<IToDoRepository>(() => ToDoRepository(serviceLocator(), serviceLocator(), serviceLocator()));
  serviceLocator.registerLazySingleton(() => ToDoUseCase(serviceLocator()));
  serviceLocator.registerFactory(() => ToDoBloc(serviceLocator()));
}

Future<void> toDoFeature() async {}

/// Service dependency injection example
// Future<void> firstServiceDependencies() async {
//   /// Presentation Layer - Blocs
//   serviceLocator.registerFactory(
//         () => FirstServiceListBloc(
//       FirstServiceService: serviceLocator(),
//     ),
//   );
//
//   serviceLocator.registerFactory(
//         () => FirstServiceDetailBloc(
//       FirstServiceService: serviceLocator(),
//     ),
//   );
//
//   /// Application Layer - facades
//   serviceLocator.registerLazySingleton(
//         () => FirstServiceFacadeService(
//       repository: serviceLocator(),
//     ),
//   );
//
//   /// Infrastructure Layer
//   // repositories
//   serviceLocator.registerLazySingleton(
//         () => ProductRepository(
//       connectivity: serviceLocator(),
//       productLocalDataProvider: serviceLocator(),
//       productRemoteDataProvider: serviceLocator(),
//     ),
//   );
//
//   //data sources
//   serviceLocator.registerLazySingleton(
//         () => ProductLocalDataProvider(),
//   );
//   serviceLocator.registerLazySingleton(
//         () => ProductRemoteDataProvider(),
//   );
//
//   // Common and core
//   serviceLocator.registerLazySingleton(
//         () => Connectivity(),
//   );
// }
