import 'package:flutter/material.dart';
import 'package:tms_driver/data/models/personal_stats_model/personal_stats_model.dart';
import 'package:tms_driver/presentation/consts/consts.dart';
import 'package:tms_driver/presentation/pages/home/widget/profit_details_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class ProfitDetails extends StatelessWidget {
  const ProfitDetails({super.key, required this.personalStats});

  final PersonalStatsModel personalStats;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  formatDateFromTimestamp(personalStats.currentMonth),
                  style: theme.textTheme.labelSmall!.copyWith(fontSize: 15),
                ),
                Text(
                  context.localizations.belowIsAShortSummaryOfYourMonth,
                  style: theme.textTheme.titleSmall!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Wrap(
            children: [
              ProfitDetailsWidget(
                isSelected: false,
                icon: Icons.local_shipping,
                amount: formatNumber(personalStats.monthly.dispatches ?? 0),
                text: context.localizations.trips,
                showDollar: false,
              ),
              ProfitDetailsWidget(
                isSelected: false,
                icon: Icons.speed,
                amount: formatNumber(personalStats.monthly.totalMiles ?? 0),
                text: context.localizations.totalMiles,
                showDollar: true,
              ),
              ProfitDetailsWidget(
                isSelected: false,
                icon: Icons.checklist,
                amount: formatNumber(personalStats.monthly.checkCalls ?? 0),
                text: context.localizations.checkCalls,
                showDollar: true,
              ),
              ProfitDetailsWidget(
                isSelected: false,
                icon: Icons.people,
                amount: formatNumber(personalStats.monthly.driveTimeHours ?? 0),
                text: context.localizations.driveTime,
                showDollar: false,
                showHours: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
