import 'package:brogam_sports_managment/Screens/Auth/SignIn/SignInScreen.dart';
import 'package:brogam_sports_managment/Screens/BookingsScreen/BookingsScreen.dart';
import 'package:brogam_sports_managment/Screens/Profile/ProfileDetails/ChangePassword.dart';
import 'package:brogam_sports_managment/Screens/Profile/ProfileDetails/EditProfileScreen.dart';
import 'package:brogam_sports_managment/Screens/Profile/ProfileDetails/NotificationSettings.dart';
import 'package:flutter/material.dart';

class ProfileProvider with ChangeNotifier {

  void EditProfileNaviagtion(BuildContext context) {

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return EditProfile();
        },
      ),
    );


  }
  void ChangePasswordNaviagtion(BuildContext context) {

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return ChangePassword();
        },
      ),
    );}
  void NotificationSettingNaviagtion(BuildContext context) {

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return NotificationSettingsScreen ();
        },
      ),
    );}
}
