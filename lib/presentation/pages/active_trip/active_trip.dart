import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/data/models/trip/trip_model.dart';
import 'package:tms_driver/presentation/blocks/active_trip/active_trip_bloc.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/active_trip_view.dart';

class ActiveTrip extends StatelessWidget {
  const ActiveTrip({super.key, required this.trip,});
  final TripModel trip;


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ActiveTripBloc(),
      child:  ActiveTripView(trip: trip),
    );
  }
}
