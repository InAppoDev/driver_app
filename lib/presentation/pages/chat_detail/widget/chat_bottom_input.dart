import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';
import 'package:tms_driver/presentation/customs/custom_text_field.dart';
import 'package:tms_driver/presentation/customs/eta_widget.dart';
import 'package:tms_driver/presentation/customs/selected_file_widget.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/calendar_dialog.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class ChatBottomInput extends StatefulWidget {
  const ChatBottomInput({
    super.key,
    required this.onTextSend,
    required this.documents,
    required this.onPinPressed,
    required this.onFileRemove,
  });

  final Function(String) onTextSend;
  final VoidCallback onPinPressed;
  final List<File> documents;
  final Function(File) onFileRemove;

  @override
  State<ChatBottomInput> createState() => _ChatBottomInputState();
}

class _ChatBottomInputState extends State<ChatBottomInput> {
  final TextEditingController textEditingController = TextEditingController();
  int minLines = 1;

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.fromLTRB(13, 15, 13, 11),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        color: theme.scaffoldBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                context.localizations.editETA,
                style: TextStyle(
                  color: theme.cardColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              EtaWidget(
                text: '+ 30 ${context.localizations.min}',
                onPressed: () {
                  setState(() {
                    textEditingController.text += '30 min';
                  });
                },
              ),
              EtaWidget(
                text: '+ 1 ${context.localizations.hour}',
                onPressed: () {
                  setState(() {
                    textEditingController.text += '1 hour';
                  });
                },
              ),
              EtaWidget(
                text: context.localizations.setValue,
                onPressed: () async {
                  await showModalBottomSheet<int>(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return const CalendarBottomSheet();
                      });
                },
              ),
            ],
          ),
          const SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...widget.documents.map(
                  (doc) => SelectedFileWidget(
                    selectedFile: doc,
                    onFileRemove: widget.onFileRemove,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(
                justIcon: true,
                iconColor: theme.dividerColor,
                icon: 'pin',
                onPressed: widget.onPinPressed,
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Container(
                  constraints: BoxConstraints(maxHeight: height * 0.17),
                  child: CustomTextField(
                    minLines: minLines,
                    onChanged: (text) {
                      if (text.split('\n').length > 1) {
                        setState(() {
                          minLines = text.split('\n').length + 1;
                        });
                      }
                      if(text.isEmpty || text.split('\n').length == 1){
                       setState(() {
                         minLines = 1;
                       });
                      }
                    },
                    keyboardType: TextInputType.multiline,
                    controller: textEditingController,
                    borderRadius: 20,
                  ),
                ),
              ),
              const SizedBox(width: 18),
              CustomIconButton(
                iconColor: theme.scaffoldBackgroundColor,
                icon: 'send',
                onPressed: () {
                  if (textEditingController.text.isNotEmpty ||
                      widget.documents.isNotEmpty) {
                    widget.onTextSend(textEditingController.text.trim());
                    textEditingController.clear();
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
