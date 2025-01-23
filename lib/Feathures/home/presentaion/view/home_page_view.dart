import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tashkeela/Feathures/home/presentaion/widget/home_app_bar.dart';
import 'package:tashkeela/Feathures/home/presentaion/widget/listview_live_match.dart';
import 'package:tashkeela/Feathures/home/presentaion/widget/listview_up_coming_match.dart';
import 'package:tashkeela/core/utils/app_assets.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/widget/text_animat.dart';

import '../widget/listview_all_matchs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Lottie.asset(
            Assets.assetsAnimationAuthBg,
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                ),
                SliverToBoxAdapter(
                  child: HomePageAppBarAndHero(),
                ),
                SliverToBoxAdapter(
                  child: TextAnimat(
                    fontSize: 18,
                    color1: Appcolor.textColorGray,
                    color2: Appcolor.textColor,
                    txt: AppStrings.liveMatch,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                ),
                SliverToBoxAdapter(child: ListViewLiveMatch()),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                ),
                SliverToBoxAdapter(
                  child: TextAnimat(
                    fontSize: 18,
                    color1: Appcolor.textColorGray,
                    color2: Appcolor.textColor,
                    txt: AppStrings.upComingMatch,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                ),
                SliverToBoxAdapter(child: ListViewUpComingMatch()),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                ),
                SliverToBoxAdapter(
                  child: TextAnimat(
                    fontSize: 18,
                    color1: Appcolor.textColorGray,
                    color2: Appcolor.textColor,
                    txt: AppStrings.allMatch,
                  ),
                ),
                SliverToBoxAdapter(child: ListviewAllMatchs()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
