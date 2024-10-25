import 'package:flutter/material.dart';
import 'package:tms_driver/data/models/personal_stats_model/personal_stats_model.dart';
import 'package:tms_driver/presentation/consts/consts.dart';
import 'package:tms_driver/presentation/pages/home/widget/summary_of_the_day_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key, required this.personalStats});

  final PersonalStatsModel personalStats;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.localizations.lifetimeStats,
                style: theme.textTheme.labelSmall!.copyWith(fontSize: 18),
              ),
              Text(
                context.localizations.hereIsASummaryOfYourOverallPerformance,
                  style: theme.textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                if(personalStats.lifetime.totalTrips != null)SummaryOfTheDayWidget(
                        value: formatNumber(personalStats.lifetime.totalTrips!),
                        text: context.localizations.totalTrips,
                      ),
               if(personalStats.lifetime.totalMiles != null) SummaryOfTheDayWidget(
                        value: formatNumber(personalStats.lifetime.totalMiles!),
                        text: context.localizations.totalMiles,
                  showK: true,
                ),
              if(personalStats.lifetime.totalStops != null)  SummaryOfTheDayWidget(
                        value: formatNumber(personalStats.lifetime.totalStops!),
                        text: context.localizations.totalStops,
                ),
              if(personalStats.lifetime.shortestTripMiles != null)  SummaryOfTheDayWidget(
                        value: formatNumber(
                            personalStats.lifetime.shortestTripMiles!),
                        text: context.localizations.shortestTrip,
                  showMi: true,
                ),
              if(personalStats.lifetime.longestTripMiles != null)  SummaryOfTheDayWidget(
                        value: formatNumber(
                            personalStats.lifetime.longestTripMiles!),
                        text: context.localizations.longestTrip,
                  showMi: true,
                ),
              if(personalStats.lifetime.totalCheckCalls != null)  SummaryOfTheDayWidget(
                        value: formatNumber(
                            personalStats.lifetime.totalCheckCalls!),
                        text: context.localizations.checkCalls,
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
