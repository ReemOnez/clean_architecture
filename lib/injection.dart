import 'package:clean_project/features/daily_news/domain/usecases/get_article_usecase.dart';
import 'package:clean_project/helpers/constants/urls.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt sl = GetIt.instance;

void init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  sl.registerLazySingleton(
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


  //UseCases
  sl.registerSingleton<GetArticleUseCase>(
      GetArticleUseCase(sl())
  );


}
