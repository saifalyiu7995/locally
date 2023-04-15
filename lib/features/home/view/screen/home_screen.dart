import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locally_app/features/home/view/widget/home_address_change.dart';
import 'package:locally_app/features/home/view/widget/home_category_product_item.dart';
import 'package:locally_app/features/home/view/widget/home_product_item.dart';
import 'package:locally_app/features/home/view/widget/view_all_with_heading.dart';
import 'package:locally_app/widgets/appbar/my_appbar.dart';
import 'package:locally_app/widgets/cetagory/sub_cetagory_item.dart';
import 'package:locally_app/widgets/grocery/grocery_item.dart';
import 'package:locally_app/widgets/slider/slider_item.dart';
import 'package:locally_app/widgets/textFormField/search_text_field.dart';
import 'package:sizer/sizer.dart';

class HomeScreenUI extends ConsumerWidget {
  const HomeScreenUI({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: MyAppBar(
        title: '',
        onBackPressed: () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 1.h,
              ),
              const HomeScreenAddressChange(),
              SizedBox(
                height: 2.h,
              ),
              const SearchTextField(),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 12,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(right: 50),
                    child: GroceryItem(),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
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
              SizedBox(
                height: 0.h,
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
              SizedBox(
                height: 2.h,
              ),
              Column(
                children: [
                  const ViewAllWithHeading(),
                  SizedBox(
                    height: 1.h,
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
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Column(
                children: [
                  const ViewAllWithHeading(),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.only(right: 10, bottom: 10),
                        child: HomeProductItem(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Column(
                children: [
                  const ViewAllWithHeading(),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    height: 210,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.only(right: 10, bottom: 10),
                        child: HomeProductItem(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
