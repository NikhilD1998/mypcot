import 'package:flutter/material.dart';
import 'package:mypcot_assignment/widgets/orders_card_one.dart';
import 'package:mypcot_assignment/widgets/orders_card_two.dart';
import 'package:mypcot_assignment/widgets/orders_card_three.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Slides extends StatefulWidget {
  const Slides({super.key});

  @override
  State<Slides> createState() => _SlidesState();
}

class _SlidesState extends State<Slides> {
  final List<Widget> _cards = const [
    OrdersCardOne(),
    OrdersCardTwo(),
    OrdersCardThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: _cards
          .map(
            (card) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
              ), // Add horizontal space between cards
              child: card,
            ),
          )
          .toList(),
      options: CarouselOptions(
        height: 250,
        autoPlay: true,
        enlargeCenterPage: false,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        scrollDirection: Axis.horizontal,
        padEnds: false,
        clipBehavior: Clip.none,
      ),
    );
  }
}
