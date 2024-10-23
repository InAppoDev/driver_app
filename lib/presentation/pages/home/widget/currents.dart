import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/home/widget/current_widget.dart';

class Currents extends StatelessWidget {
  const Currents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: const CurrentWidget(
                topic: 'Ongoing Trip',
                description: 'An overview of your trip',
                value: '1/3',
                milesToGo: 512,
                valueDescription: 'Stops',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
