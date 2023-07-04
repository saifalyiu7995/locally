import 'package:flutter/material.dart';
import 'package:locally_app/features/shop/view/screen/shop_screen.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:sizer/sizer.dart';

class SearchDelegateProduct extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.black,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: () {
          AppNavigation.goBack();
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return const Text("");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container(
      color: Colors.grey[200],
      height: 100.h,
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, snapshot) {
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage("${AppConstant.assetImages}product.png"),
                    height: 30,
                  ),
                ),
              ),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Clear Man Shampoo ( 100ML )",
                    style: TextStyle(
                      color: Color(0xff041421),
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Rs.260.00",
                    style: TextStyle(
                      color: Color(0xff6B829D),
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
              ),
            );

            Container(
              height: 320,
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              color: const Color(0xffFFFFFF),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const SearchShopeTile(),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>  Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: ShopPopularItem(
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
