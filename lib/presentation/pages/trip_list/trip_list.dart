import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_list/trip_bloc.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/trip_list_view.dart';

class TripListPage extends StatelessWidget {
  const TripListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TripBloc(),
      child: const TripListView(),
    );
  }
}
