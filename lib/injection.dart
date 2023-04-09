import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void init() {
  getIt.registerLazySingleton(
    () => Dio(
      BaseOptions(
        baseUrl: '', /// baseUrl according to FlavorConfig,
        contentType: 'application/json',
        followRedirects: false,
        validateStatus: (status) {
          return status == null ? false : status < 500;
        },
        headers: {
          Headers.acceptHeader: "application/json",
          'Accept-Language': '', /// read from sharedPreference
          'Authorization': '', /// read from sharedPreference
        },
      ),
    ),
  );
}
