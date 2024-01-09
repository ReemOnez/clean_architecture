import 'package:clean_project/core/data/data_sources/local/local_data_source/local_data_source.dart';
import 'package:clean_project/features/todo_list/infrastructure/data_sources/local/todo_local_data_source.dart';

class BaseLocalDataSource extends LocalDataSource {
  static const List<String> _schema = [
    ToDoLocalDataSource.createTableQuery,
  ];

  static const String _databaseName = 'ToDo.db';
  static const int _version = 1;

  BaseLocalDataSource(
    super.logger,
  ) : super(dataBaseName: _databaseName, version: _version, schema: _schema);
}