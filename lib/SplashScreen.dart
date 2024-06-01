import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_buddy_app/OnBoardScreens/OnBoardingScreen1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final List<String> arrImages = [
    'assets/images/cap.svg', // Change to the path of cap.svg
    'assets/images/cap.svg', // Repeat if needed
  ];

  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoard1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double imageSize = constraints.maxWidth * 0.8;
            return SizedBox(
              width: imageSize,
              height: imageSize,
              child: arrImages.isNotEmpty
                  ? SvgPicture.asset(
                      arrImages[0],
                      // Placeholder image in case arrImages is empty
                      fit: BoxFit.contain,
                    )
                  : Container(
                      color: Colors.amber,
                    ), // Empty container if arrImages is empty
            );
          },
        ),
      ),
    );
  }
}
