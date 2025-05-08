import 'package:flutter/material.dart';

class SigninText extends StatelessWidget {
  const SigninText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Sign in now",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        Text(
          "Please sign in to continue our app",
          style: TextStyle(fontSize: 17, color: Colors.grey),
        )
      ],
    );
  }
}
