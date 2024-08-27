import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/data/models/chats/chat/chat_model.dart';
import 'package:tms_driver/presentation/pages/chat_detail/widget/chat_image.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/unread_count_widget.dart';

class MessageListItemWidget extends StatelessWidget {
  final ChatModel chat;

  const MessageListItemWidget({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/chat/${chat.id}');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 13),
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color:
              chat.unreadMessagesCount != null && chat.unreadMessagesCount! > 0
                  ? Theme.of(context).secondaryHeaderColor.withOpacity(0.2)
                  : Theme.of(context).canvasColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: ChatImage(
                mainImage: chat.photoUrl,
                participants: chat.participants,
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        chat.title,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        _formatTime(chat.lastUpdatedAt),
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          chat.lastMessage?.previewText ?? '',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      if (chat.unreadMessagesCount != null &&
                          chat.unreadMessagesCount! > 0)
                        UnreadCountWidget(count: chat.unreadMessagesCount!),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(int? timestamp) {
    if (timestamp == null) return '';
    final DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    final String formattedTime =
        '${date.hour}:${date.minute} ${date.hour >= 12 ? 'PM' : 'AM'}';
    return formattedTime;
  }
}
