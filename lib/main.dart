import 'package:clean_project/helpers/mixins/size_mixin.dart';
import 'package:clean_project/helpers/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';
import 'package:clean_project/injection.dart' as injection;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /// initialize dependencies injections
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
