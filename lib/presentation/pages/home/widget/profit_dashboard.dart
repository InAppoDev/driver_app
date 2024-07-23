import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/home/widget/profit_details.dart';

import 'dash_board.dart';

class ProfitDashboard extends StatelessWidget {
  const ProfitDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
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
          ProfitDetails(),
          SizedBox(height: 25),
          DashBoard(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
