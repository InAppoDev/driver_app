import 'dart:io';

import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/models/check/check_call/check_call_model.dart';
import 'package:tms_driver/data/models/document/upload_document_response.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_list_model/dispatch_list_model.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/domain/repositories/trip_repository.dart';

class TripRepositoryImpl implements TripRepository {
  final ApiDataSource apiDataSource;
  TripRepositoryImpl({required this.apiDataSource});

  @override
  Future<UploadDocumentResponse> uploadDocument(File file, String name) {
    return apiDataSource.uploadDocument(file, name);
  }

  @override
  Future<List<DispatchListModel>> getTrips() {
    return apiDataSource.getTrips();
  }

  @override
  Future<List<DispatchListModel>> getHistoryTrips() {
    return apiDataSource.getHistoryTrips();
  }

  @override
  Future<DispatchModel> getTripById(int tripId) {
    return apiDataSource.getTripById(tripId);
  }

  @override
  Future<DispatchModel?> getActiveTrip() {
    return apiDataSource.getActiveTrip();
  }

  @override
  Future<(String?, bool)> sendCheckCall({
    required int id,
    required CheckCallModel checkCall,
  }) async {
    return await apiDataSource.sendCheckCall(
      checkCall: checkCall,
      id: id,
    );
  }
}
