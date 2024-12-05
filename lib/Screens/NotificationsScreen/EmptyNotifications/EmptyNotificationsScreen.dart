import 'package:brogam_sports_managment/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Providers/NotificationsProvider.dart';
import '../../../generated/assets.dart';

class EmptyNotifications extends StatelessWidget {
  const EmptyNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    final notificationProvider = Provider.of<NotificationsProvider>(context);
    final screenHeight = MediaQuery.of(context).size.height;

    final double topPadding = screenHeight * 0.05; // 224px / 812px ≈ 0.275
notificationProvider.NotificationsScreenNavigation(context);
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text('Notifications',style: TextStyle(fontSize: 18,color: AppColors.black,fontFamily: Assets.fontsPoppinsRegular),)),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
    body:   Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: topPadding),
            child: Center(
              child: Image.asset(Assets.imagesNotificationBell,  height: MediaQuery.of(context).size.height * (268 / MediaQuery.of(context).size.height),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.09),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "There are no notifications yet!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: Assets.fontsPoppinsRegular,
                  color: AppColors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.01),
              Container(
                margin: EdgeInsets.only(right: 60,left: 60),
                child: Text(
                  'Your notifications will appear on this page',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: Assets.fontsPoppinsRegular,
                    color: AppColors.GreyText,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )




        ],
      ),
    );
  }
}


