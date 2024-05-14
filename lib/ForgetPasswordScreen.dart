import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final List<String> arrImages = [
    'assets/images/login.svg', // Change to the path of cap.svg
    'assets/images/lock3.svg', // Repeat if needed
  ];

  final String Screentext = "Let's Sign In";
  final String text1 =
      "Lorem Ipsum is simply the dummy text of the printing and";
  final String text2 = "typesetting industry. Lorem Ipsum has been the";
  final String DontHaveAcc = "Don't have an account?";

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define breakpoints for different devices
    final bool isMobile = screenWidth < 600 ||
        screenHeight < 600; // Screen width less than 600 pixels
    final bool isTablet = screenWidth >= 600 &&
        screenHeight >= 600 &&
        screenWidth < 1024 &&
        screenHeight < 1024; // Screen width between 600 and 1024 pixels
    final bool isDesktop = screenWidth >= 1024 &&
        screenHeight >=
            1024; // Screen width greater than or equal to 1024 pixels
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: isDesktop
                    ? 400
                    : isTablet
                        ? 300
                        : isMobile
                            ? 200
                            : 250,
                // Adjust width based on device category
                height: isDesktop
                    ? 400
                    : isTablet
                        ? 300
                        : isMobile
                            ? 200
                            : 250,
                // Adjust height based on device category
                child: arrImages.isNotEmpty
                    ? SvgPicture.asset(
                        arrImages[
                            0], // Placeholder image in case arrImages is empty
                        fit: BoxFit.contain,
                      )
                    : Container(
                        color: Colors.amber,
                      ),
              ),
            ),
            SizedBox(
              height: isDesktop
                  ? 35
                  : isTablet
                      ? 25
                      : isMobile
                          ? 25
                          : 30,
            ),
            Center(
              child: Container(
                width: isDesktop
                    ? 350
                    : isTablet
                        ? 250
                        : isMobile
                            ? 150
                            : 200,
                // Adjust width based on device category
                height: isDesktop
                    ? 350
                    : isTablet
                        ? 250
                        : isMobile
                            ? 150
                            : 200,
                // Adjust height based on device category
                child: arrImages.isNotEmpty
                    ? SvgPicture.asset(
                        arrImages[
                            1], // Placeholder image in case arrImages is empty
                        fit: BoxFit.contain,
                      )
                    : Container(
                        color: Colors.amber,
                      ),
              ),
            ),
            SizedBox(
              height: isDesktop
                  ? 35
                  : isTablet
                      ? 25
                      : isMobile
                          ? 25
                          : 30,
            ),
          ],
        ),
      ),
    );
  }
}
