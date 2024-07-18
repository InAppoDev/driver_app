import 'package:flutter/material.dart';

class DriverApp extends StatelessWidget {
  const DriverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Driver App',
      // theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
      localizationsDelegates: [],
      supportedLocales: [
        const Locale('en', 'US'),
      ],
      // initialRoute: RouteConstants.initialRoute,
      // routes: AppRoutes.routes,
    );
  }
}
