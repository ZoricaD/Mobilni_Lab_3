import 'package:flutter/material.dart';
class AppTheme {
  static const Color primaryColor = Color.fromARGB(255, 255, 85, 85); // Поинаква боја за примарната
  static const Color backgroundColor = Color(0xFFEEEEEE);  // Светла сива позадина
  static const Color cardBackgroundColor = Color(0xFFFCFCFC); // Светло сиви карти
  static const Color textColor = Color.fromARGB(255, 45, 45, 45);  // Темен текст
  static const Color buttonColor = Color(0xFF00BCD4);  // Сина боја за копчињата
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    ),
    cardTheme: CardTheme(
      color: cardBackgroundColor,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: textColor, fontSize: 18),
      bodyMedium: TextStyle(color: textColor, fontSize: 16),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: buttonColor,
      textTheme: ButtonTextTheme.primary,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: buttonColor,
    ),
  );
}









