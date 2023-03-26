// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:sizer/sizer.dart';
// import 'package:taqa_btms_app/routes/app_navigation.dart';
// import 'package:taqa_btms_app/theme/app_colors.dart';

// showCustomDialogMessage(
//     BuildContext context, String? heading, String? message, String? image) {
//   showDialog(
//     context: AppNavigation.currentContext,
//     builder: (context) {
//       return MyDialog(
//         heading: heading,
//         message: message,
//         image: image,
//       );
//     },
//   );
// }

// class MyDialog extends StatefulWidget {
//   final String? heading;
//   final String? message;
//   final String? image;
//   const MyDialog({
//     super.key,
//     this.heading,
//     this.image,
//     this.message,
//   });

//   @override
//   MyDialogState createState() => MyDialogState();
// }

// class MyDialogState extends State<MyDialog> {
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
//     timer = Timer(const Duration(seconds: 3), () {
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
//       contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       content: Container(
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.all(
//             Radius.circular(20),
//           ),
//         ),
//         child: Column(
//           children: [
//             Align(
//               alignment: Alignment.topRight,
//               child: GestureDetector(
//                 onTap: () {
//                   cancelTimer();
//                   Navigator.of(context).pop();
//                 },
//                 child: const Icon(
//                   Icons.cancel,
//                   color: AppColors.blackColor,
//                   size: 18,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 1.54.h,
//             ),
//             SvgPicture.asset(widget.image.toString()),
//             SizedBox(
//               height: 2.54.h,
//             ),
//             Text(
//               widget.heading.toString(),
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 15,
//               ),
//             ),
//             SizedBox(height: 1.h),
//             Text(
//               widget.message.toString(),
//               textAlign: TextAlign.center,
//               style: const TextStyle(
//                 fontSize: 10,
//               ),
//             ),
//             SizedBox(
//               height: 2.54.h,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
