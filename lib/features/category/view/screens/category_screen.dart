import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locally_app/features/home/view/widget/home_category_product_item.dart';
import 'package:locally_app/features/shop/view/screen/shop_screen.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:locally_app/utils/search_delegate_product.dart';
import 'package:locally_app/widgets/cetagory/sub_cetagory_item.dart';
import 'package:locally_app/widgets/textFormField/search_text_field.dart';
import 'package:sizer/sizer.dart';

class CategoryScreen extends ConsumerStatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  CategoryScreenState createState() => CategoryScreenState();
}

class CategoryScreenState extends ConsumerState<CategoryScreen> {
  List<String> list = [
    "Popular Items",
    "Burger",
    "Sanwitches",
    "Fresh Fries",
    "Fish",
    "Beavarges"
  ];
  bool showSearchDelegate = false;
  bool animateSearchDelegate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => showSearchDelegate
                        ? setState(() {
                            showSearchDelegate = false;
                            animateSearchDelegate = false;
                          })
                        : AppNavigation.goBack(),
                    child: SvgPicture.asset(
                      "${AppConstant.assetImages}back.svg",
                      color: const Color(0xffA72622),
                      height: 18,
                    ),
                  ),
                  showSearchDelegate
                      ? const SizedBox(
                          width: 10,
                        )
                      : const Text(
                          "Grocery",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff041421),
                          ),
                        ),
                  !showSearchDelegate
                      ? GestureDetector(
                          onTap: () async {
                            setState(() {
                              showSearchDelegate = true;
                            });
                            await Future.delayed(
                              Duration(milliseconds: 200),
                              () {
                                setState(() {
                                  animateSearchDelegate = true;
                                });
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              '${AppConstant.assetImages}search-normal.svg',
                              height: 2.5.h,
                            ),
                          ),
                        )
                      : Expanded(
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            opacity: animateSearchDelegate ? 1 : 0,
                            curve: Curves.easeInCubic,
                            child: GestureDetector(
                              onTap: () => showSearch(
                                context: context,
                                delegate: SearchDelegateProduct(),
                              ),
                              child: const SearchTextField(),
                            ),
                          ),
                        ),
                ],
              ),
            ),

            !showSearchDelegate
                ? const Divider(
                    color: Colors.black,
                  )
                : const SizedBox.shrink(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 80,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 12,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: SubCategoryItem(),
                  ),
                ),
              ),
            ),
            // const ViewAllWithHeading(),
            // const SizedBox(
            //   height: 10,
            // ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Popular Shops",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff041421),
                ),
              ),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: HomeSubCategoryProductItem(),
                ),
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Offers with locally",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff041421),
                ),
              ),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: HomeSubCategoryProductItem(),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Top Brands Offer",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff041421),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  child: OfferProductItem(
                    hasSubtitle: true,
                    onTap: () {},
                    title: "Rado",
                    subTitle: "PKR 36,0000/=",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Near by shops",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff041421),
                ),
              ),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: HomeSubCategoryProductItem(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // SizedBox(
            //   height: 70.h,
            //   width: double.infinity,
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 15),
            //     child: GridView.builder(
            //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //           crossAxisCount: 2,
            //           childAspectRatio: 0.8,
            //           crossAxisSpacing: 10),
            //       itemCount: 10,
            //       padding: EdgeInsets.zero,
            //       scrollDirection: Axis.vertical,
            //       itemBuilder: (context, index) => const CategoryItem(),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class OfferProductItem extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final bool hasSubtitle;
  String? subTitle;
  OfferProductItem(
      {super.key,
      required this.onTap,
      required this.title,
      required this.hasSubtitle,
      this.subTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 210,
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
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff041421),
                        ),
                      ),
                      hasSubtitle
                          ? SizedBox(
                              height: 5,
                            )
                          : SizedBox.shrink(),
                      hasSubtitle
                          ? Text(
                              subTitle!,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xff6B829D),
                              ),
                            )
                          : const SizedBox.shrink(),
                      SizedBox(
                        height: 10,
                      ),
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
