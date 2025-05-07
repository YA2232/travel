// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:travel/core/configs/assets/images/app_images.dart';

class OnboardingModel {
  String? title;
  String? lastWord;
  String? disc;
  String? image;
  OnboardingModel({
    this.title,
    this.disc,
    this.image,
    this.lastWord,
  });
}

final List<OnboardingModel> onboardingList = [
  OnboardingModel(
      title: "Life is short and the\n world is ",
      lastWord: "wide",
      disc:
          "At Friends tours and travel, we customize\n reliable and trutworthy educational tours to\n destinations all over the world",
      image: AppImages.onboardingOne),
  OnboardingModel(
      title: "It’s a big world out\n there go ",
      lastWord: "explore",
      disc:
          "To get the best of your adventure you just\n need to leave and go where you like. we are\n waiting for you",
      image: AppImages.onboardingTow),
  OnboardingModel(
      title: "People don’t take trips,\n trips take ",
      lastWord: "people",
      disc:
          "To get the best of your adventure you just\n need to leave and go where you like. we are\n waiting for you",
      image: AppImages.onboardingThree)
];
