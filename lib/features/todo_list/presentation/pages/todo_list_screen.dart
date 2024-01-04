import 'package:clean_project/features/todo_list/presentation/bloc/todo_bloc.dart';
import 'package:clean_project/features/todo_list/presentation/bloc/todo_event.dart';
import 'package:clean_project/features/todo_list/presentation/bloc/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToDoListScreen extends StatefulWidget {
  const ToDoListScreen({super.key});

  @override
  State<ToDoListScreen> createState() => _ToDoListScreenState();
}

class _ToDoListScreenState extends State<ToDoListScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ElevatedButton(
            onPressed: () {
              BlocProvider.of<ToDoBloc>(context).add(GetToDoList());
            },
            child: const Text('TODO LIST')),
      ),
      body: BlocBuilder<ToDoBloc, ToDoState>(
        builder: (context, state) {
          if (state is ToDoListLoading) {
            return const CircularProgressIndicator();
          } else if (state is ToDoListError) {
            return const Text('ERRRRRRRRRRROOOOOOOOOR', style: TextStyle(color: Colors.red));
          } else if (state is ToDoListLoaded) {
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (index, context) {
                return Text('$index HIIIIIIIIIIIII');
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
