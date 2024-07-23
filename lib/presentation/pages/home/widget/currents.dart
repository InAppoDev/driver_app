import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/home/widget/current_widget.dart';

class Currents extends StatelessWidget {
  const Currents({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Column(
          children: [
            CurrentWidget(
              topic: 'Current Route',
              description: 'An overview of your route',
              value: '15/26',
              completedTasks: 12,
              valueDescription: 'Route progress',
            ),
            CurrentWidget(
              topic: 'Current Task',
              description: 'An overview of your route',
              value: '15/26',
              completedTasks: 12,
              valueDescription: 'Route progress',
            ),
            CurrentWidget(
              topic: 'Current Task',
              description: 'An overview of your route',
              value: '15/26',
              completedTasks: 12,
              valueDescription: 'Route progress',
            ),
            CurrentWidget(
              topic: 'Current Task',
              description: 'An overview of your route',
              value: '15/26',
              completedTasks: 12,
              valueDescription: 'Route progress',
            ),
          ],
        ),
      ],
    );
  }
}
