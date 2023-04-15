import 'package:flutter/material.dart';

class ViewAllWithHeading extends StatelessWidget {
  const ViewAllWithHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Your Nearby Restaurants",
          style: TextStyle(
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
                color: Colors.red,
              ),
            ),
            Icon(
              Icons.arrow_right_alt_rounded,
              color: Colors.red,
            )
          ],
        ),
      ],
    );
  }
}
