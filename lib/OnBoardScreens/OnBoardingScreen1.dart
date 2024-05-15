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

    // Define breakpoints for different devices
    final bool isMobile = screenWidth < 600 || screenHeight < 600; // Screen width less than 600 pixels
    final bool isTablet = screenWidth >= 600 && screenHeight >= 600 && screenWidth < 1024 && screenHeight < 1024; // Screen width between 600 and 1024 pixels
    final bool isDesktop = screenWidth >= 1024 && screenHeight >= 1024; // Screen width greater than or equal to 1024 pixels

    return Scaffold(
      backgroundColor: MyColor.white,
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
            Text('Teacher', style: TextStyle(fontSize: 45, fontFamily: 'RalewayBold', fontWeight: FontWeight.bold, color: MyColor.darkBlue)),
            Text('App', style: TextStyle(fontSize: 45, fontFamily: 'RalewayBold', fontWeight: FontWeight.bold, color: MyColor.darkBlue)),
            SizedBox(
              height: isDesktop ? 40 : isTablet ? 30 : isMobile ? 25 : 30,
            ),
            Text('Home teacher app', style: TextStyle(fontSize: 28, fontFamily: 'RalewayBold', color: MyColor.darkBlue)),
            SizedBox(
              height: isDesktop ? 20 : isTablet ? 15 : isMobile ? 10 : 15,
            ),
            Text(text1, style: TextStyle(fontSize: 13, fontFamily: 'RalewayRegular', color: Color.fromARGB(255, 174, 174, 174))), // grey
            Text(text2, style: TextStyle(fontSize: 13, fontFamily: 'RalewayRegular', color: Color.fromARGB(255, 174, 174, 174))), // grey
            SizedBox(
              height: isDesktop ? 30 : isTablet ? 25 : isMobile ? 20 : 25,
            ),
            Container(
              decoration: BoxDecoration(
                color: MyColor.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
              height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
              child: TextButton(onPressed: (){
              Navigator.pushNamed(context, 'onBoard2');
              }, child: Text('Next', style: TextStyle(fontFamily: 'RalewayBold', color: MyColor.white)),),),
            SizedBox(
              height: isDesktop ? 25 : isTablet ? 20 : isMobile ? 15 : 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: MyColor.lightGrey),
              ),
              width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
              height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
              child: OutlinedButton(onPressed: (){
                exit(0);

                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SplashScreen()));

                // if(Platform.isAndroid){
                //   exit(0);
                // }
                // else if(Platform.isIOS){
                //   exit(0);
                // }
              }, child: Text('Skip', style: TextStyle(fontFamily: 'RalewayBold', color: MyColor.darkBlue)),),),
          ],
        ),
      ),
    );
  }
}
