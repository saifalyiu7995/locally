// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:intl/intl.dart';
// import 'package:sizer/sizer.dart';


// class BottomSheetWidget {
//   static void settingModalBottomSheet({
//     context,
//     required VoidCallback? onTapAlphabet,
//     required VoidCallback? onTapDate,
//     required bool fromApprovals,
//   }) {
//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.transparent,
//       builder: (BuildContext bc) {
//         return Consumer(
//           builder: (BuildContext context, WidgetRef ref, Widget? child) {
//             var myRequestWatch;
//             if (fromApprovals) {
//               myRequestWatch = ref.watch(myApprovalsProvider);
//             } else {
//               myRequestWatch = ref.watch(myRequestProvider);
//             }

//             return Container(
//               height: 30.h,
//               padding: EdgeInsets.symmetric(
//                 horizontal: 3.81.w,
//                 vertical: 1.9.h,
//               ),
//               decoration: const BoxDecoration(
//                   color: AppColors.whiteColor,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(15),
//                       topRight: Radius.circular(15))),
//               child: Column(
//                 children: [
//                   Text(
//                     'Sort By',
//                     style: TextStyle(
//                         color: AppColors.fontColor,
//                         fontSize: 15.sp,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: 3.h,
//                   ),
//                   ListTile(
//                     title: Text(
//                       'By Requisition Id',
//                       style: TextStyle(
//                           color: AppColors.fontColor,
//                           fontSize: 12.sp,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     dense: true,
//                     contentPadding: EdgeInsets.zero,
//                     trailing: myRequestWatch.showMyRequestList
//                         ? myRequestWatch.sortMyReqByAlphabet
//                             ? myRequestWatch.sortByAlphabetAscending
//                                 ? const Icon(
//                                     Icons.arrow_circle_up_rounded,
//                                     color: AppColors.secondaryColor,
//                                   )
//                                 : const Icon(
//                                     Icons.arrow_circle_down_rounded,
//                                     color: AppColors.secondaryColor,
//                                   )
//                             : const SizedBox.shrink()
//                         : myRequestWatch.sortOtherReqByAlphabet
//                             ? myRequestWatch.sortByOtherAlphabetAscending
//                                 ? const Icon(
//                                     Icons.arrow_circle_up_rounded,
//                                     color: AppColors.secondaryColor,
//                                   )
//                                 : const Icon(
//                                     Icons.arrow_circle_down_rounded,
//                                     color: AppColors.secondaryColor,
//                                   )
//                             : const SizedBox.shrink(),
//                     minVerticalPadding: 0,
//                     visualDensity:
//                         const VisualDensity(horizontal: -4, vertical: -4),
//                     onTap: () => onTapAlphabet!(),
//                   ),
//                   const Divider(
//                     thickness: 1,
//                     color: AppColors.greyColor,
//                   ),
//                   ListTile(
//                     title: Text(
//                       'By Submitted Date',
//                       style: TextStyle(
//                           color: AppColors.fontColor,
//                           fontSize: 12.sp,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     dense: true,
//                     trailing: myRequestWatch.showMyRequestList
//                         ? myRequestWatch.sortMyReqByDate
//                             ? myRequestWatch.sortByDateAscending
//                                 ? const Icon(
//                                     Icons.arrow_circle_up_rounded,
//                                     color: AppColors.secondaryColor,
//                                   )
//                                 : const Icon(
//                                     Icons.arrow_circle_down_rounded,
//                                     color: AppColors.secondaryColor,
//                                   )
//                             : const SizedBox.shrink()
//                         : myRequestWatch.sortOtherReqByDate
//                             ? myRequestWatch.sortByOtherDateAscending
//                                 ? const Icon(
//                                     Icons.arrow_circle_up_rounded,
//                                     color: AppColors.secondaryColor,
//                                   )
//                                 : const Icon(
//                                     Icons.arrow_circle_down_rounded,
//                                     color: AppColors.secondaryColor,
//                                   )
//                             : const SizedBox.shrink(),
//                     contentPadding: EdgeInsets.zero,
//                     minVerticalPadding: 0,
//                     visualDensity:
//                         const VisualDensity(horizontal: -4, vertical: -4),
//                     onTap: () => onTapDate!(),
//                   ),
//                   const Divider(
//                     thickness: 1,
//                     color: AppColors.greyColor,
//                   ),
//                   CustomButton(
//                       color: AppColors.secondaryColor,
//                       fontColor: AppColors.whiteColor,
//                       fontSize: 10.sp,
//                       title: 'DONE',
//                       fontWeight: FontWeight.bold,
//                       minSize: const Size(double.infinity, 40),
//                       onPressed: () {
//                         AppNavigation.goBack();
//                       }),
//                 ],
//               ),
//             );
//           },
//         );
//       },
//     );
//   }

