import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Providers/BookingsProvider.dart';
import '../../constants/AppColors.dart';

class BookingsToggle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookingProvider = Provider.of<BookingProvider>(context);

    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8.0),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.2),
        //     spreadRadius: 2,
        //     blurRadius: 4,
        //     offset: Offset(0, 2),
        //   ),
        // ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Ongoing Button
          GestureDetector(
            onTap: () {
              bookingProvider.setOngoing(true);
            },
            child: Container(
              width: 105,
              height: 41,
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              decoration: BoxDecoration(
                color: bookingProvider.isOngoing ? AppColors.primary : Colors.transparent,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Center(
                child: Text(
                  'Ongoing',
                  style: TextStyle(
                    color: bookingProvider.isOngoing ? Colors.white : AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 8.0),
          // Completed Button
          GestureDetector(
            onTap: () {
              bookingProvider.setOngoing(false);
            },
            child: Container(
              height: 41,
              width: 105,
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              decoration: BoxDecoration(
                color: bookingProvider.isOngoing ? Colors.transparent : AppColors.primary,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Center(
                child: Text(
                  'Completed',
                  style: TextStyle(
                    color: bookingProvider.isOngoing ? AppColors.primary : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
