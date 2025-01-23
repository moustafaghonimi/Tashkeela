import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/auth/presentaion/widget/custom_textform_filed.dart';
import 'package:tashkeela/core/routes/custome_routs.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/widget/custom_btn.dart';

class SignInFormFild extends StatelessWidget {
  const SignInFormFild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Form(
        child: Column(
          children: [
            CustemTextFormFiled(
              txt: AppStrings.email,
              onChanged: (email) {},
            ),
            CustemTextFormFiled(
              txt: AppStrings.password,
              onChanged: (pass) {},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CustomBtn(
              txt: AppStrings.signIn,
              w: 280,
              h: 55,
              fontColor: Appcolor.buttonTextColor,
              fontSize: 16,
              onpressed: () {
                customNavigationRoutrReplasment(context, 'AnimatedPage');
              },
            )
          ],
        ),
      ),
    );
  }
}
