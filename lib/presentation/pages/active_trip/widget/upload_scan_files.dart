import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/selected_file_widget.dart';

class UploadScanFiles extends StatelessWidget {
  const UploadScanFiles({
    super.key,
    required this.onUploadFile,
    required this.onScanFile,
    required this.selectedFiles,
    required this.onFileRemove,
  });

  final VoidCallback onUploadFile;
  final VoidCallback onScanFile;
  final Function(File) onFileRemove;
  final List<File> selectedFiles;

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
        children: [
          Text(
            'BOL document:',
            style: theme.textTheme.labelSmall!.copyWith(
              fontWeight: FontWeight.w700,
              color: theme.dividerColor,
            ),
          ),
          const SizedBox(height: 16),
          if (selectedFiles.isNotEmpty) ...[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...selectedFiles.map(
                    (file) => SelectedFileWidget(
                      selectedFile: file,
                      onFileRemove: onFileRemove,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: onUploadFile,
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
                      'Upload files',
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
                  'or',
                  style: theme.textTheme.titleLarge!.copyWith(fontSize: 13),
                ),
              ),
              GestureDetector(
                onTap: onScanFile,
                child: Column(
                  children: [
                    SvgPicture.asset('assets/images/scan.svg'),
                    const SizedBox(height: 5),
                    Text(
                      'Upload files',
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
          const SizedBox(height: 20),
          Text(
            'Upload the BOL document or you can scan it.',
            style: theme.textTheme.labelSmall!.copyWith(
              fontSize: 12,
              color: theme.dividerColor,
            ),
          ),
          const SizedBox(height: 16),
          CustomButton(
            height: 36,
            label: 'UPLOAD',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
