import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final bool value;
  final Function(bool) onChanged;

  const CustomCheckBox(
      {super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: value
            ? Icon(
                Icons.check,
                color: theme.secondaryHeaderColor,
                size: 26,
              )
            : null,
      ),
    );
  }
}
