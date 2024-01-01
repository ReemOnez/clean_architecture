import 'package:clean_project/core/data/data_sources/local/local_data_source/local_data_source.dart';
import 'package:clean_project/features/todo_list/infrastructure/data_sources/local/i_todo_local_data_source.dart';

class TodoLocalDataSource extends LocalDataSource implements ITodoLocalDataSource {
  static const String createTableQuery = 'CREATE TABLE $_tableName (id INTEGER PRIMARY KEY, userId INTEGER, title TEXT, body TEXT)';
  static const String _tableName = 'POST';

  TodoLocalDataSource({required super.dataBaseName, required super.version, required super.schema});

// Future<DataModelWrapper<int>> insertPosts(List<Post> posts) => insertObjects(tableName: _tableName, toMaps: posts.map((e) => () => e.toJson()).toList());
//
// Future<DataModelWrapper<List<Post>>> getPosts() => getObjects(tableName: _tableName, deserializer: Post.fromJson);
}
