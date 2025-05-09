import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFieldPasswordSignup extends StatefulWidget {
  TextFieldPasswordSignup({required this.password, super.key});
  TextEditingController password;

  @override
  State<TextFieldPasswordSignup> createState() =>
      _TextFieldPasswordSignupState();
}

class _TextFieldPasswordSignupState extends State<TextFieldPasswordSignup> {
  bool isObscured = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        obscureText: isObscured,
        controller: widget.password,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObscured = !isObscured;
                  });
                },
                icon: isObscured == false
                    ? Icon(
                        Icons.visibility,
                        color: Colors.grey,
                      )
                    : Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      )),
            border: InputBorder.none,
            hintText: "password",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14)),
      ),
    );
  }
}
