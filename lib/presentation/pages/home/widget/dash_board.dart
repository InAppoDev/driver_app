import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/home/widget/summary_of_the_day_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.localizations.lifetimeStats,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                context.localizations.hereIsASummaryOfYourOverallPerformance,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SummaryOfTheDayWidget(
                  value: 1086,
                  text: context.localizations.totalTrips,
                ),
                SummaryOfTheDayWidget(
                  value: 610,
                  text: context.localizations.totalMiles,
                  showK: true,
                ),
                SummaryOfTheDayWidget(
                  value: 2361,
                  text: context.localizations.totalStops,
                ),
                SummaryOfTheDayWidget(
                  value: 30,
                  text: context.localizations.shortestTrip,
                  showMi: true,
                ),
                SummaryOfTheDayWidget(
                  value: 6155,
                  text: context.localizations.longestTrip,
                  showMi: true,
                ),
                SummaryOfTheDayWidget(
                  value: 51,
                  text: context.localizations.averageSpeed,
                  showMph: true,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
