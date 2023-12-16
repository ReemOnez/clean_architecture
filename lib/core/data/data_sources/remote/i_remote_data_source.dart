import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:dio/dio.dart';

abstract class IRemoteDataSource {
  Future<DataResult<T?>> get<T>(
      {required String endPoint, required Map<String, dynamic> parameters, int Function(int, int)? onReceive, T Function(Map<String, dynamic>)? fromJson});

  Future<DataResult<T?>> post<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Map<String, dynamic>)? fromJson,
      Map<String, dynamic>? data});

  Future<DataResult<T?>> delete<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Map<String, dynamic>)? fromJson,
      T? data});

  Future<DataResult<T?>> put<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Map<String, dynamic>)? fromJson,
      T? data});

  Future<DataResult<T?>> patch<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Map<String, dynamic>)? fromJson,
      T? data});

  String? getFailureErrorMessage(Response response);

  Future<DataResult<T?>> wrapRemoteRequestWithTryCatch<T>(
    Future<Response<dynamic>> Function() requestFunction,
    T Function(Map<String, dynamic>)? fromJson,
  );
}
