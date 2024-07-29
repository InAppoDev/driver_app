import 'package:go_router/go_router.dart';
import 'package:tms_driver/presentation/pages/login/login_page.dart';
import 'package:tms_driver/presentation/pages/main/main_page.dart';
import 'package:tms_driver/presentation/pages/message_list/widget/chat_screen.dart';
import 'package:tms_driver/presentation/pages/splash/splash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/main',
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/chat',
      builder: (context, state) => const ChatScreen(),
    ),
  ],
);
