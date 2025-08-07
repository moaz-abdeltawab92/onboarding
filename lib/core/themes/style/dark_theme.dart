import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData getTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xff3A3A3A),
      primaryColor: Colors.white,
      colorScheme: const ColorScheme.dark(
        primary: Colors.white,
        secondary: Colors.white,
        background: Color(0xff3A3A3A),
        surface: Color(0xff3A3A3A),
      ),
      textTheme: const TextTheme(
        headlineSmall: TextStyle(color: Colors.white, fontSize: 24),
        bodyMedium: TextStyle(color: Colors.white70, fontSize: 16),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: const Color.fromARGB(255, 2, 59, 42),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
    );
  }
}
