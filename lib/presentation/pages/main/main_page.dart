import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tms_driver/presentation/blocks/main/bloc/main_bloc.dart';
import 'package:tms_driver/presentation/customs/custom_app_bar.dart';
import 'package:tms_driver/presentation/pages/home/home_page.dart';
import 'package:tms_driver/presentation/pages/message_list/message_list.dart';
import 'package:tms_driver/presentation/pages/profile/profile.dart';
import 'package:tms_driver/presentation/pages/trip_list/trip_list.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: const MainView(),
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: const CustomAppBar(),
      extendBody: true,
      body: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          switch (state.selectedPage) {
            case MainPageEnum.home:
              return const HomePage();
            case MainPageEnum.trips:
              return const TripListPage();
            case MainPageEnum.messages:
              return const MessageListPage();
            case MainPageEnum.profile:
              return const ProfilePage();
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            elevation: 2,
            onPressed: () {},
            backgroundColor: Theme.of(context).cardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/play.svg',
                  height: 30,
                  width: 30,
                ),
                const Text('Play', style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomPaint(
        painter: BottomNavBarPainter(),
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(context, 'home', 'Home', MainPageEnum.home),
              _buildNavItem(context, 'point', 'Trips', MainPageEnum.trips),
              const SizedBox(width: 40), // Space for the FAB
              _buildNavItem(
                  context, 'message', 'Messages', MainPageEnum.messages),
              _buildNavItem(context, '', 'You', MainPageEnum.profile),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
      BuildContext context, String iconName, String label, MainPageEnum page) {
    final theme = Theme.of(context);
    final isSelected = context.watch<MainBloc>().state.selectedPage == page;
    final color = isSelected ? theme.primaryColor : theme.shadowColor;
    final fontWeight = isSelected ? FontWeight.w600 : FontWeight.w400;

    return GestureDetector(
      onTap: () => context.read<MainBloc>().add(MainEvent.pageChanged(page)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconName.isEmpty
              ? Icon(
                  Icons.person,
                  color: color,
                )
              : SvgPicture.asset(
                  'assets/images/$iconName.svg',
                  colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                ),
          Text(label, style: TextStyle(color: color, fontWeight: fontWeight)),
        ],
      ),
    );
  }
}

class BottomNavBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(0, 0);

    path.lineTo(size.width * 0.35, 0);

    path.quadraticBezierTo(
      size.width * 0.4,
      0,
      size.width * 0.4,
      25,
    );

    path.arcToPoint(
      Offset(size.width * 0.6, 27),
      radius: const Radius.circular(33.0),
      clockwise: false,
    );

    path.quadraticBezierTo(
      size.width * 0.6,
      0,
      size.width * 0.65,
      0,
    );
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
