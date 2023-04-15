import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/routes/app_navigation_routes.dart';
import 'package:locally_app/widgets/appBar/custom_appbar.dart';
import 'package:sizer/sizer.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "", onBackPressed: () {}),
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
                Text(
                  "Verify Your Number",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 1.0.h),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Color(0xFF6B829D),
                    ),
                    children: [
                      TextSpan(text: 'Code sent you to '),
                      TextSpan(
                          text: '03337699706 ',
                          style: TextStyle(color: Color(0xFF064769))),
                    ],
                  ),
                ),
                SizedBox(height: 5.0.h),
                OtpTextField(
                  numberOfFields: 6,
                  filled: true,
                  fillColor: const Color(0xFFEDF4F8),
                  fieldWidth: 12.w,
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  onSubmit: (String verificationCode) {
                    AppNavigation.navigateTo(AppNavRoutes.locationRoute);
                    // showDialog(
                    //     context: context,
                    //     builder: (context) {
                    //       return AlertDialog(
                    //         title: Text("Verification Code"),
                    //         content: Text('Code entered is $verificationCode'),
                    //       );
                    //     });
                  }, // end onSubmit
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn't receive code?",
                        style: TextStyle(color: Color(0xFF6B829D)),
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      const Text("Please wait 00:28",
                          style: TextStyle(color: Color(0xFF064769))),
                    ],
                  ),
                )
                // const TextFormFieldCustom(
                //     labelText: "Enter Name", icon: Icons.person),
                // SizedBox(
                //   height: 3.0.h,
                // ),
                // const TextFormFieldCustom(
                //     labelText: "Email (Optional)", icon: Icons.person),
                // SizedBox(
                //   height: 7.0.h,
                // ),
                // CustomButton(
                //   title: "Submit",
                //   color: const Color(0xFF064769),
                //   fontColor: const Color(0xFFFFFFFF),
                //   fontSize: 18,
                //   showIcon: false,
                //   fontWeight: FontWeight.w300,
                //   minSize: Size(72.w, 8.h),
                //   onPressed: () {
                //     print("clicked");
                //   },
                // )
              ],
            ),
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     // SizedBox(
            //     //   height: 10.h,
            //     // ),
            //     // Column(
            //     //   children: [
            //     //     const SizedBox(
            //     //       height: 10,
            //     //     ),
            //     //     Padding(
            //     //       padding: const EdgeInsets.only(
            //     //           left: 10, right: 10, bottom: 10),
            //     //       child: SvgPicture.asset(
            //     //         '${AppConstant.assetImages}logo.svg',
            //     //       ),
            //     //     ),
            //     //   ],
            //     // ),
            //     // Align(
            //     //   alignment: Alignment.center,
            //     //   child: SvgPicture.asset(
            //     //     '${AppConstant.assetImages}btms.svg',
            //     //     height: 1.h,
            //     //   ),
            //     // ),
            //     // SizedBox(
            //     //   height: 10.h,
            //     // ),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 15),
            //       child: AutoSizeText(
            //         appLabels["loginScreen"]["loginToContinue"].toString(),
            //         maxLines: 1,
            //         style: const TextStyle(
            //             fontSize: 10,
            //             color: Color(0xFF94A2BE),
            //             fontFamily: "Roboto-Light"),
            //       ),
            //     ),
            //     SizedBox(
            //       height: 3.h,
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 15, right: 15),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           // AutoSizeText(
            //           //   appLabels["loginScreen"]["emailPhone"].toString(),
            //           //   maxLines: 1,
            //           //   style: const TextStyle(
            //           //       fontSize: 11,
            //           //       color: Color(0xFFFFFFFF),
            //           //       fontFamily: "Roboto-Light"),
            //           // ),
            //           SizedBox(
            //             height: 0.8.h,
            //           ),
            //           CustomTextFormField(
            //             context: context,
            //             autoValidateMode: AutovalidateMode.onUserInteraction,
            //             controller: loginRead.emailController,
            //             isFilled: false,
            //             leadingIcon: Transform.scale(
            //               scale: 0.4,
            //               child: SvgPicture.asset(
            //                 '${AppConstant.assetImages}user.svg',
            //                 height: 14,
            //               ),
            //             ),
            //             hintFont: 10,
            //             labelText:"Enter Name",
            //             inputType: TextInputType.emailAddress,
            //             validator: (value) => validatorEmail(value: value),
            //
            //           ),
            //           CustomTextFormField(
            //             context: context,
            //             // autoValidateMode: AutovalidateMode.onUserInteraction,
            //             controller: loginRead.emailController,
            //             isFilled: false,
            //             leadingIcon: Transform.scale(
            //               scale: 0.4,
            //               child: SvgPicture.asset(
            //                 '${AppConstant.assetImages}user.svg',
            //                 height: 14,
            //               ),
            //             ),
            //             hintFont: 10,
            //             labelText:"Email (Optional)",
            //             inputType: TextInputType.emailAddress,
            //             validator: (value) => validatorEmail(value: value),
            //
            //           ),
            //           SizedBox(
            //             height: 5.h,
            //           ),
            //           CustomButton(
            //             title: appLabels["common"]["login"].toString(),
            //             color: const Color(0xFF00ACE8),
            //             fontColor: const Color(0xFFFFFFFF),
            //             fontSize: 12,
            //             showIcon: false,
            //             fontWeight: FontWeight.w500,
            //             minSize: Size(72.w, 5.h),
            //             onPressed: () {
            //               // AppNavigation.navigateTo(AppNavRoutes.homeRoute);
            //               if (loginRead.loginFormKey.currentState!.validate()) {
            //                 // loginRead.userSignIn();
            //               }
            //             },
            //           ),
            //           SizedBox(
            //             height: 2.h,
            //           ),
            //           GestureDetector(
            //             onTap: () => AppNavigation.navigateTo(
            //                 AppNavRoutes.webViewScreen),
            //             child: const AutoSizeText(
            //               "Forgot Password?",
            //               maxLines: 1,
            //               style: TextStyle(
            //                   fontSize: 11,
            //                   color: Color(0xFFFFFFFF),
            //                   fontFamily: "Roboto-Light"),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
          ),
        ),
      ),
    );
  }
}
