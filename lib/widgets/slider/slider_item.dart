import 'package:flutter/material.dart';
import 'package:locally_app/utils/app_constant.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Padding(
        padding: EdgeInsets.only(right: 10),
        child: Image(
          image: AssetImage('${AppConstant.assetImages}slider_image.png'),
          width: 300,
        ),
      ),
    );
  }
}
