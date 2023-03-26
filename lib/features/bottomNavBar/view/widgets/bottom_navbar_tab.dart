import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:sizer/sizer.dart';


class BottomNavBarTab extends StatelessWidget {
  final String? imgPath;
  final String? title;
  final VoidCallback? onTap;

  const BottomNavBarTab({this.imgPath, this.title, this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Tab(
        icon: imgPath == "isos.png"
            ? Image(
                image: AssetImage('${AppConstant.assetImages}$imgPath'),
                height: 20,
              )
            : SvgPicture.asset(
                '${AppConstant.assetImages}$imgPath',
                height: 2.5.h,
              ),
        text: title!,
      ),
    );
  }
}
