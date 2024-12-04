import 'package:brogam_sports_managment/Widgets/Barcode/Barcode.dart';
import 'package:brogam_sports_managment/constants/AppColors.dart';
import 'package:flutter/material.dart';

import '../../generated/assets.dart';

class ViewTicketScreen extends StatelessWidget {
  const ViewTicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Success Card
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(Assets.imagesSuccessIcon,height: 50,width: 50,),
                   SizedBox(height: 8.0),
                 Text(
                    "Booking Success!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),


            Theme(

              data: Theme.of(context).copyWith(
                dividerColor: Colors.transparent, // Remove the top and bottom lines
                dividerTheme: const DividerThemeData(space: 0), // Avoid extra spacing
              ),
              child: ExpansionTile(
                iconColor: AppColors.black,
                initiallyExpanded: true,
                title: const Text(
                  "Payment Details",
                  style: TextStyle(fontWeight: FontWeight.bold,
                  color: AppColors.black,
                    fontSize: 19,
                    fontFamily: Assets.fontsPoppinsRegular,
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8.0),
                        _buildDetailRow("Course Name", "Reflexes Training"),
                        _buildDetailRow("Course Category", "Swimming"),
                        _buildDetailRow("Payment Time", "25-02-2023, 13:22:16"),
                        SizedBox(height: 15,),
                        _buildDetailRow("Full Name", "Sofia Anderson"),
                        _buildDetailRow("Phone Number", "+1 (208) 555-0112"),
                        _buildDetailRow("Email", "sofia@email.com"),
                        SizedBox(height: 15,),
                        _buildDetailRow("Course Fee", "\$20"),
                        _buildDetailRow("Service Fees", "\$2"),
                        SizedBox(height: 15,),
                        _buildDetailRow(
                          "Total Payment",
                          "\$22",
                          isBold: true,
                        ),
                        const SizedBox(height: 8.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16.0),

            // Barcode Section
            BarcodeCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14.0,
              color: AppColors.grey,
              fontFamily: Assets.fontsPoppinsRegular,
            ),
          ),
          SizedBox(height: 3,),
          Text(
            value,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold ,
fontFamily: Assets.fontsPoppinsRegular,
            ),
          ),
        ],
      ),
    );
  }
}
