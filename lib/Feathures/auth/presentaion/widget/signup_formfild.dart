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

class SignUpFormFild extends StatelessWidget {
  const SignUpFormFild({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          customToast(
            context,
            AppStrings.signUpScess,
          );
          customNavigationRoutrReplasment(context, 'SignInView');
        } else if (state is SignUpError) {
          customToast(context, AppStrings.signUpFaild);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Form(
            key: authCubit.signUpFormKey,
            child: Column(
              children: [
                CustemTextFormFiled(
                  textInputType: TextInputType.name,
                  txt: AppStrings.name,
                  onChanged: (name) {
                    authCubit.name = name;
                  },
                  validator: (name) {
                    if (name!.isEmpty) {
                      return AppStrings.nameNotValid;
                    }
                    return null;
                  },
                ),
                CustemTextFormFiled(
                  textInputType: TextInputType.phone,
                  txt: AppStrings.phone,
                  onChanged: (phone) {
                    authCubit.phone = phone;
                  },
                  validator: (phone) {
                    if (phone!.length < 10) {
                      return AppStrings.phoneNotValid;
                    }
                    return null;
                  },
                ),
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
                  txt: AppStrings.password,
                  onChanged: (pass) {
                    authCubit.password = pass;
                  },
                  validator: (pass) {
                    if (pass!.length < 6) {
                      return AppStrings.passwordShort;
                    }
                    return null;
                  },
                ),
                CustemTextFormFiled(
                  txt: AppStrings.rePassword,
                  onChanged: (rePass) {
                    authCubit.rePass = rePass;
                  },
                  validator: (rePass) {
                    if (rePass != authCubit.password) {
                      return AppStrings.passwordNotMatch;
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                state is SignUpLoading
                    ? AnimatedCircularProgressIndicator(h: 100, w: 100)
                    : CustomBtn(
                        txt: AppStrings.createAccount,
                        w: 280,
                        h: 55,
                        fontColor: Appcolor.buttonTextColor,
                        fontSize: 16,
                        onpressed: () {
                          if (authCubit.signUpFormKey.currentState!
                              .validate()) {
                            authCubit.signUpAutheWithEmailAndPassword(context);
                            if (state is SignUpSuccess) {
                              authCubit.signUpFormKey.currentState!.reset();
                            }
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
