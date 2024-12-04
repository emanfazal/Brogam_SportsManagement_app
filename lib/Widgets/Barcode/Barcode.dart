import 'package:brogam_sports_managment/constants/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:barcode/barcode.dart';
import 'package:flutter_svg/svg.dart';

class BarcodeCard extends StatelessWidget {
  // Function to generate the Barcode SVG string
  String generateBarcodeSvg(Barcode barcode, String data) {
    return barcode.toSvg(
      data,
      width: 200,
      height: 80,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Generate the Barcode SVG string
    String barcodeSvg = generateBarcodeSvg(Barcode.code128(), '12434545636756');

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Barcode Widget
          Container(
            height: 100,
            width: screenWidth * 0.8,

            child: SvgPicture.string(
              barcodeSvg,
              color: AppColors.black,  // Barcode color
              width: screenWidth * 0.8,  // Barcode width
              height: 80,  // Barcode height
            ),
          ),

        ],
      ),
    );
  }
}
