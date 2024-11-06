import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/upload_scan_files.dart';

class FilePickerDialog extends StatelessWidget {
  const FilePickerDialog({
    super.key,
    required this.onAddFile,
    required this.onScanFile,
    this.selectedFile,
    required this.onFileRemove,
    required this.isFileLoading,
    this.isActiveTrip = false,
    this.title = '',
    this.isCleanBol = false,
    this.onConfirmPressed,
    this.documents = const [],
    this.isConfirmTripSuccesses,
    this.onSuccessCheckCallPressed,
    this.isCheckCallLoading, this.checkCallResponseMessage,
  });

  final VoidCallback onAddFile;
  final Function(String, bool, bool)? onConfirmPressed;
  final Function(String) onScanFile;
  final Function(File) onFileRemove;
  final File? selectedFile;
  final bool isFileLoading;
  final bool isActiveTrip;
  final bool isCleanBol;
  final String title;
  final List<String> documents;
  final bool? isConfirmTripSuccesses;
  final bool? isCheckCallLoading;
  final VoidCallback? onSuccessCheckCallPressed;
  final String? checkCallResponseMessage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(

      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
        color: theme.scaffoldBackgroundColor,
      ),
      child: UploadScanFiles(
        onAddFile: onAddFile,
        onScanFile: onScanFile,
        selectedFile: selectedFile,
        onFileRemove: onFileRemove,
        isFileLoading: isFileLoading,
        title: title,
        isActiveTrip: isActiveTrip,
        isCleanBol: isCleanBol,
        onConfirmPressed: onConfirmPressed,
        documents: documents,
        isConfirmTripSuccesses: isConfirmTripSuccesses,
        onSuccessCheckCallPressed: onSuccessCheckCallPressed,
        isCheckCallLoading: isCheckCallLoading,
        checkCallResponseMessage: checkCallResponseMessage,
      ),
    );
  }
}
