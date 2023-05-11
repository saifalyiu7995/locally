import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:locally_app/features/login/provider/login_provider.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/routes/app_navigation_routes.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:locally_app/utils/app_labels.dart';
import 'package:locally_app/utils/helper_functions.dart';
import 'package:locally_app/widgets/button/custom_button.dart';
import 'package:locally_app/widgets/textFormField/custom_text_form_field.dart';
import 'package:sizer/sizer.dart';


class LoginScreenUI extends ConsumerWidget {
  const LoginScreenUI({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    LoginProvider loginRead = ref.read(loginProvider);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
            child: Form(
          key: loginRead.loginFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: SvgPicture.asset(
                        '${AppConstant.assetImages}logo.svg',
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  '${AppConstant.assetImages}btms.svg',
                  height: 1.h,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: AutoSizeText(
                    appLabels["loginScreen"]["welcomeToTaqa"].toString(),
                    maxLines: 1,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                        fontFamily: "Roboto-Light")),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: AutoSizeText(
                  appLabels["loginScreen"]["loginToContinue"].toString(),
                  maxLines: 1,
                  style: const TextStyle(
                      fontSize: 10,
                      color: Color(0xFF94A2BE),
                      fontFamily: "Roboto-Light"),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      appLabels["loginScreen"]["emailPhone"].toString(),
                      maxLines: 1,
                      style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFFFFFFFF),
                          fontFamily: "Roboto-Light"),
                    ),
                    SizedBox(
                      height: 0.8.h,
                    ),
                    CustomTextFormField(
                      context: context,
                      autoValidateMode: AutovalidateMode.onUserInteraction,
                      controller: loginRead.emailController,
                      isFilled: false,
                      leadingIcon: Transform.scale(
                        scale: 0.4,
                        child: SvgPicture.asset(
                          '${AppConstant.assetImages}user.svg',
                          height: 14,
                        ),
                      ),
                      hintFont: 10,
                      labelText:
                          appLabels["loginScreen"]["emailPhone"].toString(),
                      inputType: TextInputType.emailAddress,
                      validator: (value) => validatorEmail(value: value),
                      borderRadius: 2,
                      borderWidth: 0.8,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CustomButton(
                      title: appLabels["common"]["login"].toString(),
                      color: const Color(0xFF00ACE8),
                      fontColor: const Color(0xFFFFFFFF),
                      fontSize: 12,
                      showIcon: false,
                      fontWeight: FontWeight.w500,
                      minSize: Size(72.w, 5.h),
                      onPressed: () {
                        // AppNavigation.navigateTo(AppNavRoutes.homeRoute);
                        if (loginRead.loginFormKey.currentState!.validate()) {
                          // loginRead.userSignIn();
                        }
                      },
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    GestureDetector(
                      onTap: () =>
                          AppNavigation.navigateTo(AppNavRoutes.webViewScreen),
                      child: const AutoSizeText(
                        "Forgot Password?",
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFFFFFFFF),
                            fontFamily: "Roboto-Light"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
