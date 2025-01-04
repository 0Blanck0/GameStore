class Game {
  String bgImage;
  String title;
  String description;
  String category;
  String icon;
  String downloads;
  num price;
  num rating;
  num reviews;
  List<String> images;

  Game(
    this.bgImage,
    this.title,
    this.description,
    this.category,
    this.icon,
    this.price,
    this.rating,
    this.downloads,
    this.reviews,
    this.images,
  );

  static List<Game> games() {
    return [
      Game(
        'assets/images/ori1.jpg',
        'Ori and the blind forest',
        'Ori and the Blind Forest is a platform-adventure Metroidvania video game developed by Moon Studios and published by Microsoft Studios. The game was released for Xbox One and Microsoft Windows on March 11, 2015 and for Nintendo Switch on September 27, 2019.',
        'Adventure',
        'assets/images/ori_logo.png',
        0,
        4.8,
        "100 k",
        365,
        [
          'assets/images/ori2.jpg',
          'assets/images/ori3.jpg',
          'assets/images/ori4.jpg',
          'assets/images/ori5.jpg',
        ],
      ),
      Game(
        'assets/images/rl1.jpg',
        'Rayman Legends',
        'Rayman Legends is a platform video game developed by Ubisoft Montpellier and published by Ubisoft. It is the fifth main title in the Rayman series and the direct sequel to the 2011 game Rayman Origins.',
        'Adventure',
        'assets/images/rl_logo.png',
        3,
        4.7,
        "450 k",
        17,
        [
          'assets/images/rl2.jpg',
          'assets/images/rl3.jpg',
          'assets/images/rl4.jpg',
          'assets/images/rl5.jpg',
        ],
      )
    ];
  }
}