// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:study_buddy_app/ForgetPasswordScreen.dart';
//
// import 'Reusable_widgets/colors.dart';
//
// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});
//
//   @override
//   State<SignInScreen> createState() => _SignInScreenState();
// }
//
// class _SignInScreenState extends State<SignInScreen> {
//   bool isChecked = false;
//
//   final List<String> arrImages = [
//     'assets/images/login.svg', // Change to the path of cap.svg
//     'assets/images/login.svg', // Repeat if needed
//   ];
//
//   final String Screentext = "Let's Sign In";
//   final String text1 = "Lorem Ipsum is simply the dummy text of the printing and";
//   final String text2 = "typesetting industry. Lorem Ipsum has been the";
//   final String DontHaveAcc = "Don't have an account?";
//
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//
//     // Define breakpoints for different devices
//     final bool isMobile = screenWidth < 600 || screenHeight < 600; // Screen width less than 600 pixels
//     final bool isTablet = screenWidth >= 600 && screenHeight >= 600 && screenWidth < 1024 && screenHeight < 1024; // Screen width between 600 and 1024 pixels
//     final bool isDesktop = screenWidth >= 1024 && screenHeight >= 1024; // Screen width greater than or equal to 1024 pixels
//     return Scaffold(
//       backgroundColor: MyColor.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(13.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(
//                 child: Container(
//                   width: isDesktop ? 400 : isTablet ? 300 : isMobile ? 150 : 200, // Adjust width based on device category
//                   height: isDesktop ? 400 : isTablet ? 300 : isMobile ? 200 : 250, // Adjust height based on device category
//                   child: arrImages.isNotEmpty
//                       ? SvgPicture.asset(
//                     arrImages[0], // Placeholder image in case arrImages is empty
//                     fit: BoxFit.contain,
//                   )
//                       : Container(
//                     color: Colors.amber,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: isDesktop ? 35 : isTablet ? 25 : isMobile ? 25 : 30,
//               ),
//               Text(Screentext, style: TextStyle(fontSize: 28, fontFamily: 'RalewayBold', fontWeight: FontWeight.bold, color: MyColor.darkBlue)),
//               SizedBox(
//                 height: isDesktop ? 20 : isTablet ? 15 : isMobile ? 10 : 15,
//               ),
//               Text(text1, style: TextStyle(fontSize: 13, fontFamily: 'RalewayRegular', color: Color.fromARGB(255, 174, 174, 174))), // grey
//               Text(text2, style: TextStyle(fontSize: 13, fontFamily: 'RalewayRegular', color: Color.fromARGB(255, 174, 174, 174))), // grey
//               SizedBox(
//                 height: isDesktop ? 30 : isTablet ? 25 : isMobile ? 20 : 25,
//               ),
//               Container(
//                 width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
//                 height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
//                 child: TextField(
//                   controller: emailController,
//                   textAlign: TextAlign.justify,
//                   decoration: InputDecoration(
//                     hintText: "Email Address/Phone Number",
//                     suffixIcon: Icon(Icons.email_outlined),
//                     suffixIconColor: MyColor.darkBlue,
//                     hintStyle: TextStyle(fontFamily: "RalewayRegular"),
//                     hoverColor: MyColor.darkBlue,
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         // color: Color.fromARGB(255, 174, 174, 174),
//                         color: MyColor.lightGrey,
//                       ),
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: isDesktop ? 30 : isTablet ? 25 : isMobile ? 20 : 25,
//               ),
//               Container(
//                 width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
//                 height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
//                 child: TextField(
//                   controller: passwordController,
//                   obscureText: true,
//                   textAlign: TextAlign.justify,
//                   decoration: InputDecoration(
//                     hintText: "Password",
//                     suffixIcon: Icon(Icons.lock_open_rounded),
//                     suffixIconColor: MyColor.darkBlue,
//                     hintStyle: TextStyle(fontFamily: "RalewayRegular"),
//                     // hoverColor: Color.fromARGB(255, 17, 24, 43),
//                     hoverColor: MyColor.darkBlue,
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         // color: Color.fromARGB(255, 174, 174, 174),
//                         color: MyColor.lightGrey,
//                       ),
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   ),
//                 ),
//               ),
//               // SizedBox(
//               //   height: isDesktop ? 30 : isTablet ? 25 : isMobile ? 20 : 25,
//               // ),
//               SizedBox(
//                 height: isDesktop ? 25 : isTablet ? 20 : isMobile ? 15 : 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Checkbox(value: isChecked, onChanged: (value){
//                       setState(() {
//                         isChecked = value!;
//                       });
//                     }
//                     ),
//                     TextButton(onPressed: (){}, child: Text(
//                       "Remember me", style: TextStyle(fontFamily: "RalewayBold", color: MyColor.darkBlue),
//                     ),),
//                     Spacer(),
//                     TextButton(onPressed: (){
//                       Navigator.pushNamed(context, 'forgetPassword');
//                     }, child: Text(
//                       "Forget Password ?", style: TextStyle(fontFamily: "RalewayBold", color: MyColor.darkBlue),
//                     ),),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: isDesktop ? 25 : isTablet ? 20 : isMobile ? 15 : 20,
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: MyColor.blue,
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
//                 height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
//                 child: TextButton(onPressed: (){
//                   Navigator.pushNamed(context, 'onBoard3');
//                 }, child: Text('Log In', style: TextStyle(fontFamily: 'RalewayBold', color: MyColor.white)),),),
//               SizedBox(
//                 height: isDesktop ? 40 : isTablet ? 35 : isMobile ? 25 : 30,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       width: 100,
//                       child: Divider(
//                         height: 5,
//                         // endIndent: 10,
//                         // indent: 10,
//                         color: Colors.blue,
//                         thickness: 2,
//                       ),
//                     ),
//                     Text("Or Login With", style: TextStyle(fontSize: 13, fontFamily: "RalewayBold", color: MyColor.blue),),
//                     Container(
//                       width: 100,
//                       child: Divider(
//                         height: 5,
//                         // endIndent: 10,
//                         // indent: 10,
//                         color: Colors.blue,
//                         thickness: 2,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: isDesktop ? 40 : isTablet ? 35 : isMobile ? 15 : 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       width: isDesktop ? 350 : isTablet ? 280 : isMobile ? 150 : 200,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         border: Border.all(color: MyColor.blue),
//                       ),
//                       padding: EdgeInsets.all(10), // Add padding for spacing between icon and text
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           FaIcon(
//                             FontAwesomeIcons.facebook,
//                             color: MyColor.blue,
//                           ),
//                           SizedBox(width: 10), // Add some space between icon and text
//                           Text(
//                             'Facebook',
//                             style: TextStyle(
//                               fontFamily: "RalewayBold",
//                               color: MyColor.blue,
//                               fontSize: 16, // Adjust font size as needed
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       width: isDesktop ? 350 : isTablet ? 280 : isMobile ? 150 : 200,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         border: Border.all(color: MyColor.blue),
//                       ),
//                       padding: EdgeInsets.all(10), // Add padding for spacing between icon and text
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           FaIcon(
//                             FontAwesomeIcons.google,
//                             color:Colors.blue ,
//
//                             // color: MyColor.blue,
//                           ),
//                           SizedBox(width: 10), // Add some space between icon and text
//                           Text(
//                             'Google',
//                             style: TextStyle(
//                               fontFamily: "RalewayBold",
//                               color: MyColor.blue,
//                               fontSize: 16, // Adjust font size as needed
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: isDesktop ? 60 : isTablet ? 45 : isMobile ? 25 : 30,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(DontHaveAcc, style: TextStyle(fontSize: 15, fontFamily: "RalewayRegular", color: MyColor.darkGrey),),
//                   TextButton(onPressed: (){
//                     Navigator.pushNamed(context, 'signup');
//                   }, child: Text("Sign up", style: TextStyle(fontSize: 15, fontFamily: "RalewayBold", color: MyColor.darkBlue),),),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import 'Reusable_widgets/colors.dart';
//
// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});
//
//   @override
//   State<SignInScreen> createState() => _SignInScreenState();
// }
//
// class _SignInScreenState extends State<SignInScreen> {
//   bool isChecked = false;
//
//   final String imagePath = 'assets/images/login.svg';
//
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       backgroundColor: MyColor.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(
//                 child: Container(
//                   margin: EdgeInsets.only(top: 50.0),
//                   width: screenWidth * 0.3,
//                   height: screenHeight * 0.1,
//                   child: SvgPicture.asset(
//                     imagePath,
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//               ),
//               SizedBox(height: screenHeight * 0.03),
//               Text(
//                 "Let's Sign In",
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontFamily: 'RalewayBold',
//                   fontWeight: FontWeight.bold,
//                   color: MyColor.darkBlue,
//                 ),
//               ),
//               SizedBox(height: screenHeight * 0.01),
//               Text(
//                 "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 13,
//                   fontFamily: 'RalewayRegular',
//                   color: Color.fromARGB(255, 174, 174, 174),
//                 ),
//               ),
//               SizedBox(height: screenHeight * 0.025),
//               TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   hintText: "Email Address/Phone Number",
//                   suffixIcon: Icon(Icons.email_outlined),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(40),
//                     borderSide: BorderSide(color: MyColor.lightGrey),
//                   ),
//                 ),
//               ),
//               SizedBox(height: screenHeight * 0.02),
//               TextField(
//                 controller: passwordController,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: "Password",
//                   suffixIcon: Icon(Icons.lock_open_rounded),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(40),
//                     borderSide: BorderSide(color: MyColor.lightGrey),
//                   ),
//                 ),
//               ),
//               SizedBox(height: screenHeight * 0.015),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     children: [
//                       Checkbox(
//                         value: isChecked,
//                         onChanged: (value) {
//                           setState(() {
//                             isChecked = value!;
//                           });
//                         },
//                       ),
//                       Text(
//                         "Remember me",
//                         style: TextStyle(
//                           fontFamily: "RalewayBold",
//                           color: MyColor.darkBlue,
//                         ),
//                       ),
//                     ],
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, 'forgetPassword');
//                     },
//                     child: Text(
//                       "Forget Password?",
//                       style: TextStyle(
//                         fontFamily: "RalewayBold",
//                         color: MyColor.darkBlue,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: screenHeight * 0.02),
//               Container(
//                 decoration: BoxDecoration(
//                   color: MyColor.blue,
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 width: double.infinity,
//                 height: screenHeight * 0.06,
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, 'onBoard3');
//                   },
//                   child: Text(
//                     'Log In',
//                     style: TextStyle(
//                       fontFamily: 'RalewayBold',
//                       color: MyColor.white,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: screenHeight * 0.03),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     width: screenWidth * 0.3,
//                     child: Divider(
//                       height: 5,
//                       color: MyColor.blue,
//                       thickness: 2,
//                     ),
//                   ),
//                   Text(
//                     "Or Login With",
//                     style: TextStyle(
//                       fontSize: 13,
//                       fontFamily: "RalewayBold",
//                       color: MyColor.blue,
//                     ),
//                   ),
//                   Container(
//                     width: screenWidth * 0.3,
//                     child: Divider(
//                       height: 5,
//                       color: MyColor.blue,
//                       thickness: 2,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: screenHeight * 0.02),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   _buildSocialButton(
//                     FontAwesomeIcons.facebook,
//                     'Facebook',
//                     screenWidth * 0.4,
//                   ),
//                   _buildSocialButton(
//                     FontAwesomeIcons.google,
//                     'Google',
//                     screenWidth * 0.4,
//                   ),
//                 ],
//               ),
//               SizedBox(height: screenHeight * 0.03),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Don't have an account?",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontFamily: "RalewayRegular",
//                       color: MyColor.darkGrey,
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, 'signup');
//                     },
//                     child: Text(
//                       "Sign up",
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontFamily: "RalewayBold",
//                         color: MyColor.darkBlue,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSocialButton(IconData icon, String text, double width) {
//     return Container(
//       width: width,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(30),
//         border: Border.all(color: MyColor.blue),
//       ),
//       padding: EdgeInsets.all(10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           FaIcon(
//             icon,
//             color: MyColor.blue,
//           ),
//           SizedBox(width: 10),
//           Text(
//             text,
//             style: TextStyle(
//               fontFamily: "RalewayBold",
//               color: MyColor.blue,
//               fontSize: 16,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//






