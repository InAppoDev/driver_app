import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/data/models/dispatch/dispatch_list_model/dispatch_list_model.dart';
import 'package:tms_driver/presentation/blocks/trip_list/trip_list_bloc.dart';

import 'trip_item_widget.dart';

class TripItemsList extends StatelessWidget {
  final Function(DispatchListModel) onPressed;
  final List<DispatchListModel> trips;
  final bool isHistoryWidget;

  const TripItemsList({
    super.key,
    required this.onPressed,
    required this.trips,
    this.isHistoryWidget = false,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        if (isHistoryWidget) {
          context
              .read<TripListBloc>()
              .add(const TripListEvent.fetchHistoryTrips());
        } else {
          context.read<TripListBloc>().add(const TripListEvent.fetchTrips());
        }
      },
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 80),
        shrinkWrap: true,
        itemCount: trips.length,
        itemBuilder: (context, index) => TripItemWidget(
          onPressed: onPressed,
          tripListModel: trips[index],
          isHistoryWidget: isHistoryWidget,
        ),
      ),
    );
  }
}
