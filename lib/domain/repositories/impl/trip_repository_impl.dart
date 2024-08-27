import 'dart:io';

import 'package:tms_driver/data/data_source/api_data_source.dart';
import 'package:tms_driver/data/models/document/upload_document_response.dart';
import 'package:tms_driver/domain/repositories/trip_repository.dart';

class TripRepositoryImpl implements TripRepository {
  final ApiDataSource apiDataSource;
  TripRepositoryImpl({required this.apiDataSource});

  @override
  Future<UploadDocumentResponse> uploadDocument(File file, String name) {
    return apiDataSource.uploadDocument(file, name);
  }
}
