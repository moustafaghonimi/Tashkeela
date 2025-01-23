import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tashkeela/Feathures/search/data/model/playerModel.dart';

Future<List<Player>> fetchPlayers() async {
  final response = await http.get(Uri.parse(
      'https://drive.google.com/file/d/1xrfS6nTCQ1wpBO9DT5plncJNDDEXPelM/view'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((player) => Player.fromJson(player)).toList();
  } else {
    throw Exception('Failed to load players');
  }
}
