import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/features/todo_list/infrastructure/data_sources/local/feature_local_data_source.dart';
import 'package:clean_project/features/todo_list/infrastructure/data_sources/local/i_todo_local_data_source.dart';
import 'package:clean_project/features/todo_list/infrastructure/models/todo_model.dart';

class ToDoLocalDataSource extends BaseLocalDataSource implements IToDoLocalDataSource {
  static const String _tableName = 'TODO';
  static const String createTableQuery = 'CREATE TABLE $_tableName (id INTEGER PRIMARY KEY, todo TEXT, userId INTEGER)';

  ToDoLocalDataSource(super.logger);

  @override
  Future<DataResult<int>> insertTodos(List<ToDoModel>? todos) => insertObjects(tableName: _tableName, toMaps: todos!.map((e) => () => e.toJson()).toList());

  @override
  Future<DataResult<List<ToDoModel>?>> getTodos() => getObjects(tableName: _tableName, fromJson: ToDoModel.fromJson);
}
