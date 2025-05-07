import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/core/configs/assets/vectors/app_vectors.dart';
import 'package:travel/core/models/onboarding_model.dart';

class OnboardingWidget extends StatelessWidget {
  OnboardingWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final String title = onboardingList[index].title!;
    final String lastWord = onboardingList[index].lastWord!;
    final String description = onboardingList[index].disc!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(children: [
          Image.asset(onboardingList[index].image!),
        ]),
        const SizedBox(height: 15),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [
              TextSpan(text: title),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Text(
                      lastWord,
                      style: const TextStyle(
                        color: Color(0xffFF7029),
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Positioned(
                      bottom: -4,
                      child: SvgPicture.asset(
                        AppVectors.vector,
                        width: lastWord.length * 12.0,
                        height: 11,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
