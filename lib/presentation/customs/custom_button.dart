import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final bool isLoading;
  final VoidCallback onPressed;
  final double height;

  const CustomButton({
    super.key,
    required this.label,
    this.isLoading = false,
    required this.onPressed,
    this.height = 48,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).cardColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ),
    );
  }
}
