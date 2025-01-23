import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tashkeela/Feathures/search/presentaion/widget/customs_earch_delegate.dart';
import 'package:tashkeela/core/utils/app_assets.dart';
import 'package:tashkeela/core/utils/app_color.dart';

import '../widget/listview_player_listile.dart';
import '../widget/search_app_bar.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.bgSearchColor,
      body: Stack(
        children: [
          Lottie.asset(Assets.assetsAnimationAuthBg,
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height),
          CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            SliverToBoxAdapter(
              child: SearchAppBar(),
            ),
            SliverToBoxAdapter(
              child: CustomSearchDelegate(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: PlayersListPage(),
            )
          ]),
        ],
      ),
    );
  }
}
