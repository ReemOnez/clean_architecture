import 'package:clean_project/helpers/constants/urls.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final serviceLocator = GetIt.instance;

Future<void>  init() async {
  essentialServices();
}

Future<void> essentialServices() async {
  /// SharedPreferences service
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton(() => sharedPreferences);

  /// Dio service
  serviceLocator.registerLazySingleton(
        () => Dio(
      BaseOptions(
        baseUrl: Urls.baseUrl,
        contentType: 'application/json',
        followRedirects: false,
        validateStatus: (status) {
          return status == null ? false : status < 500;
        },
        headers: {
          Headers.acceptHeader: "application/json",
          //  'Accept-Language': '', /// read from sharedPreference
          // 'Authorization': '', /// read from sharedPreference
        },
      ),
    ),
  );
}

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