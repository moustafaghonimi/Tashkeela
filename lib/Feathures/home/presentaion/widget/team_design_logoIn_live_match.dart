// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

// ignore: must_be_immutable
class TeamDesignLogoInLiveMatch extends StatelessWidget {
  TeamDesignLogoInLiveMatch(
      {super.key,
      required this.image,
      required this.name,
      this.score = 0,
      // this.goalNamePlayer,
      required this.isGoal});
  final String image;
  final String name;
  // List<String>? goalNamePlayer;
  int? score;
  final bool isGoal;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                name,
                style: AppTextThem.whait20w500,
              ),
            ),
            isGoal
                ? Column(
                    children: [
                      Text(
                        '$score',
                        style: AppTextThem.whait20w500,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.11,
                        height: MediaQuery.of(context).size.width * 0.11,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill, image: AssetImage(image))),
                      ),
                      // Text(
                      //   '${goalNamePlayer!.first}\n${goalNamePlayer!.last}',
                      //   style: AppTextThem.whait12normal,
                      // ),
                    ],
                  )
                : Container(
                    width: MediaQuery.of(context).size.width * 0.11,
                    height: MediaQuery.of(context).size.width * 0.11,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.fill, image: AssetImage(image))),
                  ),
          ]),
    );
  }
}
