import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:locally_app/theme/app_colors.dart';


class CustomLoginLoadingWidget extends StatelessWidget {
  const CustomLoginLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var appTheme = Theme.of(context).textTheme;
    return Stack(children: <Widget>[
      const Opacity(
          opacity: 1,
          child:
              ModalBarrier(dismissible: false, color: AppColors.primaryColor)),
      Center(
          child: SpinKitWave(
              size: 30,
              itemBuilder: (BuildContext context, int index) {
                return const DecoratedBox(
                  decoration: BoxDecoration(color: AppColors.secondaryColor),
                );
              }))
    ]);
  }
}
