import 'package:flutter/material.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class PlayerItemAgeAndGoalDesign extends StatelessWidget {
  const PlayerItemAgeAndGoalDesign({super.key, required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.229,
      height: MediaQuery.of(context).size.height * 0.068,
      decoration: BoxDecoration(
        color: Appcolor.liveColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Appcolor.primaryColor),
      ),
      child: Text(
        textAlign: TextAlign.center,
        txt,
        style: AppTextThem.whait16w400.copyWith(fontSize: 12),
      ),
    );
  }
}
