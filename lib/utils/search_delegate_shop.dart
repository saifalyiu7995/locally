import 'package:flutter/material.dart';
import 'package:locally_app/features/shop/view/screen/shop_screen.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:sizer/sizer.dart';

class SearchDelegateShops extends SearchDelegate {
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
            return Container(
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
