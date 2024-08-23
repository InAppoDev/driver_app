import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/data/models/chats/chat/chat_model.dart';

class MessageWidget extends StatelessWidget {
  final ChatModel chat;

  const MessageWidget({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Передаємо ID чату через роутер
        context.go('/chat', extra: chat.id);
      },
      child: Container(
        color: Theme.of(context).canvasColor,
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(top: 7),
            //   child: ChatImage(
            //     mainImage:
            //         chat.photoUrl ?? 'assets/images/temp_chat_image.jpeg',
            //     images: chat.participants
            //         .take(3)
            //         .map((participant) =>
            //             participant.avatarUrl ??
            //             'assets/images/temp_chat_image.jpeg')
            //         .toList(),
            //   ),
            // ),
            const SizedBox(width: 10),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.title,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    chat.lastMessage?.previewText ?? '',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Text(
              _formatTime(chat.lastUpdatedAt),
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
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
