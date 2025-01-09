import 'package:flutter/material.dart';
import '../theme.dart';

class FavoriteJokesScreen extends StatelessWidget {
  final List<String> favoriteJokes;
  const FavoriteJokesScreen({super.key, required this.favoriteJokes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Jokes'),
        backgroundColor: AppTheme.primaryColor,
      ),
      body: favoriteJokes.isEmpty
          ? const Center(child: Text('No favorite jokes yet!'))
          : ListView.builder(
              itemCount: favoriteJokes.length,
              itemBuilder: (context, index) {
                String joke = favoriteJokes[index];
                return ListTile(
                  title: Text(joke),
                );
              },
            ),
    );
  }
}
