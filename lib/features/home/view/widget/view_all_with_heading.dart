import 'package:flutter/material.dart';
import 'package:locally_app/features/shop/view/screen/shop_screen.dart';

class ViewAllWithHeading extends StatelessWidget {
  final String titile;

  const ViewAllWithHeading({
    super.key,
    this.titile = "Your Nearby Restaurants",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titile,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color(0xff041421),
          ),
        ),
        Row(
          children: const [
            Text(
              " View All",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Color(0xffA72622),
              ),
            ),
            Icon(
              Icons.arrow_right_alt_rounded,
              color: Color(0xffA72622),
            )
          ],
        ),
      ],
    );
  }
}
