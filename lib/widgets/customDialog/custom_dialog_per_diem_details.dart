// import 'dart:async';

// import 'package:auto_size_text/auto_size_text.dart';

// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:taqa_btms_app/routes/app_navigation.dart';
// import 'package:taqa_btms_app/theme/app_colors.dart';

// showPerDiemAllowanceDetailsDialog(BuildContext context) {
//   showDialog(
//     barrierDismissible: false,
//     useSafeArea: false,
//     context: AppNavigation.currentContext,
//     builder: (context) {
//       return const PerDiemDetailsDialog();
//     },
//   );
// }

// class PerDiemDetailsDialog extends StatefulWidget {
//   const PerDiemDetailsDialog({Key? key}) : super(key: key);

//   @override
//   PerDiemDetailsDialogState createState() => PerDiemDetailsDialogState();
// }

// class PerDiemDetailsDialogState extends State<PerDiemDetailsDialog> {
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
//       contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//       content: Container(
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.all(
//             Radius.circular(20),
//           ),
//         ),
//         child: SizedBox(
//           height: 24.h,
//           width: 60.w,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: GestureDetector(
//                   onTap: () {
//                     cancelTimer();
//                     Navigator.of(context).pop();
//                   },
//                   child: const Icon(
//                     Icons.cancel,
//                     color: AppColors.blackColor,
//                     size: 15,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 0.5.h,
//               ),
//               const Align(
//                 alignment: Alignment.center,
//                 child: AutoSizeText(
//                   "Per Diem Allowance Details",
//                   style: TextStyle(
//                     color: Color(0xff3E3E3E),
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 2.h,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "Grade",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 1.h,
//                       ),
//                       const Text(
//                         "Grade 1-2",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400),
//                       ),
//                       const Text(
//                         "Grade 3-4",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       const Text(
//                         "Grade 5-6",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       const Text(
//                         "Grade 7-8",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       const Text(
//                         "Grade 9",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       SizedBox(
//                         height: 1.h,
//                       ),
//                     ],
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "Outside",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 1.h,
//                       ),
//                       const Text(
//                         "1900",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       const Text(
//                         "2100",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       const Text(
//                         "2500",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       const Text(
//                         "3000",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       const Text(
//                         "3000",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       SizedBox(
//                         height: 1.h,
//                       ),
//                     ],
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         "Inside",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       SizedBox(
//                         height: 1.h,
//                       ),
//                       const Text(
//                         "1800",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       const Text(
//                         "2000",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       const Text(
//                         "2200",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       const Text(
//                         "2400",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       const Text(
//                         "2400",
//                         style: TextStyle(
//                             color: Color(0xFF3E3E3E),
//                             fontSize: 16,
//                             fontWeight: FontWeight.normal),
//                       ),
//                       SizedBox(
//                         height: 1.h,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
