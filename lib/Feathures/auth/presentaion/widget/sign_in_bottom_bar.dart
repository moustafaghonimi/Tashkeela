import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tashkeela/core/routes/custome_routs.dart';
import 'package:tashkeela/core/utils/app_assets.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';
import 'package:tashkeela/core/widget/text_animat.dart';

class SignInBottomBar extends StatelessWidget {
  const SignInBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              customNavigationRoutrReplasment(context, 'SignupView');
            },
            child: TextAnimat(
                fontSize: 16,
                color1: Appcolor.textColor,
                color2: Appcolor.buttonTextColor,
                txt: AppStrings.dontHaveAnAccount),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            '_____________ أو _____________',
            style: AppTextThem.whait16w400,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Lottie.asset(Assets.assetsAnimationGoogle,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.height * 0.15),
              ),
              GestureDetector(
                onTap: () {},
                child: Lottie.asset(Assets.assetsAnimationFacebook,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.height * 0.12),
              ),
            ],
          )
        ],
      ),
    );
  }
}
