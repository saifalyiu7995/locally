import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:locally_app/theme/app_colors.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:sizer/sizer.dart';

class BottomNavBarTab extends StatelessWidget {
  final String? imgPath;
  final String? title;
  final bool? selected;
  final VoidCallback? onTap;

  const BottomNavBarTab({
    required this.imgPath,
    required this.title,
    required this.onTap,
    required this.selected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: 70,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: selected! ? 4 : 0,
              color: selected! ? AppColors.blueColor : Colors.white,
            ),
          ),
        ),
        child: Tab(
          icon: SvgPicture.asset(
            '${AppConstant.assetImages}$imgPath',
            height: 2.5.h,
          ),
          text: title!,
        ),
      ),
    );
  }
}
