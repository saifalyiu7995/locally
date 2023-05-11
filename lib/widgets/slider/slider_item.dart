import 'package:flutter/material.dart';
import 'package:locally_app/utils/app_constant.dart';

class SliderItem extends StatelessWidget {
  final String image;
  final double width;
  const SliderItem({
    super.key,
    required this.image,
    this.width = 300,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image(
          image: AssetImage('${AppConstant.assetImages}$image'),
          fit: BoxFit.cover,
          width: width,
        ),
      ),
    );
  }
}
