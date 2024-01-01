import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/domain/repositories/base_repository.dart';
import 'package:clean_project/features/todo_list/domain/entities/todo_entity.dart';
import 'package:clean_project/features/todo_list/domain/repositories/i_todo_repository.dart';
import 'package:clean_project/features/todo_list/infrastructure/data_sources/local/todo_local_data_source.dart';
import 'package:clean_project/features/todo_list/infrastructure/data_sources/remote/todo_remote_data_source.dart';

class TodoRepository extends BaseRepository implements IToDoRepository {
  TodoRepository(
    super.logger,
    this.remoteDataSource,
    this.localDataSource,
  );

  final ToDoRemoteDataSource remoteDataSource;
  final TodoLocalDataSource localDataSource;

  @override
  Future<DataResult<List<ToDo>?>> getToDoList() => request(
        remoteCall: () => remoteDataSource.getToDoList(),
        // forceUpdate: forceUpdate,
        //  localCall: localDataSource.getPosts,
        // saveRemoteDataFunction: (posts) => localDataSource.insertPosts(posts),
      );
}
