import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/home/home_bloc.dart';
import 'package:tms_driver/presentation/pages/home/widget/currents.dart';
import 'package:tms_driver/presentation/pages/home/widget/profit_dashboard.dart';

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
                    const Currents(),
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
