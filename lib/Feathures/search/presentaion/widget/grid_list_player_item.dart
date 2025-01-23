import 'package:flutter/material.dart';
import 'package:tashkeela/core/utils/app_assets.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class GridListPlayerItem extends StatelessWidget {
  const GridListPlayerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridTile(
        footer: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Appcolor.bgUpComing,
          ),
          height: 100,
        ),
        child: Column(
          children: [
            Text(
              'مصطفى غنيمى',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextThem.green14bold,
            ),
            Image.asset(
              Assets.assetsImagesMancheste,
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.height * 0.08,
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Text(
              "الجنسية: قليوبي 😅",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "اغلى لاعب فى القليوبية يجيد اللعب فى اى مكان ",
              style: AppTextThem.whait12normal,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
