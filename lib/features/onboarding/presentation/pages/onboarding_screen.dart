// ---------------------------------------------------------------------------
// File: onboarding_screen.dart
// Description: Displays a multi-page onboarding experience using PageView,
//              smooth indicators, and custom buttons.
// Project: Onboarding App
// Author: Ehdaa
// Date: August 2025
// ---------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:onboarding_2/core/constants/app_assets.dart';
import 'package:onboarding_2/core/themes/color/app_colors.dart';
import 'package:onboarding_2/core/helper/spacer.dart';
import 'package:onboarding_2/features/onboarding/presentation/widgets/custom_button.dart';
import 'package:onboarding_2/l10n/localizations_extension.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final onboardingPages = [
      {
        "title": context.loc.onboard_title_0,
        "subtitle": context.loc.onboard_subtitle_0,
        "image": AppAssets.onboardingImage1,
      },
      {
        "title": context.loc.onboard_title_1,
        "subtitle": context.loc.onboard_subtitle_1,
        "image": AppAssets.onboardingImage2,
      },
      {
        "title": context.loc.onboard_title_2,
        "subtitle": context.loc.onboard_subtitle_2,
        "image": AppAssets.onboardingImage3,
      },
      {
        "title": context.loc.onboard_title_3,
        "subtitle": context.loc.onboard_subtitle_3,
        "image": AppAssets.onboardingImage4,
      },
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              // ✅ PageView
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() => _currentIndex = index);
                  },
                  itemCount: onboardingPages.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        verticalSpace(size.height * 0.068),
                        Text(
                          onboardingPages[index]["title"]!,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                          textAlign: TextAlign.center,
                        ),
                        verticalSpace(10),
                        Text(
                          onboardingPages[index]["subtitle"]!,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                          textAlign: TextAlign.center,
                        ),
                        verticalSpace(size.height * 0.05),
                        Image.asset(
                          onboardingPages[index]["image"]!,
                          height: size.height * 0.3,
                        ),
                      ],
                    );
                  },
                ),
              ),

              // ✅ Indicator
              SmoothPageIndicator(
                controller: _pageController,
                count: onboardingPages.length,
                effect: const ExpandingDotsEffect(
                  activeDotColor: AppColors.customButton,
                  dotColor: AppColors.dotInactiveColor,
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 4,
                  expansionFactor: 3,
                ),
              ),
              verticalSpace(size.height * 0.06),

              // ✅ Buttons
              Column(
                children: [
                  CustomButton(
                    text: _currentIndex == onboardingPages.length - 1
                        ? context.loc.button_start
                        : context.loc.button_next,
                    onPressed: () {
                      if (_currentIndex < onboardingPages.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        Navigator.pushReplacementNamed(context, '/home');
                      }
                    },
                  ),
                  if (_currentIndex == 0)
                    TextButton(
                      onPressed: () {
                        _pageController.jumpToPage(onboardingPages.length - 1);
                      },
                      child: Text(
                        context.loc.button_skip,
                        style:
                            const TextStyle(color: AppColors.dotInactiveColor),
                      ),
                    ),
                ],
              ),
              verticalSpace(size.height * 0.09),
            ],
          ),
        ),
      ),
    );
  }
}
