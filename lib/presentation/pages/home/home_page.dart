import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/pages/home/widget/currents.dart';
import 'package:tms_driver/presentation/pages/home/widget/home_bottom_sheet.dart';
import 'package:tms_driver/presentation/pages/home/widget/profit_dashboard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).canvasColor),
      child: Stack(
        children: [
          const SingleChildScrollView(
            child: Column(
              children: [
                ProfitDashboard(),
                Currents(),
              ],
            ),
          ),
          Positioned(
            bottom: 5,
            left: 15,
            right: 15,
            child: CustomButton(
              label: 'Start',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const HomeBottomSheet();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
