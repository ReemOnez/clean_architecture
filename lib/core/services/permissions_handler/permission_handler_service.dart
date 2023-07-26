// import 'dart:async';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:permission_handler/permission_handler.dart';
//
// class NotificationPermissionAsyncNotifier extends AsyncNotifier<PermissionStatus?> {
//   @override
//   FutureOr<PermissionStatus?> build() {
//     return null;
//   }
//
//   // coverage:ignore-start
//   Future<PermissionStatus> getPermissionStatus() async {
//     final PermissionStatus status = await Permission.notification.status;
//     switch (status) {
//       case PermissionStatus.denied:
//         return PermissionStatus.denied;
//       case PermissionStatus.granted:
//         return PermissionStatus.granted;
//       case PermissionStatus.limited:
//         return PermissionStatus.limited;
//       case PermissionStatus.provisional:
//         return PermissionStatus.provisional;
//       case PermissionStatus.permanentlyDenied:
//         return PermissionStatus.permanentlyDenied;
//       case PermissionStatus.restricted:
//         return PermissionStatus.restricted;
//       default:
//         return PermissionStatus.denied;
//     }
//   }
//
//   Future<PermissionStatus> requestNotificationPermission() async {
//     return await Permission.notification.request().then((value) => value).onError((error, stackTrace) => PermissionStatus.denied);
//   }
// // coverage:ignore-end
// }
//
// final notificationPermissionProvider = AsyncNotifierProvider<NotificationPermissionAsyncNotifier, PermissionStatus?>(
//       () => NotificationPermissionAsyncNotifier(),
// );
