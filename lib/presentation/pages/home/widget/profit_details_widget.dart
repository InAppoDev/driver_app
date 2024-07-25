import 'package:flutter/material.dart';

class ProfitDetailsWidget extends StatelessWidget {
  const ProfitDetailsWidget({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.amount,
    required this.text,
    required this.showM,
    required this.showDollar,
    this.showHours = false,
  });

  final bool isSelected;
  final IconData icon;
  final String amount;
  final String text;
  final bool showM;
  final bool showDollar;
  final bool showHours;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
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
            (showDollar ? '\$$amount' : amount) +
                (showHours
                    ? 'h'
                    : showM
                        ? 'M'
                        : 'k'),
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
