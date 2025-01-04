import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({super.key, required this.game});
  final Game game;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'Rating and reviews',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: Text(
                  game.rating.toString(),
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        color: index < game.rating.round() ? Colors.amber : Colors.grey,
                      );
                    }),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: Text(
                      '${game.reviews} reviews',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(width: 5),
            ],
          ),
        )
      ],
    );
  }
}