//   static void reviewRequestBottomSheet({
//     context,
//   }) {
//     showModalBottomSheet(
//         context: context,
//         backgroundColor: Colors.transparent,
//         builder: (BuildContext buildContext) {
//           return Container(
//             height: 20.h,
//             padding: EdgeInsets.symmetric(
//               horizontal: 3.81.w,
//               vertical: 1.9.h,
//             ),
//             decoration: const BoxDecoration(
//                 color: AppColors.whiteColor,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(15),
//                     topRight: Radius.circular(15))),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 1.h,
//                 ),
//                 Consumer(
//                   builder: (context, ref, child) => CustomButton(
//                       color: AppColors.secondaryColor,
//                       fontColor: AppColors.whiteColor,
//                       elevation: 1,
//                       fontSize: 10.sp,
//                       title: 'Submit',
//                       fontWeight: FontWeight.bold,
//                       minSize: const Size(double.infinity, 40),
//                       onPressed: () {
//                         ref
//                             .read(newRequestProvider)
//                             .newRequestAPI(isSave: false)
//                             .then((value) => AppNavigation.goBack());
//                       }),
//                 ),
//                 SizedBox(
//                   height: 1.h,
//                 ),
//                 Consumer(
//                   builder: (context, ref, child) => CustomButton(
//                       color: AppColors.secondaryColor,
//                       fontColor: AppColors.secondaryColor,
//                       elevation: 1,
//                       fontSize: 10.sp,
//                       title: 'Save For Later',
//                       fontWeight: FontWeight.bold,
//                       minSize: const Size(double.infinity, 40),
//                       showOutline: true,
//                       onPressed: () {
//                         ref
//                             .read(newRequestProvider)
//                             .newRequestAPI(isSave: true)
//                             .then((value) => AppNavigation.goBack());
//                       }),
//                 ),
//                 SizedBox(
//                   height: 1.h,
//                 ),
//               ],
//             ),
//           );
//         });
//   }

