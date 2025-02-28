import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final Color titleColor = Color(0XFF1F41BB);
  final Color textFieldColor = Color(0XFFF1F4FF);
  final Color buttonColor = Color(0XFF1F41BB);
  final String appleIconImage = "assets/apple_icon.png";
  final String facebookIconImage = "assets/facebook_icon.png";
  final String googleIconImage = "assets/google_icon.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              buildTitle("Create Account"),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 30,
                ),
                child: Column(
                  children: [
                    buildTextField("Name"),
                    buildTextField("Email"),
                    buildTextField("Password"),
                    buildTextField("Confirm Password"),
                    buildElevatedButton("Sign Up"),
                    buildOtherWays("Or continue with"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTitle(String title) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          letterSpacing: 3.0,
          color: titleColor,
        ),
      ),
    );
  }

  Widget buildTextField(String hintText) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        width: double.infinity,
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: textFieldColor,
            contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildElevatedButton(String buttonText) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            minimumSize: Size(double.infinity, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildOtherWays(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: titleColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIconContainer(googleIconImage),
              const SizedBox(width: 15),
              _buildIconContainer(facebookIconImage),
              const SizedBox(width: 15),
              _buildIconContainer(appleIconImage),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIconContainer(String imagePath) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(imagePath, width: 35, height: 30),
    );
  }
}
