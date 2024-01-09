import 'package:clean_project/features/todo_list/presentation/bloc/todo_bloc.dart';
import 'package:clean_project/features/todo_list/presentation/bloc/todo_event.dart';
import 'package:clean_project/features/todo_list/presentation/pages/todo_list_screen.dart';
import 'package:clean_project/helpers/mixins/size_mixin.dart';
import 'package:clean_project/helpers/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';
import 'package:clean_project/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// initialize dependencies injections
  await init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SizeMixin, ThemeMixin {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (_) =>
        serviceLocator<ToDoBloc>()
          ..add(GetToDoList()),
      ),
    ],
      child: MaterialApp(
        routes: {
          '/': (context) => const BasicPage(),
          '/todoScreen': (context) => const ToDoListScreen(),
        },
        initialRoute: '/',
        theme: ThemeData(
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}

class BasicPage extends StatefulWidget {
  const BasicPage({super.key});

  @override
  State<BasicPage> createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/todoScreen'),
              child: const Text('TODO LIST')),
    ),);
  }
}
