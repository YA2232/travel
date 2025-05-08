import 'package:flutter/material.dart';

class SigninButton extends StatelessWidget {
  SigninButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xff0D6EFD), borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            "Sign In",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
