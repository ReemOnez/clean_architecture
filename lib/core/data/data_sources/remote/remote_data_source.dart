import 'dart:convert';
import 'package:clean_project/core/data/data_sources/remote/i_remote_data_source.dart';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/data/models/failure_model.dart';
import 'package:clean_project/helpers/constants/constants.dart';
import 'package:clean_project/helpers/constants/enums.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class RemoteDataSource implements IRemoteDataSource {
  final Dio _dio;
  final Logger _logger;

  RemoteDataSource(this._dio, this._logger);

  String get unAuthorized => 'unAuthorized';

  String get notFound => 'Not found';

  String get requestTimeOut => 'Request timeout';

  String get conflict => 'Conflict';

  String get serviceUnAvailable => 'Service unavailable';

  String get internalServerError => 'Internal server error';

  @override
  Future<DataResult<T?>> get<T>({
    required String endPoint,
    Map<String, dynamic>? parameters,
    int Function(int, int)? onReceive,
    T Function(Map<String, dynamic>)? fromJson,
  }) async {
    return wrapRemoteRequestWithTryCatch(() async {
      return _dio.get(
        endPoint,
        queryParameters: parameters,
        onReceiveProgress: onReceive,
      );
    }, fromJson);
  }

  @override
  Future<DataResult<T?>> post<T>(
      {required String endPoint,
      Map<String, dynamic>? parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Map<String, dynamic>)? fromJson,
      Map<String, dynamic>? data}) async {
    return wrapRemoteRequestWithTryCatch(() async {
      return _dio.post(
        endPoint,
        queryParameters: parameters,
        onReceiveProgress: onReceive,
        onSendProgress: onSend,
        data: data,
      );
    }, fromJson);
  }

  @override
  Future<DataResult<T?>> delete<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Map<String, dynamic>)? fromJson,
      T? data}) async {
    return wrapRemoteRequestWithTryCatch(() async {
      return _dio.delete(endPoint, queryParameters: parameters, data: data);
    }, fromJson);
  }

  @override
  Future<DataResult<T?>> put<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Map<String, dynamic>)? fromJson,
      T? data}) async {
    return wrapRemoteRequestWithTryCatch(() async {
      return _dio.put(
        endPoint,
        queryParameters: parameters,
        onReceiveProgress: onReceive,
        onSendProgress: onSend,
        data: data,
      );
    }, fromJson);
  }

  @override
  Future<DataResult<T?>> patch<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Map<String, dynamic>)? fromJson,
      T? data}) async {
    return wrapRemoteRequestWithTryCatch(() async {
      return _dio.patch(endPoint, queryParameters: parameters, onReceiveProgress: onReceive, onSendProgress: onSend, data: data);
    }, fromJson);
  }

  String getErrorMessage(Response response) {
    final object = jsonDecode(response.data);
    String? result;
    result = getFailureErrorMessage(response);
    switch (response.statusCode) {
      case 400:
      case 401:
      case 403:
        return result ?? unAuthorized;
      case 404:
        return result ?? notFound;
      case 408:
        return result ?? requestTimeOut;
      case 409:
        return result ?? conflict;
      case 500:
        return result ?? internalServerError;
      case 503:
        return result ?? serviceUnAvailable;
      default:
        return result ?? 'Received invalid status code: ${object.statusCode}';
    }
  }

  @override
  Future<DataResult<T?>> wrapRemoteRequestWithTryCatch<T>(
    Future<Response<dynamic>> Function() requestFunction,
    T Function(Map<String, dynamic>)? fromJson,
  ) async {
    try {
      final response = await requestFunction();
      _logger.d('response status code is ${response.statusCode}');
      if (response.statusCode != null) {
        if ((response.statusCode!) / 100 == 2) {
          return SuccessResult(response.data != null ? fromJson?.call(jsonDecode(response.data)) : response.data);
        } else {
          return FailureResult(FailureModel(errorMessage: getErrorMessage(response), statusCode: response.statusCode));
        }
      } else {
        _logger.d('Something went wrong - Server failure');
        throw Exception(ErrorDefaultValues.Server_Failure);
      }
    } on DioException catch (error, stackTrace) {
      _logger.e(ErrorLogType.dioError, error: error, stackTrace: stackTrace);
      return FailureResult(FailureModel(errorMessage: getErrorMessage(error.response!), statusCode: error.response!.statusCode));
    } catch (error, stacktrace) {
      ///a bug in the request
      _logger.e(ErrorLogType.unknownServerError, error: error, stackTrace: stacktrace);
      rethrow;
    }
  }

  @override
  String? getFailureErrorMessage(Response response) {
    /// should be implemented according to the backend response structure
    return 'error message';
  }
}
