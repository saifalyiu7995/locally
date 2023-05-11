import 'package:flutter/material.dart';
import 'package:locally_app/utils/app_constant.dart';

class SubCategoryItem extends StatelessWidget {
  const SubCategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Image(
          image: AssetImage('${AppConstant.assetImages}sub_category_item.png'),
          height: 42,
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: SizedBox(
            width: 50,
            child: Text(
              'Chicken',
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
