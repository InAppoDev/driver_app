import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/chat_detail/bloc/chat_detail_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_app_bar.dart';
import 'package:tms_driver/presentation/pages/chat_detail/widget/chat_list_view.dart';

class ChatScreen extends StatelessWidget {
  final int chatId;
  const ChatScreen({super.key, required this.chatId});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: theme.canvasColor,
      body: BlocProvider(
        create: (context) => ChatDetailBloc(chatId: chatId)
          ..add(ChatDetailEvent.fetchChatDetails(chatId)),
        child: ChatListView(),
      ),
    );
  }
}
