import 'package:flutter/material.dart';
import 'package:travel/common/widget/appBar/basic_appbr.dart';
import 'package:travel/core/configs/assets/images/app_images.dart';
import 'package:travel/presentation/home/widgets/appbar_home.dart';
import 'package:travel/presentation/home/widgets/title_home.dart';
import 'package:travel/presentation/home/widgets/travel_card.dart';
import 'package:travel/presentation/home/widgets/view_all_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70), child: AppbarHome()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            TitleHome(),
            SizedBox(
              height: 30,
            ),
            ViewAllText(),
            SizedBox(
              height: 30,
            ),
            TravelCard()
          ],
        ),
      ),
    );
  }
}
