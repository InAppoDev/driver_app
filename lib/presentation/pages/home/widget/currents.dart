import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/consts/consts.dart';
import 'package:tms_driver/presentation/pages/home/widget/current_widget.dart';

class Currents extends StatelessWidget {
  const Currents({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TripDetailBloc, TripDetailState>(
      builder: (tripContext, state) {
        return state.trip != null
          ? GestureDetector(
                onTap: onTap,
                child: CurrentWidget(
                topic: 'Ongoing Trip',
                description: 'An overview of your trip',
                value:
                    '${state.trip!.waypointsCompletedCount ?? 0}/${state.trip!.waypoints.length}',
                milesToGo: '${formatNumber(double.parse(state.trip!.routeTotalMi).toInt())} mi',
                valueDescription: 'Stops',
              ),
            )
          : const SizedBox();
      },
    );
  }
}
