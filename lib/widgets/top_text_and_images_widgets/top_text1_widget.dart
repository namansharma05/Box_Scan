import 'package:flutter/material.dart';

class TopText1Widget extends StatelessWidget {
  const TopText1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'Welcome,\n',
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 34,
          color: Color(0xFF4A887F),
        ),
        children: [
          TextSpan(
            text: 'Scan Barcode to see Product details',
            style: TextStyle(
              fontSize: 34,
              color: Color(0xFF6BAAA7),
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
