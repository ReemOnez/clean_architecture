import 'package:clean_project/core/presentation/widgets/custom_app_bar.dart';
import 'package:clean_project/core/presentation/widgets/custom_back_button.dart';
import 'package:clean_project/features/todo_list/presentation/bloc/todo_bloc.dart';
import 'package:clean_project/features/todo_list/presentation/pages/todo_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ToDoBloc>().state;
    return Container(
      color: Theme.of(context).colorScheme.onPrimary,
      child: SafeArea(
        top: true,
        child: Scaffold(
            appBar: CustomAppBar(
              title: const Text('Go Delivery'),
              centerTitle: true,
              height: 92,
              leading: CustomBackButton(
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: state.when(
              initialState: () => null,
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (data) => ListView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: data?.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/todoDetailScreen');
                      },
                      child: Text('${data![index].todo} HIIIIIIIIIIIII'),
                    ),
                  );
                },
              ),
              nameUpdated: (name) => null,
              numberUpdated: (number) => null,
            )

            // BlocBuilder<ToDoBloc, TodoState>(
            //   builder: (context, state) {
            //     if (state is ToDoListLoading) {
            //       return const CircularProgressIndicator();
            //     } else if (state is ToDoListError) {
            //       return const Text('ERRRRRRRRRRROOOOOOOOOR', style: TextStyle(color: Colors.red));
            //     } else if (state is ToDoListLoaded) {
            //       return ListView.builder(
            //         // physics: const NeverScrollableScrollPhysics(),
            //         shrinkWrap: true,
            //         itemBuilder: (index, context) {
            //           return Container(
            //             child: InkWell(
            //               onTap: () {},
            //               child: Text('$index HIIIIIIIIIIIII'),
            //             ),
            //           );
            //         },
            //       );
            //     }
            //     return const SizedBox.shrink();
            //   },
            // ),
            ),
      ),
    );
  }
}
