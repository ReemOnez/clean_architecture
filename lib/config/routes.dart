import 'package:clean_project/features/delivery/presentation/bloc/delivery_bloc.dart';
import 'package:clean_project/features/delivery/presentation/pages/go_delivery_add_page.dart';
import 'package:clean_project/features/delivery/presentation/pages/go_delivery_page.dart';
import 'package:clean_project/features/todo_list/presentation/bloc/todo_bloc.dart';
import 'package:clean_project/features/todo_list/presentation/pages/todo_detail_screen.dart';
import 'package:clean_project/features/todo_list/presentation/pages/todo_list_screen.dart';
import 'package:clean_project/injection.dart';
import 'package:clean_project/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      // case AppNamedRoutes.splashPage:
      //   return MaterialPageRoute<dynamic>(
      //     builder: (_) => const BasicPage(),
      //     settings: settings,
      //   );
      // case AppNamedRoutes.todoPage:
      //   return MaterialPageRoute<dynamic>(
      //     builder: (_) => BlocProvider(create: (_) => serviceLocator<ToDoBloc>()..add(const TodoEvent.getTodoList()), child: const ToDoListPage()),
      //     settings: settings,
      //   );
      case GoDeliveryPage.routeName:
        {
          print('GoDeliveryPage GoDeliveryPage GoDeliveryPage');
          return MaterialPageRoute<dynamic>(
            builder: (_) => BlocProvider(create: (_) => serviceLocator<DeliveryBloc>(), child: const GoDeliveryPage()),
            settings: settings,
          );
        }
      case GoDeliveryAddPage.routeName:
        {
          print('GoDeliveryAddPage GoDeliveryAddPage GoDeliveryAddPage');
          return MaterialPageRoute<dynamic>(
            builder: (_) => BlocProvider.value(
              value: serviceLocator<DeliveryBloc>(),
              child: const GoDeliveryAddPage(),
            ),
            settings: settings,
          );
        }
      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const BasicPage(),
          settings: settings,
        );
    }
  }
}

class AppNamedRoutes {
  static final namedRoutes = {
    BasicPage.routeName: (context) => const BasicPage(),
    GoDeliveryPage.routeName: (context) => const GoDeliveryPage(),
    GoDeliveryAddPage.routeName: (context) => const GoDeliveryAddPage(),
  };
}
