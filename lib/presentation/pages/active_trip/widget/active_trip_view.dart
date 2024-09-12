import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/data/models/trip/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/presentation/blocks/active_trip/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/calendar_picker.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/upload_scan_files.dart';

import '../../trip_list/widget/trip_data.dart';
import '../../trip_list/widget/trip_detail_info.dart';

class ActiveTripView extends StatelessWidget {
  const ActiveTripView({super.key, required this.trip});

  final DispatchModel trip;

  @override
  Widget build(BuildContext context) {
    return BlocListener<TripDetailBloc, TripDetailState>(
      listener: (context, listenerState) {},
      child: BlocBuilder<TripDetailBloc, TripDetailState>(
        builder: (context, state) {
          return Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        int chatId = 1;
                        GoRouter.of(context).push('/chat/$chatId');
                      },
                      child: const Text('Experement\nGo to Chat id 1'),
                    ),
                    const SizedBox(height: 11),
                    TripData(onPressed: () {}, trip: trip),
                    const SizedBox(height: 11),
                    TripDetailInfo(trip: trip),
                    const SizedBox(height: 11),
                    CalendarPicker(
                      onCalendarResponse: (resp) {
                        context.read<TripDetailBloc>().add(
                            TripDetailEvent.getDateAndTime(dateTime: resp));
                      },
                      dateTime: state.dateTime ?? '',
                    ),
                    const SizedBox(height: 11),
                    UploadScanFiles(
                      onAddFile: () {
                        context
                            .read<TripDetailBloc>()
                            .add(const TripDetailEvent.pickFile());
                      },
                      onScanFile: (image) {
                        context
                            .read<TripDetailBloc>()
                            .add(TripDetailEvent.scanDoc(image));
                      },
                      selectedFile: state.selectedFile,
                      onFileRemove: (file) {
                        context
                            .read<TripDetailBloc>()
                            .add(TripDetailEvent.removeFile(file: file));
                      },
                      onUploadPressed: () {
                        context
                            .read<TripDetailBloc>()
                            .add(const TripDetailEvent.uploadFiles());
                      },
                      isFileLoading: state.isFileLoading,
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
