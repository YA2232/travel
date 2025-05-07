import 'package:flutter/material.dart';
import 'package:travel/core/models/onboarding_model.dart';
import 'package:travel/presentation/onbarding/widgets/custom_button.dart';
import 'package:travel/presentation/onbarding/widgets/dots.dart';
import 'package:travel/presentation/onbarding/widgets/onbarding_widget.dart';
import 'package:travel/presentation/onbarding/widgets/skip_button.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  PageController pageController = PageController();
  int curruntIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: PageView.builder(
              controller: pageController,
              itemCount: onboardingList.length,
              onPageChanged: (value) {
                setState(() {
                  curruntIndex = value;
                });
              },
              itemBuilder: (context, index) {
                return OnboardingWidget(index: index);
              },
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: SkipButton(
              onPressed: () {
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()));
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Dots(
                    currentPage: curruntIndex,
                    length: onboardingList.length,
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    isEnd: curruntIndex == onboardingList.length - 1,
                    pageController: pageController,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
