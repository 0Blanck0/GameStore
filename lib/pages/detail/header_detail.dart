import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';
import 'package:gamestore/models/categorys.dart';

class HeaderDetailSection extends StatelessWidget {
  HeaderDetailSection({super.key, required this.game});

  final Game game;
  final List<Map<String, dynamic>> categorys = category;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              game.icon,
              width: 100,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  transform: Matrix4.translationValues(0, -3, 0),
                  child: Text(
                    game.title,
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: _getCategoryColor(game.category),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        game.category,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      transform: Matrix4.translationValues(0, 7, 0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            game.rating.toString(),
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.download,
                            color: const Color.fromARGB(255, 255, 66, 66),
                          ),
                          Text(
                            game.downloads.toString(),
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        Container(
          height: 150,
          color: Colors.red,
        )
      ],
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