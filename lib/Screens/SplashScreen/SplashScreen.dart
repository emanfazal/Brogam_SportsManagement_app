import 'package:brogam_sports_managment/Widgets/SplashLoader/SplashLoader.dart';
import 'package:brogam_sports_managment/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../../Providers/SplashProvider.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    Provider.of<SplashScreenProvider>(context, listen: false)
        .navigateToNextScreen(context);
    // Use the calculated percentage for top padding
    final double topPadding = screenHeight * 0.275; // 224px / 812px ≈ 0.275

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: topPadding),
            child: Center(
              child: Image.asset('assets/images/Logo.png'),
            ),
          ),
          SizedBox(height: screenHeight * 0.09),
          Padding(
            padding:  EdgeInsets.only(top:screenHeight * 0.09 ),
            child: SpinKitChasingDots(
              color: AppColors.secondary,
              size: 30.0,
            ),
          ),

        ],
      ),
    );
  }
}
