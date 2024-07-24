import 'package:flutter/material.dart';

class TopText2Widget extends StatelessWidget {
  const TopText2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'Know box\n',
        style: TextStyle(
          fontSize: 32,
          color: Color(0xFF6BAAA7),
        ),
        children: [
          TextSpan(
            text: 'Ingredients, Nutrients value ',
            style: TextStyle(
              fontSize: 34,
              color: Color(0xFF4A887F),
              fontWeight: FontWeight.w900,
            ),
          ),
          TextSpan(
            text: 'and more...',
            style: TextStyle(
              fontSize: 32,
              color: Color(0xFF6BAAA7),
            ),
          ),
        ],
      ),
    );
  }
}
