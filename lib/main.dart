import 'package:clean_project/mixins/size_mixin.dart';
import 'package:clean_project/mixins/theme_mixin.dart';
import 'package:flutter/material.dart';
import 'package:clean_project/injection.dart' as injection;
import 'package:permission_handler/permission_handler.dart';
import 'features/notifications/presentation/notifications_permission_screen.dart';

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
    return MaterialApp(
      theme: ThemeData(
        fontFamily: fontFamily,
      ),
      home: const NotificationsPermissionScreen(),
    );
  }
}

class ScreenBeforeNotifications extends StatefulWidget {
  const ScreenBeforeNotifications({Key? key}) : super(key: key);

  @override
  State<ScreenBeforeNotifications> createState() => _ScreenBeforeNotificationsState();
}

class _ScreenBeforeNotificationsState extends State<ScreenBeforeNotifications> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InkWell(
        child: const Text('Check notifications permission'),
        onTap: () async {
          final permissionStatus =
              await Permission.notification.request().then((value) => value).onError((error, stackTrace) => PermissionStatus.denied);
          if (permissionStatus != PermissionStatus.granted) {
            if (mounted) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const NotificationsPermissionScreen();
                  },
                ),
              );
            }
          }
        },
      ),
    ));
  }
}
