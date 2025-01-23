import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/home/presentaion/widget/all_matchs_design.dart';
import 'package:tashkeela/core/utils/app_color.dart';

class ListviewAllMatchs extends StatelessWidget {
  const ListviewAllMatchs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Appcolor.allMatchsBabyBlue,
      ),
      child: ListView.separated(
        itemBuilder: (context, index) => AllMatchsDesign(),
        separatorBuilder: (context, index) => SizedBox(
          width: 15,
        ),
        itemCount: 10,
      ),
    );
  }
}
