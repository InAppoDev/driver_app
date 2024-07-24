import 'package:flutter/material.dart';
import 'package:tms_driver/presentation/customs/custom_button.dart';
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

  static const List<Widget> _routes = [
    HomePage(),
    TripListPage(),
    MessageListPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
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
        title: const Text('Main Page'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Stack(
        children: [
          IndexedStack(
            index: _selectedIndex,
            children: _routes,
          ),
          Positioned(
            bottom: 5,
            left: 15,
            right: 15,
            child: CustomButton(
              label: 'Start',
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const HomeBottomSheet();
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place_outlined),
            label: 'Trip',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
