import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';

class ResponsiveButtton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  const ResponsiveButtton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset("assets/images/button-one.png")],
      ),
    );
  }
}