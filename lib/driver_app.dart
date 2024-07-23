import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/theme/theme.dart';
import 'router/app_router.dart';

class DriverApp extends StatelessWidget {
  const DriverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Driver App',
      theme: lightTheme,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      supportedLocales: const [
        Locale('en', 'US'),
      ],
    );
  }
}
