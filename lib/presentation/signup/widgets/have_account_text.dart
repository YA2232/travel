import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HaveAccountText extends StatelessWidget {
  const HaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "Already have an account ",
                style: TextStyle(color: Colors.black)),
            WidgetSpan(
                child: GestureDetector(
              onTap: () {
                context.go("/signin");
              },
              child: Text(
                "Sign in",
                style: TextStyle(
                    color: Color(0xff0D6EFD), fontWeight: FontWeight.bold),
              ),
            ))
          ]),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Or connect",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
