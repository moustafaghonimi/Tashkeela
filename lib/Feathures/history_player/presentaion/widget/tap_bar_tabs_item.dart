import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/history_player/presentaion/view_model/player_data_model.dart';

class TapBarTabsItem extends StatelessWidget {
  const TapBarTabsItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(CountryData.country[index]['country']!),
        SizedBox(
          width: 5,
        ),
        ClipOval(
          child: Image.asset(
            CountryData.country[index]['flag']!,
            width: 30,
            height: 30,
          ),
        ),
      ],
    );
  }
}
