import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/texts/app_text.dart';

class ResponsiveButtton extends StatelessWidget {
  final bool? isResponsive;
  final double? width;
  const ResponsiveButtton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? AppText(
                    text: "Book Trip now.",
                    color: Colors.white,
                  )
                : Image.asset("assets/images/button-one.png")
          ],
        ),
      ),
    );
  }
}
