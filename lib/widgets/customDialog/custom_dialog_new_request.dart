// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:dotted_line/dotted_line.dart';
// import 'package:external_app_launcher/external_app_launcher.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:intl/intl.dart';
// import 'package:taqa_btms_app/features/newRequest/provider/add_itinerary_provider.dart';
// import 'package:taqa_btms_app/features/newRequest/provider/new_request_provider.dart';
// import 'package:taqa_btms_app/features/newRequest/provider/new_request_step_two_provider.dart';
// import 'package:taqa_btms_app/routes/app_navigation.dart';
// import 'package:taqa_btms_app/theme/app_colors.dart';
// import 'package:sizer/sizer.dart';
// import 'package:taqa_btms_app/utils/app_constant.dart';
// import 'package:taqa_btms_app/widgets/bottomSheet/bottom_sheet.dart';
// import 'package:taqa_btms_app/widgets/button/custom_button.dart';

// showNewRequestDialog() {
//   showDialog(
//     context: AppNavigation.currentContext,
//     builder: (context) {
//       return Dialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12.0),
//         ),
//         child: Consumer(builder: (context, ref, child) {
//           AddItineraryProvider itineraryWatch = ref.read(addItineraryProvider);

//           NewRequestStepTwoProvider newRequestStepTwoWatch =
//               ref.read(newRequestStepTwoProvider);
//           return SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container(
//                   height: 50,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                       color: Color(0xFFF9F9F9),
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(20),
//                           topRight: Radius.circular(20))),
//                   child: Row(
//                     children: [
//                       const Padding(
//                         padding: EdgeInsets.only(left: 20),
//                         child: Text(
//                           "Summary",
//                           style: TextStyle(
//                               fontSize: 14,
//                               color: Color(0xff373737),
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       const Expanded(child: SizedBox()),
//                       Padding(
//                         padding: const EdgeInsets.only(
//                           top: 15,
//                           right: 15,
//                         ),
//                         child: Align(
//                           alignment: Alignment.topRight,
//                           child: GestureDetector(
//                             onTap: () {
//                               Navigator.pop(context);
//                               print(ref
//                                   .watch(addItineraryProvider)
//                                   .isEditRequest);
//                               print(ref.watch(addItineraryProvider).requestId);
//                               BottomSheetWidget.reviewRequestBottomSheet(
//                                   context: context);
//                             },
//                             child: const Icon(
//                               Icons.cancel,
//                               color: AppColors.blackColor,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       const SizedBox(
//                         height: 15,
//                       ),
//                       NewRequestSummaryDialogWidget(
//                         leftHeading: "Name",
//                         leftValue:
//                             "${ref.watch(newRequestProvider).firstNameController.text} ${ref.watch(newRequestProvider).lastNameController.text}",
//                         rightHeading: "Approver Name",
//                         rightValue:
//                             "${ref.watch(newRequestProvider).approver.title}",
//                       ),
//                       const SizedBox(
//                         height: 15,
//                       ),
//                       NewRequestSummaryDialogWidget(
//                         leftHeading: "Main Trip Purpose",
//                         leftValue:
//                             "${newRequestStepTwoWatch.mainTravelPurpose.title}",
//                         rightHeading: "Sub Trip Purpose",
//                         rightValue:
//                             "${newRequestStepTwoWatch.selectedSubTravelPurpose.map((e) => e.title).toList().join(';')}",
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       NewRequestSummaryDialogWidget(
//                         leftHeading: "Departure Date",
//                         leftValue: itineraryWatch
//                                     .departureDateController.text ==
//                                 ""
//                             ? ""
//                             : DateFormat('yyyy-MM-dd').format(DateTime.parse(
//                                 itineraryWatch.departureDateController.text)),
//                         rightHeading: "Return Date",
//                         rightValue: itineraryWatch.returnDateController.text ==
//                                 ""
//                             ? ""
//                             : DateFormat('yyyy-MM-dd').format(DateTime.parse(
//                                 itineraryWatch.returnDateController.text)),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       NewRequestSummaryDialogWidget(
//                         leftHeading: "Justification",
//                         leftValue: ref
//                             .watch(newRequestProvider)
//                             .approverJustification
//                             .text,
//                         rightHeading: "",
//                         rightValue: "",
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const DottedLine(
//                         dashColor: AppColors.greyColor,
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const AutoSizeText(
//                         "Per Diem Details",
//                         style: TextStyle(
//                             fontSize: 15,
//                             color: AppColors.blackColor,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       NewRequestSummaryDialogWidget(
//                         leftHeading: "Allowance",
//                         leftValue:
//                             "${newRequestStepTwoWatch.perDiemEntitlement.toStringAsFixed(0)}",
//                         rightHeading: "Region",
//                         rightValue:
//                             "${newRequestStepTwoWatch.perDiemAllowanceRegion.title}",
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       NewRequestSummaryDialogWidget(
//                         leftHeading: "Date From",
//                         leftValue: ref
//                             .watch(newRequestProvider)
//                             .perDiemDateFromController
//                             .text,
//                         rightHeading: "Date To",
//                         rightValue: ref
//                             .watch(newRequestProvider)
//                             .perDiemDateToController
//                             .text,
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const DottedLine(
//                         dashColor: AppColors.greyColor,
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const AutoSizeText(
//                         "Companion Details",
//                         style: TextStyle(
//                             fontSize: 15,
//                             color: AppColors.blackColor,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       NewRequestSummaryDialogWidget(
//                         leftHeading: "Title",
//                         leftValue: newRequestStepTwoWatch
//                                 .companionList.isNotEmpty
//                             ? "${newRequestStepTwoWatch.companionList[0].title}"
//                             : "-",
//                         rightHeading: "Name",
//                         rightValue: newRequestStepTwoWatch
//                                 .companionList.isNotEmpty
//                             ? "${newRequestStepTwoWatch.companionList[0].name}"
//                             : "-",
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       NewRequestSummaryDialogWidget(
//                         leftHeading: "Date of Birth",
//                         leftValue:
//                             newRequestStepTwoWatch.companionList.isNotEmpty
//                                 ? newRequestStepTwoWatch
//                                             .companionList[0].dateOfBirth ==
//                                         ""
//                                     ? ""
//                                     : DateFormat('yyyy-MM-dd').format(
//                                         DateTime.parse(newRequestStepTwoWatch
//                                             .companionList[0].dateOfBirth!))
//                                 : "-",
//                         rightHeading: "",
//                         rightValue: "",
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const DottedLine(
//                         dashColor: AppColors.greyColor,
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       itineraryWatch.itineraries.isEmpty
//                           ? const SizedBox.shrink()
//                           : const AutoSizeText(
//                               "Itineraries Details",
//                               style: TextStyle(
//                                   fontSize: 15,
//                                   color: AppColors.blackColor,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       itineraryWatch.itineraries.isEmpty
//                           ? const SizedBox.shrink()
//                           : NewRequestSummaryDialogWidget(
//                               leftHeading: "Mode Of Travel",
//                               leftValue: itineraryWatch.itineraries.isNotEmpty
//                                   ? itineraryWatch.itineraries[0].travelMode
//                                   : "-",
//                               rightHeading: "Travel Type",
//                               rightValue: itineraryWatch.itineraries.isNotEmpty
//                                   ? itineraryWatch.itineraries[0].travelType
//                                   : "-",
//                             ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       itineraryWatch.itineraries.isEmpty
//                           ? const SizedBox.shrink()
//                           : NewRequestSummaryDialogWidget(
//                               leftHeading: "Cost Center",
//                               leftValue: itineraryWatch.itineraries.isNotEmpty
//                                   ? itineraryWatch.itineraries[0].costCentre
//                                   : "-",
//                               rightHeading: "Project Code",
//                               rightValue: itineraryWatch.itineraries.isNotEmpty
//                                   ? itineraryWatch.itineraries[0].projectCode
//                                   : "-",
//                             ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       itineraryWatch.itineraries.isEmpty
//                           ? const SizedBox.shrink()
//                           : NewRequestSummaryDialogWidget(
//                               leftHeading: "From",
//                               leftValue: itineraryWatch.itineraries.isNotEmpty
//                                   ? itineraryWatch.itineraries[0].fromCity
//                                   : "-",
//                               rightHeading: "To",
//                               rightValue: itineraryWatch.itineraries.isNotEmpty
//                                   ? itineraryWatch.itineraries[0].toCity
//                                   : "-",
//                             ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       itineraryWatch.itineraries.isEmpty
//                           ? const SizedBox.shrink()
//                           : NewRequestSummaryDialogWidget(
//                               leftHeading: "Departure Date",
//                               leftValue: itineraryWatch.itineraries.isNotEmpty
//                                   ? itineraryWatch
//                                               .itineraries[0].departureDate ==
//                                           ""
//                                       ? ""
//                                       : DateFormat('yyyy-MM-dd').format(
//                                           DateTime.parse(itineraryWatch
//                                               .itineraries[0].departureDate!))
//                                   : "-",
//                               rightHeading: "Preferred Time",
//                               rightValue: itineraryWatch.itineraries.isNotEmpty
//                                   ? itineraryWatch
//                                       .itineraries[0].departurePreferredTime
//                                   : "-",
//                             ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       itineraryWatch.itineraries.isEmpty
//                           ? const SizedBox.shrink()
//                           : NewRequestSummaryDialogWidget(
//                               leftHeading: "Return Date",
//                               leftValue: itineraryWatch.itineraries.isNotEmpty
//                                   ? itineraryWatch.itineraries[0].returnDate ==
//                                           ""
//                                       ? ""
//                                       : DateFormat('yyyy-MM-dd').format(
//                                           DateTime.parse(itineraryWatch
//                                               .itineraries[0].returnDate!))
//                                   : "-",
//                               rightHeading: "Preferred Time",
//                               rightValue: itineraryWatch.itineraries.isNotEmpty
//                                   ? itineraryWatch
//                                       .itineraries[0].returnPreferredTime
//                                   : "-",
//                             ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const DottedLine(
//                         dashColor: AppColors.greyColor,
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       const AutoSizeText(
//                         "Accommodation Details",
//                         style: TextStyle(
//                             fontSize: 15,
//                             color: AppColors.blackColor,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       itineraryWatch.itineraries.isEmpty
//                           ? const SizedBox.shrink()
//                           : NewRequestSummaryDialogWidget(
//                               leftHeading: "Check In",
//                               leftValue: itineraryWatch
//                                       .itineraries[0].accommodations!.isNotEmpty
//                                   ? DateFormat('yyyy-MM-dd').format(
//                                       DateTime.parse(itineraryWatch
//                                           .itineraries[0]
//                                           .accommodations![0]
//                                           .checkInDate!))
//                                   : "-",
//                               rightHeading: "Check Out",
//                               rightValue: itineraryWatch.itineraries.isNotEmpty
//                                   ? itineraryWatch.itineraries[0]
//                                           .accommodations!.isNotEmpty
//                                       ? DateFormat('yyyy-MM-dd').format(
//                                           DateTime.parse(itineraryWatch
//                                               .itineraries[0]
//                                               .accommodations![0]
//                                               .checkOutDate!))
//                                       : "-"
//                                   : "-",
//                             ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       itineraryWatch.itineraries.isEmpty
//                           ? const SizedBox.shrink()
//                           : NewRequestSummaryDialogWidget(
//                               leftHeading: "Details",
//                               leftValue: itineraryWatch
//                                       .itineraries[0].accommodations!.isNotEmpty
//                                   ? itineraryWatch.itineraries[0]
//                                       .accommodations![0].additionalDetails
//                                   : "-",
//                               rightHeading: "",
//                               rightValue: "",
//                             ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           );
//         }),
//       );
//     },
//   );
// }

// showISOSDialog() {
//   showDialog(
//     context: AppNavigation.currentContext,
//     builder: (context) {
//       return Dialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12.0),
//         ),
//         child: Consumer(
//           builder: (context, ref, child) {
//             AddItineraryProvider itineraryWatch =
//                 ref.read(addItineraryProvider);

//             NewRequestStepTwoProvider newRequestStepTwoWatch =
//                 ref.read(newRequestStepTwoProvider);
//             return SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Container(
//                     height: 50,
//                     width: double.infinity,
//                     decoration: const BoxDecoration(
//                         color: Color(0xFFF9F9F9),
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(20),
//                             topRight: Radius.circular(20))),
//                     child: Row(
//                       children: [
//                         const Padding(
//                           padding: EdgeInsets.only(left: 20),
//                           child: Text(
//                             "Connect With Us",
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 color: Color(0xff373737),
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         const Expanded(child: SizedBox()),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             top: 15,
//                             right: 15,
//                           ),
//                           child: Align(
//                             alignment: Alignment.topRight,
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.pop(context);
//                               },
//                               child: const Icon(
//                                 Icons.cancel,
//                                 color: AppColors.blackColor,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 2,
//                       horizontal: 40,
//                     ),
//                     child: Image(
//                         height: 45,
//                         image:
//                             AssetImage("${AppConstant.assetImages}isos.png")),
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                       vertical: 2,
//                       horizontal: 40,
//                     ),
//                     child: CustomButton(
//                       color: AppColors.secondaryColor,
//                       fontColor: AppColors.whiteColor,
//                       fontSize: 12,
//                       fontWeight: FontWeight.w500,
//                       minSize: Size(30.w, 30),
//                       onPressed: () async {
//                         await LaunchApp.openApp(
//                           androidPackageName: 'com.infostretch.iSOSAndroid',
//                           iosUrlScheme: 'internationalsosassistance://',
//                           appStoreLink:
//                               'itms-apps://itunes.apple.com/us/app/international-sos-assistance/id465662561',
//                           openStore: true,
//                         );
//                       },
//                       title: "ISOS Assistance App",
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 40,
//                     ),
//                     child: CustomButton(
//                       color: AppColors.secondaryColor.withOpacity(0.1),
//                       fontColor: AppColors.secondaryColor,
//                       fontSize: 12,
//                       fontWeight: FontWeight.w500,
//                       minSize: Size(30.w, 30),
//                       onPressed: () {
//                         AppNavigation.goBack();
//                         showAssistanceContactDialog();
//                       },
//                       title: "Call For Emergency Assistance ",
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       );
//     },
//   );
// }

// showAssistanceContactDialog() {
//   showDialog(
//     context: AppNavigation.currentContext,
//     builder: (context) {
//       return Dialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12.0),
//         ),
//         child: Consumer(
//           builder: (context, ref, child) {
//             AddItineraryProvider itineraryWatch =
//                 ref.read(addItineraryProvider);

//             NewRequestStepTwoProvider newRequestStepTwoWatch =
//                 ref.read(newRequestStepTwoProvider);
//             return SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: 50,
//                     width: double.infinity,
//                     decoration: const BoxDecoration(
//                         color: Color(0xFFF9F9F9),
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(20),
//                             topRight: Radius.circular(20))),
//                     child: Row(
//                       children: [
//                         const Padding(
//                           padding: EdgeInsets.only(left: 8),
//                           child: Text(
//                             "Call for Assistance",
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 color: Color(0xff373737),
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         const Expanded(child: SizedBox()),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                             top: 15,
//                             right: 15,
//                           ),
//                           child: Align(
//                             alignment: Alignment.topRight,
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.pop(context);
//                               },
//                               child: const Icon(
//                                 Icons.cancel,
//                                 color: AppColors.blackColor,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           "Philadelphia",
//                           style: TextStyle(
//                             color: AppColors.secondaryColor,
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           "+1 215 942 8226",
//                           style: TextStyle(
//                             color: AppColors.blackColor,
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           "London",
//                           style: TextStyle(
//                             color: AppColors.secondaryColor,
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           "+44 (0)20 8762 8008",
//                           style: TextStyle(
//                             color: AppColors.blackColor,
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           "Dubai",
//                           style: TextStyle(
//                             color: AppColors.secondaryColor,
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           "+971 4 601 8777",
//                           style: TextStyle(
//                             color: AppColors.blackColor,
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: const [
//                         Text(
//                           "Singapore",
//                           style: TextStyle(
//                             color: AppColors.secondaryColor,
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           "+65 6338 7800",
//                           style: TextStyle(
//                             color: AppColors.blackColor,
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             );
//           },
//         ),
//       );
//     },
//   );
// }

// class NewRequestSummaryDialogWidget extends StatelessWidget {
//   final String? leftHeading;
//   final String? rightHeading;
//   final String? leftValue;
//   final String? rightValue;

//   const NewRequestSummaryDialogWidget({
//     Key? key,
//     required this.leftHeading,
//     required this.leftValue,
//     required this.rightHeading,
//     required this.rightValue,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             AutoSizeText(
//               "$leftHeading",
//               style: const TextStyle(
//                   fontSize: 14,
//                   color: AppColors.blackColor,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 1.h,
//             ),
//             SizedBox(
//               width: 35.w,
//               child: AutoSizeText(
//                 "$leftValue",
//                 maxLines: 2,
//                 style: const TextStyle(
//                     fontSize: 12,
//                     color: AppColors.blackColor,
//                     fontWeight: FontWeight.normal),
//               ),
//             ),
//           ],
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             AutoSizeText(
//               "$rightHeading",
//               style: const TextStyle(
//                   fontSize: 14,
//                   color: AppColors.blackColor,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 1.h,
//             ),
//             SizedBox(
//               width: 35.w,
//               child: AutoSizeText(
//                 "$rightValue",
//                 maxLines: 2,
//                 style: const TextStyle(
//                     fontSize: 12,
//                     color: AppColors.blackColor,
//                     fontWeight: FontWeight.normal),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
