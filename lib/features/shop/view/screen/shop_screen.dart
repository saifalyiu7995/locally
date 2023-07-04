import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:locally_app/utils/search_delegate_product.dart';
import 'package:locally_app/widgets/button/custom_button.dart';

import 'package:locally_app/widgets/rating/rating_with_star.dart';
import 'package:locally_app/widgets/slider/slider_item.dart';
import 'package:locally_app/widgets/textFormField/search_text_field.dart';
import 'package:sizer/sizer.dart';



class VariationOption {
  final String title;
  final String price;

  VariationOption({required this.title, required this.price});
}

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
              padding: const EdgeInsets.all(15),
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
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: SliderItem(
                          image: "slider_big_image.png",
                          width: 360,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => showSearch(
                      context: context,
                      delegate: SearchDelegateProduct(),
                    ),
                    child: const SearchTextField(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: list.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child:
                            ShopCategoryItem(index: index, title: list[index]),
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
                    height: 170,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 7,
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>  Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: ShopPopularItem(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Pizza",
                    style: TextStyle(
                      color: Color(0xff041421),
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 7,
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: PopularItemHorizontal(),
                      ),
                    ),
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

class PopularItemHorizontal extends StatelessWidget {



  const PopularItemHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
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
            image: const DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=250&q=80',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Regular Specify Zinger Burger",
                      style: TextStyle(
                          color: Color(0xFF064769),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 1,
                                color: Color(0xff064769).withOpacity(0.2),
                                offset: Offset(0, 0))
                          ]),
                      child: const Icon(
                        Icons.add,
                        color: Color(0xffA72622),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "28 ounces freshly ground beef preferably the blue Label Burger.",
                  style: TextStyle(
                    color: Color(0xff6B829D),
                    fontSize: 11,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Rs.260.00",
                  style: TextStyle(
                      color: Color(0xFF064769),
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ShopPopularItem extends StatelessWidget {
  final double height;
  final double width;

  int _selectedOption = -1;

  List<VariationOption> _options = [
    VariationOption(title: 'Original GMC Burger', price: 'Rs 500'),
    VariationOption(title: 'No Original GMC Burger', price: 'Rs 200'),
  ];

   ShopPopularItem({
    super.key,
    this.height = 120,
    this.width = 120,
  });

  @override
  Widget build(BuildContext context) {


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: (){
            showModalBottomSheet(
              enableDrag: true,
              backgroundColor: Colors.transparent,
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return DraggableScrollableSheet(
                  initialChildSize: 0.9,
                  minChildSize: 0.7,
                  maxChildSize: 1,
                  builder: (BuildContext context,
                      ScrollController scrollController) {
                    return ListView(
                      controller: scrollController,
                      children: [
                        Container(
                          // height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    const SizedBox.shrink(),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin: EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black
                                                .withOpacity(0.3),
                                            offset: Offset(0, 1),
                                            blurRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child:  InkWell(
                                        onTap: (){
                                          AppNavigation.goBack();
                                        },
                                        child: Icon(
                                          Icons.close,
                                          color: Color(0xffA72622),
                                          size: 19,

                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                height: 250,
                                width:
                                MediaQuery.of(context).size.width,
                                color: Color(0xffFBFBFB),
                                child: Image(
                                  image: NetworkImage(
                                    'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=250&q=80',
                                  ),
                                  fit: BoxFit.fill,
                                  height: 250,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10 , vertical: 20),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Two Zinger Burger",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight:
                                          FontWeight.w800),
                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      "Spicy chicken burger with two colddrinks",
                                      style: TextStyle(
                                        color:
                                        Color(0xff6B829D),
                                      ),
                                    ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only( top: 8.0),
                                        child: Text(
                                          'Variations',
                                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      ListView.builder(
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount: _options.length,
                                        itemBuilder: (context, index) {
                                          return Theme(
                                            data: ThemeData(
                                              unselectedWidgetColor: const Color(0xffA72622),
                                            ),
                                            // child: RadioListTile(
                                            //   visualDensity: const VisualDensity(
                                            //     horizontal: VisualDensity.minimumDensity,
                                            //     vertical: VisualDensity.minimumDensity,
                                            //   ),
                                            //   title: Text(_options[index].title),
                                            //   value: index,
                                            //   groupValue: _selectedOption,
                                            //
                                            //   onChanged: (value) {
                                            //     // setState(() {
                                            //     //   _selectedOption = value as int;
                                            //     // });
                                            //   },
                                            //   secondary: Text(_options[index].price),
                                            // ),
                                            child: Row(
                                              children: [
                                                Radio(value: _options[index].title, groupValue: _options, onChanged:(e){

                                                }),
                                                Text(_options[index].title),
                                                Expanded(
                                                  child: SizedBox(),
                                                ),
                                                Text(_options[index].price),
                                              ],
                                            ),
                                          );
                                        },
                                      ),

                                    ],
                                  ),
                                    // Spacer(),
                                ), //
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only( top: 8.0),
                                      child: Text(
                                        'Frequently bought together',
                                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: _options.length,
                                      itemBuilder: (context, index) {
                                        return Theme(
                                          data: ThemeData(
                                            unselectedWidgetColor: const Color(0xffA72622),
                                          ),
                                          child: Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Checkbox(value: false, onChanged: (bool? e){

                                              }),
                                              Text(_options[index].title),
                                              Expanded(
                                                child: SizedBox(),
                                              ),
                                              Text(_options[index].price),
                                            ],
                                          ),
                                        );
                                      },
                                    ),

                                  ],
                                ),
                                    // Align(alignment: Alignment.bottomCenter, child: Text("thats ")),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20 , horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            const SizedBox.shrink(),
                                            Container(
                                              width: 30,
                                              height: 30,
                                              margin: EdgeInsets.only(right: 5),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                // border: ,
                                                borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                    offset: Offset(0, 1),
                                                    blurRadius: 2,
                                                  ),
                                                ],
                                              ),
                                              child:  InkWell(
                                                onTap: (){
                                                  AppNavigation.goBack();
                                                },
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Color(0xffA72622),
                                                  size: 19,

                                                ),
                                              ),
                                            ),
                                            Text("2"),
                                            Container(
                                              width: 30,
                                              height: 30,
                                              margin: EdgeInsets.only(right: 5),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                // border: ,
                                                borderRadius: BorderRadius.all(Radius.circular(2.0),),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                    offset: Offset(0, 1),
                                                    blurRadius: 2,
                                                  ),
                                                ],
                                              ),
                                              child:  InkWell(
                                                onTap: (){
                                                  AppNavigation.goBack();
                                                },
                                                child: Icon(
                                                  Icons.add,
                                                  color: Color(0xffA72622),
                                                  size: 19,

                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    CustomButton(
                                      title: "Add To Cart",
                                      color: const Color(0xffA72622),
                                      fontColor: const Color(0xFFFFFFFF),
                                      fontSize: 18,
                                      showIcon: false,
                                      fontWeight: FontWeight.w300,
                                      minSize: Size(50.w, 6.h),
                                      onPressed: () {
                                        // AppNavigation.navigateTo(AppNavRoutes.numberRoute);
                                      },
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
          child: Container(
            height: height,
            width: width,
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
                    child: const Icon(
                      Icons.add,
                      color: Color(0xffA72622),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Vegitable Pizza",
          style: TextStyle(
            color: Color(0xff064769),
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

class CategoryItem extends StatelessWidget {
  final double height;
  final double width;
  const CategoryItem({
    super.key,
    this.height = 160,
    this.width = 160,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: height,
          width: 44.w,
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 2,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffF1F1F1)),
                  child: const Image(
                    image: AssetImage(
                        '${AppConstant.assetImages}sub_category_item.png'),
                    height: 52,
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
                  child: const Icon(
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
            color: Color(0xff064769),
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
        height: 33,
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        decoration: BoxDecoration(
          color: Color(0xFFa72521),
          borderRadius: BorderRadius.circular(5),
        ),
        alignment: Alignment.center,
        child: SizedBox(
          width: 80,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.access_time_filled_sharp,
                  color: Colors.white,
                  size: 13,
                ),
                Text(
                  "Now",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.white,
                  size: 19,
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
      height: 33,
      width: 170,
      decoration: BoxDecoration(
        color: Color(0xFFf1f1f1),
        borderRadius: BorderRadius.circular(5),
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
            width: 80,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isDelivery = true;
                });
              },
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: _isDelivery ? Color(0xFF064769) : Color(0xFFf1f1f1),
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 50,
                  child: Center(
                    child: Text(
                      "Delivery in 25 min",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: _isDelivery ? Colors.white : Colors.black,
                          fontSize: 9),
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
            width: 90,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isDelivery = false;
                });
              },
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: _isDelivery ? Color(0xFFf1f1f1) : Color(0xFF064769),
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: Center(
                  child: SizedBox(
                    width: 60,
                    child: Text(
                      "Click & Collect in 25 min",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        color: _isDelivery ? Colors.black : Colors.white,
                        fontSize: 9,
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

class SearchShopeTile extends StatelessWidget {
  const SearchShopeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
            image: const DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=250&q=80',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Promo",
                  style: TextStyle(
                      color: Color(0xffA72622),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Sabroso Chicken Specialist",
                  style: TextStyle(
                      color: Color(0xff041421),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Rs.260.00",
                  style: TextStyle(
                      color: Color(0xFF064769),
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    Text(
                      "40 min | 20 km | Free Delivery ",
                      style: TextStyle(
                          color: Color(0xff6B829D),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    RatingStar(),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: const Color(0xffA72622).withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Text(
                    "Discounted Offers",
                    style: TextStyle(
                        color: Color(0xffA72622),
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
