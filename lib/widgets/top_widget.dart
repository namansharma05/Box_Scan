import 'package:boxscan/widgets/top_text_and_images_widgets/top_image1_widget.dart';
import 'package:boxscan/widgets/top_text_and_images_widgets/top_image2_widget.dart';
import 'package:boxscan/widgets/top_text_and_images_widgets/top_image3_widget.dart';
import 'package:boxscan/widgets/top_text_and_images_widgets/top_text1_widget.dart';
import 'package:boxscan/widgets/top_text_and_images_widgets/top_text2_widget.dart';
import 'package:boxscan/widgets/top_text_and_images_widgets/top_text3_widget.dart';
import 'package:flutter/material.dart';

class TopWidget extends StatefulWidget {
  const TopWidget({super.key});

  @override
  State<TopWidget> createState() => _TopWidgetState();
}

class _TopWidgetState extends State<TopWidget> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  List<List<Widget>> carouselContent = [
    [TopText1Widget(), TopImage1Widget()],
    [TopText2Widget(), TopImage2Widget()],
    [TopText3Widget(), TopImage3Widget()],
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: carouselContent.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    carouselContent[index][0],
                    carouselContent[index][1],
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              carouselContent.length,
              (index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 3.0),
                  height: 10.0,
                  width: _currentPage == index ? 15.0 : 10.0,
                  decoration: BoxDecoration(
                    color:
                        _currentPage == index ? Color(0xFF4A887F) : Colors.grey,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
