import 'package:flutter/material.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:locally_app/widgets/rating/rating_with_star.dart';

class HomeProductItem extends StatelessWidget {
  final VoidCallback onTap;
  const HomeProductItem({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200,
        width: 250,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "${AppConstant.assetImages}product_card_image.png"),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Balochi Tikka",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff041421),
                          ),
                        ),
                        Text(
                          "35 min - Rs 150 delivery fee",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff6B829D),
                          ),
                        ),
                      ],
                    ),
                    const RatingStar(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
