import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locally_app/widgets/appBar/custom_appbar.dart';
import 'package:locally_app/widgets/button/custom_button.dart';
import 'package:sizer/sizer.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          title: "",
          onBackPressed: () {
            print("back pressed called");
          }),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          // key: loginRead.loginFormKey,
          child: Container(
            height: MediaQuery.of(context).size.height - 100,
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.0.h),
                SvgPicture.asset("assets/images/location_icon.svg"),
                SizedBox(height: 2.0.h),
                Text(
                  "Allow Access to location",
                  style: TextStyle(fontSize: 20.sp),
                ),
                SizedBox(height: 2.0.h),
                Text(
                  "Locally needs your location to show you ",
                  style: TextStyle(
                      fontSize: 12.sp, color: const Color(0xFF6B829D)),
                ),
                Text(
                  " available options in your area ",
                  style: TextStyle(
                      fontSize: 12.sp, color: const Color(0xFF6B829D)),
                ),
                const Spacer(),
                CustomButton(
                  title: "Allow Location Access",
                  color: const Color(0xFF064769),
                  fontColor: const Color(0xFFFFFFFF),
                  fontSize: 18,
                  showIcon: false,
                  fontWeight: FontWeight.w300,
                  minSize: Size(72.w, 8.h),
                  onPressed: () {
                    print("clicked");
                  },
                ),
                SizedBox(height: 2.0.h),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or Enter my location",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF064769)),
                  ),
                ),
                SizedBox(height: 2.0.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
