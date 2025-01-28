import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tashkeela/Feathures/auth/data/features/auth/data/cubit/auth_cubit.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class CustemTextFormFiled extends StatefulWidget {
  final String txt;
  final void Function(String) onChanged;
  final String? Function(String?) validator;
  final TextInputType? textInputType;
  const CustemTextFormFiled(
      {super.key,
      required this.txt,
      required this.onChanged,
      required this.validator,
      this.textInputType});

  @override
  State<CustemTextFormFiled> createState() => _CustemTextFormFiledState();
}

class _CustemTextFormFiledState extends State<CustemTextFormFiled> {
  final bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        keyboardType: widget.textInputType,
        validator: widget.validator,
        textDirection: TextDirection.rtl,
        autocorrect: true,
        decoration: InputDecoration(
            suffixIcon: widget.txt == AppStrings.password
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        authCubit.isPassword = !authCubit.isPassword;
                      });
                    },
                    icon: Icon(
                      !authCubit.isPassword
                          ? Icons.visibility_off
                          : Icons.password,
                      color: !authCubit.isPassword
                          ? Appcolor.primaryColor
                          : Appcolor.textColorGray,
                    ),
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Appcolor.textColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                color: Appcolor.primaryColor,
              ),
            ),
            labelText: widget.txt),
        cursorColor: Appcolor.primaryColor,
        onChanged: widget.onChanged,
        textAlign: TextAlign.center,
        style: AppTextThem.green14bold.copyWith(fontSize: 16),
        obscuringCharacter: '⚽',
        obscureText: widget.txt == AppStrings.password
            ? authCubit.isPassword
            : !authCubit.isPassword || widget.txt == AppStrings.rePassword
                ? authCubit.isPassword
                : !authCubit.isPassword,
      ),
    );
  }
}
