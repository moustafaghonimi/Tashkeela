import 'package:flutter/material.dart';
import 'package:tashkeela/core/utils/app_assets.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class HomePageAppBarAndHero extends StatelessWidget {
  const HomePageAppBarAndHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          SizedBox(
            child: Text(
                textAlign: TextAlign.center,
                AppStrings.appName,
                style: AppTextThem.green48bold.copyWith(fontSize: 24)),
          ),
          Hero(
            tag: 'book-hero',
            child: SizedBox(
                child: ClipOval(
                    child: Image.asset(
              Assets.assetsImagesOnBording1,
              width: MediaQuery.of(context).size.width * .1,
              height: MediaQuery.of(context).size.width * .1,
            ))),
          ),
        ],
      ),
    );
  }
}
