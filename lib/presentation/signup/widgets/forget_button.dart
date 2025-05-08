import 'package:flutter/material.dart';

class ForgetButton extends StatelessWidget {
  ForgetButton({required this.onPressed, super.key});
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        "Forget Password?",
        style: TextStyle(color: Color(0xff0D6EFD)),
      ),
    );
  }
}
