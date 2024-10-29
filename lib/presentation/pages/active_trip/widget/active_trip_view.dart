import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_detail/trip_detail_bloc.dart';
import 'package:tms_driver/presentation/pages/active_trip/widget/active_trip_detail_widget.dart';

class ActiveTripView extends StatelessWidget {
  const ActiveTripView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TripDetailBloc, TripDetailState>(
      listener: (context, listenerState) {},
      child: BlocBuilder<TripDetailBloc, TripDetailState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.errorMessage != null) {
            return Center(
              child: Text(state.errorMessage!),
            );
          } else {
            return RefreshIndicator(
              onRefresh: () async {
                context
                    .read<TripDetailBloc>()
                    .add(const TripDetailEvent.loadActiveTrip());
              },
              child: state.trip == null
                  ? ListView(
                      children: const [
                        SizedBox(
                          height: 300,
                          child: Center(
                            child: Text('No active trip found'),
                          ),
                        )
                      ],
                    )
                  : ActiveTripDetailWidget(
                      trip: state.trip!,
                      documents: state.documents,
                isConfirmTripSuccesses: state.isConfirmTripSuccesses,
                    ),
            );
          }
        },
      ),
    );
  }
}
