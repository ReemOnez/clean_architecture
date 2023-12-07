import 'package:clean_project/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Screen Header'),
      ),
      body: BlocBuilder(
        builder: (context, count) => Center(child: Text('$count')),
      ),
    );
  }
}
