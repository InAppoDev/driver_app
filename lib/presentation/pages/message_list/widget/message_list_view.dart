import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/message_list/message_list_bloc.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/message_list_item_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class MessageListView extends StatelessWidget {
  const MessageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<MessageListBloc, MessageListState>(
      listener: (context, state) {
        if (state.status == MessageListStatus.failure) {
          ScaffoldMessenger.of(context).showMaterialBanner(
            MaterialBanner(
              content: Text(state.errorMessage ?? 'An error occurred'),
              backgroundColor: Colors.redAccent,
              actions: [
                TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  },
                  child: Text(
                    context.localizations.dismiss,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          );
        } else {
          ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
        }
      },
      child: BlocBuilder<MessageListBloc, MessageListState>(
        builder: (context, state) {
          if (state.status == MessageListStatus.loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.status == MessageListStatus.loaded) {
            if (state.chatList.isEmpty) {
              return RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<MessageListBloc>()
                      .add(const MessageListEvent.getChats());
                },
                child:  Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      context.localizations.youHaveNoMessagesYetPullToRefresh,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<MessageListBloc>()
                      .add(const MessageListEvent.getChats());
                },
                child: ListView.builder(
                  itemCount: state.chatList.length,
                  itemBuilder: (context, index) {
                    final chat = state.chatList[index];
                    return MessageListItemWidget(chat: chat);
                  },
                ),
              );
            }
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
