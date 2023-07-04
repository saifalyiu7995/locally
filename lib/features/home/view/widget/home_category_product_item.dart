import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/routes/app_navigation_routes.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:locally_app/widgets/rating/rating_with_star.dart';
import 'package:sizer/sizer.dart';

class HomeSubCategoryProductItem extends StatelessWidget {
  const HomeSubCategoryProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AppNavigation.navigateTo(AppNavRoutes.shopScreen),
      child: Container(
        height: 280,
        width: 92.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
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
                width: 94.w,
                // padding: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "${AppConstant.assetImages}chicken_shop.png"),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 12,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Around ',
                                style: TextStyle(
                                  color: Color(0xff6B829D),
                                ),
                              ),
                              TextSpan(
                                text: '20 min',
                                style: TextStyle(
                                  color: Color(0xff041421),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      left: 0,
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                          color: const Color(0xff064769).withOpacity(0.8),
                        ),
                        child: const AutoSizeText(
                          "50% OFF Up to RS 300",
                          minFontSize: 8,
                          maxFontSize: 13,
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        height: 30,
                        width: 160,
                        decoration: BoxDecoration(
                          color: const Color(0xffA72622).withOpacity(0.95),
                        ),
                        child: const AutoSizeText(
                          "Extra 25% OFF with Promo",
                          minFontSize: 8,
                          maxFontSize: 12,
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Naheed Chicken Shop",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff041421),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "All Grocery Products | 2.9 miles away ",
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xff6B829D),
                              ),
                            ),
                          ],
                        ),
                        const RatingStar(),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.2),
                      thickness: 0.4,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          '${AppConstant.assetImages}trend-up.svg',
                          height: 2.h,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text(
                          "4569+ order placed from here recently",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff6B829D),
                          ),
                        ),
                      ],
                    )
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
