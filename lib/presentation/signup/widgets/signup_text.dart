import 'package:flutter/material.dart';

class SignupText extends StatelessWidget {
  const SignupText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Sign up now",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Text(
          "Please fill the details and create account",
          style: TextStyle(fontSize: 17, color: Colors.grey),
        )
      ],
    );
  }
}
