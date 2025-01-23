import 'package:flutter/widgets.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/widget/text_animat.dart';

class SignInTopBar extends StatelessWidget {
  const SignInTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
      child: TextAnimat(
        txt: AppStrings.signInTopBarTxt,
        fontSize: 25,
        color1: Appcolor.primaryColor,
        color2: Appcolor.textColorGray,
      ),
    );
  }
}
