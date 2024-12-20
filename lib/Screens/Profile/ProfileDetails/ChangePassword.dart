import 'package:brogam_sports_managment/Widgets/PrimaryButton/CustomPrimaryButton.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Change Password',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20),
            buildPasswordField('Old Password', oldPasswordController),
            buildPasswordField('New Password', newPasswordController),
            buildPasswordField('Confirm Password', confirmPasswordController),
            Spacer(),
           PrimaryButton(text: 'Change Password', onPressed: (){}),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildPasswordField(
      String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: controller,
        obscureText: true,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.grey.shade200,
          prefixIcon: Icon(Icons.lock_outline, color: Colors.grey),
          suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
        ),
      ),
    );
  }
}
