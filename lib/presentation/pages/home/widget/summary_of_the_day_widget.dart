import 'package:flutter/material.dart';

class SummaryOfTheDayWidget extends StatelessWidget {
  const SummaryOfTheDayWidget({
    super.key,
    required this.value,
    required this.text,
    this.showK = false,
    this.showMi = false,
    this.showMph = false,
  });

  final int value;
  final String text;
  final bool showK;
  final bool showMi;
  final bool showMph;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value.toString() +
                (showK
                    ? 'k'
                    : showMi
                        ? 'M'
                        : showMph
                            ? 'Mph'
                            : ''),
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
