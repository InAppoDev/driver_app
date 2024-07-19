import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_driver/presentation/blocks/bloc/auth_bloc.dart';
import 'package:tms_driver/presentation/pages/login/login_page.dart';

class DriverApp extends StatelessWidget {
  const DriverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Driver App',
      // theme: AppTheme.lightTheme,
      // darkTheme: AppTheme.darkTheme,
      // localizationsDelegates: [],
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      // initialRoute: RouteConstants.initialRoute,
      // routes: AppRoutes.routes,
      home: BlocProvider(
        create: (context) => AuthBloc(),
        child: LoginPage(),
      ),
    );
  }
}
