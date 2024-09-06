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
  });

  final VoidCallback onAddFile;
  final Function(String) onScanFile;
  final Function(File) onFileRemove;
  final File? selectedFile;
  final bool isFileLoading;

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
      ),
    );
  }
}
