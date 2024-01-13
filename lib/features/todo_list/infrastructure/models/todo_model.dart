import 'package:clean_project/features/todo_list/domain/entities/todo_entity.dart';
import 'package:clean_project/features/todo_list/infrastructure/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';

part 'todo_model.g.dart';

//extends ToDo

@freezed
class ToDoModel extends ToDo with _$ToDoModel {
  // const ToDoModel._() : super(id: 9, userId: 0, todo: 'hk');

  @JsonSerializable(explicitToJson: true)
  const factory ToDoModel({
    required int id,
    required int userId,
    required String todo,
    // List<UserModel>? users,
    //  bool? completed,
  }) = _ToDoModel;

  static List<ToDoModel> fromJsonToDoList(Map<String, dynamic> json) => (json['todos'] as List).map((e) => ToDoModel.fromJson(e)).toList();

  factory ToDoModel.fromJson(Map<String, dynamic> json) => _$ToDoModelFromJson(json);

// factory ToDoModel.fromDomain(ToDo toDo) {
//   return ToDoModel(
//     id: toDo.id,
//     userId: toDo.userId,
//     todo: toDo.todo,
//   );
// }
}
