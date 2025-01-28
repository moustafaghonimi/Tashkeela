import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/home/presentaion/widget/team_design_logo_in_live_match.dart';
import 'package:tashkeela/core/utils/app_assets.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class AllMatchsDesign extends StatelessWidget {
  const AllMatchsDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        clipBehavior: Clip.antiAlias,
        width: MediaQuery.of(context).size.width * 0.85,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          // color: Appcolor.allMatchsBabyBlue
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TeamDesignLogoInLiveMatch(
                  isGoal: false,
                  image: Assets.assetsImagesMancheste,
                  name: 'مانشستر',
                ),
                Column(
                  children: [
                    Text(
                      '2025-1-26',
                      style: AppTextThem.whait12normal,
                    ),
                    Text(
                      '2 مساء',
                      style: AppTextThem.green14bold,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Appcolor.textColorUpComingBtn,
                          fixedSize: Size(110, 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          '🔔 فكرنى',
                          style: AppTextThem.black16w400.copyWith(
                              fontSize: 12, color: Appcolor.primaryColor),
                        ))
                  ],
                ),
                TeamDesignLogoInLiveMatch(
                  isGoal: false,
                  image: Assets.assetsImagesArsenal,
                  name: 'ارسنال',
                ),
              ],
            ),
            Divider(
              color: Appcolor.primaryColor,
              // indent: 50,
              // endIndent: 50,
            )
          ],
        ),
      ),
    );
  }
}
