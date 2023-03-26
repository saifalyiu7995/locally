// import 'package:flutter/material.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:sizer/sizer.dart';
// import 'package:taqa_btms_app/features/viewOptions/view/widgets/back_button.dart';
// import 'package:taqa_btms_app/theme/app_colors.dart';

// class StepperHeader extends StatelessWidget {
//   const StepperHeader(
//       {Key? key,
//       required this.currentTitle,
//       required this.nextTitle,
//       required this.step,
//       required this.totalStep,
//       this.willPop,
//       this.isBack = true})
//       : super(key: key);

//   final int step;
//   final int totalStep;
//   final String currentTitle;
//   final String nextTitle;
//   final bool isBack;
//   final VoidCallback? willPop;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: isBack
//           ? MediaQuery.of(context).size.height < 700
//               ? 21.h
//               : 18.h
//           : MediaQuery.of(context).size.height < 700
//               ? 15.h
//               : 13.h,
//       color: AppColors.backgroundColorblue,
//       width: double.infinity,
//       padding: const EdgeInsets.symmetric(
//         horizontal: 10,
//         vertical: 10,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           isBack
//               ? SizedBox(
//                   height: 1.h,
//                 )
//               : const SizedBox.shrink(),
//           isBack
//               ? BackButtonWidget(
//                   willPop: willPop,
//                 )
//               : const SizedBox.shrink(),
//           SizedBox(
//             height: 1.5.h,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(
//                 width: 1.w,
//               ),
//               CircularPercentIndicator(
//                 radius: 25,
//                 lineWidth: 5.0,
//                 percent: step * ((100 / totalStep) * 0.01),
//                 backgroundColor: AppColors.greyColor,
//                 animation: true,
//                 circularStrokeCap: CircularStrokeCap.round,
//                 center: CircleAvatar(
//                   backgroundColor: AppColors.whiteColor,
//                   radius: 22,
//                   child: Center(
//                     child: Text(
//                       "0 $step",
//                       style: const TextStyle(
//                         color: AppColors.blueColorPercentIndicator,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 17,
//                       ),
//                     ),
//                   ),
//                 ),
//                 progressColor: AppColors.blueColorPercentIndicator,
//               ),
//               SizedBox(
//                 width: 3.w,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     currentTitle,
//                     style: const TextStyle(
//                         color: AppColors.blackColor,
//                         fontWeight: FontWeight.w500,
//                         fontFamily: "Grold-Bold",
//                         fontSize: 16),
//                   ),
//                   Text(
//                     nextTitle != "" ? "Next : $nextTitle" : "",
//                     style: const TextStyle(
//                         color: AppColors.fontColorGreyish,
//                         fontSize: 14,
//                         fontFamily: "Roboto-Light",
//                         fontWeight: FontWeight.w400),
//                   )
//                 ],
//               ),
//             ],
//           ),
//           Align(
//             alignment: Alignment.bottomRight,
//             child: Text(
//               "$step /$totalStep  Steps",
//               style: const TextStyle(color: AppColors.blackColor, fontSize: 14),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
