import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/search/presentaion/widget/my_search_elegate.dart';
import 'package:tashkeela/core/utils/app_assets.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class HistoryAppBar extends StatelessWidget {
  const HistoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MySearchDelegate());
              },
              icon: Icon(Icons.search)),
          Column(
            children: [
              SizedBox(
                child: Text(
                    textAlign: TextAlign.center,
                    AppStrings.news,
                    style: AppTextThem.green48bold.copyWith(fontSize: 20)),
              ),
              SizedBox(
                child: Text(
                    textAlign: TextAlign.center,
                    AppStrings.newsSubTitle,
                    style: AppTextThem.whait12normal),
              ),
            ],
          ),
          SizedBox(
              child: ClipOval(
                  child: Image.asset(
            Assets.assetsImagesOnBording1,
            width: MediaQuery.of(context).size.width * .1,
            height: MediaQuery.of(context).size.width * .1,
          ))),
        ],
      ),
    );
  }
}