import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Reusable_widgets/colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isChecked = false;

  final String imagePath = 'assets/images/login.svg';

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: MyColor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.10),
              Center(
                child: Container(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.1,
                  child: SvgPicture.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.08),
              Text(
                "Let's Sign In",
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'RalewayBold',
                  fontWeight: FontWeight.bold,
                  color: MyColor.darkBlue,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'RalewayRegular',
                  color: Color.fromARGB(255, 174, 174, 174),
                ),
              ),
              SizedBox(height: screenHeight * 0.025),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email Address/Phone Number",
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 20.0), // Add margin after the icon
                    child: Icon(Icons.email_outlined),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 17.0), // Add margin before the text
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: MyColor.lightGrey),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 20.0), // Add margin after the icon
                    child: Icon(Icons.lock_open_rounded),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 17.0), // Add margin before the text
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: MyColor.lightGrey),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        "Remember me",
                        style: TextStyle(
                          fontFamily: "RalewayBold",
                          color: MyColor.darkBlue,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'forgetPassword');
                    },
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                        fontFamily: "RalewayBold",
                        color: MyColor.darkBlue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(
                decoration: BoxDecoration(
                  color: MyColor.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                width: double.infinity,
                height: screenHeight * 0.06,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'onBoard3');
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      fontFamily: 'RalewayBold',
                      color: MyColor.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenWidth * 0.3,
                    child: Divider(
                      height: 5,
                      color: MyColor.blue,
                      thickness: 2,
                    ),
                  ),
                  Text(
                    "Or Login With",
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: "RalewayBold",
                      color: MyColor.blue,
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.3,
                    child: Divider(
                      height: 5,
                      color: MyColor.blue,
                      thickness: 2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSocialButton(
                    FontAwesomeIcons.facebook,
                    'Facebook',
                    screenWidth * 0.4,
                  ),
                  _buildSocialButton(
                    FontAwesomeIcons.google,
                    'Google',
                    screenWidth * 0.4,
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "RalewayRegular",
                      color: MyColor.darkGrey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'signup');
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "RalewayBold",
                        color: MyColor.darkBlue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(IconData icon, String text, double width) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: MyColor.blue),
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            color: MyColor.blue,
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(
              fontFamily: "RalewayBold",
              color: MyColor.blue,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
