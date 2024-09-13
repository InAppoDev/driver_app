import 'package:go_router/go_router.dart';
import 'package:tms_driver/data/models/trip/dispatch_list_model/dispatch_list_model.dart';
import 'package:tms_driver/presentation/pages/chat_detail/chat_screen.dart';
import 'package:tms_driver/presentation/pages/login/login_page.dart';
import 'package:tms_driver/presentation/pages/main/main_page.dart';
import 'package:tms_driver/presentation/pages/notification/notification_screen.dart';
import 'package:tms_driver/presentation/pages/splash/splash_screen.dart';
import 'package:tms_driver/presentation/pages/trip_list/widget/confirm_trip_screen.dart';

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
      path: '/confirmTrip',
      builder: (context, state) {
        final trip = state.extra as DispatchListModel;
        return ConfirmTripScreen(tripId: trip.id);
      },
    ),
    GoRoute(
      path: '/chat/:chatId',
      builder: (context, state) {
        final chatId = int.parse(state.pathParameters['chatId']!);
        return ChatScreen(chatId: chatId);
      },
    ),
    GoRoute(
      path: '/notification',
      builder: (context, state) => const NotificationScreen(),
    ),
  ],
);
