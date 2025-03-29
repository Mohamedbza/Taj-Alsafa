import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tadjelsafa/resources/color_manager.dart'; 

class StaticCarousel extends StatefulWidget {
  @override
  _StaticCarouselState createState() => _StaticCarouselState();
}

class _StaticCarouselState extends State<StaticCarousel> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Swipable SVG Assets
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 226,
          child: ClipRRect( borderRadius: BorderRadius.circular(5),
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                Image.asset(
                  'assets/images/4.png', // Replace with your jpg asset
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/2.jpg', // Replace with your jpg asset
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/1.png', // Replace with your jpg asset
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        // Dots Indicator
        Positioned(left: 0, right: 0,
          bottom: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(3, (index) {
              return GestureDetector(
                onTap: () {
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: _currentPage == index ? ColorManager.selecteddotcarousel : ColorManager.unselecteddotcarousel,
                  ),
                ),
              );
            }),
          ),
        ),
         
      ],
    );
  }
}