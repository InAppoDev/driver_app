import 'package:flutter/material.dart';
import 'package:tms_driver/data/models/chats/message/message_model.dart';
import 'package:tms_driver/presentation/pages/chat_detail/widget/chat_list_view.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    super.key,
    required this.messages,
  });
  final List<MessageModel> messages;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          color: theme.scaffoldBackgroundColor,
        ),
        child: const ChatListView(),
      ),
    );
  }
}
