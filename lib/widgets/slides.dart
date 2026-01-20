import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_assignment/helpers/colors.dart';

class OrdersCard extends StatelessWidget {
  const OrdersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Main Card
        Container(
          height: 220,
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.skyBlue,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/orders-illustration-image.svg', // Use your actual SVG asset here
                    height: 110,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    height: 40,
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.brown,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 8),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Orders',
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              // Info Column
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 36), // Space for the stacked card
                    // Pending Orders Card
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '02',
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              color: AppColors.navy,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pending',
                                style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  color: AppColors.navy,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                'Orders from',
                                style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  color: AppColors.navy,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8),
                          // Avatars
                          SizedBox(
                            width: 44,
                            height: 24,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage: AssetImage(
                                      'assets/images/user4.jpeg',
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 18,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundImage: AssetImage(
                                      'assets/images/user5.jpeg',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -18,
          right: 32,
          child: Container(
            width: 150,
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.brown,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Main content (RichText)
                Positioned(
                  top: 12,
                  left: 12,
                  child: Align(
                    alignment: Alignment.center,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                        children: [
                          const TextSpan(text: 'You have '),
                          TextSpan(
                            text: '3',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const TextSpan(text: ' active\norders from'),
                        ],
                      ),
                    ),
                  ),
                ),
                // Stacked Avatars above the container
                Positioned(
                  bottom: -20, // Adjust as needed for overlap
                  left: 20,
                  child: SizedBox(
                    width: 120,
                    height: 40,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors
                                    .brown, // Use AppColors.white or any color you want for the border
                                width: 2.5,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage(
                                'assets/images/user1.jpeg',
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 24,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors
                                    .brown, // Use AppColors.white or any color you want for the border
                                width: 2.5,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage(
                                'assets/images/user2.jpeg',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 48,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors
                                    .brown, // Use AppColors.white or any color you want for the border
                                width: 2.5,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 18,
                              backgroundImage: AssetImage(
                                'assets/images/user3.jpeg',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
