import 'package:flutter/material.dart';
import '../screens/joke_type_screen.dart';
import '../theme.dart'; // За користење на темата
class JokeCard extends StatelessWidget {
  final String type;
  const JokeCard({super.key, required this.type});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),  // Поголем одмарок
      elevation: 6,  // Поголема сенка
      color: Colors.amber.shade100,  // Нов фон боја
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),  // Овални рабови
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => JokeTypeScreen(type: type),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.face,  // Променете ја иконата
                size: 60,
                color: AppTheme.primaryColor,
              ),
              const SizedBox(height: 15),
              Text(
                type,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}