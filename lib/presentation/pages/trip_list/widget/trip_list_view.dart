import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/blocks/trip_list/trip_bloc.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/new_trips.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/tabs.dart';
import 'package:tms_driver/presentation/utils/enums/enums.dart';

class TripListView extends StatelessWidget {
  const TripListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TripBloc, TripState>(
      listener: (context, listenerState) {},
      child: BlocBuilder<TripBloc, TripState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(color: Theme.of(context).canvasColor),
            child: Column(
              children: [
                Tabs(
                  status: state.tabStatus,
                  onPressed: (status) {
                    context
                        .read<TripBloc>()
                        .add(TripEvent.changeTab(status: status));
                  },
                ),
                if (state.tabStatus == TabStatus.newTrips)
                  NewTrips(
                    onPressed: () {
                      context.push('/activeTrip');
                    },
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
