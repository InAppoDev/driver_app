import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final bool isLoading;
  final VoidCallback? onPressed;
  final double height;
  final bool isDisabled;

  const CustomButton({
    super.key,
    required this.label,
    this.isLoading = false,
    required this.onPressed,
    this.height = 48,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ElevatedButton(
              onPressed: isDisabled ? null : onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: isDisabled
                    ? Theme.of(context).dividerColor
                    : Theme.of(context).cardColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: isDisabled ? 0 : 2,
                padding: const EdgeInsets.symmetric(horizontal: 15),
              ),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: isDisabled
                      ? Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(0.5)
                      : Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ),
    );
  }
}
