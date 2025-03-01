import 'package:flutter/material.dart';
import 'package:hali_yikama/common_widgets.dart';
import 'package:hali_yikama/views/password_page.dart';
import 'package:hali_yikama/views/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWidgets(
      title: "Login here",
      fontSize: 34,
      buttonText: "Login",
      fields: ["User", "Password"],
      onPressed: () {},
      forgetPasswordWidget: _buildForgotPassword(context),
      createAccountWidget: _buildCreateAccountButton(context),
    );
  }

  Widget _buildForgotPassword(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ForgotPassword()),
            );
          },
          child: _buildButtonText("Forgot your password?"),
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
        child: _buildButtonText("Create new account"),
      ),
    );
  }

  Widget _buildButtonText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: CommonWidgets.blueColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
