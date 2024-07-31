import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/utils/enums/enums.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
    required this.status,
    required this.isSelected,
    required this.onPressed,
    required this.name,
    this.showMessageCount = false,
  });

  final TabStatus status;
  final String name;
  final bool isSelected;
  final VoidCallback onPressed;
  final bool showMessageCount;

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
              style: TextStyle(
                fontSize: width >= 410 ? 14 : 10,
                fontWeight: FontWeight.w400,
                color: isSelected
                    ? theme.scaffoldBackgroundColor
                    : theme.focusColor,
              ),
            ),
            if (showMessageCount) ...[
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 7.5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50),
                  ),
                  color: isSelected
                      ? theme.scaffoldBackgroundColor
                      : theme.cardColor,
                ),
                child: Text(
                  '1',
                  style: TextStyle(
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
