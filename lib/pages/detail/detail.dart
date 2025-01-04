import 'package:flutter/material.dart';

import 'package:gamestore/models/game.dart';
import 'package:gamestore/pages/detail/description.dart';
import 'package:gamestore/pages/detail/detail_sliver.dart';
import 'package:gamestore/pages/detail/gallery.dart';
import 'package:gamestore/pages/detail/header_detail.dart';
import 'package:gamestore/pages/detail/rating.dart';
import 'package:gamestore/pages/detail/download.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.game});
  final Game game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
              game: game,
              expandedHeight: 360,
              roundedContainerHeight: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                HeaderDetailSection(game: game),
                SizedBox(height: 15),
                GallerySection(game: game),
                SizedBox(height: 15),
                DescriptionSection(game: game),
                SizedBox(height: 15),
                RatingSection(game: game),
                SizedBox(height: 15),
                DownloadSection(game: game),
              ],
            )
          )
        ],
      )
    );
  }
}