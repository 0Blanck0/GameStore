import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';
import 'package:gamestore/pages/detail/detail.dart';

class PopularSection extends StatelessWidget {
  PopularSection({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) => GestureDetector(
          onTap: (() => Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => DetailPage(game: games[index])),
            )
          )),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Hero(
                  tag: games[index].title, 
                  child: Image.asset(
                    games[index].bgImage,
                    fit: BoxFit.cover,
                  ),
                )
              ),
            ),
          )
        )), 
        separatorBuilder: ((context, index) => const SizedBox(width: 10)), 
        itemCount: games.length,
      ),
    );
  }
}