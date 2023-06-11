import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:sizer/sizer.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        children: [
          SvgPicture.asset(
            '${AppConstant.assetImages}star.svg',
            height: 1.5.h,
          ),
          const SizedBox(
            width: 2,
          ),
          const Text(
            "3.5",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: Color(0xff041421),
            ),
          ),
        ],
      ),
    );
  }
}
