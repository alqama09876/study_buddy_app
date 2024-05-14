import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:study_buddy_app/SignUpScreen.dart';

class OnBoard3 extends StatefulWidget {
  const OnBoard3({super.key});

  @override
  State<OnBoard3> createState() => _OnBoard3State();
}

class _OnBoard3State extends State<OnBoard3> {
  final List<String> arrImages = [
    'assets/images/cap.svg', // Change to the path of cap.svg
    'assets/images/cap.svg', // Repeat if needed
  ];


  final String header1 = "IT'S Easy And Quick";
  final String header2 = "To Find Teachers";
  final String text1 = "There are many variations of passages of Lorem Ipsum";
  final String text2 = "available. but the majority have suffered";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define breakpoints for different devices
    final bool isMobile = screenWidth < 600 || screenHeight < 600; // Screen width less than 600 pixels
    final bool isTablet = screenWidth >= 600 && screenHeight >= 600 && screenWidth < 1024 && screenHeight < 1024; // Screen width between 600 and 1024 pixels
    final bool isDesktop = screenWidth >= 1024 && screenHeight >= 1024; // Screen width greater than or equal to 1024 pixels

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: isDesktop ? 400 : isTablet ? 300 : isMobile ? 200 : 250, // Adjust width based on device category
                height: isDesktop ? 400 : isTablet ? 300 : isMobile ? 200 : 250, // Adjust height based on device category
                child: arrImages.isNotEmpty
                    ? SvgPicture.asset(
                  arrImages[0], // Placeholder image in case arrImages is empty
                  fit: BoxFit.contain,
                )
                    : Container(
                  color: Colors.amber,
                ),
              ),
            ),
            SizedBox(
              height: isDesktop ? 100 : isTablet ? 80 : isMobile ? 80 : 90,
            ),
            Text(header1, style: TextStyle(fontSize: 30, fontFamily: 'RalewayBold', color: Color.fromARGB(255, 17, 24, 43))),
            Text(header2, style: TextStyle(fontSize: 30, fontFamily: 'RalewayBold', color: Color.fromARGB(255, 17, 24, 43))),
            SizedBox(
              height: isDesktop ? 20 : isTablet ? 15 : isMobile ? 10 : 15,
            ),
            Text(text1, style: TextStyle(fontSize: 13, fontFamily: 'RalewayRegular', color: Color.fromARGB(255, 174, 174, 174))), // grey
            Text(text2, style: TextStyle(fontSize: 13, fontFamily: 'RalewayRegular', color: Color.fromARGB(255, 174, 174, 174))), // grey
            SizedBox(
              height: isDesktop ? 80 : isTablet ? 60 : isMobile ? 50 : 60,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 1, 86, 211),
                borderRadius: BorderRadius.circular(30),
              ),
              width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
              height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
              child: TextButton(onPressed: (){
                Navigator.pushNamed(context, 'signin');
              }, child: Text('Log In', style: TextStyle(fontFamily: 'RalewayBold', color: Colors.white)),),),
            SizedBox(
              height: isDesktop ? 25 : isTablet ? 20 : isMobile ? 15 : 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Color.fromARGB(255, 228, 235, 253)),
              ),
              width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
              height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
              child: OutlinedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
              }, child: Text('Create Account', style: TextStyle(fontFamily: 'RalewayBold', color: Color.fromARGB(255, 17, 24, 43))),),),
          ],
        ),
      ),
    );
  }
}
