import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/data/models/chats/chat_detail/chat_detail_model.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';
import 'package:tms_driver/presentation/pages/chat_detail/widget/chat_image.dart';

class ChatBarInfo extends StatelessWidget {
  const ChatBarInfo(
      {super.key, required this.chatDetails, required this.onPhonePressed});

  final ChatDetailModel chatDetails;
  final Function(String) onPhonePressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                CustomIconButton(
                  justIcon: true,
                  icon: 'arrow',
                  onPressed: () {
                    context.pop();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ChatImage(
                    margin: 1,
                    borderRadius: 5,
                    mainImage: chatDetails.photoUrl,
                    participants: chatDetails.participants,
                  ),
                ),
                const Flexible(
                  child: Text(
                    'Dispatch PU#123213',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          if (chatDetails.actionButtonType == 'call' &&
              chatDetails.actionButtonValue != null &&
              chatDetails.actionButtonValue!.isNotEmpty) ...[
            const SizedBox(width: 10),
          CustomIconButton(
            borderColor: Theme.of(context).indicatorColor.withOpacity(0.2),
            transparency: 0.2,
            icon: 'phone',
              onPressed: () {
                onPhonePressed(chatDetails.actionButtonValue!);
              },
            ),
          ],
        ],
      ),
    );
  }
}
