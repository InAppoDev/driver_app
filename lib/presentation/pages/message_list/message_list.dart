import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/message/message_bloc.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/message_widget.dart';

class MessageListPage extends StatelessWidget {
  const MessageListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MessageBloc(),
      child: BlocListener<MessageBloc, MessageState>(
        listener: (context, listenerState) {
          if (listenerState.status == MessageStatus.failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content:
                      Text(listenerState.errorMessage ?? 'An error occurred')),
            );
          }
        },
        child: BlocBuilder<MessageBloc, MessageState>(
          builder: (context, state) {
            return Container(
              decoration: BoxDecoration(color: Theme.of(context).canvasColor),
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return const MessageWidget();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
