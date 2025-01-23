import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/search/presentaion/widget/search_not_found_image.dart';
import 'package:tashkeela/Feathures/search/presentaion/widget/suggestions_search_items.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

import 'search_suggestion_item.dart';

class BuildSuggestionSeaction extends StatelessWidget {
  const BuildSuggestionSeaction({
    super.key,
    required this.data,
    required this.query,
  });

  final List<Map<String, dynamic>> data;
  final String query;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredSuggestions = data
        .where((element) =>
            element["name"] != null &&
            element["name"]!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    if (query.isEmpty) {
      return Center(
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.center,
              " اكتب اللى عايز تبحث عنه بس لازم تضغط على العلامة دى 🔎 متنساش",
              style: AppTextThem.whait20w500,
            ),
            SuggestionsSearchItems(
              data: filteredSuggestions,
            ),
          ],
        ),
      );
    }

    if (filteredSuggestions.isEmpty) {
      return const SearchNotFoundImage();
    }

    // Show real-time suggestions
    return ListView.builder(
        itemCount: filteredSuggestions.length,
        itemBuilder: (context, index) => SearchSuggestionItem(
              index: index,
              filteredSuggestions: filteredSuggestions,
            ));
  }
}
