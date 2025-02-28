import 'package:flutter/material.dart';

class CommonWidgets extends StatelessWidget {
  final String title;
  final String buttonText;
  final List<String> fields;
  final VoidCallback onPressed;
  final Widget? extraWidget;
  final Widget? bottomWidget;

  const CommonWidgets({
    super.key,
    required this.title,
    required this.buttonText,
    required this.fields,
    required this.onPressed,
    this.extraWidget,
    this.bottomWidget,
  });

  final Color textFieldColor = const Color(0XFFF1F4FF);
  static final Color blueColor = const Color(0XFF1F41BB);
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
              buildTitle(title),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 30,
                ),
                child: Column(
                  children: [
                    ...fields.map(
                      (field) => buildTextField(
                        field,
                        isPassword: field.toLowerCase().contains("password"),
                      ),
                    ),
                    if (extraWidget != null) extraWidget!,
                    buildElevatedButton(buttonText, onPressed),
                    if (bottomWidget != null) bottomWidget!,
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
          color: blueColor,
        ),
      ),
    );
  }

  Widget buildTextField(String hintText, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        width: double.infinity,
        child: TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: textFieldColor,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 15,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.blue, width: 2),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildElevatedButton(String buttonText, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: blueColor,
            minimumSize: const Size(double.infinity, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            buttonText,
            style: const TextStyle(
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
              color: blueColor,
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
      child: Image.asset(imagePath, width: 45, height: 35),
    );
  }
}
