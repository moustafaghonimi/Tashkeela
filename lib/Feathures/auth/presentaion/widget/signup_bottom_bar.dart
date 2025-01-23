import 'package:flutter/material.dart';
import 'package:tashkeela/core/routes/custome_routs.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/widget/text_animat.dart';

class SignUpBottomBar extends StatelessWidget {
  const SignUpBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0),
      child: Column(
        children: [
          TextAnimat(
              fontSize: 20,
              color1: Appcolor.textColor,
              color2: Appcolor.buttonTextColor,
              txt: AppStrings.haveAnAccount),
          InkWell(
              onTap: () {
                customNavigationRoutrReplasment(context, 'SignInView');
              },
              child: Text(AppStrings.signInAtSignUpScreen)),
        ],
      ),
    );
  }
}
