import 'package:flutter/material.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key});

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 208,
      decoration: const BoxDecoration(
        color: Color(0xFF4A887F),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Center(
        child: Container(
          height: 100,
          width: 156,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(22.0),
            child: Image.asset(
              'assets/scan image.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
