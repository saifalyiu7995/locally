import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locally_app/theme/app_colors.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:locally_app/widgets/button/custom_button.dart';
import 'package:sizer/sizer.dart';

class DefaultErrorScreen extends ConsumerWidget {
  final VoidCallback onPressed;
  const DefaultErrorScreen({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: SizedBox(
          height: 100.h,
          child: Stack(
            children: [
              // const Positioned(left: 10, top: 40, child: BackButtonWidget()),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      '${AppConstant.assetImages}warning_icon.svg',
                      height: 10.h,
                      color: AppColors.fontColorGrey,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    const AutoSizeText(
                      AppConstant.exceptionMessage,
                      style: TextStyle(
                        color: AppColors.fontColorGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    SizedBox(
                      width: 30.w,
                      child: CustomButton(
                        title: "Try Again",
                        color: AppColors.blueColorPercentIndicator,
                        fontColor: const Color(0xFFFFFFFF),
                        fontSize: 14,
                        showIcon: false,
                        fontWeight: FontWeight.w500,
                        minSize: Size(40.w, 5.h),
                        onPressed: () {
                          onPressed();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
