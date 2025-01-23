import 'package:flutter/material.dart';

import 'live_match_design.dart';

class ListViewLiveMatch extends StatelessWidget {
  const ListViewLiveMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.22,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => LiveMatchDesign(),
        separatorBuilder: (context, index) => SizedBox(
          width: 10,
        ),
        itemCount: 10,
      ),
    );
  }
}
