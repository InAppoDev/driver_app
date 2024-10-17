import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/data/models/notification/notification_model/notification_model.dart';
import 'package:tms_driver/presentation/blocks/notification/bloc/notification_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_date_widget.dart';

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
                    final NotificationModel notificationModel =
                        state.notifications![index];

                    return GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content:
                                  Text('Tapped on ${notificationModel.title}')),
                        );
                      },
                      child: Card(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          leading: Icon(
                            notificationModel.type == 'message'
                                ? Icons.message
                                : Icons.notifications_sharp,
                          ),
                          title: Wrap(
                            children: [
                              Text(notificationModel.title ?? ''),
                              if (notificationModel.eventAt != null)
                                CustomDateWidget(
                                    date: notificationModel.eventAt!)
                            ],
                          ),
                          subtitle: Text(
                            'Notification type: ${notificationModel.type}',
                          ),
                        ),
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
