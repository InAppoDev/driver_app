import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/chat_detail/widget/file_picker_dialog.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';

class IsCleanBolBS extends StatefulWidget {
  const IsCleanBolBS({
    super.key,
    required this.onConfirmPressed,
    required this.onScanFile,
    required this.onFileRemove,
    required this.onAddFile,
    required this.documents,
    required this.isConfirmTripSuccesses,
    required this.onSuccessCheckCallPressed,
    required this.isCheckCallLoading,
    required this.checkCallResponseMessage,
  });

  final Function(String, bool, bool) onConfirmPressed;
  final Function(String) onScanFile;
  final Function(File) onFileRemove;
  final VoidCallback onAddFile;
  final List<String> documents;
  final bool? isConfirmTripSuccesses;
  final bool isCheckCallLoading;
  final VoidCallback? onSuccessCheckCallPressed;
  final String? checkCallResponseMessage;

  @override
  State<IsCleanBolBS> createState() => _IsCleanBolBSState();
}

class _IsCleanBolBSState extends State<IsCleanBolBS> {
  bool isCleanBol = false;
  bool showUploadBS = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return !showUploadBS
        ? Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            color: theme.scaffoldBackgroundColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'BOL document:',
                  style: theme.textTheme.labelSmall!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: theme.dividerColor,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isCleanBol = true;
                          showUploadBS = true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: AppColors.lightGreen,
                            width: 2,
                          ),
                          color: theme.scaffoldBackgroundColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 1,
                              offset: const Offset(0, 1), // Shadow position
                            ),
                          ],
                        ),
                        child: Text(
                          'Clean BOL',
                          style: theme.textTheme.labelSmall!
                              .copyWith(color: AppColors.lightGreen),
                        ),
                      ),
                    ),
                    const SizedBox(width: 18),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isCleanBol = false;
                          showUploadBS = true;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border:
                              Border.all(color: theme.splashColor, width: 2),
                          color: theme.scaffoldBackgroundColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 1,
                              offset: const Offset(0, 1), // Shadow position
                            ),
                          ],
                        ),
                        child: Text(
                          'Not clean BOL',
                          style: theme.textTheme.labelSmall!
                              .copyWith(color: theme.splashColor),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 56),
                  child: Text(
                    'Choose "Clean BOL" or "Not clean BOL"and take a picture of BOL',
                    style: theme.textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: theme.dividerColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        : FilePickerDialog(
            onAddFile: widget.onAddFile,
            onScanFile: widget.onScanFile,
            onFileRemove: widget.onFileRemove,
            onConfirmPressed: widget.onConfirmPressed,
            isFileLoading: false,
            isActiveTrip: true,
            title: 'BOL DOCUMENT',
            isCleanBol: isCleanBol,
            documents: widget.documents,
            isConfirmTripSuccesses: widget.isConfirmTripSuccesses,
            onSuccessCheckCallPressed: widget.onSuccessCheckCallPressed,
            isCheckCallLoading: widget.isCheckCallLoading,
            checkCallResponseMessage: widget.checkCallResponseMessage,
          );
  }
}
