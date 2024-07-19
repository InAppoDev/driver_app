import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/pages/login/login_page.dart';
import 'package:tms_driver/presentation/pages/main/main_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/main',
      builder: (context, state) => const MainPage(),
    ),
  ],
);
