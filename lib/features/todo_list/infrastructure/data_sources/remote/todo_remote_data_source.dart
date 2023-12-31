import 'package:clean_project/core/data/data_sources/remote/remote_data_source.dart';
import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/features/todo_list/domain/entities/todo_entity.dart';

class ToDoRemoteDataSource extends RemoteDataSource {
  ToDoRemoteDataSource(super.dio, super.logger);

  static const String _todoEndPoint = 'posts';

  Future<DataResult<List<ToDo>?>> getPosts() => get(
        parameters: {},
        endPoint: _todoEndPoint,
      );
}
