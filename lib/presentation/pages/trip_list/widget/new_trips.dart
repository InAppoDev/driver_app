import 'package:flutter/cupertino.dart';
import 'package:tms_driver/data/models/trip/trip_model.dart';

import 'new_trips_widget.dart';

class NewTrips extends StatelessWidget {
  const NewTrips({super.key, required this.onPressed, required this.trips,});

  final Function(TripModel) onPressed;
  final List<TripModel> trips;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 50),
        shrinkWrap: true,
        itemCount: trips.length,
        itemBuilder: (context, index) =>
            NewTripsWidget(onPressed: onPressed, tripModel: trips[index],),
      ),
    );
  }
}
