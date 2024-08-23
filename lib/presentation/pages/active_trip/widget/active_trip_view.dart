import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/data/models/trip/trip_model.dart';
import 'package:tms_driver/presentation/blocks/active_trip/active_trip_bloc.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/calendar_picker.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/upload_scan_files.dart';

import 'active_trip_data.dart';
import 'active_trip_info.dart';

class ActiveTripView extends StatelessWidget {
  const ActiveTripView({super.key, required this.trip});

  final TripModel trip;

  @override
  Widget build(BuildContext context) {

    return BlocListener<ActiveTripBloc, ActiveTripState>(
      listener: (context, listenerState) {},
      child: BlocBuilder<ActiveTripBloc, ActiveTripState>(
        builder: (context, state) {
          return Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Column(
                  children: [
                    ActiveTripData(onPressed: () {}, trip: trip),
                    const SizedBox(height: 11),
                     ActiveTripInfo(trip: trip),
                    const SizedBox(height: 11),
                    CalendarPicker(
                      onCalendarResponse: (resp) {
                        context.read<ActiveTripBloc>().add(
                            ActiveTripEvent.getDateAndTime(dateTime: resp));
                      },
                      dateTime: state.dateTime ?? '',
                    ),
                    const SizedBox(height: 11),
                    UploadScanFiles(
                      onUploadFile: () {
                        context
                            .read<ActiveTripBloc>()
                            .add(const ActiveTripEvent.pickFile());
                      },
                      onScanFile: () {
                        context
                            .read<ActiveTripBloc>()
                            .add(const ActiveTripEvent.pickImage());
                      },
                      selectedFiles: state.selectedFiles,
                      onFileRemove: (file) {
                        context
                            .read<ActiveTripBloc>()
                            .add(ActiveTripEvent.removeFile(file: file));
                      },
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
