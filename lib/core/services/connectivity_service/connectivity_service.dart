import 'package:clean_project/core/services/connectivity_service/connectivity_service_interface.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class ConnectivityService implements ConnectivityServiceInterface {
  static ConnectivityService? _connectivityService;

  factory ConnectivityService() => _connectivityService ??= ConnectivityService._();

  ConnectivityService._() {
    initConnectivity();
  }

  ConnectivityResult? _connectivityResult;

  void initConnectivity() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      _connectivityResult = await Connectivity().checkConnectivity();
      Connectivity().onConnectivityChanged.listen(
        (connectivityResult) async {
          _connectivityResult = connectivityResult;
        },
      );
    } on PlatformException catch (e) {
      debugPrint('Couldn\'t check connectivity status, ${e.message}');
      return;
    }
  }

  @override
  bool get isOnline => _connectivityResult != ConnectivityResult.none;
}
