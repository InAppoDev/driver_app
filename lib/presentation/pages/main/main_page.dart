import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocBuilder<MainBloc, MainState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: const CustomAppBar(),
        extendBody: true,
        body: _buildBody(state.selectedPage),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: state.showNavBar ? SizedBox(
          height: 130,
          width: 80,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton(
              elevation: 2,
              isExtended: true,
              onPressed: () {},
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.play_arrow),
                  Text('play'),
                ],
              ),
            ),
          ),
        ) : null,
        bottomNavigationBar:  state.showNavBar ? BottomAppBar(
          elevation: 2,
          shape: CustomNotchedShape(),
          notchMargin: 3,
          child: Container(
            height: 60,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(context, Icons.home, 'Home', MainPageEnum.home),
                _buildNavItem(
                    context, Icons.place_outlined, 'Trips', MainPageEnum.trips),
                const SizedBox(
                  width: 40,
                ),
                _buildNavItem(context, Icons.message_outlined, 'Messages',
                    MainPageEnum.messages),
                _buildNavItem(
                    context, Icons.person, 'You', MainPageEnum.profile),
              ],
            ),
          ),
        ) : null,
      );
    });
  }

  Widget _buildBody(MainPageEnum selectedPage) {
    switch (selectedPage) {
      case MainPageEnum.home:
        return const HomePage();
      case MainPageEnum.trips:
        return const TripListPage();
      case MainPageEnum.messages:
        return const MessageListPage();
      case MainPageEnum.profile:
        return const ProfilePage();
    }
  }

  Widget _buildNavItem(
      BuildContext context, IconData icon, String label, MainPageEnum page) {
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
          Icon(icon, color: color),
          Text(label, style: TextStyle(color: color, fontWeight: fontWeight)),
        ],
      ),
    );
  }
}

class CustomNotchedShape extends NotchedShape {
  @override
  Path getOuterPath(Rect host, Rect? guest) {
    Path path = Path()..addRect(host);

    if (guest == null) {
      return path;
    }

    final double notchWidth = guest.width;
    final double notchHeight = guest.height * 2;
    final double notchCenterX = guest.center.dx;

    path.moveTo(notchCenterX - notchWidth / 2, host.top);
    path.lineTo(notchCenterX + notchWidth / 2, host.top);
    path.lineTo(notchCenterX, host.top + notchHeight);
    path.close();

    return path;
  }
}
