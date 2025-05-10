import 'package:flutter/material.dart';
import 'package:travel/common/widget/appBar/basic_appbr.dart';
import 'package:travel/core/configs/assets/images/app_images.dart';

class AppbarHome extends StatelessWidget {
  const AppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BasicAppbar(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: IntrinsicWidth(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffEAAABA),
                      borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(AppImages.profile),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Youssef",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20)),
            child: Icon(Icons.notifications_outlined),
          ),
        )
      ],
      hideBack: true,
    );
  }
}
