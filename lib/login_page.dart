import 'package:flutter/material.dart';
import 'package:hali_yikama/common_widgets.dart';
import 'package:hali_yikama/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWidgets(
      title: "Login here",
      buttonText: "Login",
      fields: ["Email", "Password"],
      onPressed: () {},
      extraWidget: Column(
        children: [
          _buildForgotPassword(context),
          _buildCreateAccountButton(context),
        ],
      ),
    );
  }

  Widget _buildForgotPassword(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {},
          child: Text(
            "Forgot your password?",
            style: TextStyle(
              color: CommonWidgets.blueColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCreateAccountButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignupPage()),
          );
        },
        child: Text(
          "Create new account",
          style: TextStyle(
            color: CommonWidgets.blueColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
