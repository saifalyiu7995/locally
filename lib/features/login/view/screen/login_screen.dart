import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:locally_app/features/login/provider/login_provider.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/routes/app_navigation_routes.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:locally_app/utils/app_labels.dart';
import 'package:locally_app/utils/helper_functions.dart';
import 'package:locally_app/widgets/appBar/custom_appbar.dart';
import 'package:locally_app/widgets/button/custom_button.dart';
import 'package:locally_app/widgets/textFormField/custom_text_form_field.dart';
import 'package:locally_app/widgets/textFormField/text_form_field.dart';
import 'package:sizer/sizer.dart';

class LoginScreenUI extends ConsumerWidget {
  const LoginScreenUI({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    LoginProvider loginRead = ref.read(loginProvider);
    return Scaffold(
      appBar: MyAppBar(
          title: "",
          onBackPressed: () {
            print("back pressed called");
          }),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: loginRead.loginFormKey,
          child: Container(
            height: MediaQuery.of(context).size.height - 100,
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.0.h),
                Text(
                  "Create Account",
                  style: TextStyle(fontSize: 20.sp),
                ),
                SizedBox(height: 5.0.h),
                const TextFormFieldCustom(
                    labelText: "Enter Name", icon: Icons.person),
                SizedBox(
                  height: 3.0.h,
                ),
                const TextFormFieldCustom(
                    labelText: "Email (Optional)", icon: Icons.person),
                SizedBox(
                  height: 7.0.h,
                ),
                CustomButton(
                  title: "Submit",
                  color: const Color(0xFF064769),
                  fontColor: const Color(0xFFFFFFFF),
                  fontSize: 18,
                  showIcon: false,
                  fontWeight: FontWeight.w300,
                  minSize: Size(72.w, 6.h),
                  onPressed: () {
                    AppNavigation.navigateTo(AppNavRoutes.numberRoute);
                  },
                ),
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
