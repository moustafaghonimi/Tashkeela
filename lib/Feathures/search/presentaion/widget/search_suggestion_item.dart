import 'package:flutter/material.dart';
import 'package:tashkeela/core/utils/app_text_them.dart';

class SearchSuggestionItem extends StatelessWidget {
  const SearchSuggestionItem(
      {super.key, required this.filteredSuggestions, required this.index});
  final List<Map<String, dynamic>> filteredSuggestions;
  final int index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        clipBehavior: Clip.antiAlias,
        child: Image.asset(
          filteredSuggestions[index]['image']!,
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        filteredSuggestions[index]['name']!,
        style: AppTextThem.green14bold,
      ),
      subtitle: Text(
          '${filteredSuggestions[index]['description']} (${filteredSuggestions[index]['country']})'),
      onTap: () {
        SnackBar(
          content: Text('اضغط على العلامة دى 🔎'),
        );
      },
    );
  }
}
