import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/blocks/update/update_bloc.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/confirm_trip_view.dart';

class ConfirmTripScreen extends StatelessWidget {
  const ConfirmTripScreen({
    super.key,
    required this.tripId,
  });

  final int tripId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TripDetailBloc()
            ..add(TripDetailEvent.fetchTripDetail(tripId: tripId)),
        ),
        BlocProvider(
          create: (context) => UpdateBloc(),
        ),
      ],
      child: const ConfirmTripView(),
    );
  }
}
