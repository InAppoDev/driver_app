import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/data/models/trip/dispatch_model/dispatch_model.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/calendar_picker.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_data.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_detail_info.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class ConfirmTripScreen extends StatelessWidget {
  const ConfirmTripScreen({
    super.key,
    required this.tripId,
  });

  final int tripId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
      create: (context) => TripDetailBloc()
        ..add(TripDetailEvent.fetchTripDetail(tripId: tripId)),
      child: Scaffold(
        appBar: AppBar(
          leading: CustomIconButton(
            icon: 'arrow',
            onPressed: context.pop,
            justIcon: true,
            width: 20,
            height: 20,
            iconColor: Theme.of(context).dividerColor,
          ),
          leadingWidth: 40,
          backgroundColor: theme.scaffoldBackgroundColor,
          scrolledUnderElevation: 0,
          centerTitle: true,
          title: BlocBuilder<TripDetailBloc, TripDetailState>(
            builder: (context, state) {
              if (state.status == ActiveTripStatus.success &&
                  state.trip != null) {
                return Text(
                  '${context.localizations.confirm} ID №${state.trip!.truckLoadId}',
                  style: theme.textTheme.titleSmall!.copyWith(
                    color: theme.disabledColor,
                  ),
                );
              }
              return Text(
                context.localizations.confirm,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: theme.disabledColor,
                ),
              );
            },
          ),
        ),
        backgroundColor: theme.canvasColor,
        body: BlocBuilder<TripDetailBloc, TripDetailState>(
          builder: (context, state) {
            if (state.status == ActiveTripStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.status == ActiveTripStatus.failure) {
              return Center(
                child: Text(
                  context.localizations.failedToLoadTrip,
                  style: TextStyle(color: theme.indicatorColor),
                ),
              );
            } else if (state.status == ActiveTripStatus.success &&
                state.trip != null) {
              final DispatchModel trip = state.trip!;

              return SafeArea(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  const SizedBox(height: 10),
                                  TripData(trip: trip),
                                  const SizedBox(height: 10),
                                  TripDetailInfo(trip: trip),
                                  const SizedBox(height: 10),
                                  CalendarPicker(
                                    onCalendarResponse: (resp) {
                                      context.read<TripDetailBloc>().add(
                                            TripDetailEvent.getDateAndTime(
                                              dateTime: resp,
                                            ),
                                          );
                                    },
                                    dateTime: state.dateTime ?? '',
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
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
