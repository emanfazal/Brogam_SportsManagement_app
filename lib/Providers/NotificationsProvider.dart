
import 'package:brogam_sports_managment/Screens/NotificationsScreen/Notifications/NotificationsScreen.dart';
import 'package:brogam_sports_managment/Screens/Profile/ProfileDetails/NotificationSettings.dart';
import 'package:flutter/material.dart';

import '../Screens/NotificationsScreen/EmptyNotifications/EmptyNotificationsScreen.dart';

class NotificationsProvider with ChangeNotifier {

  void navigateToNextScreen(BuildContext context) {

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return EmptyNotifications();
        },
      ),
    );

  }
  void NotificationsScreenNavigation(BuildContext context) {
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return NotificationsScreen();

          },
        ),
      );
    });
  }
}
