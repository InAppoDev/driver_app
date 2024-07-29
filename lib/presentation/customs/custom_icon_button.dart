import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;
  final double height;
  final double width;
  final double? transparency;
  final bool justIcon;
  final Color? borderColor;
  final double borderRadius;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.height = 47,
    this.width = 47,
    this.transparency,
    this.justIcon = false,
    this.borderColor,
    this.borderRadius = 9,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
          border: justIcon
              ? null
              : Border.all(
                  color: borderColor ??
                      theme.cardColor.withOpacity(transparency ?? 1),
                ),
          color: justIcon ? null : theme.cardColor.withOpacity(transparency ?? 1),
        ),
        child: SvgPicture.asset(
          'assets/images/$icon.svg',
          height: 20,
          width: 20,
          colorFilter: ColorFilter.mode(theme.cardColor, BlendMode.srcIn),
        ),
      ),
    );
  }
}
