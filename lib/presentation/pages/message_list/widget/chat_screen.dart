import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/message/message_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_app_bar.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/chat_bar_info.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/chat_bottom_input.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/chat_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => MessageBloc(),
      child: BlocBuilder<MessageBloc, MessageState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: theme.canvasColor,
            appBar: const CustomAppBar(),
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      const ChatBatInfo(),
                      ChatWidget(messages: state.messageList),
                    ],
                  ),
                ),
                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: ChatBottomInput(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
