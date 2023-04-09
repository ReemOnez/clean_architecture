import 'dart:convert';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/data/models/failure_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

abstract class NetworkDataSource {
  final Dio _dio;

  String? getFailureErrorMessage(Response response);

  String get unAuthorized => 'unAuthorized';

  String get notFound => 'Not found';

  String get requestTimeOut => 'Request timeout';

  String get conflict => 'Conflict';

  String get serviceUnAvailable => 'Service unavailable';

  String get internalServerError => 'Internal server error';

  NetworkDataSource(this._dio);

  Future<DataResult<T?>> get<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      T Function(Map<String, dynamic>)? fromJson}) async {
    try {
      final response = await _dio.get(endPoint, queryParameters: parameters, onReceiveProgress: onReceive);
      if (response.statusCode != null) {
        if (response.statusCode! / 100 == 2) {
          return SuccessResult(fromJson?.call(jsonDecode(response.data)));
        } else {
          return FailureResult(FailureModel(errorMessage: getErrorMessage(response), statusCode: response.statusCode));
        }
      } else {
        throw Error();
      }
    } on DioError catch (error) {
      return FailureResult(FailureModel(errorMessage: getErrorMessage(error.response!), statusCode: error.response!.statusCode));
    } catch (error) {
      debugPrint('Null status code $error');
      rethrow;
    }
  }

  Future<DataResult<T?>> post<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Map<String, dynamic>)? fromJson,
      Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.post(endPoint, queryParameters: parameters, onReceiveProgress: onReceive, onSendProgress: onSend, data: data);
      if (response.statusCode != null) {
        if ((response.statusCode!) / 100 == 2) {
          return SuccessResult(fromJson?.call(jsonDecode(response.data)));
        } else {
          return FailureResult(FailureModel(errorMessage: getErrorMessage(response), statusCode: response.statusCode));
        }
      } else {
        throw Error();
      }
    } on DioError catch (error) {
      return FailureResult(FailureModel(errorMessage: getErrorMessage(error.response!), statusCode: error.response!.statusCode));
    } catch (error) {
      debugPrint('Null status code $error');
      rethrow;
    }
  }

  Future<DataResult<T?>> delete<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Map<String, dynamic>)? fromJson,
      T? data}) async {
    try {
      final response = await _dio.delete(endPoint, queryParameters: parameters, data: data);
      if (response.statusCode != null) {
        if ((response.statusCode!) / 100 == 2) {
          return SuccessResult(fromJson?.call(jsonDecode(response.data)));
        } else {
          return FailureResult(FailureModel(errorMessage: getErrorMessage(response), statusCode: response.statusCode));
        }
      } else {
        throw Error();
      }
    } on DioError catch (error) {
      return FailureResult(FailureModel(errorMessage: getErrorMessage(error.response!), statusCode: error.response!.statusCode));
    } catch (error) {
      debugPrint('Null status code $error');
      rethrow;
    }
  }

  Future<DataResult<T?>> put<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Map<String, dynamic>)? fromJson,
      T? data}) async {
    try {
      final response = await _dio.put(endPoint, queryParameters: parameters, onReceiveProgress: onReceive, onSendProgress: onSend, data: data);
      if (response.statusCode != null) {
        if ((response.statusCode!) / 100 == 2) {
          return SuccessResult(fromJson?.call(jsonDecode(response.data)));
        } else {
          return FailureResult(FailureModel(errorMessage: getErrorMessage(response), statusCode: response.statusCode));
        }
      } else {
        throw Error();
      }
    } on DioError catch (error) {
      return FailureResult(FailureModel(errorMessage: getErrorMessage(error.response!), statusCode: error.response!.statusCode));
    } catch (error) {
      debugPrint('Null status code $error');
      rethrow;
    }
  }

  Future<DataResult<T?>> patch<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      int Function(int, int)? onSend,
      T Function(Map<String, dynamic>)? fromJson,
      T? data}) async {
    try {
      final response = await _dio.patch(endPoint, queryParameters: parameters, onReceiveProgress: onReceive, onSendProgress: onSend, data: data);
      if (response.statusCode != null) {
        if ((response.statusCode!) / 100 == 2) {
          return SuccessResult(fromJson?.call(jsonDecode(response.data)));
        } else {
          return FailureResult(FailureModel(errorMessage: getErrorMessage(response), statusCode: response.statusCode));
        }
      } else {
        throw Error();
      }
    } on DioError catch (error) {
      return FailureResult(FailureModel(errorMessage: getErrorMessage(error.response!), statusCode: error.response!.statusCode));
    } catch (error) {
      debugPrint('Null status code $error');
      rethrow;
    }
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
}
