import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/home/presentaion/widget/team_design_logo_in_live_match.dart';
import 'package:tashkeela/core/utils/app_assets.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class LiveMatchDesign extends StatelessWidget {
  const LiveMatchDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: MediaQuery.of(context).size.height * 0.054,
          height: MediaQuery.of(context).size.height * 0.033,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 7,
              offset: const Offset(3, 0), // changes position of shadow
            ),
          ], borderRadius: BorderRadius.circular(4), color: Colors.yellow),
          child: Text(
            '82.5',
            textAlign: TextAlign.center,
            style: AppTextThem.black16w400,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.22,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Appcolor.liveColor),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TeamDesignLogoInLiveMatch(
                    isGoal: true,
                    image: Assets.assetsImagesMancheste,
                    name: 'مانشستر',
                    score: 1,
                    // goalNamePlayer: ['مينا'],
                  ),
                  Text(
                    'ضد',
                    style: AppTextThem.whait20w500,
                  ),
                  TeamDesignLogoInLiveMatch(
                    isGoal: true,
                    image: Assets.assetsImagesArsenal,
                    name: 'ارسنال',
                    score: 2,
                    // goalNamePlayer: ['مينا', 'سون'],
                  ),
                ],
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Appcolor.textColorUpComingBtn),
                  onPressed: () {},
                  child: Text(
                    'التفاصيل كلها هنا ',
                    style: AppTextThem.green14bold,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
