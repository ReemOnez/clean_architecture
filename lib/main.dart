import 'package:clean_project/core/presentation/UI/example_screen.dart';
import 'package:clean_project/mixins/size_mixin.dart';
import 'package:clean_project/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';
import 'package:clean_project/injection.dart' as injection;
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  injection.init();
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
    return MaterialApp(
      theme: ThemeData(
        fontFamily: fontFamily,
      ),
    );
  }
}


class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> with ThemeMixin {
  @override
  Widget build(BuildContext context) {
    return  Text(
      'jkdsnv', style: TextStyle(fontFamily: fontFamily),
    );
  }
}
