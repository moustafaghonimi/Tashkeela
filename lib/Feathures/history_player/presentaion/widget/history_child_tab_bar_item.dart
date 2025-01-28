import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:tashkeela/Feathures/history_player/presentaion/view_model/player_data_model.dart';
import 'package:tashkeela/Feathures/history_player/presentaion/widget/player_item_age_and_goal_design.dart';
import 'package:tashkeela/core/utils/app_assets.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class HistoryChildTapBarItem extends StatelessWidget {
  const HistoryChildTapBarItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final filteredPlayers = PlayerData.players.where((player) {
      return player['country'] == CountryData.country[index]['country'];
    }).toList();

    return filteredPlayers.isNotEmpty
        ? ListView.builder(
            itemBuilder: (context, playerIndex) =>
                HistoryChildTapBarItemContiner(
              index: playerIndex,
              players: filteredPlayers,
            ),
            itemCount: filteredPlayers.length,
          )
        : Center(
            child: Lottie.asset(Assets.assetsAnimationSearchNotFound),
          );
  }
}

class HistoryChildTapBarItemContiner extends StatelessWidget {
  const HistoryChildTapBarItemContiner({
    super.key,
    required this.index,
    required this.players,
  });
  final int index;
  final List<Map<String, dynamic>> players;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushReplacement(
          '/players',
          extra: players[index], // تمرير بيانات اللاعب كـ extra
        );
      },
      child: Container(
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
      ),
    );
  }
}
