import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_assignment/helpers/colors.dart';

class NewOrderCard extends StatelessWidget {
  const NewOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 20,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New order created',
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    color: AppColors.lavender,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'New Order created with Order',
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    color: AppColors.navy,
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '09:00 AM',
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        color: AppColors.coral,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Icon(
                      Icons.arrow_right_alt,
                      color: AppColors.coral,
                      size: 22,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: AppColors.coral,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/Group 900.svg',
                width: 60,
                height: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
