import 'package:flutter/material.dart';
import 'package:gamestore/models/game.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({super.key, required this.game});
  final Game game;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SizedBox(
          width: 260,
          child: Card(
            elevation: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                game.images[index],
                fit: BoxFit.cover,
              ),
            ),
          )
        ), 
        separatorBuilder: (context, index) => const SizedBox(width: 25), 
        itemCount: game.images.length,
      ),
    );
  }
}