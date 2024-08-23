import 'package:flutter/material.dart';
import 'package:tms_driver/data/models/chats/message/message_model.dart';

class MessageItemWidget extends StatelessWidget {
  const MessageItemWidget({super.key, required this.messageModel});

  final MessageModel messageModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 6, 10, 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              boxShadow: [
                BoxShadow(
                  color: theme.focusColor.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: Image.asset(
                messageModel.image,
                width: 16,
                height: 16,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 7),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      messageModel.name,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: theme.dividerColor,
                      ),
                    ),
                    const SizedBox(width: 9),
                    Text(
                      messageModel.role,
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        color: theme.cardColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  messageModel.message,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: theme.dividerColor,
                  ),
                ),
              ],
            ),
          ),
          Text(
            messageModel.time,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: theme.dividerColor,
            ),
          ),
        ],
      ),
    );
  }
}
