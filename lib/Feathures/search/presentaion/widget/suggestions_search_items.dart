import 'package:flutter/material.dart';
import 'package:tashkeela/core/utils/app_color.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class SuggestionsSearchItems extends StatelessWidget {
  const SuggestionsSearchItems({
    super.key,
    required this.data,
  });

  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      child: GridView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            margin: const EdgeInsets.all(2),
            padding: const EdgeInsets.all(4),
            width: MediaQuery.of(context).size.width / 6,
            height: MediaQuery.of(context).size.height * 0.003,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Appcolor.allMatchsBabyBlue,
            ),
            child: Text(
              data[index]["name"]!,
              textAlign: TextAlign.center,
              style: AppTextThem.whait12normal,
            ),
          ),
        ),
        itemCount: 6,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      ),
    );
  }
}
