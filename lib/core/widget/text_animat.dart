import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gradient_animation_text/flutter_gradient_animation_text.dart';

class TextAnimat extends StatelessWidget {
  const TextAnimat(
      {super.key,
      required this.fontSize,
      required this.color1,
      required this.color2,
      required this.txt});
  final double fontSize;
  final Color color1;
  final Color color2;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return // Tranform Text
        GradientAnimationText(
      text: Text(
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        txt,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
      colors: [
        color1,
        color2,
      ],
      duration: Duration(seconds: 6),
      transform: GradientRotation(pi / 4), // tranform
    );
  }
}
