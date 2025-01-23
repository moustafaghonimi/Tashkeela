import 'package:flutter/material.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class CustemTextFormFiled extends StatelessWidget {
  const CustemTextFormFiled(
      {super.key, required this.txt, required this.onChanged});
  final String txt;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        textDirection: TextDirection.rtl,
        autocorrect: true,
        decoration: InputDecoration(
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
            labelText: txt),
        cursorColor: Appcolor.primaryColor,
        onChanged: onChanged,
        textAlign: TextAlign.center,
        style: AppTextThem.green14bold.copyWith(fontSize: 16),
      ),
    );
  }
}
