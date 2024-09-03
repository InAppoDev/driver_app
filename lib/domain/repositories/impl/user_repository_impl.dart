import 'dart:io';
import 'dart:typed_data';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/models/user/user_model.dart';
import 'package:tms_driver/data/services/connectivity_service.dart';
import 'package:tms_driver/data/services/hive_service.dart';
import 'package:tms_driver/domain/repositories/user_repository.dart';
import 'dart:async';

class UserRepositoryImpl implements UserRepository {
  final ApiDataSource apiDataSource;
  final HiveService hiveService;
  final ConnectivityService connectivityService;

  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  List<ConnectivityResult> _lastResults = [ConnectivityResult.none];

  UserRepositoryImpl({
    required this.apiDataSource,
    required this.hiveService,
    required this.connectivityService,
  }) {
    _connectivitySubscription = connectivityService.connectivityStream
        .listen((List<ConnectivityResult> results) {
      _updateConnectionStatus(results);
    });
  }
  void _updateConnectionStatus(List<ConnectivityResult> results) {
    _lastResults = results;
  }

  void dispose() {
    _connectivitySubscription.cancel();
  }

  @override
  Future<UserModel> getUser() async {
    if (_lastResults.contains(ConnectivityResult.none)) {
      final user = hiveService.getUser();
      if (user != null) {
        final localImagePath = await _getLocalImagePath();
        if (await File(localImagePath).exists()) {
          print('picture uploaded localy $localImagePath');
        }
        return user;
      } else {
        throw Exception('No internet connection and no local data available');
      }
    } else {
      final userModel = await apiDataSource.getUser();
      if (userModel.photo != null) {
        await _saveImageLocally(userModel.photo!);
      }
      await hiveService.saveUser(userModel);
      return userModel;
    }
  }

  Future<String> _getLocalImagePath() async {
    final directory = await getApplicationDocumentsDirectory();
    print('picture _getLocalImagePath ${directory.path}/user_photo.jpg');
    return '${directory.path}/user_photo.jpg';
  }

  Future<void> _saveImageLocally(String url) async {
    try {
      final response = await Dio().get<Uint8List>(
        url,
        options: Options(responseType: ResponseType.bytes),
      );

      final imagePath = await _getLocalImagePath();
      print('picture _saveImageLocally ${imagePath}');
      final file = File(imagePath);

      await file.writeAsBytes(response.data!);
    } catch (e) {
      print('Error saving image locally: $e');
    }
  }
}
