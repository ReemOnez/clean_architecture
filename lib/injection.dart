import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt getIt = GetIt.instance;

void init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreferences);

  getIt.registerLazySingleton(
    () => Dio(
      BaseOptions(
        baseUrl: '',

        /// baseUrl according to flavor configuration,
        contentType: 'application/json',
        followRedirects: false,
        validateStatus: (status) {
          return status == null ? false : status < 500;
        },
        headers: {
          Headers.acceptHeader: "application/json",
          'Accept-Language': '',

          /// read from sharedPreference
          'Authorization': '',

          /// read from sharedPreference
        },
      ),
    ),
  );
}
