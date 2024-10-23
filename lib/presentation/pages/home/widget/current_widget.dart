import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class CurrentWidget extends StatelessWidget {
  const CurrentWidget({
    super.key,
    required this.topic,
    required this.description,
    required this.value,
    required this.milesToGo,
    required this.valueDescription,
  });

  final String topic;
  final String description;
  final String value;
  final String valueDescription;
  final String milesToGo;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    topic,
                    style: theme.textTheme.labelLarge!.copyWith(fontSize: 22),
                  ),
                  Text(
                    description,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_forward_ios_sharp,
                size: 16,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    value,
                    style: theme.textTheme.labelLarge!.copyWith(fontSize: 22),
                  ),
                  Text(
                    valueDescription,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    milesToGo,
                    style: theme.textTheme.labelLarge!.copyWith(fontSize: 22),
                  ),
                  Text(
                    context.localizations.milesToGo,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
