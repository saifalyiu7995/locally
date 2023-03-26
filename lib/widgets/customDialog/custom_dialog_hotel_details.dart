// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import 'package:taqa_btms_app/routes/app_navigation.dart';
// import 'package:taqa_btms_app/theme/app_colors.dart';
// import 'package:taqa_btms_app/utils/app_constant.dart';
// import 'package:sizer/sizer.dart';

// showHotelDetailsDialog(
//   BuildContext context,
//   String hotelName,
//   String hotelDetails,
// ) {
//   showDialog(
//     context: AppNavigation.currentContext,
//     builder: (context) {
//       return AlertDialog(
//         scrollable: true,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         contentPadding: EdgeInsets.zero,
//         content: Column(
//           children: [
//             Container(
//               height: 50,
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                   color: Color(0xFFF9F9F9),
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(20),
//                       topRight: Radius.circular(20))),
//               child: Row(
//                 children: [
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   Transform.scale(
//                     scale: 1.5,
//                     child: SvgPicture.asset(
//                       '${AppConstant.assetImages}bedroom.svg',
//                       height: 14,
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 20),
//                     child: Text(
//                       "Hotel Detail",
//                       style: TextStyle(
//                           fontSize: 14,
//                           color: Color(0xff373737),
//                           fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                   const Expanded(child: SizedBox()),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                       top: 15,
//                       right: 15,
//                     ),
//                     child: Align(
//                       alignment: Alignment.topRight,
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: const Icon(
//                           Icons.cancel,
//                           color: AppColors.blackColor,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: SizedBox(
//                 width: 100.w,
//                 height: 30.h,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     AutoSizeText(hotelName,
//                         style: const TextStyle(
//                             fontSize: 14,
//                             color: Color(0xff373737),
//                             fontWeight: FontWeight.w500)),
//                     const SizedBox(
//                       height: 15,
//                     ),
//                     AutoSizeText(hotelDetails,
//                         maxLines: 10,
//                         style: const TextStyle(
//                             fontSize: 11,
//                             color: Color(0xff373737),
//                             fontWeight: FontWeight.w400)),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       );
//     },
//   );
// }
