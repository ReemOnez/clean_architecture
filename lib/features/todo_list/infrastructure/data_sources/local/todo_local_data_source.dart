import 'package:clean_project/core/data/data_sources/local/local_data_source/local_data_source.dart';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/features/todo_list/infrastructure/data_sources/local/i_todo_local_data_source.dart';
import 'package:clean_project/features/todo_list/infrastructure/models/todo_model.dart';

class ToDoLocalDataSource extends LocalDataSource implements IToDoLocalDataSource {
  static const String createTableQuery = 'CREATE TABLE $_tableName (id INTEGER PRIMARY KEY, userId INTEGER, todo TEXT)';
  static const String _tableName = 'TODO';

  ToDoLocalDataSource({super.dataBaseName, super.version, super.schema});

  Future<DataResult<int>> insertTodos(List<ToDoModel>? todos) => insertObjects(tableName: _tableName, toMaps: todos!.map((e) => () => e.toJson()).toList());

  Future<DataResult<List<ToDoModel>?>> getTodos() => getObjects(tableName: _tableName, fromJson: ToDoModel.fromJson);
}
