import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/notification/bloc/notification_bloc.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        switch (state.status) {
          case NotificationStatus.initial:
          case NotificationStatus.loading:
            return const Center(child: CircularProgressIndicator());
          case NotificationStatus.loaded:
            if (state.notifications != null &&
                state.notifications!.isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ListView.builder(
                  itemCount: state.notifications!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: const Icon(Icons.notifications_sharp),
                        title: Text(state.notifications![index].title ?? ''),
                        subtitle:
                            Text(state.notifications![index].description ?? ''),
                      ),
                    );
                  },
                ),
              );
            } else {
              return const Center(child: Text('No notifications available'));
            }
          case NotificationStatus.error:
            return Center(
              child: Text(
                state.errorMessage ?? 'An error occurred',
                style: const TextStyle(color: Colors.red),
              ),
            );
        }
      },
    );
  }
}
