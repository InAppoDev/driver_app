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
        if (state is Initial || state is Loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is Loaded) {
          final chatDetails = state.chatDetails;
          final messages = chatDetails.messages;
          return Column(
            children: [
              const SizedBox(height: 15),
              ChatBarInfo(
                chatDetails: chatDetails,
                onPhonePressed: (number) {
                  context
                      .read<ChatDetailBloc>()
                      .add(ChatDetailEvent.tapToCall(number));
                },
              ),
              const SizedBox(height: 14),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  child: ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context, index) => ChatListItemWidget(
                      messageModel: messages[index],
                    ),
                  ),
                ),
              ),
              ChatBottomInput(
                onTextSend: (value) {
                  context.read<ChatDetailBloc>().add(
                        ChatDetailEvent.sendMessage(
                          value,
                          chatDetails,
                        ),
                      );
                },
                documents: state.documents ?? [],
                onPinPressed: () {
                  context.read<ChatDetailBloc>().add(
                        ChatDetailEvent.addDocument(chatDetails),
                      );
                },
                onFileRemove: (file)
                {
                  print('pressed; file- $file');
                  context.read<ChatDetailBloc>().add(
                        ChatDetailEvent.removeDocument(chatDetails, file),
                      );
                },
              ),
            ],
          );
        }
        if (state is Failure) {
          return Center(
            child: Text(
              state.errorMessage,
              style: const TextStyle(color: Colors.red),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
