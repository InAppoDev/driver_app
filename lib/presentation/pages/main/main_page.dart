import 'package:flutter/material.dart';
import 'package:tms_driver/data/services/my_localtion_services.dart';
import 'package:tms_driver/presentation/pages/home/home_page.dart';
import 'package:tms_driver/presentation/pages/home/widget/home_bottom_sheet.dart';
import 'package:tms_driver/presentation/pages/trip_list/trip_list.dart';
import 'package:tms_driver/presentation/pages/message_list/message_list.dart';
import 'package:tms_driver/presentation/pages/profile/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  MyLocationService? _locationService;

  static const List<Widget> _routes = [
    HomePage(),
    TripListPage(),
    MessageListPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
    _locationService = MyLocationService();
    _locationService?.startTracking();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              height: 30,
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _routes,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(context, Icons.home, 'Home', 0),
            _buildNavItem(context, Icons.place_outlined, 'Trips', 1),
            const SizedBox(width: 30), // Space for the FAB
            _buildNavItem(context, Icons.message_outlined, 'Messages', 2),
            _buildNavItem(context, Icons.person, 'You', 3),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const HomeBottomSheet();
            },
          );
        },
        child: const Text('Drive on'),
      ),
    );
  }

  Widget _buildNavItem(
      BuildContext context, IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    final color = isSelected
        ? Theme.of(context).primaryColor
        : Theme.of(context).shadowColor;
    final fontWeight = isSelected ? FontWeight.w600 : FontWeight.w400;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
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
