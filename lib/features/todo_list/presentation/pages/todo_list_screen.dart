import 'package:clean_project/features/todo_list/domain/repositories/i_todo_repository.dart';
import 'package:clean_project/features/todo_list/domain/usecases/todo_usecase.dart';
import 'package:flutter/material.dart';
import 'package:clean_project/injection.dart' as Sl;

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Text('blaaaaaaaaa'),
              ElevatedButton(
                onPressed: () async => Future.delayed(const Duration(seconds: 4)).then((value) => ToDoUseCase(Sl.serviceLocator<IToDoRepository>()).todoRepository),
                child: const Text('Press Here'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
