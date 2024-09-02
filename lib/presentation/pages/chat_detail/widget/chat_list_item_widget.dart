import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/data/models/chats/message/message_model.dart';
import 'package:tms_driver/presentation/blocks/chat_detail/bloc/chat_detail_bloc.dart';
import 'package:tms_driver/presentation/consts/consts.dart';
import 'package:tms_driver/presentation/customs/selected_file_widget.dart';

class ChatListItemWidget extends StatelessWidget {
  const ChatListItemWidget({super.key, required this.messageModel});

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
              boxShadow: messageModel.sender.avatarUrl != null
                  ? [
                      BoxShadow(
                        color: theme.focusColor.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: const Offset(0, 2),
                ),
                    ]
                  : null,
            ),
            child: messageModel.sender.avatarUrl != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: Image.network(
                      messageModel.sender.avatarUrl!,
                      width: 16,
                      height: 16,
                      fit: BoxFit.cover,
                    ),
                  )
                : const SizedBox.shrink(),
          ),
          const SizedBox(width: 7),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      messageModel.sender.name,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: theme.dividerColor,
                      ),
                    ),
                    const SizedBox(width: 9),
                    Text(
                      messageModel.sender.senderType,
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
                  messageModel.content,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: theme.dividerColor,
                  ),
                ),
                if (messageModel.documents != null)
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...messageModel.documents!.map(
                          (doc) {
                            if (doc.ext == 'pdf') {
                              return Text(subLongFileName(doc.name),
                                  style: theme.textTheme.labelSmall!.copyWith(
                                      decoration: TextDecoration.underline));
                            } else {
                              return SelectedFileWidget(
                                fileFromNetwork: doc.downloadUrl,
                                onDownLoad: () {
                                  if (doc.downloadUrl != null) {
                                    context.read<ChatDetailBloc>().add(
                                          ChatDetailEvent.downloadFile(
                                            doc.downloadUrl!,
                                            doc.name,
                                          ),
                                        );
                                  }
                                },
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Text(
            formatTimestamp(messageModel.sentAt),
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
