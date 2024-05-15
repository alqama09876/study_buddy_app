import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Reusable_widgets/colors.dart';

class SuccessfulScreen extends StatefulWidget {
  const SuccessfulScreen({super.key});

  @override
  State<SuccessfulScreen> createState() => _SuccessfulScreenState();
}

class _SuccessfulScreenState extends State<SuccessfulScreen> {
  final List<String> arrImages = [
    'assets/images/success.svg', // Change to the path of cap.svg
    'assets/images/success.svg', // Repeat if needed
  ];

  final String Screentext = "Successfully Changed";
  final String text1 = "Lorem Ipsum is simply the dummy text of the printing and";
  final String text2 = "typesetting industry. Lorem Ipsum has been the Lorem";
  final String text3 = "Ipsum is simply dummy text";

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
                  ? 90
                  : isTablet
                      ? 85
                      : isMobile
                          ? 80
                          : 85,
            ),
            Text(Screentext,
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'RalewayBold',
                    fontWeight: FontWeight.bold,
                    color: MyColor.darkBlue)),
            SizedBox(
              height: isDesktop
                  ? 20
                  : isTablet
                      ? 15
                      : isMobile
                          ? 10
                          : 15,
            ),
            Text(text1,
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'RalewayRegular',
                    color: Color.fromARGB(255, 174, 174, 174))), // grey
            Text(text2,
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'RalewayRegular',
                    color: Color.fromARGB(255, 174, 174, 174))), // grey
            Text(text3,
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'RalewayRegular',
                    color: Color.fromARGB(255, 174, 174, 174))),
            SizedBox(
              height: isDesktop
                  ? 40
                  : isTablet
                      ? 35
                      : isMobile
                          ? 30
                          : 35,
            ),
            Container(
              decoration: BoxDecoration(
                color: MyColor.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              width: isDesktop
                  ? 800
                  : isTablet
                  ? 360
                  : isMobile
                  ? 350
                  : 400,
              height: isDesktop
                  ? 100
                  : isTablet
                  ? 60
                  : isMobile
                  ? 50
                  : 60,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'signin');
                },
                child: Text('Login',
                    style: TextStyle(
                        fontFamily: 'RalewayBold', color: MyColor.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
