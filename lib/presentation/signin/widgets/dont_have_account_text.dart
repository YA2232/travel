import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel/presentation/onbarding/widgets/custom_button.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "Don’t have an account? ",
                style: TextStyle(color: Colors.black)),
            WidgetSpan(
                child: GestureDetector(
              onTap: () {
                context.go("/signup");
              },
              child: Text(
                "Sign Up",
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
