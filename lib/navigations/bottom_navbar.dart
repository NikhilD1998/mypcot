import 'package:flutter/material.dart';
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

  static const List<IconData> _activeIcons = [
    Icons.home,
    Icons.people,
    Icons.receipt_long,
    Icons.assignment,
  ];

  static const List<IconData> _inactiveIcons = [
    Icons.home_outlined,
    Icons.people_outline,
    Icons.receipt_long_outlined,
    Icons.assignment_outlined,
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
      body: Navigator(
        key: _navigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            builder: (context) => _screens[_selectedIndex],
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () {},
        child: Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            color: AppColors.navy,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.navy.withOpacity(0.2),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: const Center(
            child: Icon(Icons.add, color: Colors.white, size: 32),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        elevation: 8,
        color: Colors.white,
        child: SizedBox(
          height: 60, // Reduced height to prevent overflow
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_labels.length, (index) {
              final isActive = _selectedIndex == index;
              return Expanded(
                child: InkWell(
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
                      Icon(
                        isActive ? _activeIcons[index] : _inactiveIcons[index],
                        color: isActive
                            ? AppColors.navy
                            : AppColors.navy.withOpacity(0.5),
                        size: 28,
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
          ),
        ),
      ),
      bottomSheet: Container(height: 0),
    );
  }
}
