import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:sizer/sizer.dart';

class HomeScreenAddressChange extends StatelessWidget {
  const HomeScreenAddressChange({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SvgPicture.asset(
              '${AppConstant.assetImages}locally_icon.svg',
              height: 4.9.h,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  children: [
                    const Text(
                      "Home Address",
                      style: TextStyle(
                        color: Color(0xff041421),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    SvgPicture.asset(
                      '${AppConstant.assetImages}dropdown_home.svg',
                      height: 1.h,
                    )
                  ],
                ),
              ),
              const Flexible(
                child: Text(
                  "300-A Johar Town Lahore",
                  style: TextStyle(
                    color: Color(0xff6B829D),
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
