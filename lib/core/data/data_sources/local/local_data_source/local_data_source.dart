import 'package:clean_project/core/data/data_sources/local/local_data_source/i_local_data_source.dart';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/data/models/failure_model.dart';
import 'package:clean_project/helpers/constants/enums.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqlite_api.dart';

class LocalDataSource implements ILocalDataSource {
  late final Database _database;
  late final Future<void> dataBaseInit;
  final Logger logger;

  LocalDataSource(
    this.logger, {
    required String dataBaseName,
    required int version,
    required List<String> schema,
  }) {
    dataBaseInit = initDataBase(dataBaseName: dataBaseName, version: version, schema: schema);
  }

  @override
  Future<void> initDataBase({required String dataBaseName, required int version, required List<String> schema}) async {
    final documentsPath = await getApplicationDocumentsDirectory();

    await openDatabase(
      // join(await getDatabasesPath(), dataBaseName),
      join(documentsPath.path, dataBaseName),
      onOpen: (db) {
        print('OOOOOOPPPPEEEEEN');
      },
      onCreate: (database, version) async {
        for (String sql in schema) {
          logger.d(sql);
          database.execute(sql);
        }
        return;
      },
      version: version,
    ).then((value) => _database = value);

    /// to check if db does exist
    // final dbExist = await databaseFactory.databaseExists(join(await getDatabasesPath(), dataBaseName));
  }

  @override
  Future<DataResult<int>> insertObject({
    required String tableName,
    required Map<String, dynamic> Function() toMap,
  }) async {
    return wrapLocalRequestWithTryCatch(
        () => _database.insert(tableName, toMap.call(), conflictAlgorithm: ConflictAlgorithm.replace), 'Failed to insert data in table: $tableName');
  }

  @override
  Future<DataResult<int>> insertObjects({
    required String tableName,
    required List<Map<String, dynamic> Function()> toMaps,
  }) async {
    return wrapLocalRequestWithTryCatch(() async {
      int insertedRows = 0;
      for (final object in toMaps) {
        insertedRows += await _database.insert(tableName, object.call(), conflictAlgorithm: ConflictAlgorithm.replace);
      }
      return insertedRows;
    }, 'Failed to insert data in table: $tableName');
  }

  @override
  Future<DataResult<int>> delete({
    required String tableName,
    String? whereCondition,
    List<dynamic>? values,
  }) async {
    return wrapLocalRequestWithTryCatch(() async {
      return await _database.delete(tableName, where: whereCondition, whereArgs: values);
    }, 'Failed to delete data from table: $tableName');
  }

  @override
  Future<DataResult<T?>> getObject<T>({
    required String tableName,
    String? whereCondition,
    List<dynamic>? values,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    return wrapLocalRequestWithTryCatch(() async {
      final data = await _database.query(tableName, where: whereCondition, whereArgs: values);
      return data.isNotEmpty ? fromJson.call(data.first) : null;
    }, 'Failed to get data from table: $tableName');
  }

  @override
  Future<DataResult<List<T>>> getObjects<T>({
    required String tableName,
    String? whereCondition,
    List<dynamic>? values,
    required T Function(Map<String, dynamic>) fromJson,
  }) async {
    return wrapLocalRequestWithTryCatch(() async {
      final data = await _database.query(tableName, where: whereCondition, whereArgs: values);
      return data.isNotEmpty ? data.map((e) => fromJson.call(e)).toList() : [];
    }, 'Failed to get data from table: $tableName');
  }

  Future<DataResult<T>> wrapLocalRequestWithTryCatch<T>(Future<T?> Function() dataBaseCallBack, String failedMessage) async {
    try {
      final data = await dataBaseCallBack.call();
      logger.i(data);
      return data == null ? FailureResult(FailureModel(errorMessage: failedMessage)) : SuccessResult(data);
    } catch (error, stackTrace) {
      logger.e(ErrorLogType.localDatabaseError, error: error, stackTrace: stackTrace);
      return FailureResult(FailureModel(errorMessage: failedMessage));
    }
  }

// Future<void> close() async {
//   await _database.close();
// }
}
