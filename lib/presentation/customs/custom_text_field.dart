import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final Widget? prefixIcon;
  final double borderRadius;
  final int? maxLength;
  final double height;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final ScrollController? scrollController;

  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.prefixIcon,
    this.borderRadius = 8,
    this.maxLength,
    this.height = 60,
    this.focusNode,
    this.textInputAction,
    this.onSubmitted,  this.scrollController,
    this.keyboardType = TextInputType.phone,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: height,
      child: TextField(
        scrollController: scrollController,
        onSubmitted: onSubmitted,
        focusNode: focusNode,
        maxLength: maxLength,
        maxLines: null,
        textInputAction: textInputAction,
        onChanged: onChanged,
        controller: controller,
        style: theme.textTheme.labelMedium,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          isDense: true,
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: theme.highlightColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: theme.highlightColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: theme.cardColor),
          ),
          hintText: hintText,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
