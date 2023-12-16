import 'package:clean_project/core/data/models/data_result_model.dart';

abstract class ILocalDataSource {
  Future<void> initDataBase({required String dataBaseName, required int version, required List<String> schema});

  Future<DataResult<int>> insertObject({
    required String tableName,
    required Map<String, dynamic> data,
  });

  Future<DataResult<int>> insertObjects({
    required String tableName,
    required List<Map<String, dynamic>> data,
  });

  Future<DataResult<int>> delete({
    required String tableName,
    required String whereCondition,
    required List<dynamic> values,
  });

  Future<DataResult<T>> getObject<T>({
    required String tableName,
    required String whereCondition,
    required List<dynamic> values,
    required T Function(Map<String, dynamic>) fromJson,
  });

  Future<DataResult<List<T>>> getObjects<T>({
    required String tableName,
    required String whereCondition,
    required List<dynamic> values,
    required T Function(Map<String, dynamic>) fromJson,
  });

  Future<DataResult<T>> wrapLocalRequestWithTryCatch<T>(Future<T> Function() dataBaseCallBack, String failedMessage);
}
