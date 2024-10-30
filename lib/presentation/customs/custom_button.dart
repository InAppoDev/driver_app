import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final bool isLoading;
  final VoidCallback? onPressed;
  final double height;
  final double? width;
  final bool isDisabled;
  final bool onlyBorder;

  const CustomButton({
    super.key,
    required this.label,
    this.isLoading = false,
    required this.onPressed,
    this.height = 48,
    this.width,
    this.isDisabled = false,
    this.onlyBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: height,
      width: width ?? double.infinity,
      child: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ElevatedButton(
              onPressed: isDisabled ? null : onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: onlyBorder
                    ? theme.scaffoldBackgroundColor
                    : isDisabled
                        ? theme.dividerColor
                        : theme.cardColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(
                    color: onlyBorder ? theme.cardColor : Colors.transparent,
                    width: 2,
                  ),
                ),
                elevation: isDisabled ? 0 : 2,
                padding: const EdgeInsets.symmetric(horizontal: 15),
              ),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: onlyBorder
                      ? theme.cardColor
                      : isDisabled
                          ? theme.scaffoldBackgroundColor.withOpacity(0.5)
                          : theme.scaffoldBackgroundColor,
                ),
              ),
            ),
    );
  }
}
