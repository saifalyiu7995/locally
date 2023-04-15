import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String labelText;
  final IconData icon;
  const TextFormFieldCustom({Key? key, required this.labelText, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      shadowColor:const Color(0xFFECECEC),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          labelText: labelText,
          labelStyle: const TextStyle(color: Color(0xFF646C70) , fontWeight: FontWeight.w300),
          filled: true,
          fillColor: const Color(0xFFEDF4F8),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
            // Add box shadow
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.5),
            //     spreadRadius: 2,
            //     blurRadius: 5,
            //     offset: Offset(0, 2),
            //   ),
            // ],
          ),
          // Add padding to the text field content
          contentPadding:const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        ),

      ),
    );
  }
}
