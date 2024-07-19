import 'package:auto_route/auto_route.dart';
import 'package:tms_driver/presentation/pages/home/home_page.dart';
import 'package:tms_driver/presentation/pages/login/login_page.dart';
import 'package:tms_driver/presentation/pages/main/main_page.dart';
import 'package:tms_driver/presentation/pages/message_list/message_list.dart';
import 'package:tms_driver/presentation/pages/profile/profile.dart';
import 'package:tms_driver/presentation/pages/trip_list/trip_list.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true),
    AutoRoute(page: MainPage, children: [
      AutoRoute(page: HomePage, initial: true),
      AutoRoute(page: TripListPage),
      AutoRoute(page: MessageListPage),
      AutoRoute(page: ProfilePage),
    ]),
  ],
)
class $AppRouter {}
