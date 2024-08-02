import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/customs/custom_time_picker.dart';

class CalendarDialog extends StatelessWidget {
  const CalendarDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        height: height,
        color: theme.scaffoldBackgroundColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Select  ETA at PICK UP#1:',
                style: theme.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: theme.dividerColor,
                ),
              ),
              const SizedBox(height: 18),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 27),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(11),
                  ),
                  color: theme.scaffoldBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: theme.focusColor.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TableCalendar(
                  availableGestures: AvailableGestures.none,
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: theme.textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekendStyle: theme.textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: theme.splashColor,
                    ),
                    weekdayStyle: theme.textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w400,
                      color: theme.hoverColor,
                    ),
                  ),
                  calendarStyle: CalendarStyle(
                    outsideDaysVisible: false,
                    todayDecoration: const BoxDecoration(),
                    todayTextStyle: theme.textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: theme.cardColor,
                    ),
                  ),
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                ),
              ),
              const SizedBox(height: 11),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                margin: const EdgeInsets.symmetric(horizontal: 27),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(11),
                  ),
                  color: theme.scaffoldBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      color: theme.focusColor.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: CustomTimePicker(onTimeChanged: (h, m, isAm) {}),
              ),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: CustomButton(
                  height: 36,
                  label: 'SELECT',
                  onPressed: context.pop,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
