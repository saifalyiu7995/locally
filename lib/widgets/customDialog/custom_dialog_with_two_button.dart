// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:taqa_btms_app/routes/app_navigation.dart';
// import 'package:taqa_btms_app/theme/app_colors.dart';
// import 'package:taqa_btms_app/widgets/button/custom_button.dart';

// showCustomDialogTwoButton(
//     BuildContext context,
//     String? heading,
//     String? message,
//     String? buttonText1,
//     String? buttonText2,
//     String? image,
//     VoidCallback? onTap) {
//   showDialog(
//     context: AppNavigation.currentContext,
//     builder: (context) {
//       return AlertDialog(
//         scrollable: true,
//         contentPadding: EdgeInsets.zero,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12.0),
//         ),
//         content: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(
//                 10,
//               ),
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Icon(
//                     Icons.cancel,
//                     color: AppColors.blackColor,
//                   ),
//                 ),
//               ),
//             ),
//             Image(
//               image: AssetImage(image!),
//               height: 90,
//             ),
//             SizedBox(
//               height: 2.54.h,
//             ),
//             Text(
//               heading!,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 17,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 1.h),
//             Text(
//               message!,
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 14,
//               ),
//             ),
//             SizedBox(height: 1.h),
//           ],
//         ),
//         actions: [
//           SizedBox(
//             height: 40,
//             width: 400,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 CustomButton(
//                   title: buttonText1!,
//                   fontSize: 12,
//                   fontWeight: FontWeight.normal,
//                   color: AppColors.secondaryColor,
//                   fontColor: AppColors.whiteColor,
//                   minSize: const Size(130, 40),
//                   onPressed: () {
//                     AppNavigation.goBack();
//                   },
//                 ),
//                 CustomButton(
//                   title: buttonText2!,
//                   fontSize: 12,
//                   fontWeight: FontWeight.normal,
//                   color: AppColors.redColor,
//                   fontColor: AppColors.whiteColor,
//                   minSize: const Size(130, 40),
//                   onPressed: onTap ??
//                       () {
//                         AppNavigation.goBack();
//                         AppNavigation.goBack();
//                       },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       );
//     },
//   );
// }
