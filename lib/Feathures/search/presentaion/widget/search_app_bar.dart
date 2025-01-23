import 'package:flutter/material.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/widget/text_animat.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: TextAnimat(
        fontSize: 20,
        color1: Appcolor.primaryColor,
        color2: Appcolor.textColorGray,
        txt: AppStrings.search,
      ),
    );
  }
}
