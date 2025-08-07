import 'package:flutter/material.dart';

class LightTheme {
  static ThemeData getTheme() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: const Color(0xff3A3A3A),
      colorScheme: const ColorScheme.light(
        primary: const Color(0xff3A3A3A),
        secondary: const Color(0xff3A3A3A),
        background: Colors.white,
        surface: Colors.white,
      ),
      textTheme: const TextTheme(
        headlineSmall: TextStyle(color: Colors.black, fontSize: 24),
        bodyMedium: TextStyle(color: Colors.black87, fontSize: 16),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 20, 66, 52),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
    );
  }
}
