import 'dart:io';

import 'package:tms_driver/data/models/check/check_call/check_call_model.dart';
import 'package:tms_driver/data/models/document/upload_document_response.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_list_model/dispatch_list_model.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_model/dispatch_model.dart';

abstract class TripRepository {
  Future<UploadDocumentResponse> uploadDocument(File file, String name);

  Future<List<DispatchListModel>> getTrips();

  Future<DispatchModel> getTripById(int tripId);

  Future<DispatchModel?> getActiveTrip();

  Future<List<DispatchListModel>> getHistoryTrips();

  Future<bool> sendCheckCall({
    required int id,
    required CheckCallModel checkCall,
  });
}
