import 'package:animate_do/animate_do.dart';
import 'package:clean_project/core/presentation/widgets/custom_app_bar.dart';
import 'package:clean_project/core/presentation/widgets/custom_back_button.dart';
import 'package:clean_project/features/delivery/presentation/widgets/go_delivery_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoDeliveryPage extends StatelessWidget {
  static const String routeName = '/GoDeliveryPage';

  const GoDeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 5),
                    const Text(
                      "All Vehicles",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // showDialog(
                        //   context: context,
                        //   builder: (BuildContext context) {
                        //  //   return const ServiceAlertWidget(serviceId: 1);
                        //   },
                        // );
                      },
                      icon: const Icon(Icons.info_outline, color: Colors.grey, size: 18),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    itemBuilder: (context, i) {
                      return ZoomIn(
                        duration: const Duration(milliseconds: 500),
                        delay: Duration(milliseconds: i * 100),
                        child: Column(
                          children: [
                            if (i != 2) GoDeliveryCardWidget(i),
                            if (i + 1 != 3)
                              Container(
                                height: 3,
                                // width: size.width,
                                color: Colors.grey,
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
