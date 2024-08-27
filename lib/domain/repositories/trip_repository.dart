import 'dart:io';

import 'package:tms_driver/data/models/document/upload_document_response.dart';

abstract class TripRepository {
  Future<UploadDocumentResponse> uploadDocument(File file, String name);
}
