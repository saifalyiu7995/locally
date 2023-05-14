import 'package:flutter/material.dart';

class ViewAllWithHeading extends StatelessWidget {
  final String titile;
  final VoidCallback onTap;

  const ViewAllWithHeading({
    super.key,
    this.titile = "Your Nearby Restaurants",
    required this.onTap,
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
        GestureDetector(
          onTap: onTap,
          child: Row(
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
        ),
      ],
    );
  }
}
