import 'dart:io';

import 'package:intl/intl.dart';

String subFile(File file) {
  return _subLongFileName(file.path.substring(file.path.lastIndexOf('/') + 1));
}

String _subLongFileName(String name) {
  if (name.length > 20) {
    final start = name.substring(0, 14);
    final end = name.substring(name.lastIndexOf('.'));
    return '$start....$end';
  } else {
    return name;
  }
}

String formatTimestamp(int timestamp) {
  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);

  DateFormat formatter = DateFormat('yyyy.MM.dd HH:mm');

  return formatter.format(dateTime);
}

String subLongFileName(String name) {
  if (name.length > 20) {
    final start = name.substring(0, 14);
    final end = name.substring(
      name.length - 3,
    );
    return '$start....$end';
  } else {
    return name;
  }
}
