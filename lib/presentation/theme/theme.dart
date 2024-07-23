import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';

final lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.mainWhite,
    canvasColor: AppColors.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.orange,
      unselectedItemColor: AppColors.mainGray,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.mainGray,
    ));
