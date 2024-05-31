// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'Reusable_widgets/colors.dart';
//
// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});
//
//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//   bool isChecked = false;
//
//   final List<String> arrImages = [
//     'assets/images/login.svg', // Change to the path of cap.svg
//     'assets/images/login.svg', // Repeat if needed
//   ];
//
//   final String Screentext = "Create Account";
//   final String text1 = "Lorem Ipsum is simply the dummy text of the printing and";
//   final String text2 = "typesetting industry. Lorem Ipsum has been the";
//   final String DontHaveAcc = "Have an account?";
//
//   TextEditingController fullNameController = TextEditingController();
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
//
//     return Scaffold(
//       backgroundColor: MyColor.white,
//       body: Padding(
//         padding: const EdgeInsets.all(13.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Container(
//                 width: isDesktop ? 400 : isTablet ? 300 : isMobile ? 200 : 250, // Adjust width based on device category
//                 height: isDesktop ? 400 : isTablet ? 300 : isMobile ? 200 : 250, // Adjust height based on device category
//                 child: arrImages.isNotEmpty
//                     ? SvgPicture.asset(
//                   arrImages[0], // Placeholder image in case arrImages is empty
//                   fit: BoxFit.contain,
//                 )
//                     : Container(
//                   color: Colors.amber,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: isDesktop ? 35 : isTablet ? 25 : isMobile ? 25 : 30,
//             ),
//             Text(Screentext, style: TextStyle(fontSize: 28, fontFamily: 'RalewayBold', fontWeight: FontWeight.bold, color: MyColor.darkBlue)),
//             SizedBox(
//               height: isDesktop ? 20 : isTablet ? 15 : isMobile ? 10 : 15,
//             ),
//             Text(text1, style: TextStyle(fontSize: 13, fontFamily: 'RalewayRegular', color: Color.fromARGB(255, 174, 174, 174))), // grey
//             Text(text2, style: TextStyle(fontSize: 13, fontFamily: 'RalewayRegular', color: Color.fromARGB(255, 174, 174, 174))), // grey
//             SizedBox(
//               height: isDesktop ? 30 : isTablet ? 25 : isMobile ? 20 : 25,
//             ),
//             Container(
//               width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
//               height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
//               child: TextField(
//                 controller: fullNameController,
//                 textAlign: TextAlign.justify,
//                 decoration: InputDecoration(
//                   hintText: "Your Full Name",
//                   hintStyle: TextStyle(fontFamily: "RalewayRegular"),
//                   hoverColor: MyColor.darkBlue,
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: MyColor.lightGrey,
//                     ),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: isDesktop ? 30 : isTablet ? 25 : isMobile ? 20 : 25,
//             ),
//             Container(
//               width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
//               height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
//               child: TextField(
//                 controller: emailController,
//                 textAlign: TextAlign.justify,
//                 decoration: InputDecoration(
//                   hintText: "Email Address/Phone Number",
//                   suffixIcon: Icon(Icons.email_outlined),
//                   suffixIconColor: MyColor.darkBlue,
//                   hintStyle: TextStyle(fontFamily: "RalewayRegular"),
//                   hoverColor: MyColor.darkBlue,
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: MyColor.lightGrey,
//                     ),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: isDesktop ? 30 : isTablet ? 25 : isMobile ? 20 : 25,
//             ),
//             Container(
//               width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
//               height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
//               child: TextField(
//                 controller: passwordController,
//                 obscureText: true,
//                 textAlign: TextAlign.justify,
//                 decoration: InputDecoration(
//                   hintText: "Password",
//                   suffixIcon: Icon(Icons.lock_open_rounded),
//                   suffixIconColor: MyColor.darkBlue,
//                   hintStyle: TextStyle(fontFamily: "RalewayRegular"),
//                   // hoverColor: Color.fromARGB(255, 17, 24, 43),
//                   hoverColor: MyColor.darkBlue,
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: MyColor.lightGrey,
//                     ),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//               ),
//             ),
//             // SizedBox(
//             //   height: isDesktop ? 30 : isTablet ? 25 : isMobile ? 20 : 25,
//             // ),
//             SizedBox(
//               height: isDesktop ? 45 : isTablet ? 35 : isMobile ? 25 : 30,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 color: MyColor.blue,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               width: isDesktop ? 800 : isTablet ? 360 : isMobile ? 350 : 400,
//               height: isDesktop ? 100 : isTablet ? 60 : isMobile ? 50 : 60,
//               child: TextButton(onPressed: (){
//                 Navigator.pushNamed(context, 'onBoard3');
//               }, child: Text('Sign Up', style: TextStyle(fontFamily: 'RalewayBold', color: MyColor.white)),),),
//             SizedBox(
//               height: isDesktop ? 40 : isTablet ? 35 : isMobile ? 25 : 30,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Container(
//                     height: 2,
//                     width: isDesktop ? 220 : isTablet ? 160 : isMobile ? 120 : 140,
//                     color: MyColor.darkBlue,
//                   ),
//                   Text("Or Login With", style: TextStyle(fontSize: 13, fontFamily: "RalewayBold", color: MyColor.darkBlue),),
//                   Container(
//                     height: 2,
//                     width: isDesktop ? 220 : isTablet ? 160 : isMobile ? 120 : 140,
//                     color: MyColor.darkBlue,
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: isDesktop ? 40 : isTablet ? 35 : isMobile ? 15 : 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     width: isDesktop ? 350 : isTablet ? 280 : isMobile ? 150 : 200,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       border: Border.all(color: MyColor.blue),
//                     ),
//                     padding: EdgeInsets.all(10), // Add padding for spacing between icon and text
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         FaIcon(
//                           FontAwesomeIcons.facebook,
//                           color: MyColor.blue
//                         ),
//                         SizedBox(width: 10), // Add some space between icon and text
//                         Text(
//                           'Facebook',
//                           style: TextStyle(
//                             fontFamily: "RalewayBold",
//                             color: MyColor.blue,
//                             fontSize: 16, // Adjust font size as needed
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     width: isDesktop ? 350 : isTablet ? 280 : isMobile ? 150 : 200,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       border: Border.all(color: MyColor.blue),
//                     ),
//                     padding: EdgeInsets.all(10), // Add padding for spacing between icon and text
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         FaIcon(
//                           FontAwesomeIcons.google,
//                           color: MyColor.blue,
//                         ),
//                         SizedBox(width: 10), // Add some space between icon and text
//                         Text(
//                           'Google',
//                           style: TextStyle(
//                             fontFamily: "RalewayBold",
//                             color: MyColor.blue,
//                             fontSize: 16, // Adjust font size as needed
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: isDesktop ? 60 : isTablet ? 45 : isMobile ? 25 : 30,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(DontHaveAcc, style: TextStyle(fontSize: 15, fontFamily: "RalewayRegular", color: MyColor.darkGrey),),
//                 TextButton(onPressed: (){
//                   Navigator.pushNamed(context, 'signin');
//                 }, child: Text("Sign in", style: TextStyle(fontSize: 15, fontFamily: "RalewayBold", color: MyColor.darkBlue),),),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'Reusable_widgets/colors.dart';
//
// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({Key? key}) : super(key: key);
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
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(height: screenHeight * 0.08),
//               SizedBox(
//                 width: screenWidth * 0.3,
//                 height: screenWidth * 0.3,
//                 child: SvgPicture.asset(
//                   'assets/images/login.svg',
//                   fit: BoxFit.contain,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Create Account',
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontFamily: 'RalewayBold',
//                   color: MyColor.darkBlue,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 "Lorem Ipsum is simply the dummy text of the printing and typesetting industry. Lorem Ipsum has been the",
//                 style: TextStyle(
//                   fontSize: 13,
//                   fontFamily: 'RalewayRegular',
//                   color: Color.fromARGB(255, 174, 174, 174),
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 30),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Your Full Name",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                     borderSide: BorderSide(color: MyColor.lightGrey),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Email Address/Phone Number",
//                   suffixIcon: Icon(Icons.email_outlined),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                     borderSide: BorderSide(color: MyColor.lightGrey),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: "Password",
//                   suffixIcon: Icon(Icons.lock_open_rounded),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                     borderSide: BorderSide(color: MyColor.lightGrey),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30),
//               SizedBox(
//                 width: double.infinity,
//                 height: 50,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.pushNamed(context, 'onBoard3');
//                   },
//                   child: Text(
//                     'Sign Up',
//                     style: TextStyle(
//                       fontFamily: 'RalewayBold',
//                       fontSize: 16,
//                       color: MyColor.white,
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: MyColor.blue,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30),
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Expanded(child: Divider(color: MyColor.darkBlue)),
//                     Text(
//                       'Or Login With',
//                       style: TextStyle(
//                         fontSize: 13,
//                         fontFamily: 'RalewayBold',
//                         color: MyColor.darkBlue,
//                       ),
//                     ),
//                     Expanded(child: Divider(color: MyColor.darkBlue)),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildSocialButton(FontAwesomeIcons.facebook, 'Facebook'),
//                   _buildSocialButton(FontAwesomeIcons.google, 'Google'),
//                 ],
//               ),
//               SizedBox(height: 30),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Have an account?",
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontFamily: "RalewayRegular",
//                       color: MyColor.darkGrey,
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, 'signin');
//                     },
//                     child: Text(
//                       "Sign in",
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
//   Widget _buildSocialButton(IconData icon, String text) {
//     return ElevatedButton.icon(
//       onPressed: () {},
//       icon: FaIcon(
//         icon,
//         color: MyColor.blue,
//       ),
//       label: Text(
//         text,
//         style: TextStyle(
//           fontFamily: "RalewayBold",
//           color: MyColor.blue,
//           fontSize: 16,
//         ),
//       ),
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(30),
//           side: BorderSide(color: MyColor.blue),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable_widgets/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: MyColor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.08),
              SizedBox(
                width: screenWidth * 0.3,
                height: screenWidth * 0.3,
                child: SvgPicture.asset(
                  'assets/images/login.svg',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'RalewayBold',
                  color: MyColor.darkBlue,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Lorem Ipsum is simply the dummy text of the printing and typesetting industry. Lorem Ipsum has been the",
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'RalewayRegular',
                  color: const Color.fromARGB(255, 174, 174, 174),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  hintText: "Your Full Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: MyColor.lightGrey),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email Address/Phone Number",
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(Icons.email_outlined),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: MyColor.lightGrey),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(Icons.lock_open_rounded),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: MyColor.lightGrey),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'onBoard3');
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'RalewayBold',
                      fontSize: 16,
                      color: MyColor.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColor.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
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
                      color: MyColor.darkBlue,
                      thickness: 2,
                    ),
                  ),
                  Text(
                    "Or Login With",
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: "RalewayBold",
                      color: MyColor.darkBlue,
                    ),
                  ),
                  Container(
                    width: screenWidth * 0.3,
                    child: Divider(
                      height: 5,
                      color: MyColor.darkBlue,
                      thickness: 2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSocialButton(FontAwesomeIcons.facebook, 'Facebook'),
                  _buildSocialButton(FontAwesomeIcons.google, 'Google'),
                ],
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account?",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "RalewayRegular",
                      color: MyColor.darkGrey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'signin');
                    },
                    child: Text(
                      "Sign in",
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

  Widget _buildSocialButton(IconData icon, String text) {
    return ElevatedButton.icon(
        onPressed: () {},
        icon: FaIcon(
          icon,
          color: MyColor.blue,
        ),
        label: Text(
          text,
          style: TextStyle(
            fontFamily: "RalewayBold",
            color: MyColor.blue,
            fontSize: 16,
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: MyColor.blue),
          ),
        ),
    );
  }
}
