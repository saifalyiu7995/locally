import 'package:flutter/material.dart';
import 'package:locally_app/theme/app_colors.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:sizer/sizer.dart';


class AvatarWidget extends StatelessWidget {
  final String imageLink;
  const AvatarWidget({
    Key? key,
    required this.imageLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.3.h,
      width: 12.73.w,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
                color: AppColors.blackColor.withOpacity(0.20),
                offset: const Offset(4, 4),
                spreadRadius: 2,
                blurRadius: 5)
          ]),
      child: Center(
        child: SizedBox(
          height: 5.715.h,
          width: 11.45.w,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image(
              image: const AssetImage("${AppConstant.assetImages}avatar.jpg"),
              fit: BoxFit.cover,
              height: 6.35.h,
            ),
          ),
        ),
      ),
    );
  }
}
