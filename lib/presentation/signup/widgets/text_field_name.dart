import 'package:flutter/material.dart';

class TextFieldName extends StatelessWidget {
  TextFieldName({required this.name, super.key});
  TextEditingController name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        controller: name,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "name",
            hintStyle: TextStyle(color: Colors.grey, fontSize: 14)),
      ),
    );
  }
}
