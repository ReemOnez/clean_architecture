part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.getTodoList() = GetTodoList;

  const factory TodoEvent.updateName({required String name}) = UpdateName;

  const factory TodoEvent.updateNumber({required int number}) = UpdateNumber;
}

// abstract class ToDoEvent extends Equatable {
//   const ToDoEvent();
//
//   @override
//   List<Object?> get props => [];
// }
//
// class GetToDoList extends ToDoEvent {
//   @override
//   List<Object?> get props => [];
// }
//
// class SearchToDoList extends ToDoEvent {
//   final String search;
//
//   const SearchToDoList(this.search);
//
//   @override
//   List<Object?> get props => [search];
// }
//
// class NumberChanged extends ToDoEvent {
//   final String number;
//
//   const NumberChanged(this.number);
//
//   @override
//   List<Object?> get props => [number];
// }
//
// class NameChanged extends ToDoEvent {
//   final String name;
//
//   const NameChanged(this.name);
//
//   @override
//   List<Object?> get props => [name];
// }
//
// class CheckFormValidation extends ToDoEvent {
//   final String name, number;
//
//   const CheckFormValidation(this.name, this.number);
//
//   @override
//   List<Object?> get props => [name, number];
// }
