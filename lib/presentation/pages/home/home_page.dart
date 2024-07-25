import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/home/widget/currents.dart';
import 'package:tms_driver/presentation/pages/home/widget/profit_dashboard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).canvasColor),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            ProfitDashboard(),
            Currents(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
