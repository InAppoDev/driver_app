import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/consts/consts.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';

class SelectedFileWidget extends StatelessWidget {
  const SelectedFileWidget({
    super.key,
    this.selectedFile,
    this.onFileRemove,
    this.fileFromNetwork,
    this.onDownLoad,
  });

  final File? selectedFile;
  final String? fileFromNetwork;
  final Function(File)? onFileRemove;
  final VoidCallback? onDownLoad;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width * (fileFromNetwork != null ? 0.23 : 0.39),
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            ),
            child: fileFromNetwork != null
                ? Image.network(
                    fileFromNetwork!,
                    height: height * 0.05,
                    width: width * 0.23,
                    fit: BoxFit.fitWidth,
                  )
                : fileFromNetwork == null
                    ? Image.file(
                        selectedFile!,
                        height: height * 0.1,
                        width: width * 0.39,
                        fit: BoxFit.fitWidth,
                      )
                    : const SizedBox.shrink(),
          ),
          Container(
            width: width * 0.39,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              color: theme.cardColor,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (selectedFile != null) ...[
                  Text(
                    subFile(selectedFile!),
                    style: theme.textTheme.bodySmall!.copyWith(fontSize: 8),
                  ),
                  const SizedBox(width: 15),
                ],
                if (onDownLoad != null)
                  CustomIconButton(
                    padding: EdgeInsets.zero,
                  height: 13,
                  icon: 'upload',
                    onPressed: () {
                      onDownLoad!.call();
                    },
                    justIcon: true,
                  iconColor: theme.canvasColor,
                ),
                if (fileFromNetwork == null) ...[
                  const SizedBox(width: 10),
                  CustomIconButton(
                    padding: EdgeInsets.zero,
                    height: 13,
                    icon: 'delete',
                  onPressed: () {
                      onFileRemove?.call(selectedFile!);
                    },
                    justIcon: true,
                    iconColor: theme.canvasColor,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
