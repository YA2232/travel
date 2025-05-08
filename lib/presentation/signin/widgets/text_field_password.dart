import 'package:flutter/material.dart';

class TextFieldPassword extends StatelessWidget {
  TextFieldPassword({required this.onPressed, super.key});
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.visibility,
                  color: Colors.grey,
                )),
            border: InputBorder.none,
            hintText: "password",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14)),
      ),
    );
  }
}
