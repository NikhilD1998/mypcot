import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_assignment/helpers/colors.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, Mypcot !!',
              style: const TextStyle(
                fontFamily: 'Roboto',
                color: AppColors.navy,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'here is your dashboard....',
              style: const TextStyle(
                fontFamily: 'Roboto',
                color: AppColors.navy,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 64),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.navy.withOpacity(0.08),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            width: 24,
            height: 24,
            child: SvgPicture.asset('assets/icons/Group 918.svg'),
          ),
        ),
      ],
    );
  }
}
