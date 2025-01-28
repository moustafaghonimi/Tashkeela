import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tashkeela/Feathures/auth/data/features/auth/data/cubit/auth_cubit.dart';
import 'package:tashkeela/Feathures/auth/presentaion/widget/custom_textform_filed.dart';
import 'package:tashkeela/core/routes/custome_routs.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/widget/animated_circular_progress_indicator.dart';
import 'package:tashkeela/core/widget/custom_btn.dart';
import 'package:tashkeela/core/widget/custom_tost.dart';

class SignInFormFild extends StatelessWidget {
  const SignInFormFild({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          customToast(context, AppStrings.signInScess);

          customNavigationRoutrReplasment(context, 'AnimatedPage');
        } else if (state is SignInError) {
          customToast(context, AppStrings.signInFaild);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Form(
            key: authCubit.signInFormKey,
            child: Column(
              children: [
                CustemTextFormFiled(
                  textInputType: TextInputType.emailAddress,
                  txt: AppStrings.email,
                  onChanged: (email) {
                    authCubit.emailAddress = email;
                  },
                  validator: (email) {
                    if (!email!.contains('@')) {
                      return AppStrings.emailNotValid;
                    }
                    return null;
                  },
                ),
                CustemTextFormFiled(
                  textInputType: TextInputType.visiblePassword,
                  validator: (pass) {
                    if (pass!.length < 6) {
                      return AppStrings.passwordNotValid;
                    }
                    return null;
                  },
                  txt: AppStrings.password,
                  onChanged: (pass) {
                    authCubit.password = pass;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                state is SignInLoading
                    ? AnimatedCircularProgressIndicator(h: 110, w: 110)
                    : CustomBtn(
                        txt: AppStrings.signIn,
                        w: 280,
                        h: 55,
                        fontColor: Appcolor.buttonTextColor,
                        fontSize: 16,
                        onpressed: () {
                          if (authCubit.signInFormKey.currentState!
                              .validate()) {
                            authCubit.signInAutheWithEmailAndPassword(context);
                          }
                        },
                      )
              ],
            ),
          ),
        );
      },
    );
  }
}
