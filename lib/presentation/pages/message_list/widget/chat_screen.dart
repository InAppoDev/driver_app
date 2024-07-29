import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/customs/custom_app_bar.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/chat_bar_info.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.canvasColor,
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              ChatBatInfo(),
            ],
          ),
        ],
      ),
    );
  }
}
