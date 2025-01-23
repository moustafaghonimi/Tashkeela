import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/history_player/presentaion/view_model/player_data_model.dart';
import 'package:tashkeela/Feathures/history_player/presentaion/widget/history_child_tab_bar_item.dart';
import 'package:tashkeela/core/utils/app_color.dart';

import 'tap_bar_tabs_item.dart';

class CustomHistoryTabBar extends StatefulWidget {
  const CustomHistoryTabBar({super.key});

  @override
  State<CustomHistoryTabBar> createState() => _CustomHistoryTabBarState();
}

class _CustomHistoryTabBarState extends State<CustomHistoryTabBar> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.063,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: CountryData.country.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(6.0),
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    border: Border.all(color: Appcolor.primaryColor),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: selectedIndex == index
                        ? Appcolor.primaryColor
                        : Appcolor.liveColor,
                  ),
                  child: TapBarTabsItem(index: index),
                ),
              );
            },
          ),
        ),
        if (selectedIndex != -1)
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.744,
            child: HistoryChildTapBarItem(index: selectedIndex),
          )
      ],
    );
  }
}
