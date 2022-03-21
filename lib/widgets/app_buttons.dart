import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:travel_app/widgets/texts/app_text.dart';

import '../misc/colors.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;

  AppButtons(
      {Key? key,
      this.isIcon = false,
      required this.color,
      this.text = "hi",
      this.icon,
      required this.backgroundColor,
      required this.borderColor,
      required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
          border: Border.all(
            color: borderColor,
            width: 1.0,
          )),
      child: isIcon == false
          ? Center(
              child: AppText(
                text: this.text!,
                color: color,
              ),
            )
          : Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
    );
  }
}
