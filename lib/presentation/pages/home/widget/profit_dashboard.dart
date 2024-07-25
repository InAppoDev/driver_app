import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/home/widget/profit_details.dart';

import 'dash_board.dart';

class ProfitDashboard extends StatelessWidget {
  const ProfitDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: const Column(
        children: [
          SizedBox(height: 10),
          ProfitDetails(),
          SizedBox(height: 10),
          DashBoard(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
