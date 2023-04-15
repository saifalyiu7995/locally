import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/routes/app_navigation_routes.dart';
import 'package:locally_app/widgets/button/custom_button.dart';
import 'package:sizer/sizer.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Shapes.png"), fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          child: Form(
            // key: loginRead.loginFormKey,
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          print("skip called");
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              color: Color(0xFFA72622),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0.h),
                  Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset("assets/images/locallylogo.svg")),
                  const Spacer(),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  CustomButton(
                    title: "Continue with phone number",
                    color: const Color(0xFF064769),
                    fontColor: const Color(0xFFFFFFFF),
                    fontSize: 18,
                    showIcon: false,
                    fontWeight: FontWeight.w300,
                    minSize: Size(72.w, 8.h),
                    onPressed: () {
                      AppNavigation.navigateTo(AppNavRoutes.loginRoute);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: const Color(0xFFB2C0CE),
                            margin: const EdgeInsets.only(right: 10),
                          ),
                        ),
                        const Text(
                          "or",
                          style: TextStyle(
                            color: Color(0xFF6B829D),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: const Color(0xFFB2C0CE),
                            margin: const EdgeInsets.only(left: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    title: "Continue with facebook",
                    color: const Color(0xFF1773EB),
                    fontColor: const Color(0xFFFFFFFF),
                    fontSize: 18,
                    showIcon: false,
                    fontWeight: FontWeight.w300,
                    minSize: Size(72.w, 8.h),
                    onPressed: () {
                      print("clicked");
                    },
                  ),
                  SizedBox(
                    height: 2.0.h,
                  ),
                  CustomButton(
                    title: "Continue with google",
                    color: const Color(0xFFFFFFFF),
                    fontColor: const Color(0xFF041421),
                    fontSize: 18,
                    showIcon: false,
                    fontWeight: FontWeight.w300,
                    minSize: Size(72.w, 8.h),
                    onPressed: () {
                      print("clicked");
                    },
                  ),
                  SizedBox(
                    height: 2.0.h,
                  ),

                  CustomButton(
                    title: "Continue with apple",
                    color: const Color(0xFF041421),
                    fontColor: const Color(0xFFFFFFFF),
                    fontSize: 18,
                    showIcon: false,
                    fontWeight: FontWeight.w300,
                    // showOutline: true,
                    // outlineWidth: 10,
                    minSize: Size(72.w, 8.h),
                    onPressed: () {
                      print("clicked");
                    },
                  ),

                  // const Text("Please wait 00:28",
                  //     style: TextStyle(color: Color(0xFF064769),),),
                  SizedBox(height: 3.0.h),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: const Color(0xFF041421),
                              fontSize: 12.sp,
                            ),
                            children: const [
                              TextSpan(
                                  text: 'By signing up you are agree to  '),
                              TextSpan(
                                  text: 'the Terms of ',
                                  style: TextStyle(color: Color(0xFFA52827))),
                            ],
                          ),
                        ),
                        // and Privacy Policy
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: const Color(0xFFA52827),
                              fontSize: 12.sp,
                            ),
                            children: const [
                              TextSpan(text: 'Service  '),
                              TextSpan(
                                text: 'and ',
                                style: TextStyle(
                                  color: Color(0xFF041421),
                                ),
                              ),
                              TextSpan(text: 'Privacy Policy'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0.h,
                  ),
                ],
              ),

            ),
          ),
        ),
      ),
    );
  }
}
