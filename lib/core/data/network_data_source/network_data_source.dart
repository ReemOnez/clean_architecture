import 'dart:convert';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/data/models/failure_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class NetworkDataSource {
  final Dio _dio;

  NetworkDataSource(this._dio);

  Future<DataResult<T?>> get<T>(
      {required String endPoint,
      required Map<String, dynamic> parameters,
      int Function(int, int)? onReceive,
      T Function(Map<String, dynamic>)? fromJson}) async {
    try {
      final response = await _dio.get(endPoint, queryParameters: parameters, onReceiveProgress: onReceive);
      //todo (Queen) handle the case when statusCode is null
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
    /// todo: object['error'] is according to the backEnd
    final object = jsonDecode(response.data);
    String? result;
    result = object['error'];
    switch (response.statusCode) {
      case 400:
        return result ?? 'unAuthorized';
      case 401:
        return result ?? 'unAuthorized';
      case 403:
        return result ?? 'unAuthorized';
      case 404:
        return result ?? 'Not found';
      case 408:
        return result ?? 'Request timeout';
      case 409:
        return result ?? 'Conflict';
      case 500:
        return result ?? 'Internal server error';
      case 503:
        return result ?? 'Service unavailable';
      default:
        return result ?? 'Received invalid status code: ${object['statusCode']}';
    }
  }
}
