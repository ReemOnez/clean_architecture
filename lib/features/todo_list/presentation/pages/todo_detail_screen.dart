import 'package:clean_project/core/presentation/widgets/custom_app_bar.dart';
import 'package:clean_project/core/presentation/widgets/custom_back_button.dart';
import 'package:clean_project/core/presentation/widgets/custom_text_field.dart';
import 'package:clean_project/features/todo_list/presentation/bloc/todo_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToDoDetailScreen extends StatefulWidget {
  const ToDoDetailScreen({super.key});

  @override
  State<ToDoDetailScreen> createState() => _ToDoDetailScreenState();
}

class _ToDoDetailScreenState extends State<ToDoDetailScreen> {
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
    final state = BlocProvider.of(context).v
        context.watch<ToDoBloc>().state;
    // final textFocusNode = useFocusNode();
    final textFieldController = TextEditingController(text: '');
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
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Kilogram",
                      contentPadding: const EdgeInsets.symmetric(vertical: 19, horizontal: 10),
                     // border: kOutlineInputBorderFocus,
                     // enabledBorder: kOutlineInputBorderFocus,
                     // focusedBorder: kOutlineInputBorderFocus,
                    ),
                    initialValue: state.
                    // weight != null ? weight.toString() : null,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty || value == '0') {
                        return 'Please enter number!';
                      }
                      return null;
                    },
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus!.unfocus();
                    },
                    onChanged: (value) {
                      weight = num.tryParse(value) as int?;
                    },
                  ),


              // CustomTextField(
              //   color: Colors.black,
              // //  keyboardType: TextInputType.multiline,
              //  // maxLines: 6,
              //   hint: '',
              // //  hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 14, color: Colors.grey),
              //   //  textFocusNode: textFocusNode,
              //   textEditingController: textFieldController,
              //   enabled: true,
              //   //   onChanged: (value) => reason.value = textFieldController.text,
              //   validator: (value) {
              //     return null;
              //   },
              //   shouldShowLabel: false,
              //   maxCounterNumber: 501,
              // )
            ])

            // BlocBuilder<ToDoBloc, ToDoState>(
            //   builder: (context, state) {
            //     if (state is ToDoListLoading) {
            //       return const CircularProgressIndicator();
            //     } else if (state is ToDoListError) {
            //       return const Text('ERRRRRRRRRRROOOOOOOOOR', style: TextStyle(color: Colors.red));
            //     } else if (state is ToDoListLoaded) {
            //       return Column(children: [
            //         CustomTextField(
            //           color: Colors.black,
            //           keyboardType: TextInputType.multiline,
            //           maxLines: 6,
            //           hint: '',
            //           hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 14.h, color: Colors.grey),
            //         //  textFocusNode: textFocusNode,
            //           textEditingController: textFieldController,
            //           enabled: true,
            //        //   onChanged: (value) => reason.value = textFieldController.text,
            //           validator: (value) {
            //             return null;
            //           },
            //           shouldShowLabel: false,
            //           maxCounterNumber: 501,
            //
            //       )]);
            //     }
            //     return const SizedBox.shrink();
            //   },
            // ),
            ),
      ),
    );
  }
}
