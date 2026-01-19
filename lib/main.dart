import 'package:flutter/material.dart';

import 'helpers/colors.dart';
import 'home_screen.dart';

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
      home: const HomeScreen(),
    );
  }
}
