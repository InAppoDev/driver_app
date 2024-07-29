import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/theme/app_colors.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.mainWhite,
  canvasColor: AppColors.white,
  focusColor: AppColors.lightBlack,
  bottomAppBarTheme: const BottomAppBarTheme(
    color: AppColors.mainWhite,
    shape: CircularNotchedRectangle(),
    elevation: 10,
  ),
  hintColor: AppColors.textGray,
  highlightColor: AppColors.lightGray,
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      overlayColor: WidgetStateProperty.all(AppColors.orange),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      iconColor: WidgetStateProperty.all(AppColors.orange),
      foregroundColor: WidgetStateProperty.all(AppColors.mainWhite),
      backgroundColor: WidgetStateProperty.all(AppColors.orange),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      overlayColor: WidgetStateProperty.all(AppColors.orange),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 15),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      textStyle: WidgetStateProperty.all(
        const TextStyle(
          fontSize: 12,
          color: AppColors.mainWhite,
          fontWeight: FontWeight.w400,
        ),
      ),
      foregroundColor: WidgetStateProperty.all(AppColors.mainWhite),
      backgroundColor: WidgetStateProperty.all(AppColors.orange),
    ),
  ),
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
  textTheme: const TextTheme(
    // Numbers fields
    headlineLarge: TextStyle(
      fontSize: 24,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    // Body fields, Button
    headlineMedium: TextStyle(
      fontSize: 20,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    // Heading
    headlineSmall: TextStyle(
      fontSize: 19,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
    ),
    // Text
    labelLarge: TextStyle(
      fontSize: 16,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
    ),
    // Heading in the elements
    labelMedium: TextStyle(
      fontSize: 16,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: TextStyle(
      fontSize: 14,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      fontSize: 14,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
    // Text status
    titleMedium: TextStyle(
      fontSize: 14,
      color: AppColors.black,
      fontWeight: FontWeight.w300,
    ),
    // Text description
    titleSmall: TextStyle(
      fontSize: 12,
      color: AppColors.black,
      fontWeight: FontWeight.w700,
    ),
    bodySmall: TextStyle(
      fontSize: 10,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    ),
  ),
);
