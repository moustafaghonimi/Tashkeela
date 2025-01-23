import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/history_player/presentaion/view_model/player_data_model.dart';
import 'package:tashkeela/Feathures/search/presentaion/widget/build_sesult_seaction.dart';
import 'package:tashkeela/Feathures/search/presentaion/widget/build_suggestion_seaction.dart';

class MySearchDelegate extends SearchDelegate {
  List<Map<String, dynamic>> data = PlayerData.players;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return BuildResultSeaction(query: query, data: data);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return BuildSuggestionSeaction(data: data, query: query);
  }
}
