import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tadjelsafa/resources/color_manager.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _currentPage = 0;
  Timer? _timer;
  final List<String> _imagePaths = [
    'assets/images/1.png',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
  ];

  @override
  void initState() {
    super.initState();
    startAutoSlide();
  }

  void startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (!mounted) return;
      setState(() {
        _currentPage = (_currentPage + 1) % _imagePaths.length;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Fade Transition Image with fixed size
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(opacity: animation, child: child);
            },
            child: Image.asset(
              _imagePaths[_currentPage],
              key: ValueKey<int>(_currentPage),
              fit: BoxFit.cover,
              height: 200, // fixed height
              width: double.infinity, // fixed width across all images
            ),
          ),
        ),
        // Dots Indicator
        Positioned(
          left: 0,
          right: 0,
          bottom: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(_imagePaths.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _currentPage = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: _currentPage == index
                        ? ColorManager.selecteddotcarousel
                        : ColorManager.unselecteddotcarousel,
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