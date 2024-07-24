import 'package:flutter/material.dart';

class TopText3Widget extends StatelessWidget {
  const TopText3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'Enter Details, \n',
        style: TextStyle(
            fontSize: 34,
            color: Color(0xFF4A887F),
            fontWeight: FontWeight.w900),
        children: [
          TextSpan(
            text: 'for products you ',
            style: TextStyle(
              fontSize: 34,
              color: Color(0xFF6BAAA7),
              fontWeight: FontWeight.normal,
            ),
          ),
          TextSpan(
            text: 'cannot find',
            style: TextStyle(
                fontSize: 34,
                color: Color(0xFF4A887F),
                fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
