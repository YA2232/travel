import 'package:flutter/material.dart';

class ViewAllText extends StatelessWidget {
  const ViewAllText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Best Destination",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "view all",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ))
      ],
    );
  }
}
