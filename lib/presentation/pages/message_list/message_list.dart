import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/message_widget.dart';

class MessageListPage extends StatelessWidget {
  const MessageListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).canvasColor),
      child: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return const MessageWidget();
        },
      ),
    );
  }
}
