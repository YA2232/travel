import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/core/configs/assets/vectors/app_vectors.dart';

class TitleHome extends StatelessWidget {
  const TitleHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Explore the",
          style: TextStyle(fontSize: 30),
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "Beautiful",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black)),
            WidgetSpan(
              alignment: PlaceholderAlignment.baseline,
              baseline: TextBaseline.alphabetic,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Text(
                    " World!",
                    style: const TextStyle(
                      color: Color(0xffFF7029),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Positioned(
                    bottom: -4,
                    child: SvgPicture.asset(
                      AppVectors.vector,
                      height: 13,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        )
      ],
    );
  }
}
