import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
import 'package:tms_driver/presentation/customs/custom_time_picker.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class CalendarBottomSheet extends StatefulWidget {
  final int? initialTimestamp;

  const CalendarBottomSheet({
    super.key,
    this.initialTimestamp,
  });

  @override
  State<CalendarBottomSheet> createState() => _CalendarBottomSheetState();
}

class _CalendarBottomSheetState extends State<CalendarBottomSheet> {
  late String date;
  late String time;

  @override
  void initState() {
    super.initState();

    DateTime initialDateTime = widget.initialTimestamp != null
        ? DateTime.fromMillisecondsSinceEpoch(widget.initialTimestamp!)
        : DateTime.now();

    date = DateFormat('yyyy-MM-dd').format(initialDateTime);
    time = DateFormat('h H m a').format(initialDateTime);
    print('checll date - $date');
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FractionallySizedBox(
      heightFactor: 0.9,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
          color: theme.scaffoldBackgroundColor,
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      context.localizations.selectETAAt,
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
                        onDaySelected: (selectedDay, focusedDay) {
                          DateTime dateTime =
                              DateTime.parse(selectedDay.toString());
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(dateTime);
                          setState(() {
                            date = formattedDate;
                          });
                        },
                        selectedDayPredicate: (day) {
                          return isSameDay(DateTime.parse(date), day);
                        },
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
                          selectedDecoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          outsideDaysVisible: false,
                          todayDecoration: const BoxDecoration(),
                          todayTextStyle: theme.textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: theme.cardColor,
                          ),
                        ),
                        focusedDay: DateTime.parse(date),
                        firstDay: DateTime.utc(1969, 3, 14),// TODO: change it later toward to focusedDay
                        lastDay: DateTime.utc(2035, 3, 14),
                        currentDay: DateTime.now(),
                      ),
                    ),
                    const SizedBox(height: 11),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 18),
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
                      child: CustomTimePicker(
                        onTimeChanged: (h, m, isAm) {
                          setState(() {
                            time = '$h H $m m  ${isAm ? 'AM' : 'PM'}';
                          });
                        },
                        providedDate: date.isNotEmpty
                            ? DateTime.parse(date)
                            : DateTime.now(),
                      ),
                    ),
                    const SizedBox(height: 26),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27),
              child: CustomButton(
                height: 36,
                label: context.localizations.select,
                onPressed: () {
                  DateTime selectedDateTime = DateTime.parse(date).add(Duration(
                      hours: int.parse(time.split(' ')[0]),
                      minutes: int.parse(time.split(' ')[2])));
                  int timestamp = selectedDateTime.millisecondsSinceEpoch;

                  context.pop(timestamp);
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
