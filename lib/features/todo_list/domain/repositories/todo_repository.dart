import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/features/todo_list/domain/entities/todo_entity.dart';

abstract class ToDoRepository {
  Future<DataResult<List<ToDo>>> getToDoList();
}
