import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/message/message_bloc.dart';

import 'message_widget.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<MessageBloc, MessageState>(
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
          return ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const MessageWidget();
            },
          );
        },
      ),
    );
  }
}
