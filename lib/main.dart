import 'package:clean_project/config/routes.dart';
import 'package:clean_project/features/delivery/presentation/bloc/delivery_bloc.dart';
import 'package:clean_project/features/delivery/presentation/pages/go_delivery_page.dart';
import 'package:clean_project/features/todo_list/presentation/bloc/todo_bloc.dart';
import 'package:clean_project/features/todo_list/presentation/pages/todo_detail_screen.dart';
import 'package:clean_project/features/todo_list/presentation/pages/todo_list_screen.dart';
import 'package:clean_project/helpers/mixins/size_mixin.dart';
import 'package:clean_project/helpers/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';
import 'package:clean_project/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// initialize dependencies injections
  await init();
  await Future.wait([
    ScreenUtil.ensureScreenSize(),

    /// todo: add device info package
    // getDeviceIdentifier().then((id) => deviceIdentifier = id),
  ]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 830));
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => serviceLocator<ToDoBloc>()..add(const TodoEvent.getTodoList())),
        BlocProvider(create: (_) => serviceLocator<DeliveryBloc>()),
      ],
      child: const MaterialApp(
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: BasicPage.routeName,
      ),
    );
  }
}

class BasicPage extends StatefulWidget {
  static const String routeName = '/BasicPage';

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
          onPressed: () => Navigator.of(context).pushNamed(GoDeliveryPage.routeName),
          child: const Text('Delivery'),
        ),
      ),
    );
  }
}
