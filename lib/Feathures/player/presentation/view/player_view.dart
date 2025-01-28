import 'package:flutter/material.dart';
import 'package:tashkeela/core/routes/custome_routs.dart';

class PlayerView extends StatelessWidget {
  final Map<String, dynamic> playerData;

  const PlayerView({super.key, required this.playerData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(playerData['image'], fit: BoxFit.cover),
                      const SizedBox(height: 16),
                      Text(
                        playerData['name'],
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        playerData['description'],
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      Text("Age: ${playerData['age']}"),
                      Text("Ranking: ${playerData['ranking']}"),
                      Text("Goals: ${playerData['goals']}"),
                      Text("Country: ${playerData['country']}"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            customNavigationRoutrReplasment(
                                context, 'HomeNavBar');
                          },
                          icon: Icon(Icons.arrow_back)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
