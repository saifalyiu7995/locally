import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:locally_app/theme/app_colors.dart';
import 'package:sizer/sizer.dart';

class MenuHeader extends StatelessWidget {
  final String name;
  final String workPhrase;
  const MenuHeader({Key? key, required this.name, required this.workPhrase})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 3.h,
            ),
            CircleAvatar(
              backgroundColor: AppColors.borderColor,
              radius: 20,
              child: Center(
                child: Text(
                "ssss",
                  style: const TextStyle(
                    color: AppColors.blueColor1,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            AutoSizeText(
              name,
              style: const TextStyle(
                color: Color(0xff414040),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            AutoSizeText(
              workPhrase,
              style: const TextStyle(
                color: Color(0xff888888),
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
          ],
        ),
      ),
    );
  }
}
