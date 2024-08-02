import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/customs/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 30,
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          CustomIconButton(
            height: 18,
            icon: 'bell',
            onPressed: () {},
            justIcon: true,
            iconColor: Theme.of(context).dividerColor,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
