import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.mainWhite,
  canvasColor: AppColors.white,
  focusColor: AppColors.black,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.mainWhite,
    selectedItemColor: AppColors.orange,
    unselectedItemColor: AppColors.mainGray,
  ),
  cardColor: AppColors.orange,
  iconTheme: const IconThemeData(
    color: AppColors.mainGray,
  ),
);
