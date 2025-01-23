import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tashkeela/Feathures/auth/presentaion/widget/signup_bottom_bar.dart';
import 'package:tashkeela/Feathures/auth/presentaion/widget/signup_formfild.dart';
import 'package:tashkeela/Feathures/auth/presentaion/widget/signup_top_bar.dart';
import 'package:tashkeela/core/utils/app_assets.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Lottie.asset(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            Assets.assetsAnimationAuthBg,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.035,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SignUpTopBar(),
                ),
                SliverToBoxAdapter(
                  child: SignUpFormFild(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SignUpBottomBar(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
