import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:dio/dio.dart';

abstract class IRemoteDataSource {
  Future<DataResult<T?>> get<T>({
    required String endPoint,
    required Map<String, dynamic> parameters,
    int Function(int, int)? onReceive,
    T Function(Object?)? fromJson,
  });

  Future<DataResult<T?>> post<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Object?) fromJson,
      Map<String, dynamic>? data});

  Future<DataResult<T?>> delete<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Object?) fromJson,
      T? data});

  Future<DataResult<T?>> put<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Object?) fromJson,
      T? data});

  Future<DataResult<T?>> patch<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Object?) fromJson,
      T? data});

  String bodyToString(dynamic data);

  Future<DataResult<T?>> wrapRemoteRequestWithTryCatch<T>(
    Future<Response<dynamic>> Function() requestFunction,
    T Function(Object?) fromJson,
  );
}
