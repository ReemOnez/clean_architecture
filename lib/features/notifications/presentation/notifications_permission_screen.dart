import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Please allow us to send you notifications with the latest updates!'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () async {}, child: const Text('Allow')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () async {}, child: const Text('Cancel')),
          ],
        ),
      ),
    ));
  }
}
