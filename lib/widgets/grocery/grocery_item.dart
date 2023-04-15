import 'package:flutter/material.dart';
import 'package:locally_app/utils/app_constant.dart';

class GroceryItem extends StatelessWidget {
  const GroceryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('${AppConstant.assetImages}category_item.png'),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8),
          child: SizedBox(
            width: 50,
            child: Text(
              'Sweet & Bakers',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff041421),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }
}
