import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final Function(String)? onChanged;
  final Widget? prefixIcon;
  final double borderRadius;

  const CustomTextField({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.prefixIcon,
    this.borderRadius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: TextField(
        maxLines: null,
        expands: true,
        onChanged: onChanged,
        controller: controller,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        // keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.lightGray),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.lightGray),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AppColors.lightGray),
          ),
          hintText: hintText,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
