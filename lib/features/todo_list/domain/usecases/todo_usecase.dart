import 'package:clean_project/core/data/models/data_result_model.dart';
import 'package:clean_project/core/domain/use_cases/base_use_case.dart';
import 'package:clean_project/features/todo_list/domain/repositories/i_todo_repository.dart';

class ToDoUseCase implements BaseUseCase {
  late IToDoRepository todoRepository;

  @override
  Future<DataResult> call({parameters}) {
    /// todo : do some logic here before returning the list
    return todoRepository.getToDoList();
  }
}
