import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/consts/consts.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';

class SelectedFileWidget extends StatelessWidget {
  const SelectedFileWidget({
    super.key,
    required this.selectedFile,
    required this.onFileRemove,
  });

  final File selectedFile;
  final Function(File) onFileRemove;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.39,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            ),
            child: Image.file(
              selectedFile,
              height: height * 0.1,
              width: width * 0.39,
              fit: BoxFit.fitWidth,
            ),
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
                Text(
                  subFile(selectedFile),
                  style: theme.textTheme.bodySmall!.copyWith(fontSize: 8),
                ),
                const SizedBox(width: 15),
                CustomIconButton(
                  padding: EdgeInsets.zero,
                  height: 13,
                  icon: 'upload',
                  onPressed: () {},
                  justIcon: true,
                  iconColor: theme.canvasColor,
                ),
                const SizedBox(width: 10),
                CustomIconButton(
                  padding: EdgeInsets.zero,
                  height: 13,
                  icon: 'delete',
                  onPressed: () {
                    onFileRemove(selectedFile);
                  },
                  justIcon: true,
                  iconColor: theme.canvasColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
