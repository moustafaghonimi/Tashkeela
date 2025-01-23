import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/search/presentaion/widget/grid_list_player_item.dart';

import 'package:tashkeela/core/utils/app_color.dart';

class PlayersListPage extends StatelessWidget {
  const PlayersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          color: Appcolor.secondaryColor),
      child: GridView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return GridListPlayerItem();
        },
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}




//   Future<List<Player>> _getPlayers() async {
//     return await fetchPlayers(); // Use your fetch function here
//   }

//   @override
//   Widget build(BuildContext context) {
//     return 
//     FutureBuilder<List<Player>>(
//       future: _getPlayers(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Center(child: CircularProgressIndicator());
//         } else if (snapshot.hasError) {
//           return Center(child: Text('Error: ${snapshot.error}'));
//         } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//           return Center(child: Text('No players available'));
//         } else {
//           List<Player> players = snapshot.data!;
//           return ListView.builder(
//             itemCount: players.length,
//             itemBuilder: (context, index) {
//               final player = players[index];
//               return ListTile(
//                 leading: Image.network(player.imageUrl),
//                 title: Text(player.name),
//                 subtitle: Text(player.nationality),
//                 trailing: Text(player.description),
//               );
//             },
//           );
//         }
//       },
//     );
//   }
// }
