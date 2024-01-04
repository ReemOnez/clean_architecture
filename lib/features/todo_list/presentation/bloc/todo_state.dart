import 'package:clean_project/features/todo_list/domain/entities/todo_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ToDoState extends Equatable {
  const ToDoState();

  @override
  List<Object?> get props => [];
}

class ToDoInitial extends ToDoState {
  @override
  List<Object?> get props => [];
}

class ToDoListLoading extends ToDoState {
  @override
  List<Object?> get props => [];
}

class ToDoListError extends ToDoState {
  final String error;

  const ToDoListError(this.error);

  @override
  List<Object?> get props => [error];
}

class ToDoListLoaded extends ToDoState {
  final List<ToDo>? todolist;

  const ToDoListLoaded({this.todolist});

  @override
  List<Object?> get props => [todolist];
}
