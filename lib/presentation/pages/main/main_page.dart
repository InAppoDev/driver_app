import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/main/bloc/main_bloc.dart';
import 'package:tms_driver/presentation/blocks/message_list/message_list_bloc.dart';
import 'package:tms_driver/presentation/blocks/notification/bloc/notification_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_list/trip_list_bloc.dart';
import 'package:tms_driver/presentation/blocks/user/user_bloc.dart';
import 'package:tms_driver/presentation/pages/main/widget/main_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tripListBloc = TripListBloc()
      ..add(const TripListEvent.fetchTrips())
      ..add(const TripListEvent.fetchHistoryTrips());

    final tripDetailBloc = TripDetailBloc()
      ..add(const TripDetailEvent.loadActiveTrip());
    final messageListBloc = MessageListBloc()
      ..add(const MessageListEvent.getChats());
    final userBloc = UserBloc()..add(const UserEvent.started());
    final notificationBloc = NotificationBloc()
      ..add(const NotificationEvent.started());

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainBloc(
            tripListBloc: tripListBloc,
            tripDetailBloc: tripDetailBloc,
            messageListBloc: messageListBloc,
            userBloc: userBloc,
            notificationBloc: notificationBloc,
          ),
        ),
        BlocProvider(
          create: (context) => tripListBloc,
        ),
        BlocProvider(
          create: (context) => tripDetailBloc,
        ),
        BlocProvider(
          create: (context) => messageListBloc,
        ),
        BlocProvider(
          create: (context) => userBloc,
        ),
        BlocProvider(
          create: (context) => notificationBloc,
        ),
      ],
      child: const MainView(),
    );
  }
}
