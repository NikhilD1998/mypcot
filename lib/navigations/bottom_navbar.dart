import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot_assignment/helpers/colors.dart';
import 'package:mypcot_assignment/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  late final List<Widget> _screens;

  final List<String> _labels = ['Home', 'Customers', 'Khata', 'Orders'];

  // Use SVG asset paths for icons
  static const List<String> _activeIcons = [
    'assets/icons/Group 910.svg', // Home (filled)
    'assets/icons/Group 912.svg', // Customers (outlined)
    'assets/icons/Group 913.svg', // Khata (outlined)
    'assets/icons/Group 914.svg', // Orders (outlined)
  ];

  static const List<String> _inactiveIcons = [
    'assets/icons/Group 910.svg', // Home (filled, since outlined not available)
    'assets/icons/Group 912.svg',
    'assets/icons/Group 913.svg',
    'assets/icons/Group 914.svg',
  ];

  @override
  void initState() {
    super.initState();
    _screens = const [
      HomeScreen(),
      Center(child: Text('Customers Screen')),
      Center(child: Text('Khata Screen')),
      Center(child: Text('Orders Screen')),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          AppColors.lightGray, // Background color visible through notch
      extendBody:
          true, // This allows the body to extend behind the BottomAppBar
      body: Navigator(
        key: _navigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            builder: (context) => _screens[_selectedIndex],
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.navy,
        elevation: 4,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white, size: 32),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        elevation: 8,
        clipBehavior: Clip.antiAlias, // Ensures proper clipping of the notch
        color: Colors.white,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // First two items (left side)
              ...List.generate(2, (index) {
                final isActive = _selectedIndex == index;
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (_selectedIndex != index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                        _navigatorKey.currentState?.pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => _screens[index],
                          ),
                          (route) => false,
                        );
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          isActive
                              ? _activeIcons[index]
                              : _inactiveIcons[index],
                          color: index == 0
                              ? null
                              : (isActive
                                    ? AppColors.navy
                                    : AppColors.navy.withOpacity(0.5)),
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _labels[index],
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: isActive
                                ? FontWeight.bold
                                : FontWeight.normal,
                            fontSize: 13,
                            color: isActive
                                ? AppColors.navy
                                : AppColors.navy.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
              // Empty space for FAB
              const Expanded(child: SizedBox()),
              // Last two items (right side)
              ...List.generate(2, (i) {
                final index = i + 2;
                final isActive = _selectedIndex == index;
                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      if (_selectedIndex != index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                        _navigatorKey.currentState?.pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => _screens[index],
                          ),
                          (route) => false,
                        );
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          isActive
                              ? _activeIcons[index]
                              : _inactiveIcons[index],
                          color: isActive
                              ? AppColors.navy
                              : AppColors.navy.withOpacity(0.5),
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _labels[index],
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: isActive
                                ? FontWeight.bold
                                : FontWeight.normal,
                            fontSize: 13,
                            color: isActive
                                ? AppColors.navy
                                : AppColors.navy.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
