import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locally_app/features/home/view/widget/home_category_product_item.dart';
import 'package:locally_app/features/shop/view/screen/shop_screen.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/utils/search_delegate_product.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => AppNavigation.goBack(),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xffA72622),
                      size: 34,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => showSearch(
                        context: context,
                        delegate: SearchDelegateProduct(),
                      ),
                      child: const SearchTextField(),
                    ),
                  ),
                ],
              ),
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
                    child: ShopCategoryItem(index: index, title: list[index]),
                  ),
                ),
              ),
              // const ViewAllWithHeading(),
              // const SizedBox(
              //   height: 10,
              // ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(right: 10, bottom: 10),
                    child: HomeSubCategoryProductItem(),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 70.h,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 10),
                  itemCount: 10,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => const CategoryItem(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
