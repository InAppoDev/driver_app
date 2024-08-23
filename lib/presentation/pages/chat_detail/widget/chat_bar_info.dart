import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';
import 'package:tms_driver/presentation/pages/chat_detail/widget/chat_image.dart';

class ChatBatInfo extends StatelessWidget {
  const ChatBatInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ChatImage(
                    margin: 1,
                    borderRadius: 5,
                    mainImage: 'assets/images/temp_chat_image.jpeg',
                    images: [
                      'assets/images/temp_chat_image.jpeg',
                      'assets/images/temp_chat_image.jpeg',
                      'assets/images/temp_chat_image.jpeg'
                    ],
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
          const SizedBox(width: 10),
          CustomIconButton(
            borderColor: Theme.of(context).indicatorColor.withOpacity(0.2),
            transparency: 0.2,
            icon: 'phone',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
