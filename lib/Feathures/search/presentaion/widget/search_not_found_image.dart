import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tashkeela/core/utils/app_assets.dart';
import 'package:tashkeela/core/utils/app_strings.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class SearchNotFoundImage extends StatelessWidget {
  const SearchNotFoundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Lottie.asset(Assets.assetsAnimationSearchNotFound),
              Text(
                AppStrings.searchNotFound,
                style: AppTextThem.whait20w500,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
