import 'package:flutter/material.dart';

class TopImage3Widget extends StatelessWidget {
  const TopImage3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/Hardworking Businessman.png'),
          fit: BoxFit.cover,
          // colorFilter:
          //     ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        ),
      ),
    );
  }
}
