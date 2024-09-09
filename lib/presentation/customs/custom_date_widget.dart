import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDateWidget extends StatelessWidget {
  final int? date;
  final TextStyle? textStyle;
  final bool useTimeFormater;

  const CustomDateWidget({
    super.key,
    required this.date,
    this.textStyle,
    this.useTimeFormater = false,
  });

  String formatDate() {
    if (useTimeFormater) {
      if (date == null) return '';
      DateTime utcDate =
          DateTime.fromMillisecondsSinceEpoch(date! * 1000, isUtc: true);
      DateTime localDate = utcDate.toLocal();

      return DateFormat('hh:mm a').format(localDate);
    } else {
      final dateTime = DateTime.fromMillisecondsSinceEpoch(date!);

      return DateFormat('dd/MM/yy hh:mm a').format(dateTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Text(
      formatDate(),
      style: textStyle ??
          theme.textTheme.titleSmall!.copyWith(
            color: theme.dividerColor,
          ),
    );
  }
}
