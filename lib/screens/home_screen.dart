import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import '../helpers/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PersistentTabController _controller = PersistentTabController(
    initialIndex: 0,
  );

  List<Widget> _buildScreens() => [
    // Replace with your actual screens
    Center(
      child: Text('Home', style: TextStyle(fontFamily: 'Roboto')),
    ),
    Center(
      child: Text('Customers', style: TextStyle(fontFamily: 'Roboto')),
    ),
    Center(
      child: Text('Khata', style: TextStyle(fontFamily: 'Roboto')),
    ),
    Center(
      child: Text('Orders', style: TextStyle(fontFamily: 'Roboto')),
    ),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      title: ("Home"),
      activeColorPrimary: AppColors.navy,
      inactiveColorPrimary: AppColors.navy.withOpacity(0.5),
      textStyle: const TextStyle(fontFamily: 'Roboto', fontSize: 13),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.people_alt_outlined),
      title: ("Customers"),
      activeColorPrimary: AppColors.navy,
      inactiveColorPrimary: AppColors.navy.withOpacity(0.5),
      textStyle: const TextStyle(fontFamily: 'Roboto', fontSize: 13),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.receipt_long),
      title: ("Khata"),
      activeColorPrimary: AppColors.navy,
      inactiveColorPrimary: AppColors.navy.withOpacity(0.5),
      textStyle: const TextStyle(fontFamily: 'Roboto', fontSize: 13),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.assignment_outlined),
      title: ("Orders"),
      activeColorPrimary: AppColors.navy,
      inactiveColorPrimary: AppColors.navy.withOpacity(0.5),
      textStyle: const TextStyle(fontFamily: 'Roboto', fontSize: 13),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: 70,
        navBarStyle: NavBarStyle.style13, // Style 13 with center FAB
        onItemSelected: (index) {
          // Handle tab change if needed
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.navy,
        onPressed: () {
          setState(() {
            _controller.index = (_controller.index + 1) % 4;
          });
        },
        child: const Icon(Icons.add, size: 32, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
