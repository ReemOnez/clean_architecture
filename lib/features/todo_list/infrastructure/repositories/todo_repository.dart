import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/domain/repositories/base_repository.dart';
import 'package:clean_project/features/todo_list/domain/repositories/i_todo_repository.dart';
import 'package:clean_project/features/todo_list/infrastructure/data_sources/local/todo_local_data_source.dart';
import 'package:clean_project/features/todo_list/infrastructure/data_sources/remote/todo_remote_data_source.dart';
import 'package:clean_project/features/todo_list/infrastructure/models/todo_model.dart';

class ToDoRepository extends BaseRepository implements IToDoRepository {
  ToDoRepository(
    super.logger,
    this.remoteDataSource,
    this.localDataSource,
  );

  final ToDoRemoteDataSource remoteDataSource;
  final ToDoLocalDataSource localDataSource;

  @override
  Future<DataResult<List<ToDoModel>?>> getToDoList() => request(
        remoteCall: () => remoteDataSource.getToDoList(),
        saveRemoteDataCall: (todos) => localDataSource.insertTodos(todos),
        localCall: localDataSource.getTodos,
      );
}
