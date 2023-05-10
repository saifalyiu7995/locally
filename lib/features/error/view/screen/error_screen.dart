import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:locally_app/utils/app_constant.dart';
import 'package:locally_app/widgets/textFormField/search_text_field.dart';
import 'package:sizer/sizer.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen({super.key});

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    '${AppConstant.assetImages}arrow-left.svg',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: const SearchTextField(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Oops..!! Something Gone Worng",
                style: TextStyle(
                  color: Color(0xff041421),
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SvgPicture.asset(
                  '${AppConstant.assetImages}oops.svg',
                  height: 18.h,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Let us know what are you looking for",
                style: TextStyle(
                    color: Color(0xff041421),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "We will inform you know when we have that item or shop on our platform",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff6B829D),
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const UnderLineBorderTextField(
                hint: 'Product or Shop Name',
              ),
              const SizedBox(
                height: 5,
              ),
              const UnderLineBorderTextField(
                hint: 'Location',
              ),
              const SizedBox(
                height: 5,
              ),
              const UnderLineBorderTextField(
                hint: 'Phone Number (Optional)',
              ),
              const SizedBox(
                height: 5,
              ),
              const UnderLineBorderTextField(
                hint: 'Message',
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: const Color(0xff064769),
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  onPressed: () {},
                  child: const Text('Submit Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UnderLineBorderTextField extends StatelessWidget {
  final String hint;

  const UnderLineBorderTextField({
    super.key,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.black), // Set text color
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xFF6B829D), fontSize: 14),
        // Set hint color
        border: UnderlineInputBorder(
          borderSide: BorderSide(
              color: const Color(0xFF6B829D).withOpacity(0.5), width: 1),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF6B829D), width: 1),
        ),
      ),
    );
  }
}
