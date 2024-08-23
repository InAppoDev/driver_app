import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/tab_widget.dart';
import 'package:tms_driver/presentation/utils/enums/enums.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    super.key,
    required this.status,
    required this.onPressed,
  });

  final TabStatus status;
  final Function(TabStatus) onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 11),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        color: theme.scaffoldBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TabWidget(
            showMessageCount: true,
            status: status,
            isSelected: status == TabStatus.newTrips,
            onPressed: () {
              onPressed(TabStatus.newTrips);
            },
            name: TabStatus.newTrips.label,
          ),
          TabWidget(
            status: status,
            isSelected: status == TabStatus.activeTrip,
            onPressed: () {
              onPressed(TabStatus.activeTrip);
            },
            name: TabStatus.activeTrip.label,
          ),
          TabWidget(
            status: status,
            isSelected: status == TabStatus.tripHistory,
            onPressed: () {
              onPressed(TabStatus.tripHistory);
            },
            name: TabStatus.tripHistory.label,
          ),
        ],
      ),
    );
  }
}
