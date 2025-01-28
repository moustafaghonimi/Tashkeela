import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/search/presentaion/widget/search_item.dart';
import 'package:tashkeela/Feathures/search/presentaion/widget/search_not_found_image.dart';

class BuildResultSeaction extends StatelessWidget {
  const BuildResultSeaction({
    super.key,
    required this.query,
    required this.data,
  });

  final String query;
  final List<Map<String, dynamic>> data;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> results;

    if (query.isEmpty) {
      return const SearchNotFoundImage();
    } else {
      results = data
          .where((element) =>
              element["name"] != null &&
                  element["name"]!
                      .toLowerCase()
                      .startsWith(query.toLowerCase()) ||
              element["name"]!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }

    if (results.isEmpty) {
      return const SearchNotFoundImage();
    }

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) => SearchItem(
        index: index,
        data: results,
      ),
    );
  }
}
