import 'package:brogam_sports_managment/Screens/Profile/ProfileDetails/ProfileDetails.dart';
import 'package:brogam_sports_managment/Screens/TicketScreen/ViewTicketScreen.dart';
import 'package:flutter/material.dart';

import '../Screens/OnboardingScreen/OnboardingScreen.dart';

class BookingProvider with ChangeNotifier {
  bool _isOngoing = true;

  bool get isOngoing => _isOngoing;

  void setOngoing(bool value) {
    _isOngoing = value;
    notifyListeners();
  }
  void navigateToTicket(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return ViewTicketScreen();

          },
        ),
      );
    });
  }
  void navigateToProfile(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return ProfileDetailsScreen();

          },
        ),
      );
    });
  }

}
