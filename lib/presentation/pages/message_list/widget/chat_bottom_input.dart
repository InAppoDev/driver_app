import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/message/message_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';
import 'package:tms_driver/presentation/customs/custom_text_field.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/eta_widget.dart';

class ChatBottomInput extends StatefulWidget {
  const ChatBottomInput({super.key});

  @override
  State<ChatBottomInput> createState() => _ChatBottomInputState();
}

class _ChatBottomInputState extends State<ChatBottomInput> {
  final messageController = TextEditingController();

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
                onPressed: () {},
              ),
              EtaWidget(
                text: '+ 1 hour',
                onPressed: () {},
              ),
              EtaWidget(
                text: 'Set Value',
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomTextField(
                  controller: messageController,
                  height: 45,
                  borderRadius: 20,
                ),
              ),
              const SizedBox(width: 18),
              CustomIconButton(
                iconColor: theme.scaffoldBackgroundColor,
                icon: 'send',
                onPressed: () {
                  context.read<MessageBloc>().add(MessageEvent.sendMessage(
                        message: messageController.text.trim(),
                      ));
                  messageController.clear();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
