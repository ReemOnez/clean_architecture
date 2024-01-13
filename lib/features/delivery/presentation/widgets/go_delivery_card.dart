import 'package:clean_project/features/delivery/presentation/pages/go_delivery_add_page.dart';
import 'package:flutter/material.dart';

class GoDeliveryCardWidget extends StatelessWidget {
  final int i;

  const GoDeliveryCardWidget(this.i, {super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        child: SizedBox(
          width: size.width,
          child: const Image(
            image: AssetImage('assets/images/celebrate.png'),
            fit: BoxFit.contain,
          ),
        ),
        onTap: () {
          Navigator.of(context).pushNamed(GoDeliveryAddPage.routeName);
        },
      ),
    );
  }
}
