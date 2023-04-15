import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/routes/app_navigation_routes.dart';
import 'package:locally_app/widgets/appBar/custom_appbar.dart';
import 'package:locally_app/widgets/button/custom_button.dart';
import 'package:locally_app/widgets/headingText/headingtext_widget.dart';
import 'package:locally_app/widgets/textFormField/text_form_field.dart';
import 'package:sizer/sizer.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:MyAppBar(title: "", onBackPressed: (){
        print("back pressed called");
      }),
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
                // Text(
                //   "Create Account",
                //   style: TextStyle(fontSize: 20.sp),
                // ),
              const HeadingText(textValue: "Welcome"),
                SizedBox(height: 3.0.h),
                const Text("Enter your phone number here" , style: TextStyle(color: Color(0xFF6B829D)),),
                SizedBox(
                  height: 3.0.h,
                ),
                IntlPhoneField(
                  decoration:  InputDecoration(
                    labelText: 'Phone Number',
                    filled: true,
                    fillColor: const Color(0xFFEDF4F8),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                  ),
                  ),
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                ),
                SizedBox(height: 5.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle( color: Color(0xFF6B829D)),
                        children: [
                          TextSpan(text: 'By signing up you are agreed to the '),
                          TextSpan(text: 'Terms of ', style: TextStyle(color: Color(0xFF064769))),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(color:Color(0xFF6B829D)),
                        children: [
                          TextSpan(text: 'Service ' , style: TextStyle(color: Color(0xFF064769))),
                          TextSpan(text: 'and '),
                          TextSpan(text: 'Privacy Policy' , style: TextStyle(color: Color(0xFF064769))),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.0.h),
                CustomButton(
                  title: "Submit",
                  color: const Color(0xFF064769),
                  fontColor: const Color(0xFFFFFFFF),
                  fontSize: 18,
                  showIcon: false,
                  fontWeight: FontWeight.w300,
                  minSize: Size(72.w, 8.h),
                  onPressed: () {
                    AppNavigation.navigateTo(AppNavRoutes.otpRoute);
                  },
                )
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
