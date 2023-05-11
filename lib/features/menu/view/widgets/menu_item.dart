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
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 5,
          left: 5,
          right: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                iconName == ""
                    ? const SizedBox.shrink()
                    : SvgPicture.asset(
                        AppConstant.assetImages + iconName,
                        height: 2.81.h,
                      ),
                iconName == ""
                    ? const SizedBox.shrink()
                    : SizedBox(
                        width: 6.w,
                      ),
                AutoSizeText(
                  menuItemTitle,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: isLogout
                          ? const Color(0xffA72622)
                          : const Color(0xff393939)),
                ),
              ],
            ),
            isLogout
                ? const SizedBox.shrink()
                : SvgPicture.asset('${AppConstant.assetImages}menu_arrow.svg'),
          ],
        ),
      ),
    );
  }
}
