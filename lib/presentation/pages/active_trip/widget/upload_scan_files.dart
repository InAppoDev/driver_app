import 'dart:io';

import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/customs/custom_text_field.dart';
import 'package:tms_driver/presentation/customs/selected_file_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class UploadScanFiles extends StatefulWidget {
  final VoidCallback onAddFile;
  final Function(String) onScanFile;
  final Function(File) onFileRemove;
  final File? selectedFile;
  final VoidCallback? onUploadPressed;
  final Function(String, bool)? onConfirmPressed;
  final bool isFileLoading;
  final bool isActiveTrip;
  final bool isCleanBol;
  final String title;
  final List<String> documents;

  const UploadScanFiles({
    super.key,
    required this.onAddFile,
    required this.onScanFile,
    required this.selectedFile,
    required this.onFileRemove,
    this.onUploadPressed,
    this.onConfirmPressed,
    this.isFileLoading = false,
    this.isActiveTrip = false,
    this.isCleanBol = false,
    this.title = '',
    this.documents = const [],
  });

  @override
  State<UploadScanFiles> createState() => _UploadScanFilesState();
}

class _UploadScanFilesState extends State<UploadScanFiles> {
  int minLines = 1;
  final TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 16.5, vertical: widget.isActiveTrip ? 0 : 30),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: theme.scaffoldBackgroundColor,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.isActiveTrip) ...[
              Text(widget.title),
              const SizedBox(height: 15),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: widget.onAddFile,
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
                    final pictures = await CunningDocumentScanner.getPictures(
                            noOfPages: 1) ??
                        [];
                    if (pictures.isNotEmpty) {
                      widget.onScanFile(pictures.first);
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
            if (!widget.isCleanBol) ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: theme.splashColor, width: 2),
                  color: theme.scaffoldBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 1,
                      offset: const Offset(0, 1), // Shadow position
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset('assets/images/rejected.svg'),
                    const SizedBox(width: 12),
                    Text(
                      'Loader reject',
                      style: theme.textTheme.labelSmall!
                          .copyWith(color: theme.splashColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Upload the BOL document or you can scan it.",
                style: theme.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 18),
            ],
            if (widget.isActiveTrip) ...[
              if (widget.isCleanBol) ...[
                Text(
                  "Photo control upon receipt of cargo. Photo of the cargo.2 photos ( without seal and with seal):",
                  style: theme.textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
              ],
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...widget.documents.map(
                      (doc) => SelectedFileWidget(
                        selectedFile: File(doc),
                        onFileRemove: widget.onFileRemove,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                constraints: BoxConstraints(maxHeight: height * 0.17),
                child: CustomTextField(
                  hintText: context.localizations.addComment.toUpperCase(),
                  controller: commentController,
                  minLines: minLines,
                  onChanged: (text) {
                    if (text.split('\n').length > 1) {
                      setState(() {
                        minLines = text.split('\n').length + 1;
                      });
                    }
                    if (text.isEmpty || text.split('\n').length == 1) {
                      setState(() {
                        minLines = 1;
                      });
                    }
                  },
                  keyboardType: TextInputType.multiline,
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                label: context.localizations.confirm,
                onPressed: () {
                  widget.onConfirmPressed?.call(
                      commentController.text.trim(), widget.isCleanBol);
                },
                isLoading: widget.isFileLoading,
              ),
              const SizedBox(height: 10),
            ],
            if (widget.selectedFile != null) ...[
              SelectedFileWidget(
                selectedFile: widget.selectedFile!,
                onFileRemove: widget.onFileRemove,
                onDownLoad: () {},
              ),
              const SizedBox(height: 16),
            ],
            if (widget.onUploadPressed != null)
              CustomButton(
                height: 36,
                label: context.localizations.upload,
                onPressed: () {
                  widget.onUploadPressed?.call();
                },
                isLoading: widget.isFileLoading,
              ),
          ],
        ),
      ),
    );
  }
}
