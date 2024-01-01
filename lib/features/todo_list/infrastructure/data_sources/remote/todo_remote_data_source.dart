import 'package:clean_project/core/data/data_sources/remote/remote_data_source.dart';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/features/todo_list/domain/entities/todo_entity.dart';
import 'package:clean_project/features/todo_list/infrastructure/data_sources/remote/i_todo_remote_data_source.dart';
import 'package:clean_project/features/todo_list/infrastructure/models/todo_model.dart';

class ToDoRemoteDataSource extends RemoteDataSource implements IToDoRemoteDataSource {
  ToDoRemoteDataSource(super.dio, super.logger);

  static const String _todoEndPoint = 'todos';

  @override
  Future<DataResult<List<ToDo>?>> getToDoList() => get(
        endPoint: _todoEndPoint,
        fromJson: ToDoModel.fromJsonToDoList,
      );
}
