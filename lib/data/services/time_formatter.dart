import 'package:intl/intl.dart';

class TimeFormatter {
  static String formatTimestamp(int? timestamp) {
    if (timestamp == null) return '';

    DateTime utcDate =
        DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true);
    DateTime localDate = utcDate.toLocal();

    DateFormat formatter = DateFormat('hh:mm a');
    return formatter.format(localDate);
  }
}
