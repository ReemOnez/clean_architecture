import 'package:clean_project/features/todo_list/presentation/bloc/todo_bloc.dart';
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
        title: const Text('TODO LIST'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('blaaaaaaaaa'),
              BlocBuilder<ToDoBloc, ToDoState>(
                builder: (context, state) {
                  if (state is ToDoListLoading) {
                    return const CircularProgressIndicator();
                  }
                  if (state is ToDoListError) {
                    return const Text('ERRRRRRRRRRROOOOOOOOOR', style: TextStyle(color: Colors.red));
                  }
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (index, context) {
                      return Text('$index HIIIIIIIIIIIII');
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
