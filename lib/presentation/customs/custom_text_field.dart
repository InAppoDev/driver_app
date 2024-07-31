import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Function(String)? onChanged;
  final Widget? prefixIcon;
  final double borderRadius;
  final int? maxLines;

  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.prefixIcon,
    this.borderRadius = 8,
    this.maxLines = 10,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: TextField(
        maxLength: maxLines,
        maxLines: null,
        expands: true,
        onChanged: onChanged,
        controller: controller,
        style: theme.textTheme.labelMedium,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:  BorderSide(color: theme.highlightColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:  BorderSide(color: theme.highlightColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:  BorderSide(color: theme.cardColor),
          ),
          hintText: hintText,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
