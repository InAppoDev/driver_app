import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/chat_detail/bloc/chat_detail_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_app_bar.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/chat_bar_info.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/chat_bottom_input.dart';

class ChatScreen extends StatelessWidget {
  final int chatId;
  const ChatScreen({super.key, required this.chatId});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => ChatDetailBloc(chatId: chatId),
      child: BlocBuilder<ChatDetailBloc, ChatDetailState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: theme.canvasColor,
            appBar: const CustomAppBar(),
            body: const Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      ChatBatInfo(),
                      // ChatWidget(messages: state.messageList),
                    ],
                  ),
                ),
                Positioned(
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
