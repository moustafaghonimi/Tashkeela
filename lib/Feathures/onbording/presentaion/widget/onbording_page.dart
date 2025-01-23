import 'package:flutter/material.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';
import 'package:lottie/lottie.dart';

class OnBordingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const OnBordingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Lottie.asset(
          image,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          fit: BoxFit.fill,
        ),
        SizedBox(height: 20),
        Text(
            textAlign: TextAlign.center, title, style: AppTextThem.whait20w500),
        SizedBox(height: 10),
        Text(subtitle,
            textAlign: TextAlign.center, style: AppTextThem.whait12normal),
        SizedBox(height: MediaQuery.of(context).size.height / 3),
      ],
    );
  }
}
