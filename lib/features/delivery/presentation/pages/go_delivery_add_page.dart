import 'package:clean_project/core/presentation/widgets/custom_app_bar.dart';
import 'package:clean_project/features/delivery/presentation/bloc/delivery_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoDeliveryAddPage extends StatefulWidget {
  static const String routeName = '/GoDeliveryAddPage';

  // final int i;

  const GoDeliveryAddPage({super.key});

  @override
  State<GoDeliveryAddPage> createState() => _GoDeliveryAddPageState();
}

class _GoDeliveryAddPageState extends State<GoDeliveryAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            // widget.i == 0
            //     ? 'Bike'
            //     : widget.i == 1
            //         ? 'Car'
            //         :
            //
            'Van',
          ),
        ),
        body: BlocConsumer<DeliveryBloc, DeliveryState>(
          listener: (context, state) {
            // state.authFailureOrSuccessOption.fold(
            // () {},
            // (either) {
            // either.fold(
            // (failure) {
            // FlushbarHelper.createError(
            // message: failure.map(
            // // Use localized strings here in your apps
            // cancelledByUser: (_) => 'Cancelled',
            // serverError: (_) => 'Server error',
            // emailAlreadyInUse: (_) => 'Email already in use',
            // invalidEmailAndPasswordCombination: (_) =>
            // 'Invalid email and password combination',
            // ),
            // ).show(context);
            // },
            // (_) {
            // Router.navigator.pushReplacementNamed(Router.notesOverviewPage);
            // context
            //     .bloc<AuthBloc>()
            //     .add(const AuthEvent.authCheckRequested());
            // },
            // );
            // },
            // );
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      'Pick up',
                      style: TextStyle(
                        // color: kColor2,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      child: Container(
                        // width: size.width - 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                        child: Text(
                          ' lsndvlksn ',
                          //  pickupAddress != null ? pickupAddress! : 'Choose address ...',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      onTap: () {
                        context.read()<DeliveryBloc>().add(const DeliveryEvent.addPickupAddress('pickupAddress'));
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) {},
                        //     // GoDeliveryPickAddScreen(i: widget.i),
                        //   ),
                        // );
                      },
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Drop',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      child: Container(
                        //  width: size.width - 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                        child: Text(
                          'ldncln',
                          // deliveryAddress != null ? deliveryAddress! : 'Choose address ...',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      onTap: () {
                        context.read()<DeliveryBloc>().add(const DeliveryEvent.addDeliveryAddress('Mall of the Emirates - Sheikh Zayed Road - Dubai - United Arab Emirates'));
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) {},
                        //     // GoDeliveryDeliAddScreen(i: widget.i),
                        //   ),
                        // );
                      },
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Package weight',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      // width: size.width - 30,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Kilogram",
                          contentPadding: const EdgeInsets.symmetric(vertical: 19, horizontal: 10),
                          //    border: kOutlineInputBorderFocus,
                          //     enabledBorder: kOutlineInputBorderFocus,
                          //   focusedBorder: kOutlineInputBorderFocus,
                        ),
                        initialValue: 'lksdnv',
                        //weight != null ? weight.toString() : null,
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
                           BlocProvider.of<DeliveryBloc>(context).add(DeliveryEvent.addWeight(value));
                          //  weight = num.tryParse(value) as int?;
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Note',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      // width: size.width - 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: TextFormField(
                        decoration: const InputDecoration.collapsed(
                          hintText: "Write a note",
                        ),
                        keyboardType: TextInputType.text,
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus!.unfocus();
                        },
                        onChanged: (value) {
                          BlocProvider.of<DeliveryBloc>(context).add(DeliveryEvent.addNote(value));
                          //  note = value;
                        },
                      ),
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      //  width: size.width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<DeliveryBloc>(context).add(DeliveryEvent.calculateDeliveryFare(1));
                        },
                        child: Text('ksdbjksv'),
                      ),
                      // AdaptiveButton('Apply', kColor1, kColor5, submit),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
