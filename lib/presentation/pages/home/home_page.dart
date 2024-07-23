import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/home/widget/currents.dart';
import 'package:tms_driver/presentation/pages/home/widget/profit_dashboard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5F5F5),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            ProfitDashboard(),
            Currents(),
          ],
        ),
      ),
    );
  }
}
