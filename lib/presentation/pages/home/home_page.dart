import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/home/widget/profit_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [

          ProfitDetails(),
        ],
      ),
    );
  }
}
