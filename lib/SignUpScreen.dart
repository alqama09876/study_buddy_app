import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;

  final List<String> arrImages = [
    'assets/images/login.svg', // Change to the path of cap.svg
    'assets/images/login.svg', // Repeat if needed
  ];

  final String Screentext = "Create Account";
  final String text1 = "Lorem Ipsum is simply the dummy text of the printing and";
  final String text2 = "typesetting industry. Lorem Ipsum has been the";
  final String DontHaveAcc = "Have an account?";

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
        padding: const EdgeInsets.all(13.0),
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
              height: isDesktop ? 35 : isTablet ? 25 : isMobile ? 25 : 30,
            ),
            Text(Screentext, style: TextStyle(fontSize: 28, fontFamily: 'RalewayBold', fontWeight: FontWeight.bold, color: Color.fromARGB(255, 17, 24, 43))),
            SizedBox(
              height: isDesktop ? 20 : isTablet ? 15 : isMobile ? 10 : 15,
            ),
            Text(text1, style: TextStyle(fontSize: 13, fontFamily: 'RalewayRegular', color: Color.fromARGB(255, 174, 174, 174))), // grey
            Text(text2, style: TextStyle(fontSize: 13, fontFamily: 'RalewayRegular', color: Color.fromARGB(255, 174, 174, 174))), // grey
            SizedBox(
              height: isDesktop ? 30 : isTablet ? 25 : isMobile ? 20 : 25,
            ),
            Container(
              width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
              height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
              child: TextField(
                controller: fullNameController,
                textAlign: TextAlign.justify,
                decoration: InputDecoration(
                  hintText: "Your Full Name",
                  hintStyle: TextStyle(fontFamily: "RalewayRegular"),
                  hoverColor: Color.fromARGB(255, 17, 24, 43),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 228, 235, 253),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: isDesktop ? 30 : isTablet ? 25 : isMobile ? 20 : 25,
            ),
            Container(
              width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
              height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
              child: TextField(
                controller: emailController,
                textAlign: TextAlign.justify,
                decoration: InputDecoration(
                  hintText: "Email Address/Phone Number",
                  suffixIcon: Icon(Icons.email_outlined),
                  suffixIconColor: Color.fromARGB(255, 17, 24, 43),
                  hintStyle: TextStyle(fontFamily: "RalewayRegular"),
                  hoverColor: Color.fromARGB(255, 17, 24, 43),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 228, 235, 253),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: isDesktop ? 30 : isTablet ? 25 : isMobile ? 20 : 25,
            ),
            Container(
              width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
              height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                textAlign: TextAlign.justify,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Icon(Icons.lock_open_rounded),
                  suffixIconColor: Color.fromARGB(255, 17, 24, 43),
                  hintStyle: TextStyle(fontFamily: "RalewayRegular"),
                  // hoverColor: Color.fromARGB(255, 17, 24, 43),
                  hoverColor: Color.fromARGB(255, 17, 24, 43),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 228, 235, 253),
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: isDesktop ? 30 : isTablet ? 25 : isMobile ? 20 : 25,
            // ),
            SizedBox(
              height: isDesktop ? 45 : isTablet ? 35 : isMobile ? 25 : 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 1, 86, 211),
                borderRadius: BorderRadius.circular(30),
              ),
              width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
              height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
              child: TextButton(onPressed: (){
                Navigator.pushNamed(context, 'onBoard3');
              }, child: Text('Sign Up', style: TextStyle(fontFamily: 'RalewayBold', color: Colors.white)),),),
            SizedBox(
              height: isDesktop ? 40 : isTablet ? 35 : isMobile ? 25 : 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 2,
                    width: isDesktop ? 220 : isTablet ? 160 : isMobile ? 120 : 140,
                    color: Color.fromARGB(255, 17, 24, 43),
                  ),
                  Text("Or Login With", style: TextStyle(fontSize: 13, fontFamily: "RalewayBold", color: Color.fromARGB(255, 17, 24, 43)),),
                  Container(
                    height: 2,
                    width: isDesktop ? 220 : isTablet ? 160 : isMobile ? 120 : 140,
                    color: Color.fromARGB(255, 17, 24, 43),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: isDesktop ? 40 : isTablet ? 35 : isMobile ? 15 : 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: isDesktop ? 350 : isTablet ? 280 : isMobile ? 150 : 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color.fromARGB(255, 1, 86, 211)),
                    ),
                    padding: EdgeInsets.all(10), // Add padding for spacing between icon and text
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Color.fromARGB(255, 1, 86, 211),
                        ),
                        SizedBox(width: 10), // Add some space between icon and text
                        Text(
                          'Facebook',
                          style: TextStyle(
                            fontFamily: "RalewayBold",
                            color: Color.fromARGB(255, 1, 86, 211),
                            fontSize: 16, // Adjust font size as needed
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: isDesktop ? 350 : isTablet ? 280 : isMobile ? 150 : 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Color.fromARGB(255, 1, 86, 211)),
                    ),
                    padding: EdgeInsets.all(10), // Add padding for spacing between icon and text
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.google,
                          color: Color.fromARGB(255, 1, 86, 211),
                        ),
                        SizedBox(width: 10), // Add some space between icon and text
                        Text(
                          'Google',
                          style: TextStyle(
                            fontFamily: "RalewayBold",
                            color: Color.fromARGB(255, 1, 86, 211),
                            fontSize: 16, // Adjust font size as needed
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: isDesktop ? 60 : isTablet ? 45 : isMobile ? 25 : 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(DontHaveAcc, style: TextStyle(fontSize: 15, fontFamily: "RalewayRegular", color: Color.fromARGB(255, 58, 58, 58)),),
                TextButton(onPressed: (){
                  Navigator.pushNamed(context, 'signin');
                }, child: Text("Sign in", style: TextStyle(fontSize: 15, fontFamily: "RalewayBold", color: Color.fromARGB(255, 17, 24, 43)),),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
