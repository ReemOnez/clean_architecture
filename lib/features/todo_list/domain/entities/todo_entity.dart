import 'package:equatable/equatable.dart';

class ToDo extends Equatable {
  final int id, userId;
  //final bool completed;
  final String todo ;

  const ToDo({required this.id, required this.todo, required this.userId});

  @override
  List<Object> get props => [id, todo, userId];
}
