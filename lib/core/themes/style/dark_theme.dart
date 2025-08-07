import 'package:flutter/material.dart';

class DarkTheme {
  static ThemeData getTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xff3A3A3A),
      primaryColor: const Color(0xff3A3A3A),
      colorScheme: const ColorScheme.dark(
        primary: Color(0xff3A3A3A),
        secondary: Color(0xff3A3A3A),
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
          backgroundColor: Colors.tealAccent,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
    );
  }
}
