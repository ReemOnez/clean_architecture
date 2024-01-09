import 'package:clean_project/core/presentation/bloc/base_bloc.dart';
import 'package:clean_project/features/todo_list/domain/usecases/todo_usecase.dart';
import 'package:clean_project/features/todo_list/presentation/bloc/todo_event.dart';
import 'package:clean_project/features/todo_list/presentation/bloc/todo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class ToDoBloc extends Bloc<ToDoEvent, ToDoState> {
  final ToDoUseCase toDoUseCase;

  ToDoBloc(this.toDoUseCase) : super(ToDoInitial()) {
    on<GetToDoList>(_onToDoRequested);
    on<NumberChanged>(_onNumberChanged);
    on<NameChanged>(_onNameChanged);
    on<CheckFormValidation>(_onCheckFormValidation);
  }

  Future<void> _onToDoRequested(GetToDoList event, Emitter<ToDoState> emit) async {
    emit(ToDoListLoading());
    final todoList = await toDoUseCase();
    emit(ToDoListLoaded(todolist: todoList.dataResult));
  }

  Future<void> _onNameChanged(NameChanged event, Emitter<ToDoState> emit) async {
    emit(NameUpdateState(name: event.name));
  }

  Future<void> _onNumberChanged(NumberChanged event, Emitter<ToDoState> emit) async {
    emit(NumberUpdateState(number: event.number));
  }

  Future<void> _onCheckFormValidation(CheckFormValidation event, Emitter<ToDoState> emit) async {
    emit(IsFormValid(number: event.number, name: event.name));
  }

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
