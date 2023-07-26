import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class NotificationsPermissionScreen extends StatefulWidget {
  const NotificationsPermissionScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsPermissionScreen> createState() => _NotificationsPermissionScreenState();
}

class _NotificationsPermissionScreenState extends State<NotificationsPermissionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Notification Permission'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Please allow us to send you notifications with the latest updates!'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () async {
            final permissionDeniedBefore = ref.watch(sharedPreferencesProvider).isPermissionDenied;
            if (!permissionDeniedBefore) {
              await ref.watch(notificationPermissionProvider.notifier).requestNotificationPermission().then((permission) {
                if (permission == PermissionStatus.granted) {
                  ref.read(mixPanelProvider).trackMixpanelEvent(MixpanelEventsTypes.signUpScreen);
                  Navigator.of(context).pushReplacementNamed(PhoneNumberScreen.routeName);
                } else {
                  ref.watch(sharedPreferencesProvider).savePermissionDeniedBefore(true);
                }
              });
            } else {
              openAppSettings();
            }
          }, child: const Text('Allow')),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: () async {}, child: const Text('Cancel')),
        ],
      ),
    ));
  }
}
