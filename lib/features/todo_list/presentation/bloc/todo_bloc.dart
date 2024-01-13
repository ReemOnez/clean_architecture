import 'package:clean_project/core/presentation/bloc/base_bloc.dart';
import 'package:clean_project/features/todo_list/domain/entities/todo_entity.dart';
import 'package:clean_project/features/todo_list/domain/usecases/todo_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:equatable/equatable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_bloc.freezed.dart';

part 'todo_event.dart';

part 'todo_state.dart';

class ToDoBloc extends Bloc<TodoEvent, TodoState> {
  final ToDoUseCase toDoUseCase;

  ToDoBloc(this.toDoUseCase) : super(const TodoState.initialState()) {
    on<GetTodoList>(_onToDoRequested);
    on<UpdateName>(_onNameChanged);
    on<UpdateNumber>(_onNumberChanged);
  }

  Future<void> _onToDoRequested(GetTodoList event, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());
    final todoList = await toDoUseCase();
    emit(TodoState.loaded(todos: todoList.dataResult));
  }

  Future<void> _onNameChanged(UpdateName event, Emitter<TodoState> emit) async {
    emit(TodoState.nameUpdated(name: event.name));
  }

  Future<void> _onNumberChanged(UpdateNumber event, Emitter<TodoState> emit) async {
    emit(TodoState.numberUpdated(number: event.number));
  }

// Future<void> _onCheckFormValidation(CheckFormValidation event, Emitter<ToDoState> emit) async {
//   emit(IsFormValid(number: event.number, name: event.name));
// }

// futureWrapper(
//   futureCallBack: () => toDoUseCase(),
//   useBaseLoader: true,
//   // beforeFutureStarted: () => emit(
//   //   state.copyWith(
//   //     ToDos: [],
//   //   ),
//   // ),
//   onSuccessCallBack: (toDos) {
//     runFunctionWithContext((context) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Todos fetched successfully !')),
//       );
//     });
//     emit(ToDoListLoaded(todolist: toDos));
//   },
// );
}
