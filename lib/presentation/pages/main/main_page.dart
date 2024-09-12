import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/main/bloc/main_bloc.dart';
import 'package:tms_driver/presentation/blocks/message_list/message_list_bloc.dart';
import 'package:tms_driver/presentation/blocks/notification/bloc/notification_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_list/trip_bloc.dart';
import 'package:tms_driver/presentation/blocks/user/user_bloc.dart';
import 'package:tms_driver/presentation/pages/main/widget/main_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainBloc(),
        ),
        BlocProvider(
          create: (context) => TripBloc()..add(const TripEvent.fetchTrips()),
        ),
        BlocProvider(
          create: (context) =>
              MessageListBloc()..add(const MessageListEvent.getChats()),
        ),
        BlocProvider(
          create: (context) => UserBloc()..add(const UserEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              NotificationBloc()..add(const NotificationEvent.started()),
        ),
      ],
      child: const MainView(),
    );
  }
}
