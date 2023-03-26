import 'package:flutter/material.dart';
import 'package:locally_app/utils/helper_functions.dart';
import 'package:sizer/sizer.dart';

class RiskWidget extends StatelessWidget {
  final String riskType;

  final int value;
  final String riskName;
  const RiskWidget(
      {Key? key,
      required this.riskType,
      required this.value,
      required this.riskName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: riskType == "TR"
              ? returnTravelRiskWidth(value)
              : riskType == "MR"
                  ? returnMedicalRiskWidth(value)
                  : null,
          height: 15,
          decoration: BoxDecoration(
              color: riskType == "TR"
                  ? returnTravelRiskColor(value)
                  : riskType == "MR"
                      ? returnMedicalRiskColor(value)
                      : null,
              borderRadius: const BorderRadius.all(Radius.circular(15))),
          child: Center(
              child: Text(
            value.toString(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: riskType == "TR"
                  ? value == 3 || value == 4
                      ? Colors.black
                      : Colors.white
                  : value == 2 || value == 3
                      ? Colors.black
                      : Colors.white,
            ),
          )),
        ),
        SizedBox(
          height: 1.h,
        ),
        Text(
          riskName,
          style: const TextStyle(
              fontSize: 11,
              color: Color(0xff4D4D4D),
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
