import 'package:flutter/material.dart';

class TripInfoWidget extends StatelessWidget {
  const TripInfoWidget({
    super.key,
    required this.topic,
    required this.address,
    required this.time,
  });

  final String topic;
  final String address;
  final String time;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                topic,
                style: theme.textTheme.bodySmall!
                    .copyWith(color: theme.disabledColor),
              ),
              Text(
                address,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: theme.dividerColor,
                  fontSize: 9,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Date/time',
                style: theme.textTheme.bodySmall!
                    .copyWith(color: theme.disabledColor),
              ),
              Text(
                time,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: theme.dividerColor,
                  fontSize: 9,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
