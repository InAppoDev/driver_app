import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  List<ConnectivityResult> _lastResults = [ConnectivityResult.none];
  final StreamController<List<ConnectivityResult>> _connectivityController =
      StreamController<List<ConnectivityResult>>.broadcast();

  ConnectivityService() {
    _initialize();
  }

  void _initialize() async {
    log('Initializing connectivity service...');
    await checkInitialConnectivity();
    _connectivitySubscription = _connectivity.onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      print('Connectivity changed: $result');
      _updateConnectivityStatus(result);
    });
  }

  Future<void> checkInitialConnectivity() async {
    try {
      final List<ConnectivityResult> result =
          await _connectivity.checkConnectivity();
      _updateConnectivityStatus(result);
      log('Initial connectivity status: $result');
    } catch (e) {
      print('Error checking initial connectivity: $e');
      _updateConnectivityStatus([ConnectivityResult.none]);
    }
  }

  Stream<List<ConnectivityResult>> get connectivityStream =>
      _connectivityController.stream;

  void _updateConnectivityStatus(List<ConnectivityResult> results) {
    print('Updating connectivity status: $results');
    _lastResults = results;
    _connectivityController.add(_lastResults);
  }

  List<ConnectivityResult> get lastResults => _lastResults;

  void dispose() {
    print('Disposing connectivity service...');
    _connectivitySubscription.cancel();
    _connectivityController.close();
  }
}
