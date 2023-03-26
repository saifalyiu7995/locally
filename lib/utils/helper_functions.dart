import 'dart:convert';
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:locally_app/theme/app_colors.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:locally_app/utils/app_labels.dart';

import 'package:sizer/sizer.dart';

List<InternetAddress> internetResponse = [];



String formatDate(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}

String dateTimeFormat(
        {required String? dateTime,
        String? format,
        bool withTime = false,
        bool onlyTime = false}) =>
    dateTime == null ||
            dateTime.isEmpty ||
            dateTime == '-' ||
            dateTime == 'null'
        ? '-'
        : DateFormat(format ??
                (withTime
                    ? "yyyy-MM-dd kk:mm:ss"
                    : onlyTime
                        ? "kk:mm:ss"
                        : "yyyy-MM-dd"))
            .format(DateTime.parse(
                    '${dateTime.contains('Z') ? dateTime.replaceAll('Z', '') : dateTime} Z')
                .toLocal());



String getInitials(String string) => string.isNotEmpty
    ? string.trim().split(RegExp(' +')).map((s) => s[0]).join()
    : '';

Color getRequestStatusColor(String status) {
  switch (status) {
    case "Draft":
      return AppColors.blueColorPercentIndicator;
    case "None":
      return AppColors.yellowColor;
    case "Canceled":
      return AppColors.redColor;
    case "Rejected":
      return AppColors.redColor;
    case "Approved":
      return AppColors.greenColor;
    case "Rejected by GVP HSSE":
      return AppColors.redColor;
    case "Rejected by GVP HR":
      return AppColors.redColor;
    default:
      return AppColors.greenColor;
  }
}

double returnTravelRiskWidth(int value) {
  switch (value) {
    case 1:
      return 18.w;
    case 2:
      return 9.5.w;
    case 3:
      return 12.w;
    case 4:
      return 10.w;
    case 5:
      return 12.w;
    default:
      return 2.w;
  }
}

double returnMedicalRiskWidth(int value) {
  switch (value) {
    case 1:
      return 12.5.w;
    case 2:
      return 14.5.w;
    case 3:
      return 15.w;
    case 4:
      return 18.w;

    default:
      return 2.w;
  }
}

Color returnTravelRiskColor(int value) {
  switch (value) {
    case 1:
      return const Color(0xff0070C0);
    case 2:
      return const Color(0xff1E3866);
    case 3:
      return const Color(0xffFDFF02);
    case 4:
      return const Color(0xffFE9A01);
    case 5:
      return const Color(0xffC00101);
    default:
      return const Color(0xff0070C0);
  }
}

Color returnMedicalRiskColor(int value) {
  switch (value) {
    case 1:
      return const Color(0xff1E3866);
    case 2:
      return const Color(0xffFDFF02);
    case 3:
      return const Color(0xffFE9A01);
    case 4:
      return const Color(0xffC00101);
    default:
      return const Color(0xff0070C0);
  }
}

Color getTmcStatusColor(String status) {
  switch (status) {
    case "Pending ":
      return AppColors.yellowColor;
    case "Not Started":
      return AppColors.blueColorPercentIndicator;
    case "Not Responded":
      return AppColors.redColor;
    case "Expired":
      return AppColors.redColor;
    case "Responded":
      return AppColors.greenColor;
    case "Selected":
      return AppColors.greenColor;
    case "Completed":
      return AppColors.greenColor;
    default:
      return AppColors.greenColor;
  }
}

Widget getTravelModeImage(String travelMode) {
  switch (travelMode) {
    case "Air":
      return SvgPicture.asset(
        '${AppConstant.assetImages}plane.svg',
        height: 2.h,
      );
    case "Ground":
      return SvgPicture.asset(
        '${AppConstant.assetImages}bus.svg',
        height: 2.h,
      );
    case "Accommodation Only":
      return SvgPicture.asset(
        '${AppConstant.assetImages}accommodation.svg',
        height: 2.h,
        color: const Color(0xff94A3B6),
      );
    default:
      return SvgPicture.asset(
        '${AppConstant.assetImages}accommodation.svg',
        height: 2.h,
        color: const Color(0xff94A3B6),
      );
  }
}

String getGender(String value) {
  switch (value) {
    case "M":
      return "Male";
    case "F":
      return "Female";
    default:
      return "Gender";
  }
}

String? validatorTextOnly({required String? value}) {
  if (value!.isEmpty) {
    return "${appLabels["common"]["required"]}";
  } else {
    if (AppConstant.onlyTextRegex.hasMatch(value)) {
      return null;
    } else {
      return "${appLabels["common"]["invalid"]}";
    }
  }
}

String? validatorEmail({required String? value}) {
  if (value!.isEmpty) {
    return "${appLabels["common"]["required"]}";
  } else {
    if (AppConstant.emailRegex.hasMatch(value)) {
      return null;
    } else {
      return "${appLabels["common"]["invalidEmail"]}";
    }
  }
}

String? validatorEmailWithNull({required String? value}) {
  if (value!.isEmpty) {
    return null;
  } else {
    if (AppConstant.emailRegex.hasMatch(value)) {
      return null;
    } else {
      return "${appLabels["common"]["invalid"]}";
    }
  }
}

String? validatorMobile({required String? value}) {
  if (value!.isEmpty) {
    return "${appLabels["common"]["required"]}";
  } else {
    if (AppConstant.phoneRegex.hasMatch(value)) {
      return null;
    } else {
      return "${appLabels["common"]["invalid"]}";
    }
  }
}

String? validatorAddress({required String? value}) {
  if (value!.isEmpty) {
    return appLabels["common"]["required"].toString();
  } else {
    if (value.length < 10) {
      return appLabels["common"]["invalid"].toString();
    } else {
      return null;
    }
  }
}

String? validatorPassport({required String? value}) {
  if (value!.isEmpty) {
    return appLabels["common"]["required"].toString();
  } else {
    if (AppConstant.passportRegex.hasMatch(value)) {
      return null;
    } else {
      return "${appLabels["common"]["invalid"]}";
    }
  }
}

String? validatorNotNull({required String? value}) {
  if (value!.isEmpty) {
    return appLabels["common"]["required"].toString();
  } else {
    return null;
  }
}
