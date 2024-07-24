import 'package:boxscan/widgets/bottom_widget.dart';
import 'package:boxscan/widgets/top_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.bottomCenter,
        //     end: Alignment.topCenter,
        //     colors: [
        //       Color(0xffFBFBFB),
        //       Color(0xff4A887F),
        //     ],
        //   ),
        // ),
        child: const Column(
          children: [
            Expanded(
              child: TopWidget(),
            ),
            BottomWidget(),
          ],
        ),
      ),
    );
  }
}
