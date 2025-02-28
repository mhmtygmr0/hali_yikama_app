import 'package:flutter/material.dart';
import 'package:hali_yikama/common_widgets.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWidgets(
      title: "Create Account",
      buttonText: "Sign Up",
      fields: ["Name", "Email", "Password", "Confirm Password"],
      onPressed: () {},
    );
  }
}
