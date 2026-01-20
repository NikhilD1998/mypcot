import 'package:flutter/material.dart';
import 'package:mypcot_assignment/helpers/colors.dart';
import 'package:mypcot_assignment/widgets/calender.dart';
import 'package:mypcot_assignment/widgets/new_order_card.dart';
import 'package:mypcot_assignment/widgets/slides.dart';
import 'package:mypcot_assignment/widgets/top_bar.dart';
import 'package:mypcot_assignment/widgets/welcome_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGray,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              const SizedBox(height: 40),
              const WelcomeSection(),
              const Slides(),
              const SizedBox(height: 40),
              const Calender(),
              const SizedBox(height: 40),
              const NewOrderCard(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
