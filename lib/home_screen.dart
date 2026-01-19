import 'package:flutter/material.dart';
import 'helpers/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.menu, color: AppColors.navy),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: AppColors.navy),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications, color: AppColors.navy),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: AppColors.coral,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: AppColors.navy,
              radius: 16,
              child: Icon(Icons.person, color: Colors.white, size: 18),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: 'Welcome, ',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: AppColors.navy,
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                  children: [
                    TextSpan(
                      text: 'Mypcot !!',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.navy,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'here is your dashboard....',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: AppColors.navy.withOpacity(0.5),
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: Material(
                  elevation: 4,
                  shape: const CircleBorder(),
                  color: Colors.white,
                  child: IconButton(
                    icon: Icon(Icons.search, color: AppColors.navy),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Dashboard Card
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // Placeholder for dashboard illustration
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.public,
                              color: AppColors.teal,
                              size: 48,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.pink,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            '15',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            'New customers',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    // Avatars
                                    Stack(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 12,
                                          child: Icon(
                                            Icons.person,
                                            color: AppColors.navy,
                                            size: 16,
                                          ),
                                        ),
                                        Positioned(
                                          left: 16,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 12,
                                            child: Icon(
                                              Icons.person,
                                              color: AppColors.navy,
                                              size: 16,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 32,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 12,
                                            child: Icon(
                                              Icons.person,
                                              color: AppColors.navy,
                                              size: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.trending_up,
                                            color: AppColors.green,
                                            size: 16,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            '1.8%',
                                            style: TextStyle(
                                              color: AppColors.navy,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            '10',
                                            style: TextStyle(
                                              color: AppColors.navy,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            'Active Customers',
                                            style: TextStyle(
                                              color: AppColors.navy,
                                              fontSize: 12,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          // Avatars
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 10,
                                            child: Icon(
                                              Icons.person,
                                              color: AppColors.navy,
                                              size: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.pink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'View Customers',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Date and Timeline
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'January, 23 2021',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColors.navy.withOpacity(0.5),
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Today',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: AppColors.navy,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Text(
                              'TIMELINE',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: AppColors.navy,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.navy,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today,
                              color: AppColors.navy,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              'JAN, 2021',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: AppColors.navy,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Week Days
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (final day in [
                    'MON',
                    'TUE',
                    'WED',
                    'THU',
                    'FRI',
                    'SAT',
                    'SUN',
                  ])
                    Column(
                      children: [
                        Text(
                          day,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: AppColors.navy.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        if (day == 'THU')
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: AppColors.teal,
                              shape: BoxShape.circle,
                            ),
                          ),
                      ],
                    ),
                ],
              ),
              const SizedBox(height: 16),
              // New Order Card
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'New order created',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: AppColors.navy,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'New Order created with Order',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: AppColors.navy.withOpacity(0.5),
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: AppColors.orange,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '09:00 AM',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: AppColors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.coral.withOpacity(0.15),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.backpack,
                          color: AppColors.coral,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.navy,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      color: Colors.white,
      elevation: 12,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                _buildNavItem(Icons.home, 'Home', true),
                _buildNavItem(Icons.people, 'Customers', false),
              ],
            ),
            Row(
              children: [
                _buildNavItem(Icons.book, 'Khata', false),
                _buildNavItem(Icons.article, 'Orders', false),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isActive) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isActive ? AppColors.navy : AppColors.navy.withOpacity(0.4),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Roboto',
              color: isActive
                  ? AppColors.navy
                  : AppColors.navy.withOpacity(0.4),
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
