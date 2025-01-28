import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/history_player/presentaion/view_model/player_data_model.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class HistoryBodySection extends StatelessWidget {
  const HistoryBodySection({super.key});
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = PlayerData.players;

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: GridView.builder(
        padding: const EdgeInsets.all(2),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: data.length,
        itemBuilder: (context, index) =>
            HistoryBodyItem(data: data, index: index),
      ),
    );
  }
}

class HistoryBodyItem extends StatelessWidget {
  const HistoryBodyItem({super.key, required this.data, required this.index});
  final List<Map<String, dynamic>> data;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(4),
      width: 100,
      height: 300,
      decoration: BoxDecoration(
        color: Appcolor.allMatchsBabyBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(alignment: Alignment.center, children: [
        ColorFiltered(
          colorFilter:
              const ColorFilter.mode(Colors.black26, BlendMode.dstATop),
          child: Image.asset(
            data[index]['image']!,
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.dstOver,
          ),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text(data[index]['name']!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextThem.green14bold),
          Text("${data[index]['age']!}سنه ", style: AppTextThem.whait16w400),
          Text("اتولد فى ${data[index]['country']!}",
              style: AppTextThem.whait16w400),
          Text("الترتيب العالمى رقم: ${data[index]['ranking']!} ",
              style: AppTextThem.whait16w400.copyWith(fontSize: 14)),
        ]),
      ]),
    );
  }
}
