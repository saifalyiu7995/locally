import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HeadingText extends StatelessWidget {
  final String textValue;
  const HeadingText({Key? key, required this.textValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(textValue , style: TextStyle(fontSize: 20.sp , fontWeight: FontWeight.w500),);
  }
}
