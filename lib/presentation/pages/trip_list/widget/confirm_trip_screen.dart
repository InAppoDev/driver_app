import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/data/models/trip/trip_model.dart';
import 'package:tms_driver/presentation/blocks/trip_list/trip_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/calendar_picker.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/upload_scan_files.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_data.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_detail_info.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class ConfirmTripScreen extends StatelessWidget {
  const ConfirmTripScreen({
    super.key,
    required this.trip,
  });

  final TripModel trip;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.canvasColor,
      body: BlocProvider(
        create: (context) => TripBloc(),
        child: BlocBuilder<TripBloc, TripState>(
          builder: (context, state) {
            return SafeArea(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        TripData(onPressed: () {}, trip: trip),
                        const SizedBox(height: 11),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                TripDetailInfo(trip: trip),
                                const SizedBox(height: 11),
                                CalendarPicker(
                                  onCalendarResponse: (resp) {
                                    context.read<TripBloc>().add(
                                        TripEvent.getDateAndTime(
                                            dateTime: resp));
                                  },
                                  dateTime: '',
                                ),
                                const SizedBox(height: 11),
                                UploadScanFiles(
                                  onAddFile: () {
                                    context
                                        .read<TripBloc>()
                                        .add(const TripEvent.pickFile());
                                  },
                                  onScanFile: (image) {
                                    context
                                        .read<TripBloc>()
                                        .add(TripEvent.scanDoc(image));
                                  },
                                  selectedFile: state.selectedFile,
                                  onFileRemove: (file) {
                                    context
                                        .read<TripBloc>()
                                        .add(TripEvent.removeFile(file: file));
                                  },
                                  onUploadPressed: () {
                                    context
                                        .read<TripBloc>()
                                        .add(const TripEvent.uploadFiles());
                                  },
                                  isFileLoading: state.isFileLoading,
                                ),
                                const SizedBox(height: 100),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      color: theme.scaffoldBackgroundColor,
                      child: Column(
                        children: [
                          Text(
                            context.localizations
                                .confirmThatYouHaveEmbarkedOnThisTrip,
                            style: theme.textTheme.titleSmall!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: theme.dividerColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          CustomButton(
                            label: context.localizations.startDrive,
                            onPressed: () {
                              context.pop(true);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
