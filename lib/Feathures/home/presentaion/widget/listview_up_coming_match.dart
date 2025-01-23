import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/home/presentaion/widget/up_coming_match_design.dart';

class ListViewUpComingMatch extends StatelessWidget {
  const ListViewUpComingMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => UpComingMatchDesign(),
        separatorBuilder: (context, index) => SizedBox(
          width: 10,
        ),
        itemCount: 10,
      ),
    );
  }
}
