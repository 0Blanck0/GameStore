# gamestore

_**ENGLISH VERSION BELOW**_

Ce projet Flutter présente un design d'application pour un App Store ou un Game Store. Il s'agit d'une maquette de l'interface utilisateur d'un magasin d'applications et de jeux, offrant une expérience utilisateur fluide et moderne.

## Fonctionnalités
Cette application de démonstration présente une interface utilisateur pour un magasin d'applications et de jeux. Elle inclut :

- Page d'accueil : Affiche les jeux les plus populaires, les nouveautés et permet de rechercher des jeux par catégorie.
- Page de détails : Présente des informations détaillées sur un jeu (description, captures d'écran, etc.).

## Prérequis
Flutter version 3.0 ou supérieure
Dart version 2.18 ou supérieure
IDE recommandé : Visual Studio Code ou Android Studio

## Installation
Étape 1 : Cloner le projet
```bash
git clone https://github.com/0Blanck0/gamestore.git
cd gamestore
```

Étape 2 : Installer les dépendances
```bash
flutter pub get
```

Étape 3 : Lancer l'application
Pour exécuter le projet sur un simulateur/emulateur ou un appareil réel, utilisez la commande suivante :

```bash
flutter run
```

## Structure du projet

```bash
gamestore/
├── lib/
│   ├── models/
│   │   ├── category.dart
│   │   └── games.dart
│   ├── pages/
│   │   ├── detail/
│   │   │   ├── description.dart
│   │   │   ├── detail_sliver.dart
│   │   │   ├── detail.dart
│   │   │   ├── download.dart
│   │   │   ├── gallery.dart
│   │   │   ├── header_detail.dart
│   │   │   └── rating.dart
│   │   ├── home/
│   │   │   ├── widgets/
│   │   │   │   ├── category.dart
│   │   │   │   ├── header.dart
│   │   │   │   ├── newest.dart
│   │   │   │   ├── popular.dart
│   │   │   │   └── search.dart
│   │   │   └── home.dart
│   │   ├── details_screen.dart
│   │   └── search_screen.dart
│   └── main.dart
├── assets/
│   ├── images/
│   └── icons/
└── pubspec.yaml
```

## Conception
L'application suit un design moderne et épuré, avec un accent sur la simplicité d'utilisation et la fluidité de la navigation. Les éléments de l'interface sont organisés de manière logique, permettant aux utilisateurs de trouver facilement ce qu'ils recherchent.

## Origine du projet
Ce projet a été fait dans le cadre d'un apprentissage du dart/flutter via le tutoriel [Driss AS](https://www.youtube.com/watch?v=iasOWA6JSKc). Ce projet me permet une d'avoir un aperçus de cette technologie et de la façons de l'utiliser.

## Licence
Ce projet est sous la licence MIT - voir le fichier LICENSE pour plus de détails.

------------------------------------------------------------------------------------

# English version
This Flutter project provides a user interface mockup for an app or game store, offering a modern and intuitive user experience. It serves as a foundation for building a more comprehensive app store solution.

## Features
This demo app presents a user interface for an app and game store. It includes:

- Home page: Shows the most popular games, new releases and allows you to search for games by category.
- Details page: Displays detailed information about a game (description, screenshots, etc.).

## Prerequisites
- Flutter: Version 3.0 or later
- Dart: Version 2.18 or later
- IDE: Recommended: Visual Studio Code or Android Studio

## Getting Started
Step 1: Clone the project
```bash
git clone https://github.com/0Blanck0/gamestore.git
cd gamestore
```

Step 2: Install dependencies
```bash
flutter pub get
```

Step 3: Launch the application
To run the project on a simulator/emulator or real device, use the following command:

```bash
flutter run
```

## Project structure

```bash
gamestore/
├── lib/
│   ├── models/
│   │   ├── category.dart
│   │   └── games.dart
│   ├── pages/
│   │   ├── detail/
│   │   │   ├── description.dart
│   │   │   ├── detail_sliver.dart
│   │   │   ├── detail.dart
│   │   │   ├── download.dart
│   │   │   ├── gallery.dart
│   │   │   ├── header_detail.dart
│   │   │   └── rating.dart
│   │   ├── home/
│   │   │   ├── widgets/
│   │   │   │   ├── category.dart
│   │   │   │   ├── header.dart
│   │   │   │   ├── newest.dart
│   │   │   │   ├── popular.dart
│   │   │   │   └── search.dart
│   │   │   └── home.dart
│   │   ├── details_screen.dart
│   │   └── search_screen.dart
│   └── main.dart
├── assets/
│   ├── images/
│   └── icons/
└── pubspec.yaml
```

## Design
The app follows a modern and clean design, with an emphasis on ease of use and smooth navigation. The interface elements are organized in a logical way, allowing users to easily find what they are looking for.

## Project Origin
This project was done as part of a dart/flutter tutorial via the [Driss AS](https://www.youtube.com/watch?v=iasOWA6JSKc). This project allows me to get a glimpse of this technology and how it can be used.

## License
This project is under MIT license - see the LICENSE file for details.
