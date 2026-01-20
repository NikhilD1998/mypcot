import 'package:flutter/material.dart';
import 'package:mypcot_assignment/widgets/orders_card_one.dart';
import 'package:mypcot_assignment/widgets/orders_card_two.dart';

class Slides extends StatelessWidget {
  const Slides({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [OrdersCardOne(), SizedBox(height: 20), OrdersCardTwo()],
    );
  }
}
