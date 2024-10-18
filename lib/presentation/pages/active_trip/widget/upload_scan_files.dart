import 'dart:io';

import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/customs/selected_file_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class UploadScanFiles extends StatelessWidget {
  final VoidCallback onAddFile;
  final Function(String) onScanFile;
  final Function(File) onFileRemove;
  final File? selectedFile;
  final VoidCallback? onUploadPressed;
  final bool isFileLoading;

  const UploadScanFiles({
    super.key,
    required this.onAddFile,
    required this.onScanFile,
    required this.selectedFile,
    required this.onFileRemove,
    this.onUploadPressed,
    this.isFileLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.5, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: theme.scaffoldBackgroundColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: onAddFile,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(24, 18, 12, 18),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: theme.dialogBackgroundColor,
                      ),
                      child: SvgPicture.asset('assets/images/add_file.svg'),
                    ),
                    Text(
                      context.localizations.uploadFiles,
                      style: theme.textTheme.labelSmall!.copyWith(
                        fontSize: 13,
                        color: theme.primaryColorLight,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  context.localizations.or,
                  style: theme.textTheme.titleLarge!.copyWith(fontSize: 13),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  final pictures =
                      await CunningDocumentScanner.getPictures(noOfPages: 1) ??
                          [];
                  if (pictures.isNotEmpty) {
                    onScanFile(pictures.first);
                  }
                },
                child: Column(
                  children: [
                    SvgPicture.asset('assets/images/scan.svg'),
                    const SizedBox(height: 5),
                    Text(
                      context.localizations.uploadFiles,
                      style: theme.textTheme.labelSmall!.copyWith(
                        fontSize: 13,
                        color: theme.primaryColorLight,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          if (selectedFile != null) ...[
            SelectedFileWidget(
              selectedFile: selectedFile!,
              onFileRemove: onFileRemove,
              onDownLoad: () {},
            ),
            const SizedBox(height: 16),
          ],
          if (onUploadPressed != null)
            CustomButton(
              height: 36,
            label: context.localizations.upload,
              onPressed: () {
                onUploadPressed?.call();
              },
              isLoading: isFileLoading,
          ),
        ],
      ),
    );
  }
}
