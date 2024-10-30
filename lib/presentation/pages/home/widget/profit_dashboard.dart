import 'package:flutter/material.dart';
import 'package:tms_driver/data/models/personal_stats_model/personal_stats_model.dart';
import 'package:tms_driver/presentation/pages/home/widget/profit_details.dart';

import 'dash_board.dart';

class ProfitDashboard extends StatelessWidget {
  const ProfitDashboard({super.key, required this.personalStats});

  final PersonalStatsModel? personalStats;

  @override
  Widget build(BuildContext context) {
    return personalStats == null
        ? const Center(
            child: Text("You don't have any stats yet"),
          )
        : Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child:  Column(
        children: [
          const SizedBox(height: 15),
          ProfitDetails(personalStats: personalStats!),
          const SizedBox(height: 10),
          DashBoard(personalStats: personalStats!),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
