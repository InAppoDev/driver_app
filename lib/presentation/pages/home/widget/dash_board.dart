import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/pages/home/widget/summary_of_the_day_widget.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.person_outline,
                    color: Color(0xFF1652F6),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Below is a summary of your day',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        Padding(
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
