import 'package:flutter/material.dart';
import 'package:travel/core/configs/assets/images/app_images.dart';

class Soical extends StatelessWidget {
  const Soical({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          child: Image.asset(
            AppImages.fc,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          width: 50,
          height: 50,
          child: Image.asset(
            AppImages.insta,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          width: 50,
          height: 50,
          child: Image.asset(
            AppImages.tw,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
