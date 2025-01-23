import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/history_player/presentaion/widget/player_item_age_and_goal_design.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key, required this.index, required this.data});
  final int index;
  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        child: SearchItemContiner(
          index: index,
          players: data,
        ));
  }
}

class SearchItemContiner extends StatelessWidget {
  const SearchItemContiner({
    super.key,
    required this.index,
    required this.players,
  });
  final int index;
  final List<Map<String, dynamic>> players;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.29,
      decoration: BoxDecoration(
        color: Appcolor.secondaryColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Appcolor.primaryColor),
      ),
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.27,
            child: Image.asset(
              players[index]['image']!,
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              SizedBox(width: 2),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Text(
                      players[index]['name']!,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextThem.green14bold.copyWith(fontSize: 22),
                    ),
                  ),
                  SizedBox(width: 2),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      players[index]['description']!,
                      textAlign: TextAlign.center,
                      style: AppTextThem.whait12normal,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(width: 2),
                  Row(
                    children: [
                      PlayerItemAgeAndGoalDesign(
                        txt:
                            " رقم ${players[index]['ranking'].toString()} عالمياَ",
                      ),
                      PlayerItemAgeAndGoalDesign(
                        txt: "${players[index]['age'].toString()} سنه",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      PlayerItemAgeAndGoalDesign(
                        txt:
                            " عدد الاهداف ${players[index]['goals'].toString()}",
                      ),
                      PlayerItemAgeAndGoalDesign(
                        txt: "من ${players[index]['country'].toString()} ",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
