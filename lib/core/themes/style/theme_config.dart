import 'package:flutter/material.dart';
import 'package:onboarding_2/core/themes/style/light_theme.dart';
import 'package:onboarding_2/core/themes/style/dark_theme.dart';

class ThemeConfig {
  static ThemeData getLightTheme() => LightTheme.getTheme();
  static ThemeData getDarkTheme() => DarkTheme.getTheme();

  static ThemeMode getThemeMode(Brightness brightness) {
    return brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;
  }
}
