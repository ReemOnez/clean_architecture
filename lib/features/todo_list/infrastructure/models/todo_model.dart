import 'package:clean_project/features/todo_list/domain/entities/todo_entity.dart';

class ToDoModel extends ToDo {
  const ToDoModel({
    required String id,
    todo,
    required int userId,
    required bool completed,
  }) : super(id: id, todo: todo, userId: userId, completed: completed);

  factory ToDoModel.fromJson(Map<String, dynamic> json) {
    return ToDoModel(
      id: json['id'],
      todo: json['todo'],
      completed: json['completed'],
      userId: json['userId'],
    );
  }

  static List<ToDoModel> fromJsonToDoList(dynamic json) =>
      (json as List).map((e) => ToDoModel.fromJson(e)).toList();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'todo': todo,
      'completed': completed,
      'userId': userId,
    };
  }
}
