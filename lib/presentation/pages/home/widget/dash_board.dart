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
    return personalStats.lifeTime != null
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.localizations.lifetimeStats,
                style: theme.textTheme.labelSmall!.copyWith(fontSize: 15),
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
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SummaryOfTheDayWidget(
                        value: formatNumber(personalStats.lifeTime!.totalTrips),
                        text: context.localizations.totalTrips,
                      ),
                SummaryOfTheDayWidget(
                        value: formatNumber(personalStats.lifeTime!.totalMiles),
                        text: context.localizations.totalMiles,
                  showK: true,
                ),
                SummaryOfTheDayWidget(
                        value: formatNumber(personalStats.lifeTime!.totalStops),
                        text: context.localizations.totalStops,
                ),
                SummaryOfTheDayWidget(
                        value: formatNumber(
                            personalStats.lifeTime!.shortestTripMiles),
                        text: context.localizations.shortestTrip,
                  showMi: true,
                ),
                SummaryOfTheDayWidget(
                        value: formatNumber(
                            personalStats.lifeTime!.longestTripMiles),
                        text: context.localizations.longestTrip,
                  showMi: true,
                ),
                SummaryOfTheDayWidget(
                        value: formatNumber(
                            personalStats.lifeTime!.totalCheckCalls),
                        text: context.localizations.checkCalls,
                        showMph: true,
                ),
              ],
            ),
          ),
        )
      ],
          )
        : const SizedBox();
  }
}
