// import 'package:flutter/material.dart';
// import 'package:onboarding_2/themes/style/light_theme.dart';
// import 'package:onboarding_2/themes/style/dark_theme.dart';

// class ThemeConfig {
//   static ThemeData getLightTheme() => LightTheme.getTheme();
//   static ThemeData getDarkTheme() => DarkTheme.getTheme();

//   static ThemeMode getThemeMode(Brightness brightness) {
//     return brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;
//   }
// }
import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const OnboardingWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24, // حجم كبير
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // أسود غامق
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 16, // أصغر من العنوان
                  fontWeight: FontWeight.w400,
                  color: Colors.grey, // رمادي
                  height: 1.5, // مسافة بين الأسطر
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Image.asset(
            image,
            height: 280,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
