import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/trip_list/trip_list_bloc.dart';
import 'package:tms_driver/presentation/pages/active_trip/active_trip.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_items_list.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/tabs.dart';
import 'package:tms_driver/presentation/utils/enums/enums.dart';

class TripListView extends StatelessWidget {
  const TripListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TripListBloc, TripListState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              Tabs(
                status: state.tabStatus,
                onPressed: (status) {
                  context.read<TripListBloc>().add(
                        TripListEvent.changeTab(status: status),
                      );
                },
              ),
              if (state.tabStatus == TabStatus.newTrips)
                TripItemsList(
                  trips: state.trips,
                  onPressed: (trip) async {
                    final navigateToActiveTrip =
                        await context.push('/confirmTrip', extra: trip);
                    if (navigateToActiveTrip as bool && context.mounted) {
                      context.read<TripListBloc>().add(
                            TripListEvent.changeTab(
                              status: TabStatus.activeTrip,
                              trip: trip,
                            ),
                          );
                    }
                  },
                ),
              if (state.tabStatus == TabStatus.activeTrip) const ActiveTrip(),
              if (state.tabStatus == TabStatus.tripHistory)
                TripItemsList(
                  trips: state.historyTrips,
                  onPressed: (_) {},
                  isHistoryWidget: true,
                ),
            ],
          ),
        );
      },
    );
  }
}
