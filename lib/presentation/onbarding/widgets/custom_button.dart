import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.isEnd, required this.pageController, super.key});
  bool isEnd;
  PageController pageController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isEnd == true) {
          Navigator.pushReplacementNamed(context, "/home");
        } else {
          pageController.nextPage(
              duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
        }
      },
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xff0D6EFD), borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            isEnd == true ? "Start" : "Next",
            style: TextStyle(
                fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
