import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/chat_detail/bloc/chat_detail_bloc.dart';
import 'package:tms_driver/presentation/pages/chat_detail/widget/chat_bar_info.dart';
import 'package:tms_driver/presentation/pages/chat_detail/widget/chat_bottom_input.dart';
import 'package:tms_driver/presentation/pages/chat_detail/widget/chat_list_item_widget.dart';

class ChatListView extends StatefulWidget {
  const ChatListView({super.key});

  @override
  ChatListViewState createState() => ChatListViewState();
}

class ChatListViewState extends State<ChatListView> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatDetailBloc, ChatDetailState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (chatDetails, documents) {
            final messages = chatDetails.messages;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _scrollToBottom();
            });
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
                      padding: const EdgeInsets.only(bottom: 20),
                      controller: _scrollController,
                      itemCount: messages.length,
                      itemBuilder: (context, index) => ChatListItemWidget(
                        messageModel: messages[index],
                      ),
                    ),
                  ),
                ),
                ChatBottomInput(
                  onTextSend: (value) {
                    if (value.isNotEmpty ||
                        (documents != null && documents.isNotEmpty)) {
                      context.read<ChatDetailBloc>().add(
                            ChatDetailEvent.sendMessage(
                              value,
                              chatDetails,
                            ),
                          );

                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        _scrollToBottom();
                      });
                    }
                  },
                  documents: documents ?? [],
                  onPinPressed: () {
                    context.read<ChatDetailBloc>().add(
                          const ChatDetailEvent.addDocument(),
                        );
                  },
                  onFileRemove: (file) {
                    context.read<ChatDetailBloc>().add(
                          ChatDetailEvent.removeDocument(file),
                        );
                  },
                ),
              ],
            );
          },
          sendingMessage: () =>
              const Center(child: CircularProgressIndicator()),
          messageSent: () => const Center(child: Text('Message sent!')),
          failure: (errorMessage) => Center(
            child: Text(
              errorMessage,
              style: const TextStyle(color: Colors.red),
            ),
          ),
        );
      },
    );
  }
}
