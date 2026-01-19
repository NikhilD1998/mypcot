import 'package:flutter/material.dart';
import 'package:mypcot_assignment/navigations/bottom_navbar.dart';

import 'helpers/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mypcot Dashboard',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: AppColors.navy,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: BottomNavBar(),
    );
  }
}
