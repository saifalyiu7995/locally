import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:sizer/sizer.dart';


class MenuItemWidget extends StatelessWidget {
  final String iconName;
  final String menuItemTitle;
  final bool isLogout;
  final Function() onTap;
  const MenuItemWidget({
    Key? key,
    required this.iconName,
    required this.menuItemTitle,
    this.isLogout = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SvgPicture.asset(
            AppConstant.assetImages + iconName,
            height: 2.81.h,
          ),
          SizedBox(
            width: 6.w,
          ),
          AutoSizeText(
            menuItemTitle,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isLogout
                    ? const Color(0xffE00000)
                    : const Color(0xff393939)),
          ),
        ],
      ),
    );
  }
}
