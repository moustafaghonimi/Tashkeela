import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tashkeela/core/utils/app_assets.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator(
      {super.key, required this.h, required this.w});
  final double h;
  final double w;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: h,
        width: w,
        child: ClipOval(
          child: Lottie.asset(
            Assets.assetsAnimationLoading,
            fit: BoxFit.fill,
          ),
        ));
  }
}
