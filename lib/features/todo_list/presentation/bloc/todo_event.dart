import 'package:equatable/equatable.dart';

abstract class ToDoEvent extends Equatable {
  const ToDoEvent();

  @override
  List<Object?> get props => [];
}

class GetToDoList extends ToDoEvent {
  @override
  List<Object?> get props => [];
}

class SearchToDoList extends ToDoEvent {
  final String search;

  const SearchToDoList(this.search);

  @override
  List<Object?> get props => [search];
}
