import 'dart:io';
import 'package:intl/intl.dart';

String subFile(File file) {
  return subLongFileName(file.path.substring(file.path.lastIndexOf('/') + 1));
}

String extractFileName(String path) {
  int lastSlashIndex = path.lastIndexOf('/');
  int lastDotIndex = path.lastIndexOf('.');

  if (lastSlashIndex != -1 && lastDotIndex != -1 && lastDotIndex > lastSlashIndex) {
    return path.substring(lastSlashIndex + 1, lastDotIndex);
  } else {
    return '';
  }
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



String formatDateFromTimestamp(int timestamp) {
  DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

  String formattedDate = DateFormat('MMMM yyyy').format(date);

  return formattedDate;
}


String formatNumber(int number) {
  if (number >= 1000000) {
    return '${(number / 1000000).toStringAsFixed(1)}M';
  } else if (number >= 1000) {
    return '${(number / 1000).toStringAsFixed(1)}k';
  } else {
    return number.toString();
  }
}
