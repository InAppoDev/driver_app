import 'package:flutter/cupertino.dart';
import 'package:tms_driver/data/models/chats/message/message_model.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/message_item_widget.dart';

class MessageListWidget extends StatelessWidget {
  const MessageListWidget({super.key, required this.messages});

  final List<MessageModel> messages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 18),
      itemCount: messages.length,
      itemBuilder: (context, index) => MessageItemWidget(
        messageModel: messages[index],
      ),
    );
  }
}
