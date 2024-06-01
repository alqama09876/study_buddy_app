import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Reusable_widgets/colors.dart';

class OnBoard1 extends StatefulWidget {
  const OnBoard1({super.key});

  @override
  State<OnBoard1> createState() => _OnBoard1State();
}

class _OnBoard1State extends State<OnBoard1> {
  final List<String> arrImages = [
    'assets/images/cap.svg', // Change to the path of cap.svg
    'assets/images/cap.svg', // Repeat if needed
  ];

  final String text1 = "There are many variations of passages of Lorem Ipsum";
  final String text2 = "available. but the majority have suffered";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: MyColor.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: screenWidth * 0.6, // 60% of screen width
                height: screenHeight * 0.3, // 30% of screen height
                child: arrImages.isNotEmpty
                    ? SvgPicture.asset(
                  arrImages[0],
                  fit: BoxFit.contain,
                )
                    : Container(
                  color: Colors.amber,
                ),
              ),
            ),
            Text(
              'Teacher',
              style: TextStyle(
                fontSize: 45,
                fontFamily: 'RalewayBold',
                fontWeight: FontWeight.bold,
                color: MyColor.darkBlue,
              ),
            ),
            Text(
              'App',
              style: TextStyle(
                fontSize: 45,
                fontFamily: 'RalewayBold',
                fontWeight: FontWeight.bold,
                color: MyColor.darkBlue,
              ),
            ),
            SizedBox(height: 25),
            Text(
              'Home teacher app',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'RalewayBold',
                color: MyColor.darkBlue,
              ),
            ),
            SizedBox(height: 15),
            Text(
              text1,
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'RalewayRegular',
                color: Color.fromARGB(255, 174, 174, 174),
              ),
            ),
            Text(
              text2,
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'RalewayRegular',
                color: Color.fromARGB(255, 174, 174, 174),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: MyColor.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              width: screenWidth * 0.9, // 90% of screen width
              height: 50,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'onBoard2');
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontFamily: 'RalewayBold',
                    color: MyColor.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: MyColor.lightGrey),
              ),
              width: screenWidth * 0.9, // 90% of screen width
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  exit(0);
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontFamily: 'RalewayBold',
                    color: MyColor.darkBlue,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
