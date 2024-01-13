part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initialState() = _InitialState;

  const factory TodoState.loading() = _LoadingState;

  const factory TodoState.loaded({required List<ToDo>? todos}) = LoadedState;

  const factory TodoState.nameUpdated({required String name}) = NameUpdated;

  const factory TodoState.numberUpdated({required int number}) = NumberUpdated;
}

// import 'package:clean_project/features/todo_list/domain/entities/delivery_fare_entity.dart';
// import 'package:equatable/equatable.dart';
//
// abstract class ToDoState extends Equatable {
//   const ToDoState();
//
//   @override
//   List<Object?> get props => [];
// }
//
// class ToDoInitial extends ToDoState {
//   @override
//   List<Object?> get props => [];
// }
//
// class ToDoListLoading extends ToDoState {
//   @override
//   List<Object?> get props => [];
// }
//
// class ToDoListError extends ToDoState {
//   final String error;
//
//   const ToDoListError(this.error);
//
//   @override
//   List<Object?> get props => [error];
// }
//
// class ToDoListLoaded extends ToDoState {
//   final List<ToDo>? todolist;
//
//   const ToDoListLoaded({this.todolist});
//
//   @override
//   List<Object?> get props => [todolist];
// }
//
// /// //////// Form states /////////////
//
// class NameUpdateState extends ToDoState {
//   final String? name;
//
//   const NameUpdateState({this.name});
//
//   @override
//   List<Object?> get props => [name];
// }
//
// class NumberUpdateState extends ToDoState {
//   final String? number;
//
//   const NumberUpdateState({this.number});
//
//   @override
//   List<Object?> get props => [number];
// }
//
// class IsFormValid extends ToDoState {
//   final String? name;
//   final String? number;
//
//   const IsFormValid({this.name, this.number});
//
//   @override
//   List<Object?> get props => [name, number];
// }
