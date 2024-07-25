import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/home/widget/profit_details_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class ProfitDetails extends StatelessWidget {
  const ProfitDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'July 2024',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Text(
                  context.localizations.belowIsAShortSummaryOfYourMonth,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          const Wrap(
            children: [
              ProfitDetailsWidget(
                isSelected: false,
                icon: Icons.local_shipping,
                amount: '35',
                text: 'Trips',
                showM: false,
                showDollar: false,
              ),
              ProfitDetailsWidget(
                isSelected: true,
                icon: Icons.speed,
                amount: '4500',
                text: 'Total Miles',
                showM: false,
                showDollar: true,
              ),
              ProfitDetailsWidget(
                isSelected: false,
                icon: Icons.checklist,
                amount: '412',
                text: 'Check Calls',
                showM: true,
                showDollar: true,
              ),
              ProfitDetailsWidget(
                isSelected: false,
                icon: Icons.people,
                amount: '210',
                text: 'Drive Time',
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
