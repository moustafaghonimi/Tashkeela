import 'package:flutter/material.dart';
import 'package:tashkeela/core/utils/app_color.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn(
      {super.key,
      required this.txt,
      required this.w,
      required this.h,
      required this.fontColor,
      required this.fontSize,
      required this.onpressed});
  final String txt;
  final double w;
  final double h;
  final Color fontColor;
  final double fontSize;
  final void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Appcolor.buttonColor, fixedSize: Size(w, h)),
      onPressed: onpressed,
      child: Text(
        txt,
        style: TextStyle(
            color: fontColor, fontSize: fontSize, fontWeight: FontWeight.w600),
      ),
    );
  }
}
