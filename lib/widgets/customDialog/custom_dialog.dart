// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:sizer/sizer.dart';
// import 'package:taqa_btms_app/routes/app_navigation.dart';
// import 'package:taqa_btms_app/theme/app_colors.dart';
// import 'package:taqa_btms_app/utils/app_constant.dart';
// import 'package:taqa_btms_app/widgets/button/custom_button.dart';
// import 'package:taqa_btms_app/widgets/customDialog/custom_dialog_with_two_button.dart';
// import 'package:taqa_btms_app/widgets/customLoader/custom_loader_widget.dart';
// import 'package:taqa_btms_app/widgets/customLoader/custom_login_loader_widget.dart';

// showCustomDialogOneButton(BuildContext context, String? heading,
//     String? message, String? buttonText, String? image) {
//   showDialog(
//     context: AppNavigation.currentContext,
//     builder: (context) {
//       return AlertDialog(
//         scrollable: true,
//         content: Padding(
//           padding: const EdgeInsets.only(left: 20, right: 20),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(
//                   top: 20,
//                 ),
//                 child: Align(
//                   alignment: Alignment.topRight,
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: const Icon(
//                       Icons.cancel,
//                       color: AppColors.blackColor,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 2.54.h,
//               ),
//               //Image(image: Image.asset('${AppConstant.assetImages}flat_color.svg'))
//               // SvgPicture.asset(
//               //   '${AppConstant.assetImages}FlatColor.svg',
//               // ),
//               SvgPicture.asset(image!),
//               SizedBox(
//                 height: 2.54.h,
//               ),
//               Text(
//                 heading!,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 15,
//                 ),
//               ),
//               SizedBox(height: 1.h),
//               Text(
//                 message!,
//                 textAlign: TextAlign.center,
//                 style: const TextStyle(
//                   fontSize: 10,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         actions: [
//           CustomButton(
//               title: buttonText!,
//               fontSize: 12,
//               fontWeight: FontWeight.normal,
//               color: AppColors.secondaryColor,
//               fontColor: AppColors.whiteColor,
//               minSize: const Size(130, 40),
//               onPressed: () => showCustomDialogTwoButton(
//                   context,
//                   "Are you sure?",
//                   "Please review and make sure all the required data is completed. By submitting this form, you are agreeing to sharing of the information provided by you with the relevant travel management company that would be booking your travel.",
//                   "Yes, i Agree",
//                   "No, I am not sure.",
//                   '${AppConstant.assetImages}areYouSure.svg',
//                   () {})
//               //  Navigator.pop(context),
//               ),
//         ],
//       );
//     },
//   );
// }

import 'package:flutter/material.dart';
import 'package:locally_app/routes/app_navigation.dart';
import 'package:locally_app/widgets/customLoader/custom_loader_widget.dart';
import 'package:locally_app/widgets/customLoader/custom_login_loader_widget.dart';

void showLoadingIndicator() => showDialog(
    context: AppNavigation.currentContext,
    barrierDismissible: false,
    builder: (BuildContext context) => WillPopScope(
        onWillPop: () async => false, child: const CustomLoadingWidget()));

void showLoginLoadingIndicator() => showDialog(
    context: AppNavigation.currentContext,
    barrierDismissible: false,
    builder: (BuildContext context) => WillPopScope(
        onWillPop: () async => false, child: const CustomLoginLoadingWidget()));

void hideOpenDialog() => AppNavigation.goBack();
