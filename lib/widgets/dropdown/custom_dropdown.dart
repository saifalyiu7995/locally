import 'package:dropdown_search/dropdown_search.dart';

import 'package:flutter/material.dart';
import 'package:locally_app/theme/app_colors.dart';
import 'package:sizer/sizer.dart';

class CustomDropdown extends StatelessWidget {
  final Mode dropdownMode;
  final bool showSelectedItem;
  final bool showSearchbox;
  final List<dynamic> items;
  final Function(dynamic)? onSaved;
  final String? Function(dynamic)? validator;
  final AutovalidateMode? autoValidateMode;
  final Function(dynamic)? onChanged;
  final dynamic selectedItem;
  final String? label;
  final String hint;
  final String helperText;
  final double height;
  final double searchItemFontSize;
  final Color? searchItemColor;
  final Color? fillColor;
  final bool isDense;
  final bool isFilled;
  final bool isUnderLineInputBorder;
  final double borderWidth;
  final Color? borderColor;
  final double? borderRadius;
  final Widget? suffixWidget;
  final Widget? preixWidget;
  final EdgeInsets? padding;
  final TextStyle? hintTextStyle;
  final TextStyle? helperTextStyle;
  final double itemFontSize;
  final Widget? dropDownButton;
  final bool required;
  final bool isEnable;
  const CustomDropdown({
    Key? key,
    required this.items,
    required this.dropdownMode,
    this.showSelectedItem = true,
    required this.showSearchbox,
    this.onSaved,
    this.validator,
    this.autoValidateMode,
    this.onChanged,
    this.selectedItem,
    this.hint = "",
    this.helperText = "",
    this.label,
    this.height = 50,
    this.searchItemFontSize = 10,
    this.searchItemColor,
    this.isDense = true,
    this.isFilled = false,
    this.fillColor,
    this.isUnderLineInputBorder = false,
    this.borderWidth = 0.5,
    this.borderColor,
    this.borderRadius,
    this.preixWidget,
    this.suffixWidget,
    this.padding,
    this.hintTextStyle,
    this.helperTextStyle,
    required this.itemFontSize,
    this.dropDownButton,
    this.required = false,
    this.isEnable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.5.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          border: Border.all(
            color: AppColors.borderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4)),
      child: DropdownSearch<dynamic>(
        dropDownButton: dropDownButton,
        autoValidateMode: autoValidateMode ?? AutovalidateMode.disabled,
        mode: dropdownMode,
        showSelectedItems: showSelectedItem,
        items: items,
        selectedItem: selectedItem,
        itemAsString: (item) => item!.title,
        validator: validator,
        showSearchBox: showSearchbox,
        dropdownBuilder: (context, selectedItem) => Text(
          selectedItem!.title,
          style:
              TextStyle(fontSize: itemFontSize, color: const Color(0xFF1C1C24)),
        ),
        popupItemBuilder: (context, item, isSelected) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            item.title,
            style:
                TextStyle(fontSize: itemFontSize, fontFamily: "Roboto-Light"),
          ),
        ),
        enabled: isEnable,
        dropdownSearchBaseStyle: TextStyle(
            fontSize: searchItemFontSize,
            color: searchItemColor ?? const Color(0xFF94A2BE),
            fontFamily: "Roboto-Light"),
        maxHeight: height,
        dropdownSearchDecoration: InputDecoration(
          label: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RichText(
              text: TextSpan(
                  text: label,
                  style: const TextStyle(
                      color: AppColors.darkGreyColor,
                      fontSize: 16,
                      fontFamily: "Roboto-Light"),
                  children: <TextSpan>[
                    TextSpan(
                      text: required ? ' *' : '',
                      style: const TextStyle(
                          color: AppColors.redColor,
                          fontSize: 16,
                          fontFamily: "Roboto-Light"),
                    )
                  ]),
            ),
          ),
          helperText: helperText,
          helperStyle: helperTextStyle,
          isDense: isDense,
          filled: isFilled,
          fillColor: fillColor,
          prefixIcon: preixWidget,
          suffix: suffixWidget,
          contentPadding: padding ?? const EdgeInsets.fromLTRB(10, 0, 10, -25),
          border: InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
        ),
        onSaved: (newValue) => onSaved,
        onChanged: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
