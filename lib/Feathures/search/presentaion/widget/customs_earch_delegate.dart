import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/search/presentaion/widget/my_search_elegate.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class CustomSearchDelegate extends StatelessWidget {
  const CustomSearchDelegate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
        child: GestureDetector(
          onTap: () {
            showSearch(
              context: context,
              delegate: MySearchDelegate(),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Appcolor.secondaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.searchTxt, style: AppTextThem.whait16w400),
                Icon(
                  Icons.search,
                  color: Appcolor.primaryColor,
                ),
              ],
            ),
          ),
        ));
  }
}
