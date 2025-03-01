import 'package:flutter/material.dart';
import 'package:hali_yikama/common_widgets.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonWidgets(
      title: "Forgot Password?",
      fontSize: 30,
      buttonText: "Reset Password",
      fields: ["Email"],
      onPressed: () {},
      showIcons: false,
    );
  }
}
