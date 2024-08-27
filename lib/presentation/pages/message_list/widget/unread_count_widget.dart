import 'package:flutter/material.dart';

class UnreadCountWidget extends StatelessWidget {
  const UnreadCountWidget({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: theme.secondaryHeaderColor,
      ),
      child: Text(
        count.toString(),
        style: theme.textTheme.titleSmall!.copyWith(
          fontWeight: FontWeight.w500,
          color: theme.scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
