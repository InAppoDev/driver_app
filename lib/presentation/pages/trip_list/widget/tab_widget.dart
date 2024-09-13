import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/utils/enums/enums.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
    required this.status,
    required this.isSelected,
    required this.onPressed,
    required this.name,
    this.count,
  });

  final TabStatus status;
  final String name;
  final bool isSelected;
  final VoidCallback onPressed;
  final String? count;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? theme.cardColor : Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Row(
          children: [
            Text(
              name,
              style: theme.textTheme.titleLarge!.copyWith(
                fontSize: width >= 410 ? 14 : 10,
                color: isSelected
                    ? theme.scaffoldBackgroundColor
                    : theme.focusColor,
              ),
            ),
            if (count != null) ...[
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 7.5,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                  color: isSelected
                      ? theme.scaffoldBackgroundColor
                      : theme.cardColor,
                ),
                child: Text(
                  count!,
                  style: theme.textTheme.titleLarge!.copyWith(
                    color: isSelected
                        ? theme.focusColor
                        : theme.scaffoldBackgroundColor,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
