import 'package:flutter/material.dart';

class Dots extends StatelessWidget {
  Dots({required this.currentPage, required this.length, super.key});
  int length;
  int currentPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(length, (index) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: currentPage == index ? 55 : 13,
              height: 8,
              decoration: BoxDecoration(
                color: currentPage == index ? Colors.blue : Color(0xffCAEAFF),
                borderRadius: BorderRadius.circular(4),
              ),
            );
          })),
    );
  }
}
