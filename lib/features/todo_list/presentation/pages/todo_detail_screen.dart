import 'package:clean_project/core/presentation/widgets/custom_app_bar.dart';
import 'package:clean_project/core/presentation/widgets/custom_back_button.dart';
import 'package:clean_project/core/presentation/widgets/custom_text_field.dart';
import 'package:clean_project/features/todo_list/presentation/bloc/todo_bloc.dart';
import 'package:clean_project/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToDoDetailPage extends StatefulWidget {
  const ToDoDetailPage({super.key});

  @override
  State<ToDoDetailPage> createState() => _ToDoDetailPageState();
}

class _ToDoDetailPageState extends State<ToDoDetailPage> {
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
    final bloc = serviceLocator<ToDoBloc>();
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
            body: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Kilogram",
                  contentPadding: const EdgeInsets.symmetric(vertical: 19, horizontal: 10),
                  // border: kOutlineInputBorderFocus,
                  // enabledBorder: kOutlineInputBorderFocus,
                  // focusedBorder: kOutlineInputBorderFocus,
                ),
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
                  context.watch()<ToDoBloc>().add(TodoEvent.updateName(name: value));
                },
              ),
              ElevatedButton(
                onPressed: () => context.watch()<ToDoBloc>().add(TodoEvent.updateName(name: 'value')),
                child: const Text('Submit'),
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
            ])),
      ),
    );
  }
}
