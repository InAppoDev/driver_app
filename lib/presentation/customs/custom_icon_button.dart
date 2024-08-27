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
  final Color? iconColor;
  final EdgeInsetsGeometry? padding;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.height = 40,
    this.width = 40,
    this.transparency,
    this.justIcon = false,
    this.borderColor,
    this.borderRadius = 9,
    this.iconColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: height,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
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
          colorFilter: ColorFilter.mode(
            iconColor ?? theme.cardColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
