import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:locally_app/widgets/rating/rating_with_star.dart';
import 'package:locally_app/widgets/slider/slider_item.dart';
import 'package:locally_app/widgets/textFormField/search_text_field.dart';
import 'package:sizer/sizer.dart';

class ShopScreen extends ConsumerStatefulWidget {
  const ShopScreen({super.key});

  @override
  ShopScreenState createState() => ShopScreenState();
}

class ShopScreenState extends ConsumerState<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Image(
                  height: 260,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "${AppConstant.assetImages}shop.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Nosh e Khas Restaurant",
                        style: TextStyle(
                          color: Color(0xff041421),
                          fontWeight: FontWeight.w500,
                          fontSize: 19,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const RatingStar(),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "2.9 miles away - Canal Road Abdullah pur",
                            style: TextStyle(
                              color: Color(0xff6B829D),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "View Map",
                            style: TextStyle(
                              color: Color(0xffA72622),
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Delivery Charges Rs. 350",
                        style: TextStyle(
                          color: Color(0xff6B829D),
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ToggleButton(),
                          SelectNow(),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 140,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => const SliderItem(),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SearchTextField(),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: list.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ShopCategoryItem(
                                index: index, title: list[index]),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Popular Items",
                        style: TextStyle(
                          color: Color(0xff041421),
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 90.w,
                        child: const Text(
                          "These items are best seller with most customer love, and we think you like them too.",
                          style: TextStyle(
                            color: Color(0xff6B829D),
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: 7,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: ShopPopularItem(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ShopPopularItem extends StatelessWidget {
  const ShopPopularItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=250&q=80',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Color(0xffA72622),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Vegitable Pizza",
          style: TextStyle(
            color: Color(0xff041421),
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        const Text(
          "Rs. 1200.00",
          style: TextStyle(
            color: Color(0xff6B829D),
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}

List<String> list = [
  "Popular Items",
  "Burger",
  "Sanwitches",
  "Fresh Fries",
  "Fish",
  "Beavarges"
];

class ShopCategoryItem extends StatelessWidget {
  final int index;
  final String title;
  const ShopCategoryItem({
    super.key,
    required this.index,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: index == 3 ? Color(0xffA72622) : Color(0xff6B829D),
            fontSize: 14,
            fontWeight: index == 3 ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        index == 3
            ? const SizedBox(
                height: 3,
              )
            : const SizedBox.shrink(),
        index == 3
            ? Container(
                width: title.length * 5.9,
                height: 2,
                decoration: BoxDecoration(
                  color: const Color(0xffA72622),
                  borderRadius: BorderRadius.circular(10),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}

class SelectNow extends StatelessWidget {
  const SelectNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color(0xFFa72521),
          borderRadius: BorderRadius.circular(30),
        ),
        alignment: Alignment.center,
        child: SizedBox(
          width: 90,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.access_time_filled_sharp,
                  color: Colors.white,
                  size: 22,
                ),
                Text(
                  "Now",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool _isDelivery = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 220,
      decoration: BoxDecoration(
        color: Color(0xFFf1f1f1),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            width: 100,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isDelivery = true;
                });
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: _isDelivery ? Color(0xFF064769) : Color(0xFFf1f1f1),
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 90,
                  child: Center(
                    child: Text(
                      "Delivery in 25 min",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: _isDelivery ? Colors.white : Colors.black,
                          fontSize: 11),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            width: 120,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isDelivery = false;
                });
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: _isDelivery ? Color(0xFFf1f1f1) : Color(0xFF064769),
                  borderRadius: BorderRadius.circular(30),
                ),
                alignment: Alignment.center,
                child: Center(
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      "Click & Collect in 25 min",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        color: _isDelivery ? Colors.black : Colors.white,
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
