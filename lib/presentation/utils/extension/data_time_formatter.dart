import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  String to12HourFormat() {
    DateFormat formatter = DateFormat('hh:mm a');
    return formatter.format(this);
  }
}
