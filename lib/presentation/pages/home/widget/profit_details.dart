import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/home/widget/profit_details_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class ProfitDetails extends StatelessWidget {
  const ProfitDetails({super.key});

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
                  'July 2024',
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
                amount: '35',
                text: context.localizations.trips,
                showM: false,
                showDollar: false,
              ),
              ProfitDetailsWidget(
                isSelected: true,
                icon: Icons.speed,
                amount: '4500',
                text: context.localizations.totalMiles,
                showM: false,
                showDollar: true,
              ),
              ProfitDetailsWidget(
                isSelected: false,
                icon: Icons.checklist,
                amount: '412',
                text: context.localizations.checkCalls,
                showM: true,
                showDollar: true,
              ),
              ProfitDetailsWidget(
                isSelected: false,
                icon: Icons.people,
                amount: '210',
                text: context.localizations.driveTime,
                showM: false,
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
