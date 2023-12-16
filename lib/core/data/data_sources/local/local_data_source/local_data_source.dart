import 'package:clean_project/core/data/data_sources/local/local_data_source/i_local_data_source.dart';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/data/models/failure_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqlite_api.dart';

class LocalDataSource implements ILocalDataSource {
  late final Database database;
  late Future<void> dataBaseInit;

  LocalDataSource({
    required String dataBaseName,
    required int version,
    required List<String> schema,
  }) {
    dataBaseInit = initDataBase(dataBaseName: dataBaseName, version: version, schema: schema);
  }

  @override
  Future<void> initDataBase({required String dataBaseName, required int version, required List<String> schema}) async {
    openDatabase(
      join(await getDatabasesPath(), dataBaseName),
      onCreate: (database, version) async {
        for (String sql in schema) {
          database.execute(sql);
        }
        return;
      },
      version: version,
    ).then((value) => database = value);
  }

  @override
  Future<DataResult<int>> insertObject({
    required String tableName,
    required Map<String, dynamic> data,
  }) async {
    return wrapLocalRequestWithTryCatch(() => database.insert(tableName, data, conflictAlgorithm: ConflictAlgorithm.replace), 'Failed to insert data in table: $tableName');
  }

  @override
  Future<DataResult<int>> insertObjects({
    required String tableName,
    required List<Map<String, dynamic>> data,
  }) async {
    return wrapLocalRequestWithTryCatch(() async {
      int insertedRows = 0;
      for (final object in data) {
        insertedRows += await database.insert(tableName, object, conflictAlgorithm: ConflictAlgorithm.replace);
      }
      return insertedRows;
    }, 'Failed to insert data in table: $tableName');
  }

  @override
  Future<DataResult<int>> delete({
    required String tableName,
    required String whereCondition,
    required List<dynamic> values,
  }) async {
    return wrapLocalRequestWithTryCatch(() async {
      return await database.delete(tableName, where: whereCondition, whereArgs: values);
    }, 'Failed to delete data from table: $tableName');
  }

  @override
  Future<DataResult<T>> getObject<T>({
    required String tableName,
    required String whereCondition,
    required List<dynamic> values,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    return wrapLocalRequestWithTryCatch(() async {
      final data = await database.query(tableName, where: whereCondition, whereArgs: values);
      return fromJson.call(data.first);
    }, 'Failed to get data from table: $tableName');
  }

  @override
  Future<DataResult<List<T>>> getObjects<T>({
    required String tableName,
    required String whereCondition,
    required List<dynamic> values,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    return wrapLocalRequestWithTryCatch(() async {
      final data = await database.query(tableName, where: whereCondition, whereArgs: values);
      List<T> ret = [];
      for (final row in data) {
        ret.add(fromJson.call(row));
      }
      return ret;
    }, 'Failed to get data from table: $tableName');
  }

  @override
  Future<DataResult<T>> wrapLocalRequestWithTryCatch<T>(Future<T> Function() dataBaseCallBack, String failedMessage) async {
    try {
      final data = await dataBaseCallBack();
      return SuccessResult(data);
    } catch (e) {
      return FailureResult(FailureModel(errorMessage: failedMessage));
    }
  }
}
