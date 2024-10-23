import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/home/home_bloc.dart';
import 'package:tms_driver/presentation/blocks/main/bloc/main_bloc.dart';
import 'package:tms_driver/presentation/blocks/trip_list/trip_list_bloc.dart';
import 'package:tms_driver/presentation/pages/home/widget/currents.dart';
import 'package:tms_driver/presentation/pages/home/widget/profit_dashboard.dart';
import 'package:tms_driver/presentation/utils/enums/enums.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.when(
          fetched: (stats) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 75),
                child: Column(
                  children: [
                    ProfitDashboard(personalStats: stats),
                    Currents(
                      onTap: () {
                        context.read<MainBloc>().add(
                            const MainEvent.updateSelectedPage(
                                MainPageEnum.trips, 1));
                      },
                    ),
                  ],
                ),
              ),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
