import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(52.0),
          child: SvgPicture.asset(
            'assets/images/logo.svg',  
          ),
        ),
      ),
    );
  }
}