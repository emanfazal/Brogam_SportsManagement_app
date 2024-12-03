import 'package:brogam_sports_managment/Screens/OnboardingScreen/OnboardingScreen.dart';
import 'package:flutter/material.dart';

class SplashScreenProvider with ChangeNotifier {
  void navigateToNextScreen(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return OnboardingScreen();

          },
        ),
      );
    });
  }

}
