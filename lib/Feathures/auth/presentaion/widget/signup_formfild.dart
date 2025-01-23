import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/auth/presentaion/widget/custom_textform_filed.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/widget/custom_btn.dart';

class SignUpFormFild extends StatelessWidget {
  const SignUpFormFild({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Form(
        child: Column(
          children: [
            CustemTextFormFiled(
              txt: AppStrings.name,
              onChanged: (name) {},
            ),
            CustemTextFormFiled(
              txt: AppStrings.phone,
              onChanged: (phone) {},
            ),
            CustemTextFormFiled(
              txt: AppStrings.email,
              onChanged: (email) {},
            ),
            CustemTextFormFiled(
              txt: AppStrings.password,
              onChanged: (pass) {},
            ),
            CustemTextFormFiled(
              txt: AppStrings.rePassword,
              onChanged: (rePass) {},
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CustomBtn(
              txt: AppStrings.createAccount,
              w: 280,
              h: 55,
              fontColor: Appcolor.buttonTextColor,
              fontSize: 16,
              onpressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
