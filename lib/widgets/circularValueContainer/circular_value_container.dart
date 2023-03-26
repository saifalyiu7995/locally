import 'package:flutter/material.dart';

Widget circularValueContainer({
  required Color color,
  required String text,
  required Color textColor,
  required String value,
  required Color valueColor,
  required Color valueFontColor,
}) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: TextStyle(color: textColor, fontSize: 8),
          ),
          const SizedBox(
            width: 3,
          ),
          Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: valueColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                value,
                style: TextStyle(fontSize: 10, color: valueFontColor),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