//   static void addCompanionBottomSheet({
//     required context,
//     required Function(String?) validatorName,
//     required Function(String?) validatorDob,
//     required TextEditingController nameController,
//     required TextEditingController dobController,
//     required VoidCallback onSave,
//     required WidgetRef ref,
//   }) {
//     showModalBottomSheet(
//         context: context,
//         isScrollControlled: true,
//         enableDrag: true,
//         isDismissible: true,
//         backgroundColor: AppColors.whiteColor,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             top: Radius.circular(25.0),
//           ),
//         ),
//         builder: (BuildContext bc) {
//           NewRequestProvider newRequestRead = ref.read(newRequestProvider);
//           NewRequestStepTwoProvider newRequestStepTowRead =
//               ref.read(newRequestStepTwoProvider);
//           return SingleChildScrollView(
//             padding:
//                 EdgeInsets.only(bottom: MediaQuery.of(bc).viewInsets.bottom),
//             child: Form(
//               key: newRequestRead.companionFormKey,
//               child: Padding(
//                 padding: const EdgeInsets.all(15),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       'Companion Details',
//                       style: TextStyle(
//                           color: AppColors.fontColor,
//                           fontSize: 15.sp,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       height: 3.h,
//                     ),
//                     SizedBox(
//                       width: double.infinity,
//                       child: CustomDropdown(
//                         required: true,
//                         items: [
//                           DataWithIdAndTitle(iD: 0, title: "Mr."),
//                           DataWithIdAndTitle(iD: 0, title: "Mrs."),
//                           DataWithIdAndTitle(iD: 0, title: "Ms."),
//                           DataWithIdAndTitle(iD: 0, title: "Master"),
//                         ],
//                         dropdownMode: Mode.MENU,
//                         showSearchbox: false,
//                         isDense: true,
//                         showSelectedItem: false,
//                         selectedItem: DataWithIdAndTitle(iD: 0, title: "Mr."),
//                         itemFontSize: 14,
//                         label: 'Title',
//                         hintTextStyle: const TextStyle(
//                             color: AppColors.redColor, fontSize: 12),
//                         height: 70,
//                         dropDownButton: const SizedBox.shrink(),
//                         suffixWidget: Transform.translate(
//                           offset: const Offset(-12, -5),
//                           child: SvgPicture.asset(
//                             '${AppConstant.assetImages}dropdown.svg',
//                             height: 7,
//                           ),
//                         ),
//                         onChanged: (value) {
//                           newRequestStepTowRead.setCompanionTitle = value.title;
//                         },
//                       ),
//                     ),
//                     SizedBox(
//                       height: 1.h,
//                     ),
//                     SizedBox(
//                       width: double.infinity,
//                       child: CustomTextFormField(
//                         context: context,
//                         required: true,
//                         controller: nameController,
//                         isFilled: true,
//                         fillColor: const Color(0xFFFFFFFF),
//                         textColor: const Color(0xFF1C1C24),
//                         cursorColor: const Color(0xFF1C1C24),
//                         autoValidateMode: AutovalidateMode.onUserInteraction,
//                         floatingLabelBehavior: FloatingLabelBehavior.auto,
//                         padding: const EdgeInsets.only(
//                             left: 15, top: 18, right: 15, bottom: 18),
//                         hintFont: 12,
//                         labelText: "Name",
//                         labelColor: const Color(0xFF909090),
//                         inputType: TextInputType.emailAddress,
//                         validator: (value) => validatorNotNull(value: value),
//                         borderRadius: 5,
//                         borderWidth: 0.8,
//                         borderColor: const Color(0xFFCFE0F2),
//                         useRitchLabel: true,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 1.h,
//                     ),
//                     SizedBox(
//                       width: 100.w,
//                       child: CustomTextFormField(
//                         context: context,
//                         controller: dobController,
//                         readOnly: true,
//                         onTap: () async {
//                           DateTime? pickedDate = DateTime(2001);
//                           pickedDate = await showDatePicker(
//                               context: context,
//                               initialDate: DateTime.now(),
//                               firstDate: DateTime(2001),
//                               lastDate: DateTime(DateTime.now().year + 50));
//                           if (pickedDate != null) {
//                             ref
//                                     .read(newRequestStepTwoProvider)
//                                     .companionDobController
//                                     .text =
//                                 DateFormat('yyyy-MM-dd').format(pickedDate);
//                           }
//                         },
//                         suffixWidget: Transform.scale(
//                           scale: 0.3,
//                           child: SvgPicture.asset(
//                             '${AppConstant.assetImages}calendar.svg',
//                             height: 12,
//                           ),
//                         ),
//                         isFilled: true,
//                         fillColor: const Color(0xFFFFFFFF),
//                         textColor: const Color(0xFF1C1C24),
//                         cursorColor: const Color(0xFF1C1C24),
//                         autoValidateMode: AutovalidateMode.onUserInteraction,
//                         floatingLabelBehavior: FloatingLabelBehavior.auto,
//                         padding: const EdgeInsets.only(
//                             left: 15, top: 18, right: 10, bottom: 18),
//                         hintFont: 11,
//                         labelText: "Date of birth",
//                         labelColor: const Color(0xFF909090),
//                         inputType: TextInputType.name,
//                         // validator: (value) => validatorDob(value),
//                         borderRadius: 5,
//                         borderWidth: 0.8,
//                         borderColor: const Color(0xFFCFE0F2),
//                         useRitchLabel: true,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 1.h,
//                     ),
//                     SizedBox(
//                       height: 40,
//                       width: double.infinity,
//                       child: Row(
//                         children: [
//                           Expanded(
//                             child: CustomButton(
//                                 color: AppColors.whiteColor,
//                                 fontColor: AppColors.redColor,
//                                 elevation: 1,
//                                 fontSize: 10.sp,
//                                 title: 'Cancel',
//                                 fontWeight: FontWeight.bold,
//                                 minSize: const Size(double.infinity, 40),
//                                 onPressed: () {
//                                   AppNavigation.goBack();
//                                 }),
//                           ),
//                           const SizedBox(
//                             width: 5,
//                           ),
//                           Expanded(
//                             child: CustomButton(
//                               color: AppColors.secondaryColor,
//                               fontColor: AppColors.whiteColor,
//                               fontSize: 10.sp,
//                               title: 'Save',
//                               fontWeight: FontWeight.bold,
//                               minSize: const Size(double.infinity, 40),
//                               onPressed: onSave,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         });
//   }

