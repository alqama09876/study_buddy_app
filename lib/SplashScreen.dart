import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_buddy_app/OnBoardScreens/OnBoardingScreen1.dart';

class SplashScreen extends StatefulWidget {
  // const SplashScreen({Key key}) : super(key: key);
  const SplashScreen({super.key});

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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define breakpoints for different devices
    final bool isMobile = screenWidth < 600 || screenHeight < 600; // Screen width less than 600 pixels
    final bool isTablet = screenWidth >= 600 && screenHeight >= 600 && screenWidth < 1024 && screenHeight < 1024; // Screen width between 600 and 1024 pixels
    final bool isDesktop = screenWidth >= 1024 && screenHeight >= 1024; // Screen width greater than or equal to 1024 pixels

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: isDesktop ? 400 : isTablet ? 300 : isMobile ? 200 : 250, // Adjust width based on device category
          height: isDesktop ? 400 : isTablet ? 300 : isMobile ? 200 : 250, // Adjust height based on device category
          child: arrImages.isNotEmpty
              ? SvgPicture.asset(
                  arrImages[0],
                  // Placeholder image in case arrImages is empty
                  fit: BoxFit.contain,
                )
              : Container(
                  color: Colors.amber,
                ), // Empty container if arrImages is empty
        ),
      ),
    );
  }
}
