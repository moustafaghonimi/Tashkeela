import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tashkeela/Feathures/history_player/presentaion/widget/custom_history_tab_bar.dart';
import 'package:tashkeela/Feathures/history_player/presentaion/widget/history_app_bar.dart';
import 'package:tashkeela/Feathures/history_player/presentaion/widget/history_body_section.dart';

import 'package:tashkeela/core/utils/app_assets.dart';

class HistoryPlayerView extends StatelessWidget {
  const HistoryPlayerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Lottie.asset(Assets.assetsAnimationAuthBg,
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height),
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                  child: SizedBox(
                height: 10,
              )),
              SliverToBoxAdapter(
                child: HistoryAppBar(),
              ),
              SliverToBoxAdapter(
                child: CustomHistoryTabBar(),
              ),
              SliverToBoxAdapter(
                child: HistoryBodySection(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
