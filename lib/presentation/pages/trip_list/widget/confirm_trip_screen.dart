import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/calendar_picker.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/upload_scan_files.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_data.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_detail_info.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class ConfirmTripScreen extends StatelessWidget {
  const ConfirmTripScreen({
    super.key,
    required this.tripId, // Приймаємо тільки ID, а не модель
  });

  final int tripId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
        leadingWidth: 0,
        backgroundColor: theme.scaffoldBackgroundColor,
        scrolledUnderElevation: 0,
        title: Text(
          'context.localizations.confirmTrip',
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.disabledColor,
          ),
        ),
      ),
      backgroundColor: theme.canvasColor,
      body: BlocProvider(
        create: (context) => TripDetailBloc()
          ..add(TripDetailEvent.fetchTripDetail(tripId: tripId)),
        child: BlocBuilder<TripDetailBloc, TripDetailState>(
          builder: (context, state) {
            if (state.status == ActiveTripStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.status == ActiveTripStatus.failure) {
              return Center(
                child: Text(
                  'context.localizations.failedToLoadTrip',
                  // style: TextStyle(color: theme.errorColor),
                ),
              );
            } else if (state.status == ActiveTripStatus.success &&
                state.trip != null) {
              final trip = state.trip!;

              return SafeArea(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(height: 11),
                            TripData(onPressed: () {}, trip: trip),
                            const SizedBox(height: 11),
                            TripDetailInfo(trip: trip),
                            const SizedBox(height: 11),
                            CalendarPicker(
                              onCalendarResponse: (resp) {
                                context.read<TripDetailBloc>().add(
                                    TripDetailEvent.getDateAndTime(
                                        dateTime: resp));
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
                                context.read<TripDetailBloc>().add(
                                    TripDetailEvent.removeFile(file: file));
                              },
                              onUploadPressed: () {
                                context
                                    .read<TripDetailBloc>()
                                    .add(const TripDetailEvent.uploadFiles());
                              },
                              isFileLoading: state.isFileLoading,
                            ),
                            const SizedBox(height: 100),
                          ],
                        ),
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
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
