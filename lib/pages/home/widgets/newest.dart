import 'package:flutter/material.dart';
import 'package:gamestore/models/categorys.dart';
import 'package:gamestore/models/game.dart';

class NewestSection extends StatelessWidget {
  NewestSection({super.key});

  final List<Game> games = Game.games();
  final List<Map<String, dynamic>> categorys = category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: games.map((games) => Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(
            bottom: 10,
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(143, 158, 158, 158),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                games.icon,
                width: 60,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    games.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: _getCategoryColor(games.category),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          games.category,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 154, 243),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Text(
                          "Install",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            games.rating.toString(),
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            )
          ]),
        ))
      .toList())
    );
  }

  // Function to get the category color with fallback
  Color _getCategoryColor(String category) {
    try {
      // Look for category and return its color, if not found return default color
      final categoryItem = categorys.firstWhere(
        (element) => element['title'] == category || element['title'] == "More" // Default color if not found
      );

      return categoryItem['color'];
    } catch (e) {
      return Colors.grey; // Fallback in case of any other error
    }
  }
}