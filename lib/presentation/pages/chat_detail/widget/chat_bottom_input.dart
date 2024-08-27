import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';
import 'package:tms_driver/presentation/customs/custom_text_field.dart';
import 'package:tms_driver/presentation/customs/eta_widget.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/calendar_dialog.dart';

class ChatBottomInput extends StatefulWidget {
  const ChatBottomInput({
    super.key,
    required this.onTextSend,
  });

  final Function(String) onTextSend;

  @override
  State<ChatBottomInput> createState() => _ChatBottomInputState();
}

class _ChatBottomInputState extends State<ChatBottomInput> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
        children: [
          Row(
            children: [
              Text(
                'Edit ETA:',
                style: TextStyle(
                  color: theme.cardColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              EtaWidget(
                text: '+ 30 min',
                onPressed: () {
                  setState(() {
                    textEditingController.text += '30 min';
                  });
                },
              ),
              EtaWidget(
                text: '+ 1 hour',
                onPressed: () {
                  textEditingController.text += '1 hour';
                },
              ),
              EtaWidget(
                text: 'Set Value',
                onPressed: () async {
                  final resp = await showDialog(
                      context: context,
                      builder: (context) => const CalendarDialog());
                  textEditingController.text += resp;
                },
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomTextField(
                  keyboardType: TextInputType.text,
                  controller: textEditingController,
                  height: 45,
                  borderRadius: 20,
                ),
              ),
              const SizedBox(width: 18),
              CustomIconButton(
                iconColor: theme.scaffoldBackgroundColor,
                icon: 'send',
                onPressed: () {
                  textEditingController.clear();
                  widget.onTextSend(textEditingController.text.trim());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
