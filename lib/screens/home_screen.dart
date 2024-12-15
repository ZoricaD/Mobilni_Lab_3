import 'package:flutter/material.dart';
import '../widgets/joke_card.dart';
import '../theme.dart'; 

class HomeScreen extends StatelessWidget {
  final List<String> jokeTypes = [
    'general',
    'knock-knock',
    'programming',
    'dad',
  ];
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jokes App'),
        backgroundColor: AppTheme.primaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.shuffle),
            onPressed: () {
              Navigator.pushNamed(context, '/random_joke');
            },
            color: Colors.white,
          ),
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal, // Овде ги поставуваме картите во еден ред
        padding: const EdgeInsets.symmetric(horizontal: 10.0), // Простор помеѓу картите
        itemCount: jokeTypes.length, // Количина на елементи што ќе се прикажат
        itemBuilder: (context, index) {
          String type = jokeTypes[index];
          return Container(
            width: 250, // Поставуваме поголема ширина за картата
            height: 5, // Намалена висина за да не бидат премногу големи картите
            margin: const EdgeInsets.only(right: 10.0), // Простор помеѓу картите
            child: JokeCard(type: type),
          );
        },
      ),
    );
  }
}


















