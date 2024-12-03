import 'package:brogam_sports_managment/Screens/Auth/SignIn/SignInScreen.dart';
import 'package:flutter/material.dart';

class PageProvider with ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;

  void updatePage(int page) {
    _currentPage = page;
    notifyListeners();
  }
  void navigateToNextScreen(BuildContext context) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Signinscreen();
          },
        ),
      );

  }
}
