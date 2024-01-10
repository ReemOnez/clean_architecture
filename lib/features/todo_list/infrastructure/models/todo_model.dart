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

  static List<ToDoModel> fromJsonToDoList(dynamic json) => (json['todos'] as List).map((e) => ToDoModel.fromJson(e)).toList();

  factory ToDoModel.fromJson(Map<String, dynamic> json) => _$ToDoModelFromJson(json);

  // String convertNumToString() => 'converteddddd';
}

// class bla {
//   void d() {
//     //ToDoModel t1 = ToDoModel(id: 1, userId: 22, todo: 'blaaa', users: [UserModel(phone: 12345, job: 'bleeeh')]);
//     ToDoModel t2 = ToDoModel(id: 2, userId: 22, todo: 'blaaa', users: [UserModel(phone: 12345)]);
//     t1.copyWith(id: 222);
//     final j = t1.toJson();
//     final j2 = ToDoModel.fromJson({});
//    //  t2.convertNumToString();
//   }
// }

// factory ToDoModel.fromJson(Map<String, dynamic> json) {
//   return ToDoModel(
//     id: json['id'],
//     todo: json['todo'],
//     //completed: json['completed'],
//     userId: json['userId'],
//   );
// }
//
// static List<ToDoModel> fromJsonToDoList(dynamic json) => (json['todos'] as List).map((e) => ToDoModel.fromJson(e)).toList();
//
// Map<String, dynamic> toJson() {
//   return {
//     'id': id,
//     'todo': todo,
//     //'completed': completed,
//     'userId': userId,
//   };
// }
