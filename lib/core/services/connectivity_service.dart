import 'package:clean_project/core/services/connectivity_service_interface.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class ConnectivityService implements ConnectivityServiceInterface {
  static final ConnectivityService _connectivityService = ConnectivityService._internal();

  factory ConnectivityService() => _connectivityService;

  ConnectivityService._internal();

  ConnectivityResult? _connectivityResult;

  @override
  Future<bool> get isOnline async {
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
      return false;
    }
    return _connectivityResult != ConnectivityResult.none;
  }
}
