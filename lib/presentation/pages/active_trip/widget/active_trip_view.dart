import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/active_trip/active_trip_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_app_bar.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/calendar_picker.dart';

import 'active_trip_data.dart';
import 'active_trip_info.dart';

class ActiveTripView extends StatelessWidget {
  const ActiveTripView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocListener<ActiveTripBloc, ActiveTripState>(
      listener: (context, listenerState) {},
      child: BlocBuilder<ActiveTripBloc, ActiveTripState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: theme.canvasColor,
            appBar: const CustomAppBar(),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 30,
                ),
                child: Column(
                  children: [
                    ActiveTripData(onPressed: () {}),
                    const SizedBox(height: 11),
                    const ActiveTripInfo(),
                    const SizedBox(height: 11),
                    CalendarPicker(
                      onCalendarResponse: (resp) {
                        context.read<ActiveTripBloc>().add(
                            ActiveTripEvent.getDateAndTime(dateTime: resp));
                      },
                      dateTime: state.dateTime ?? '',
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
