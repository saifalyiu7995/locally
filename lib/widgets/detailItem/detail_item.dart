import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget detailsItem({
  required BuildContext context,
  required String label,
  required String value,
  required Color valueColor,
  bool wrapValue = false,
  Color? wrapColor,
  double? labelFontSize,
  double? valueFontSize,
  bool showDivider = true,
  bool showValueAsWidget = false,
  Widget? valueAsWidget,
  Color? dividerHideColor,
  bool? addPaddingToLabel = false,
  EdgeInsetsGeometry? labelPadding,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 10,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        addPaddingToLabel!
            ? Padding(
                padding: labelPadding ?? const EdgeInsets.all(8.0),
                child: AutoSizeText(
                  label,
                  style: TextStyle(
                      fontSize: labelFontSize ?? 15,
                      color: const Color(0xFF494949),
                      fontFamily: "Grold-Light",
                      fontWeight: FontWeight.w400),
                ),
              )
            : AutoSizeText(
                label,
                style: TextStyle(
                    fontSize: labelFontSize ?? 15,
                    color: const Color(0xFF494949),
                    fontFamily: "Grold-Light",
                    fontWeight: FontWeight.w400),
              ),
        SizedBox(
          height: 1.h,
        ),
        wrapValue
            ? addPaddingToLabel
                ? Padding(
                    padding: labelPadding ?? const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: wrapColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(2))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: AutoSizeText(
                          value,
                          style: TextStyle(
                              fontSize: valueFontSize ?? 15,
                              color: valueColor,
                              fontFamily: "Grold-Light",
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                        color: wrapColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(2))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      child: AutoSizeText(
                        value,
                        style: TextStyle(
                            fontSize: valueFontSize ?? 15,
                            color: valueColor,
                            fontFamily: "Grold-Light",
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
            : showValueAsWidget
                ? valueAsWidget!
                : addPaddingToLabel
                    ? Padding(
                        padding: labelPadding ?? const EdgeInsets.all(8.0),
                        child: AutoSizeText(
                          value,
                          style: TextStyle(
                              fontSize: 15,
                              color: valueColor,
                              fontFamily: "Grold-Light",
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    : AutoSizeText(
                        value,
                        style: TextStyle(
                            fontSize: 15,
                            color: valueColor,
                            fontFamily: "Grold-Light",
                            fontWeight: FontWeight.w500),
                      ),
        SizedBox(
          height: 1.h,
        ),
        showDivider
            ? const Divider(
                color: Color(0xFFD3D7DA),
                thickness: 1,
              )
            : Divider(
                color: dividerHideColor ?? const Color(0xFFFFFFFF),
                thickness: 0.0,
              ),
      ],
    ),
  );
}
