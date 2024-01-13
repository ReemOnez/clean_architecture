import 'package:clean_project/features/delivery/infrastructure/data_sources/local/i_todo_local_data_source.dart';
import 'package:clean_project/features/todo_list/infrastructure/data_sources/local/feature_local_data_source.dart';

class DeliveryLocalDataSource extends BaseLocalDataSource implements IDeliveryLocalDataSource {
  static const String _tableName = 'DELIVERY_FARE';
  static const String createTableQuery = 'CREATE TABLE $_tableName (id INTEGER PRIMARY KEY, todo TEXT, userId INTEGER)';

  DeliveryLocalDataSource(super.logger);

// @override
// Future<DataResult<int>> insertTodos(List<ToDoModel>? todos) => insertObjects(tableName: _tableName, toMaps: todos!.map((e) => () => e.toJson()).toList());
//
// @override
// Future<DataResult<List<ToDoModel>?>> getTodos() => getObjects(tableName: _tableName, fromJson: ToDoModel.fromJson);

// Future<void> closeDB() => close();
}
