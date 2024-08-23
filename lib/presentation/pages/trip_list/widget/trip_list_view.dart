import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_list/trip_bloc.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/conrim_dialog.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/new_trips.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/tabs.dart';
import 'package:tms_driver/presentation/utils/enums/enums.dart';

import '../../../blocks/main/bloc/main_bloc.dart';

class TripListView extends StatelessWidget {
  const TripListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TripBloc, TripState>(
      listener: (context, listenerState) {},
      child: BlocBuilder<TripBloc, TripState>(
        builder: (context, state) {
          return Column(
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
                  trips: context.read<TripBloc>().trips,
                  onPressed: () async {
                    context
                        .read<MainBloc>()
                        .add(const MainEvent.hideShowNavBar(false));
                    await showModalBottomSheet(
                      barrierColor: Colors.black.withAlpha(1),
                      context: context,
                      builder: (context) => const ConfirmDialog(),
                    );
                    if (context.mounted) {
                      context
                          .read<MainBloc>()
                          .add(const MainEvent.hideShowNavBar(true));
                    }
                  },
                ),
            ],
          );
        },
      ),
    );
  }
}
