import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/home/home_bloc.dart';
import 'package:tms_driver/presentation/blocks/main/bloc/main_bloc.dart';
import 'package:tms_driver/presentation/blocks/message_list/message_list_bloc.dart';
import 'package:tms_driver/presentation/blocks/notification/bloc/notification_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_list/trip_list_bloc.dart';
import 'package:tms_driver/presentation/blocks/update/update_bloc.dart';
import 'package:tms_driver/presentation/blocks/user/user_bloc.dart';
import 'package:tms_driver/presentation/pages/main/widget/main_view.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TripListBloc(),
        ),
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => TripDetailBloc(),
        ),
        BlocProvider(
          create: (context) => MessageListBloc(),
        ),
        BlocProvider(
          create: (context) => UserBloc(),
        ),
        BlocProvider(
          create: (context) => NotificationBloc(),
        ),
        BlocProvider(
          create: (context) => MainBloc(),
        ),
        BlocProvider(
          create: (context) => UpdateBloc(),
        ),
      ],
      child: Builder(
        builder: (context) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.read<MainBloc>().add(MainEvent.setUpFcmToken(context));
            context.read<HomeBloc>().add(const HomeEvent.fetchStats());
            context.read<TripListBloc>().add(const TripListEvent.fetchTrips());
            context
                .read<TripListBloc>()
                .add(const TripListEvent.fetchHistoryTrips());
            context
                .read<TripDetailBloc>()
                .add(const TripDetailEvent.loadActiveTrip());
            context
                .read<MessageListBloc>()
                .add(const MessageListEvent.getChats());
            context.read<UserBloc>().add(const UserEvent.started());
            //TODO uncomment for fetch notification
            context
                .read<NotificationBloc>()
                .add(const NotificationEvent.startPolling());
          });

          return const MainView();
        },
      ),
    );
  }
}
