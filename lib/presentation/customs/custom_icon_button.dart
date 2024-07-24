import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final bool isTransparent;
  final double transparency;
  final bool justIcon;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.isTransparent = false,
    this.height = 47,
    this.width = 47,
    this.transparency = 0.8,
    this.justIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: justIcon
            ? null
            : ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context)
                    .cardColor
                    .withOpacity(isTransparent ? transparency : 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Border radius
                ),
              ),
        child: SvgPicture.asset('assets/images/$icon.svg'),
      ),
    );
  }
}
