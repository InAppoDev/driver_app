import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.mainWhite,
  canvasColor: AppColors.white,
  focusColor: AppColors.black,
  bottomAppBarTheme: const BottomAppBarTheme(
    color: AppColors.mainWhite,
    shape: CircularNotchedRectangle(),
    elevation: 10,
  ),
  hintColor: AppColors.textGray,
  highlightColor: AppColors.lightGray,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.mainWhite,
    selectedItemColor: AppColors.orange,
    unselectedItemColor: AppColors.mainGray,
  ),
  cardColor: AppColors.orange,
  iconTheme: const IconThemeData(
    color: AppColors.mainGray,
  ),
  primaryColor: AppColors.orange,
  shadowColor: AppColors.darkGray,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: AppColors.orange,
    foregroundColor: AppColors.white,
    elevation: 6,
    sizeConstraints: const BoxConstraints.tightFor(
      width: 70,
      height: 70,
    ),
    hoverElevation: 8,
    focusElevation: 8,
    disabledElevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
);
