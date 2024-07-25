import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/home/widget/summary_of_the_day_widget.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    context.localizations.dashboard,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Icon(
                    Icons.person_outline,
                    color: Color(0xFF1652F6),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                context.localizations.belowIsASummaryOfDay,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 7),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SummaryOfTheDayWidget(value: 16, text: 'New Activity'),
                SummaryOfTheDayWidget(value: 16, text: 'Current Tasks'),
                SummaryOfTheDayWidget(value: 16, text: 'Completed Tasks'),
                SummaryOfTheDayWidget(value: 16, text: 'Completed Tasks'),
                SummaryOfTheDayWidget(value: 16, text: 'Completed Tasks'),
                SummaryOfTheDayWidget(value: 16, text: 'Completed Tasks'),
              ],
            ),
          ),
        )
      ],
    );
  }
}
