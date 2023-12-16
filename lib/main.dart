import 'package:clean_project/features/daily_news/presentation/bloc/daily_news_bloc.dart';
import 'package:clean_project/helpers/mixins/size_mixin.dart';
import 'package:clean_project/helpers/mixins/theme_mixin.dart';
import 'package:clean_project/injection.dart';
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
    return BlocProvider<DailyNewsBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
       //   theme: theme(),
          onGenerateRoute: AppRoutes.onGenerateRoutes,
          home: const DailyNews()
      ),
    );
  }
}
