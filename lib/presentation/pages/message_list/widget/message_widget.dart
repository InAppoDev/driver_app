import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/chat_image.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                ChatImage(
                  mainImage: 'assets/images/temp_chat_image.png',
                  images: [
                    'assets/images/temp_chat_image.png',
                    'assets/images/temp_chat_image.png',
                    'assets/images/temp_chat_image.png'
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dispatch PU#123213',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Will do, super, thank you',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
          Text(
            '9:43 AM',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
