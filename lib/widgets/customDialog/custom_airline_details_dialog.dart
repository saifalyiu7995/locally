// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
// import 'package:taqa_btms_app/routes/app_navigation.dart';

// import 'package:taqa_btms_app/theme/app_colors.dart';
// import 'package:taqa_btms_app/utils/app_constant.dart';

// showAirlineDetailsDialog({
//   required BuildContext context,
//   required String html,
// }) {
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
//                       '${AppConstant.assetImages}plane_outline.svg',
//                       height: 14,
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 20),
//                     child: Text(
//                       "Airline Detail",
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
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//               child: HtmlWidget(html),
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }
