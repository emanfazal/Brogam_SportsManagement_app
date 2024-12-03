import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/AppColors.dart';

class Smoothpageindicator extends StatelessWidget {
  final PageController pageController;

  // Constructor that accepts the existing PageController
  const Smoothpageindicator({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,  // Use the passed PageController
      count: 3,
      effect: const ExpandingDotsEffect(
        dotHeight: 10,
        dotWidth: 10,
        activeDotColor: AppColors.secondary,
        dotColor:AppColors.indicatorGrey,
        expansionFactor: 4, // Expands the active dot
      ),
    );
  }
}
