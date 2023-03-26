import 'package:flutter/material.dart';
import 'package:locally_app/theme/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget? leadingIcon;
  final String hintText;
  final String labelText;
  final bool useRitchLabel;
  final bool isEnable, obscureText;
  final TextInputType? inputType;
  final TextEditingController controller;
  final FocusNode? node;
  final Function? onFieldSubmit, onChange;
  final TextInputAction? inputAction;
  final bool readOnly, isFilled;
  final Function()? onTap;
  final EdgeInsets? padding;
  final int maxLines;
  final double? borderRadius;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode? autoValidateMode;
  final double borderWidth;
  final double hintFont;
  final double styleFont;
  final Widget? suffixWidget;
  final BuildContext context;
  final InputBorder? border;
  final InputBorder? enableBorder;
  final InputBorder? disableBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? errorFocusedBorder;
  final bool? required;

  final Color? borderColor;
  final Color? cursorColor;
  final Color? labelColor;
  final Color? hintColor;
  final Color? fillColor;
  final Color? textColor;
  final FloatingLabelBehavior? floatingLabelBehavior;

  const CustomTextFormField({
    Key? key,
    required this.context,
    this.leadingIcon,
    this.hintText = "",
    this.labelText = "",
    this.obscureText = false,
    this.isEnable = true,
    this.inputType,
    this.isFilled = true,
    this.useRitchLabel = false,
    required this.controller,
    this.node,
    this.validator,
    this.onFieldSubmit,
    this.onChange,
    this.inputAction,
    this.readOnly = false,
    this.onTap,
    this.padding,
    this.autoValidateMode,
    this.maxLines = 1,
    this.borderRadius,
    this.hintFont = 16.0,
    this.suffixWidget,
    this.borderWidth = 0.5,
    this.styleFont = 12,
    this.borderColor,
    this.cursorColor,
    this.floatingLabelBehavior,
    this.labelColor,
    this.hintColor,
    this.fillColor,
    this.textColor,
    this.border,
    this.enableBorder,
    this.disableBorder,
    this.errorBorder,
    this.focusedBorder,
    this.required = false,
    this.errorFocusedBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: cursorColor ?? const Color(0xFF94A2BE),
      autovalidateMode: autoValidateMode,
      keyboardType: inputType ?? TextInputType.text,
      obscureText: obscureText,
      autocorrect: false,
      enabled: isEnable,
      textInputAction: inputAction ?? TextInputAction.next,
      onFieldSubmitted: (value) => onFieldSubmit,
      controller: controller,
      maxLines: maxLines,
      focusNode: node,
      readOnly: readOnly,
      style: TextStyle(
          fontSize: styleFont,
          color: !isEnable ? labelColor : textColor ?? const Color(0xFF94A2BE),
          fontWeight: FontWeight.w300,
          fontFamily: "Roboto-Light"),
      onTap: onTap,
      decoration: InputDecoration(
          alignLabelWithHint: true,
          floatingLabelBehavior:
              floatingLabelBehavior ?? FloatingLabelBehavior.never,
          isDense: true,
          label: useRitchLabel
              ? RichText(
                  text: TextSpan(
                      text: labelText,
                      style: TextStyle(
                          color: labelColor ?? const Color(0xFF94A2BE),
                          fontSize: hintFont,
                          fontFamily: "Roboto-Light"),
                      children: <TextSpan>[
                        TextSpan(
                          text: required! ? ' *' : ' ',
                          style: TextStyle(
                              color: AppColors.redColor,
                              fontSize: hintFont,
                              fontFamily: "Roboto-Light"),
                        )
                      ]),
                )
              : null,
          labelText: useRitchLabel ? null : labelText,
          labelStyle: TextStyle(
            color: labelColor ?? const Color(0xFF94A2BE),
            fontSize: hintFont,
            fontFamily: "Roboto-Light",
          ),
          fillColor: fillColor,
          filled: isFilled,
          suffixIcon: suffixWidget,
          prefixIcon: leadingIcon,
          contentPadding: padding ??
              const EdgeInsets.only(left: 15, top: 14, right: 15, bottom: 14),
          border: border ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(!isEnable ? 0.3 : borderRadius ?? 2)),
                  borderSide: BorderSide(
                      width: borderWidth, color: const Color(0xFF94A2BE))),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(!isEnable ? 0.3 : borderRadius ?? 2)),
              borderSide: BorderSide(
                  width: borderWidth, color: const Color(0xFF94A2BE))),
          enabledBorder: enableBorder ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(!isEnable ? 0.3 : borderRadius ?? 2)),
                  borderSide: BorderSide(
                      width: borderWidth, color: const Color(0xFF94A2BE))),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(!isEnable ? 0.3 : borderRadius ?? 2)),
                  borderSide: BorderSide(
                      width: borderWidth, color: const Color(0xFF94A2BE))),
          errorBorder: errorBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(!isEnable ? 0.3 : borderRadius ?? 2)),
                borderSide: BorderSide(
                    color: const Color(0xFF94A2BE), width: borderWidth),
              ),
          focusedErrorBorder: errorFocusedBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(!isEnable ? 0.3 : borderRadius ?? 2)),
                borderSide: BorderSide(
                    color: const Color(0xFF94A2BE), width: borderWidth),
              ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: hintFont,
            color: hintColor ?? const Color(0xFF94A2BE),
          )),
      validator: validator,
      onChanged: (value) => onChange,
      onSaved: (newValue) => controller.text,
    );
  }
}
