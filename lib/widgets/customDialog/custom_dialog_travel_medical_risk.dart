// import 'dart:async';

// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:taqa_btms_app/routes/app_navigation.dart';
// import 'package:taqa_btms_app/theme/app_colors.dart';
// import 'package:taqa_btms_app/widgets/risk/risk.dart';

// showTravelAndMedicalRiskDialog(BuildContext context) {
//   showDialog(
//     barrierDismissible: false,
//     useSafeArea: false,
//     context: AppNavigation.currentContext,
//     builder: (context) {
//       return const TravelAndMedicalRiskDialog();
//     },
//   );
// }

// class TravelAndMedicalRiskDialog extends StatefulWidget {
//   const TravelAndMedicalRiskDialog({
//     super.key,
//   });

//   @override
//   TravelAndMedicalRiskDialogState createState() =>
//       TravelAndMedicalRiskDialogState();
// }

// class TravelAndMedicalRiskDialogState
//     extends State<TravelAndMedicalRiskDialog> {
//   late Timer timer;

//   @override
//   void initState() {
//     super.initState();
//     startTimer();
//   }

//   @override
//   void dispose() {
//     timer.cancel();
//     super.dispose();
//   }

//   void startTimer() {
//     timer = Timer(const Duration(minutes: 1), () {
//       Navigator.of(context).pop();
//     });
//   }

//   void cancelTimer() {
//     timer.cancel();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       scrollable: true,
//       contentPadding: const EdgeInsets.all(10),
//       content: Container(
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.all(
//             Radius.circular(20),
//           ),
//         ),
//         child: SizedBox(
//           height: 22.h,
//           width: 60.w,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const AutoSizeText(
//                     "Travel Risk",
//                     style: TextStyle(
//                       color: Color(0xff3E3E3E),
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       cancelTimer();
//                       Navigator.of(context).pop();
//                     },
//                     child: const Icon(
//                       Icons.cancel,
//                       color: AppColors.blackColor,
//                       size: 15,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 2.h,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const RiskWidget(
//                     riskType: "TR",
//                     value: 1,
//                     riskName: "Insignificant",
//                   ),
//                   SizedBox(
//                     width: 0.5.w,
//                   ),
//                   const RiskWidget(
//                     riskType: "TR",
//                     value: 2,
//                     riskName: "Low",
//                   ),
//                   SizedBox(
//                     width: 0.5.w,
//                   ),
//                   const RiskWidget(
//                     riskType: "TR",
//                     value: 3,
//                     riskName: "Medium",
//                   ),
//                   SizedBox(
//                     width: 0.5.w,
//                   ),
//                   const RiskWidget(
//                     riskType: "TR",
//                     value: 4,
//                     riskName: "High",
//                   ),
//                   SizedBox(
//                     width: 0.5.w,
//                   ),
//                   const RiskWidget(
//                     riskType: "TR",
//                     value: 5,
//                     riskName: "Extreme",
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 2.h,
//               ),
//               const AutoSizeText(
//                 "Medical Risk",
//                 style: TextStyle(
//                   color: Color(0xff3E3E3E),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               SizedBox(
//                 height: 2.h,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   const RiskWidget(
//                     riskType: "MR",
//                     value: 1,
//                     riskName: "Low",
//                   ),
//                   SizedBox(
//                     width: 0.5.w,
//                   ),
//                   const RiskWidget(
//                     riskType: "MR",
//                     value: 2,
//                     riskName: "Medium",
//                   ),
//                   SizedBox(
//                     width: 0.5.w,
//                   ),
//                   const RiskWidget(
//                     riskType: "MR",
//                     value: 3,
//                     riskName: "High",
//                   ),
//                   SizedBox(
//                     width: 0.5.w,
//                   ),
//                   const RiskWidget(
//                     riskType: "MR",
//                     value: 4,
//                     riskName: "Extreme",
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 2.h,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
