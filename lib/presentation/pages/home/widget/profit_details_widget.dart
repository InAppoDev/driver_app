import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/utils/extension/change_localization.dart';

class ProfitDetailsWidget extends StatelessWidget {
  const ProfitDetailsWidget({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.amount,
    required this.text,
    required this.showDollar,
    this.showHours = false,
  });

  final bool isSelected;
  final IconData icon;
  final String amount;
  final String text;
  final bool showDollar;
  final bool showHours;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.45,
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        color: Color(isSelected ? 0xFF80BFFC : 0xFFF5F5F5),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.white : Colors.black,
          ),
          const SizedBox(height: 7),
          Text(
            amount + (showHours ? context.localizations.h
                    : ''),
            style: theme.textTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.w700,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            text,
            style: theme.textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
