import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/notification/bloc/notification_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';
import 'package:tms_driver/presentation/pages/notification/widget/notification_list_view.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.canvasColor,
      appBar: AppBar(
        leadingWidth: 40,
        leading: CustomIconButton(
          height: 18,
          icon: 'arrow',
          onPressed: () {
            context.pop();
          },
          justIcon: true,
          iconColor: Theme.of(context).dividerColor,
        ),
        title: SizedBox(
          height: 30,
          child: Image.asset(
            'assets/images/logo.png',
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: BlocProvider(
        create: (BuildContext context) => NotificationBloc(),
        child: const NotificationListView(),
      ),
    );
  }
}
