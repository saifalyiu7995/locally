import 'package:flutter/material.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:locally_app/widgets/rating/rating_with_star.dart';

class OfferProductItem extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final bool hasSubtitle;
  String? subTitle;
   OfferProductItem({
    super.key,
    required this.onTap, required this.title, required this.hasSubtitle, this.subTitle
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 2,
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
                    topLeft: Radius.circular(2),
                    topRight: Radius.circular(2),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "${AppConstant.assetImages}product_card_image.png"),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)),
              padding:
              const EdgeInsets.symmetric( horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      SizedBox(height: 5,),
                      Text(
                        title,
                        style:const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff041421),
                        ),
                      ),
                      hasSubtitle? SizedBox(height: 5,) : SizedBox.shrink(),
                    hasSubtitle? Text(
                        subTitle!,
                        style:const TextStyle(
                          fontSize: 12,
                          color: Color(0xff6B829D),
                        ),
                      ):const SizedBox.shrink(),
                      SizedBox(height: 10,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
