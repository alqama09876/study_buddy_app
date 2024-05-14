import 'dart:js';

import 'package:flutter/material.dart';
import 'package:study_buddy_app/OnBoardScreens/OnBoardingScreen1.dart';
import 'package:study_buddy_app/OnBoardScreens/OnBoardingScreen2.dart';
import 'package:study_buddy_app/OnBoardScreens/OnBoardingScreen3.dart';
import 'package:study_buddy_app/SignInScreen.dart';
import 'package:study_buddy_app/SignUpScreen.dart';
import 'package:study_buddy_app/SplashScreen.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        'splashSreen': (context) => SplashScreen(),
        'onBoard1': (context) => OnBoard1(),
        'onBoard2': (context) => OnBoard2(),
        'onBoard3': (context) => OnBoard3(),
        'signup': (context) => SignUpScreen(),
        'signin': (context) => SignInScreen(),
      },
    ),
  );
}
