import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/calendar_picker.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/upload_scan_files.dart';

import '../../trip_list/widget/trip_data.dart';
import '../../trip_list/widget/trip_detail_info.dart';

class ActiveTripView extends StatelessWidget {
  const ActiveTripView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TripDetailBloc, TripDetailState>(
      listener: (context, listenerState) {},
      child: BlocBuilder<TripDetailBloc, TripDetailState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.errorMessage != null) {
            return Center(
              child: Text(state.errorMessage!),
            );
          } else if (state.trip == null) {
            return const Center(
              child: Text('No active trip found'),
            );
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        int chatId = state.trip!.chatId;
                        GoRouter.of(context).push('/chat/$chatId');
                      },
                      child: Text(
                          'Experiment\nGo to Chat id ${state.trip!.chatId}'),
                    ),
                    const SizedBox(height: 10),
                    if (state.trip != null) TripData(trip: state.trip!),
                    const SizedBox(height: 10),
                    if (state.trip != null) TripDetailInfo(trip: state.trip!),
                    const SizedBox(height: 10),
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
            );
          }
        },
      ),
    );
  }
}
