import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:sizer/sizer.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TextFormField(
        controller: TextEditingController(),
        onFieldSubmitted: (s) {},
        enabled: false,
        decoration: InputDecoration(
          hintText: 'What do you want to order?',
          filled: true,
          fillColor: Color(0xffF5F5F5),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(10),
              child: SvgPicture.asset(
                '${AppConstant.assetImages}search-normal.svg',
                height: 2.5.h,
              ),
            ),
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 40,
          ),
        ),
      ),
    );
  }
}
