import 'package:flutter/material.dart';

class SignupButton extends StatelessWidget {
  SignupButton({required this.onPressed, super.key});
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xff0D6EFD), borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
