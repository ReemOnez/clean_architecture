import 'package:clean_project/features/todo_list/presentation/bloc/todo_bloc.dart';
import 'package:clean_project/features/todo_list/presentation/pages/todo_detail_screen.dart';
import 'package:clean_project/features/todo_list/presentation/pages/todo_list_screen.dart';
import 'package:clean_project/injection.dart';
import 'package:clean_project/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static const splashPage = '/';
  static const todoPage = '/todoPage';
  static const todoDetailPage = '/todoDetailPage';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRouter.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const BasicPage(),
          settings: settings,
        );
      case AppRouter.todoPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => BlocProvider(create: (_) => serviceLocator<ToDoBloc>()..add(const TodoEvent.getTodoList()), child: const ToDoListPage()),
          settings: settings,
        );
      case AppRouter.todoDetailPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => BlocProvider.value(
            value: serviceLocator<ToDoBloc>(),
            child: const ToDoDetailPage(),
          ),
          settings: settings,
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const BasicPage(),
          settings: settings,
        );
    }
  }
}
