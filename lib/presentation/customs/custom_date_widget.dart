import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDateWidget extends StatelessWidget {
  final int millisecondsSinceEpoch;
  final TextStyle? textStyle;

  const CustomDateWidget({
    super.key,
    required this.millisecondsSinceEpoch,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateTime =
        DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);

    final formattedDate = DateFormat('dd/MM/yy hh:mm a').format(dateTime);

    return Text(
      formattedDate,
      style: textStyle ??
          theme.textTheme.titleSmall!.copyWith(
            color: theme.dividerColor,
          ),
    );
  }
}
