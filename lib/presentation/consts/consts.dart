import 'dart:io';

import 'package:intl/intl.dart';

String subFile(File file) {
  return subLongFileName(file.path.substring(file.path.lastIndexOf('/') + 1));
}

String formatTimestamp(int timestamp) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);

  DateFormat timeFormatter = DateFormat('HH:mm');
  DateFormat amPmFormatter = DateFormat('a');

  String formattedTime = timeFormatter.format(dateTime);
  String amPm = amPmFormatter.format(dateTime);

  return '$formattedTime $amPm';
}

String subLongFileName(String name) {
  if (name.length > 17) {
    final start = name.substring(0, 14);
    final end = name.substring(
      name.length - 3,
    );
    return '$start....$end';
  } else {
    return name;
  }
}
