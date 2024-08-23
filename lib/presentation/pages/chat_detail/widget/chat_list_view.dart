import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/chat_detail/bloc/chat_detail_bloc.dart';
import 'package:tms_driver/presentation/pages/chat_detail/widget/chat_bar_info.dart';
import 'package:tms_driver/presentation/pages/chat_detail/widget/chat_bottom_input.dart';
import 'package:tms_driver/presentation/pages/chat_detail/widget/chat_list_item_widget.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatDetailBloc, ChatDetailState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (chatDetails) {
            final messages = chatDetails.messages;
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      const ChatBatInfo(),
                      Expanded(
                        child: ListView.builder(
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          itemCount: messages.length,
                          itemBuilder: (context, index) => ChatListItemWidget(
                            messageModel: messages[index],
                          ),
                        ),
                      ),
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
            );
          },
          failure: (errorMessage) => Center(
            child: Text(
              errorMessage,
              style: const TextStyle(color: Colors.red),
            ),
          ),
          sendingMessage: () =>
              const Center(child: CircularProgressIndicator()),
          messageSent: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
