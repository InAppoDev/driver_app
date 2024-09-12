import 'package:flutter/cupertino.dart';
import 'package:tms_driver/data/models/trip/dispatch_list_model/dispatch_list_model.dart';

import 'new_trips_widget.dart';

class NewTrips extends StatelessWidget {
  const NewTrips({
    super.key,
    required this.onPressed,
    required this.trips,
  });

  final Function(DispatchListModel) onPressed;
  final List<DispatchListModel> trips;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 80),
        shrinkWrap: true,
        itemCount: trips.length,
        itemBuilder: (context, index) => NewTripsWidget(
          onPressed: onPressed,
          tripListModel: trips[index],
        ),
      ),
    );
  }
}
