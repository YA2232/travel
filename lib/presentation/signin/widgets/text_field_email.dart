import 'package:flutter/material.dart';

class TextFieldEmail extends StatelessWidget {
  TextFieldEmail({required this.email, super.key});
  TextEditingController email;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        controller: email,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "email",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14)),
      ),
    );
  }
}
