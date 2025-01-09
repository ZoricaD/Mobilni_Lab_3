import 'package:flutter/material.dart';
import '../widgets/joke_card.dart';
import '../theme.dart';
import 'favorites_screen.dart'; // Импортирајте го екранот за омилени шеги

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> jokeTypes = [
    'general',
    'knock-knock',
    'programming',
    'dad',
  ];

  // Листа за омилени шеги
  List<String> favoriteJokes = [];

  // Функција за додавање/отстранување омилена шега
  void toggleFavorite(String type) {
    setState(() {
      if (favoriteJokes.contains(type)) {
        favoriteJokes.remove(type); // Ако шегата е веќе омилена, отстрани ја
      } else {
        favoriteJokes.add(type); // Ако не е омилена, додади ја во листата
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jokes App'),
        backgroundColor: AppTheme.primaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite), // Копче за омилени
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoriteJokesScreen(favoriteJokes: favoriteJokes),
                ),
              );
            },
            color: Colors.white,
          ),
          IconButton(
            icon: const Icon(Icons.shuffle), // Копче за случајна шега
            onPressed: () {
              Navigator.pushNamed(context, '/random_joke');
            },
            color: Colors.white,
          ),
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        itemCount: jokeTypes.length,
        itemBuilder: (context, index) {
          String type = jokeTypes[index];
          return Container(
            width: 250,
            margin: const EdgeInsets.only(right: 10.0),
            child: JokeCard(
              type: type,
              onFavorite: toggleFavorite,
            ),
          );
        },
      ),
    );
  }
}
