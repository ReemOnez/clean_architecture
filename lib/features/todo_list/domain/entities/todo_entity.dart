import 'package:equatable/equatable.dart';

class ToDo extends Equatable {
  final String id, todo;
  final bool completed;
  final int userId;

  const ToDo({required this.id, required this.todo, required this.completed, required this.userId});

  @override
  List<Object> get props => [id, todo, completed, userId];
}