//   static void addAccommodationBottomSheet({
//     context,
//     required VoidCallback onSave,
//   }) {
//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       enableDrag: true,
//       isDismissible: true,
//       backgroundColor: AppColors.whiteColor,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(25.0),
//         ),
//       ),
//       builder: (BuildContext bc) {
//         return Consumer(
//           builder: (BuildContext context, WidgetRef ref, Widget? child) {
//             AddItineraryProvider addItineraryWatch =
//                 ref.watch(addItineraryProvider);
//             AddItineraryProvider addItineraryRead =
//                 ref.read(addItineraryProvider);
//             return SingleChildScrollView(
//               padding:
//                   EdgeInsets.only(bottom: MediaQuery.of(bc).viewInsets.bottom),
//               child: Form(
//                 key: addItineraryRead.accommodationFormKey,
//                 child: SingleChildScrollView(
//                   child: Padding(
//                     padding: const EdgeInsets.all(15),
//                     child: Column(
//                       children: [
//                         Text(
//                           'Accommodation Details',
//                           style: TextStyle(
//                               color: AppColors.fontColor,
//                               fontSize: 15.sp,
//                               fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(
//                           height: 3.h,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             SizedBox(
//                               width: 45.w,
//                               child: CustomTextFormField(
//                                 context: context,
//                                 controller:
//                                     addItineraryRead.checkInDateController,
//                                 readOnly: true,
//                                 onTap: () async {
//                                   DateTime? pickedDate = DateTime(1990);
//                                   pickedDate = await showDatePicker(
//                                       context: context,
//                                       initialDate: DateTime.parse(
//                                           addItineraryRead
//                                               .departureDateController.text),
//                                       firstDate: DateTime.parse(addItineraryRead
//                                               .departureDateController.text)
//                                           .subtract(const Duration(days: 0)),
//                                       lastDate:
//                                           DateTime(DateTime.now().year + 50));
//                                   if (pickedDate != null) {
//                                     addItineraryRead.setCheckInAccommodation =
//                                         DateFormat('yyyy-MM-dd')
//                                             .format(pickedDate);
//                                   }
//                                 },
//                                 suffixWidget: Transform.scale(
//                                   scale: 0.3,
//                                   child: SvgPicture.asset(
//                                     '${AppConstant.assetImages}calendar.svg',
//                                     height: 12,
//                                   ),
//                                 ),
//                                 isFilled: true,
//                                 fillColor: const Color(0xFFFFFFFF),
//                                 textColor: const Color(0xFF1C1C24),
//                                 cursorColor: const Color(0xFF1C1C24),
//                                 autoValidateMode:
//                                     AutovalidateMode.onUserInteraction,
//                                 floatingLabelBehavior:
//                                     FloatingLabelBehavior.auto,
//                                 padding: const EdgeInsets.only(
//                                     left: 15, top: 18, right: 10, bottom: 18),
//                                 hintFont: 11,
//                                 labelText: "Check In",
//                                 required: true,
//                                 labelColor: const Color(0xFF909090),
//                                 inputType: TextInputType.name,
//                                 validator: (value) {
//                                   if (value!.isNotEmpty) {
//                                     if (addItineraryRead
//                                         .checkOutDateController.text.isEmpty) {
//                                       return null;
//                                     } else {
//                                       if (addItineraryRead
//                                               .returnDateController.text ==
//                                           "") {
//                                         if (DateTime.parse(value).isBefore(
//                                             DateTime.parse(addItineraryRead
//                                                 .departureDateController
//                                                 .text))) {
//                                           return "Invalid Date";
//                                         } else {
//                                           if (DateTime.parse(value).isBefore(
//                                               DateTime.parse(addItineraryRead
//                                                   .checkOutDateController
//                                                   .text))) {
//                                             return null;
//                                           } else {
//                                             return "Invalid Date";
//                                           }
//                                         }
//                                       } else {
//                                         if (DateTime.parse(value).isBefore(
//                                                 DateTime.parse(addItineraryRead
//                                                     .departureDateController
//                                                     .text)) &&
//                                             DateTime.parse(value).isAfter(
//                                                 DateTime.parse(addItineraryRead
//                                                     .returnDateController
//                                                     .text))) {
//                                           return "Invalid Date";
//                                         } else {
//                                           if (DateTime.parse(value).isBefore(
//                                               DateTime.parse(addItineraryRead
//                                                   .checkOutDateController
//                                                   .text))) {
//                                             return null;
//                                           } else {
//                                             return "Invalid Date";
//                                           }
//                                         }
//                                       }
//                                     }
//                                   } else {
//                                     return appLabels["common"]["required"]
//                                         .toString();
//                                   }
//                                 },
//                                 borderRadius: 5,
//                                 borderWidth: 0.8,
//                                 borderColor: const Color(0xFFCFE0F2),
//                                 useRitchLabel: true,
//                               ),
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   width: 45.w,
//                                   child: CustomDropdown(
//                                     required: true,
//                                     items: addItineraryWatch.preferredTimes,
//                                     dropdownMode: Mode.MENU,
//                                     showSearchbox: false,
//                                     isDense: true,
//                                     showSelectedItem: false,
//                                     selectedItem:
//                                         addItineraryWatch.preferredTimeCheckIn,
//                                     itemFontSize: 14,
//                                     label: 'Preferred Time',
//                                     hintTextStyle: const TextStyle(
//                                         color: AppColors.redColor,
//                                         fontSize: 12),
//                                     height: addItineraryWatch
//                                             .preferredTimes.length *
//                                         30.0,
//                                     dropDownButton: const SizedBox.shrink(),
//                                     suffixWidget: Transform.translate(
//                                       offset: const Offset(-12, -5),
//                                       child: SvgPicture.asset(
//                                         '${AppConstant.assetImages}dropdown.svg',
//                                         height: 7,
//                                       ),
//                                     ),
//                                     onChanged: (value) => addItineraryRead
//                                         .setPreferredTimeCheckIn = value,
//                                   ),
//                                 ),
//                                 addItineraryWatch.preferredTimeCheckIn.title !=
//                                         ""
//                                     ? SizedBox.shrink()
//                                     : const Padding(
//                                         padding: EdgeInsets.all(4.0),
//                                         child: Text(
//                                           "Required",
//                                           style: TextStyle(
//                                             color: AppColors.redColor,
//                                             fontSize: 11,
//                                           ),
//                                         ),
//                                       )
//                               ],
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 1.h,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             SizedBox(
//                               width: 45.w,
//                               child: CustomTextFormField(
//                                 context: context,
//                                 isEnable: addItineraryWatch
//                                         .checkInDateController.text !=
//                                     "",
//                                 controller:
//                                     addItineraryRead.checkOutDateController,
//                                 readOnly: true,
//                                 onTap: () async {
//                                   if (addItineraryRead
//                                           .checkInDateController.text !=
//                                       "") {
//                                     DateTime? pickedDate = DateTime(2001);
//                                     pickedDate = await showDatePicker(
//                                         context: context,
//                                         initialDate: DateTime.parse(
//                                                 addItineraryRead
//                                                     .checkInDateController.text)
//                                             .add(const Duration(days: 1)),
//                                         firstDate: DateTime.parse(
//                                                 addItineraryRead
//                                                     .checkInDateController.text)
//                                             .add(const Duration(days: 1)),
//                                         lastDate:
//                                             DateTime(DateTime.now().year + 50));
//                                     if (pickedDate != null) {
//                                       addItineraryRead
//                                               .checkOutDateController.text =
//                                           DateFormat('yyyy-MM-dd')
//                                               .format(pickedDate);
//                                     }
//                                   }
//                                 },
//                                 suffixWidget: Transform.scale(
//                                   scale: 0.3,
//                                   child: SvgPicture.asset(
//                                     '${AppConstant.assetImages}calendar.svg',
//                                     height: 12,
//                                   ),
//                                 ),
//                                 isFilled: true,
//                                 fillColor: const Color(0xFFFFFFFF),
//                                 textColor: const Color(0xFF1C1C24),
//                                 cursorColor: const Color(0xFF1C1C24),
//                                 autoValidateMode:
//                                     AutovalidateMode.onUserInteraction,
//                                 floatingLabelBehavior:
//                                     FloatingLabelBehavior.auto,
//                                 padding: const EdgeInsets.only(
//                                     left: 15, top: 18, right: 10, bottom: 18),
//                                 hintFont: 11,
//                                 labelText: "Check Out",
//                                 required: true,
//                                 labelColor: const Color(0xFF909090),
//                                 inputType: TextInputType.name,
//                                 validator: (value) {
//                                   if (value!.isNotEmpty) {
//                                     if (DateTime.parse(value).isAfter(
//                                         DateTime.parse(addItineraryRead
//                                             .checkInDateController.text))) {
//                                       return null;
//                                     } else {
//                                       return "Invalid Date";
//                                     }
//                                   } else {
//                                     return appLabels["common"]["required"]
//                                         .toString();
//                                   }
//                                 },
//                                 borderRadius: 5,
//                                 borderWidth: 0.8,
//                                 borderColor: const Color(0xFFCFE0F2),
//                                 useRitchLabel: true,
//                               ),
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(
//                                   width: 45.w,
//                                   child: CustomDropdown(
//                                     required: true,
//                                     items: addItineraryWatch.preferredTimes,
//                                     dropdownMode: Mode.MENU,
//                                     showSearchbox: false,
//                                     isDense: true,
//                                     showSelectedItem: false,
//                                     selectedItem:
//                                         addItineraryWatch.preferredTimeCheckOut,
//                                     itemFontSize: 14,
//                                     label: 'Preferred Time',
//                                     hintTextStyle: const TextStyle(
//                                         color: AppColors.redColor,
//                                         fontSize: 12),
//                                     height: addItineraryWatch
//                                             .preferredTimes.length *
//                                         30.0,
//                                     dropDownButton: const SizedBox.shrink(),
//                                     suffixWidget: Transform.translate(
//                                       offset: const Offset(-12, -5),
//                                       child: SvgPicture.asset(
//                                         '${AppConstant.assetImages}dropdown.svg',
//                                         height: 7,
//                                       ),
//                                     ),
//                                     onChanged: (value) => addItineraryRead
//                                         .setPreferredTimeCheckOut = value,
//                                   ),
//                                 ),
//                                 addItineraryWatch.preferredTimeCheckOut.title !=
//                                         ""
//                                     ? SizedBox.shrink()
//                                     : const Padding(
//                                         padding: EdgeInsets.all(4.0),
//                                         child: Text(
//                                           "Required",
//                                           style: TextStyle(
//                                             color: AppColors.redColor,
//                                             fontSize: 11,
//                                           ),
//                                         ),
//                                       )
//                               ],
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 1.h,
//                         ),
//                         SizedBox(
//                           width: double.infinity,
//                           height: 100,
//                           child: CustomTextFormField(
//                             context: context,
//                             required: false,
//                             controller:
//                                 addItineraryRead.additionalDetailsController,
//                             isFilled: true,
//                             maxLines: 6,
//                             fillColor: const Color(0xFFFFFFFF),
//                             textColor: const Color(0xFF1C1C24),
//                             cursorColor: const Color(0xFF1C1C24),
//                             autoValidateMode:
//                                 AutovalidateMode.onUserInteraction,
//                             floatingLabelBehavior: FloatingLabelBehavior.auto,
//                             padding: const EdgeInsets.only(
//                                 left: 15, top: 18, right: 15, bottom: 18),
//                             hintFont: 12,
//                             labelText: "Additional Details",
//                             labelColor: const Color(0xFF909090),
//                             inputType: TextInputType.emailAddress,
//                             // validator: (value) => validatorNotNull(value: value),
//                             borderRadius: 5,
//                             borderWidth: 0.8,
//                             borderColor: const Color(0xFFCFE0F2),
//                             useRitchLabel: true,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 1.h,
//                         ),
//                         SizedBox(
//                           height: 40,
//                           width: double.infinity,
//                           child: Row(
//                             children: [
//                               Expanded(
//                                 child: CustomButton(
//                                     color: AppColors.whiteColor,
//                                     fontColor: AppColors.redColor,
//                                     elevation: 5,
//                                     fontSize: 10.sp,
//                                     title: 'Cancel',
//                                     fontWeight: FontWeight.bold,
//                                     minSize: const Size(double.infinity, 40),
//                                     onPressed: () {
//                                       AppNavigation.goBack();
//                                     }),
//                               ),
//                               const SizedBox(
//                                 width: 5,
//                               ),
//                               Expanded(
//                                 child: CustomButton(
//                                     color: AppColors.secondaryColor,
//                                     fontColor: AppColors.whiteColor,
//                                     elevation: 5,
//                                     fontSize: 10.sp,
//                                     title: 'Save',
//                                     fontWeight: FontWeight.bold,
//                                     minSize: const Size(double.infinity, 40),
//                                     onPressed: () {
//                                       onSave();
//                                     }),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }
