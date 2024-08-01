import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/message/message_bloc.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/message_view.dart';

class MessageListPage extends StatelessWidget {
  const MessageListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MessageBloc(),
      child: const MessageView(),
    );
  }
}
