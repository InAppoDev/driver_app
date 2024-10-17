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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final tripListBloc = TripListBloc();
            Future.microtask(() {
              tripListBloc.add(const TripListEvent.fetchTrips());
              tripListBloc.add(const TripListEvent.fetchHistoryTrips());
            });
            return tripListBloc;
          },
        ),
        BlocProvider(
          create: (context) {
            final tripDetailBloc = TripDetailBloc();
            Future.microtask(() {
              tripDetailBloc.add(const TripDetailEvent.loadActiveTrip());
            });
            return tripDetailBloc;
          },
        ),
        BlocProvider(
          create: (context) {
            final messageListBloc = MessageListBloc();
            Future.microtask(() {
              messageListBloc.add(const MessageListEvent.getChats());
            });
            return messageListBloc;
          },
        ),
        BlocProvider(
          create: (context) {
            final userBloc = UserBloc();
            Future.microtask(() {
              userBloc.add(const UserEvent.started());
            });
            return userBloc;
          },
        ),
        BlocProvider(
          create: (context) {
            final notificationBloc = NotificationBloc();
            Future.microtask(() {
              notificationBloc.add(const NotificationEvent.startPolling());
            });
            return notificationBloc;
          },
        ),
        BlocProvider(
          create: (context) => MainBloc(),
        ),
      ],
      child: const MainView(),
    );
  }
}
