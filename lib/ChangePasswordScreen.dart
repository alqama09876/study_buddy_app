// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// import 'Reusable_widgets/colors.dart';
//
// class ChangePassword extends StatefulWidget {
//   const ChangePassword({super.key});
//
//   @override
//   State<ChangePassword> createState() => _ChangePasswordState();
// }
//
// class _ChangePasswordState extends State<ChangePassword> {
//   final List<String> arrImages = [
//     'assets/images/login3.svg', // Change to the path of cap.svg
//     'assets/images/login3.svg', // Repeat if needed
//   ];
//
//   final String Screentext = "New Password";
//   final String text1 =
//       "Lorem Ipsum is simply the dummy text of the printing and";
//   final String text2 = "typesetting industry. Lorem Ipsum";
//
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController confirmPasswordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//
//     // Define breakpoints for different devices
//     final bool isMobile = screenWidth < 600 ||
//         screenHeight < 600; // Screen width less than 600 pixels
//     final bool isTablet = screenWidth >= 600 &&
//         screenHeight >= 600 &&
//         screenWidth < 1024 &&
//         screenHeight < 1024; // Screen width between 600 and 1024 pixels
//     final bool isDesktop = screenWidth >= 1024 &&
//         screenHeight >=
//             1024; // Screen width greater than or equal to 1024 pixels
//     return Scaffold(
//       backgroundColor: MyColor.white,
//       body: Padding(
//         padding: const EdgeInsets.all(13.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Container(
//                 width: isDesktop
//                     ? 400
//                     : isTablet
//                         ? 300
//                         : isMobile
//                             ? 200
//                             : 250,
//                 // Adjust width based on device category
//                 height: isDesktop
//                     ? 400
//                     : isTablet
//                         ? 300
//                         : isMobile
//                             ? 200
//                             : 250,
//                 // Adjust height based on device category
//                 child: arrImages.isNotEmpty
//                     ? SvgPicture.asset(
//                         arrImages[
//                             0], // Placeholder image in case arrImages is empty
//                         fit: BoxFit.contain,
//                       )
//                     : Container(
//                         color: Colors.amber,
//                       ),
//               ),
//             ),
//             SizedBox(
//               height: isDesktop
//                   ? 70
//                   : isTablet
//                       ? 65
//                       : isMobile
//                           ? 60
//                           : 65,
//             ),
//             Text(Screentext,
//                 style: TextStyle(
//                     fontSize: 28,
//                     fontFamily: 'RalewayBold',
//                     fontWeight: FontWeight.bold,
//                     color: MyColor.darkBlue)),
//             SizedBox(
//               height: isDesktop
//                   ? 20
//                   : isTablet
//                       ? 15
//                       : isMobile
//                           ? 10
//                           : 15,
//             ),
//             Text(text1,
//                 style: TextStyle(
//                     fontSize: 13,
//                     fontFamily: 'RalewayRegular',
//                     color: Color.fromARGB(255, 174, 174, 174))), // grey
//             Text(text2,
//                 style: TextStyle(
//                     fontSize: 13,
//                     fontFamily: 'RalewayRegular',
//                     color: Color.fromARGB(255, 174, 174, 174))), // grey
//             SizedBox(
//               height: isDesktop
//                   ? 40
//                   : isTablet
//                       ? 35
//                       : isMobile
//                           ? 30
//                           : 35,
//             ),
//             Container(
//               width: isDesktop
//                   ? 800
//                   : isTablet
//                       ? 360
//                       : isMobile
//                           ? 350
//                           : 400,
//               height: isDesktop
//                   ? 100
//                   : isTablet
//                       ? 60
//                       : isMobile
//                           ? 50
//                           : 60,
//               child: TextField(
//                 obscureText: true,
//                 controller: passwordController,
//                 textAlign: TextAlign.justify,
//                 decoration: InputDecoration(
//                   hintText: "Password",
//                   suffixIcon: Icon(Icons.remove_red_eye_outlined),
//                   suffixIconColor: MyColor.darkBlue,
//                   hintStyle: TextStyle(fontFamily: "RalewayRegular"),
//                   hoverColor: MyColor.darkBlue,
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       // color: Color.fromARGB(255, 174, 174, 174),
//                       color: MyColor.lightGrey,
//                     ),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: isDesktop
//                   ? 30
//                   : isTablet
//                       ? 25
//                       : isMobile
//                           ? 20
//                           : 25,
//             ),
//             Container(
//               width: isDesktop
//                   ? 800
//                   : isTablet
//                       ? 360
//                       : isMobile
//                           ? 350
//                           : 400,
//               height: isDesktop
//                   ? 100
//                   : isTablet
//                       ? 60
//                       : isMobile
//                           ? 50
//                           : 60,
//               child: TextField(
//                 obscureText: true,
//                 controller: confirmPasswordController,
//                 textAlign: TextAlign.justify,
//                 decoration: InputDecoration(
//                   hintText: "Re-Enter Your New Password",
//                   suffixIcon: Icon(Icons.remove_red_eye_outlined),
//                   suffixIconColor: MyColor.darkBlue,
//                   hintStyle: TextStyle(fontFamily: "RalewayRegular"),
//                   hoverColor: MyColor.darkBlue,
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       // color: Color.fromARGB(255, 174, 174, 174),
//                       color: MyColor.lightGrey,
//                     ),
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: isDesktop
//                   ? 30
//                   : isTablet
//                       ? 25
//                       : isMobile
//                           ? 20
//                           : 25,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 color: MyColor.blue,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               width: isDesktop
//                   ? 800
//                   : isTablet
//                       ? 360
//                       : isMobile
//                           ? 350
//                           : 400,
//               height: isDesktop
//                   ? 100
//                   : isTablet
//                       ? 60
//                       : isMobile
//                           ? 50
//                           : 60,
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.pushNamed(context, 'successfulScreen');
//                 },
//                 child: Text('Continue',
//                     style: TextStyle(
//                         fontFamily: 'RalewayBold', color: MyColor.white)),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Reusable_widgets/colors.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final List<String> arrImages = [
    'assets/images/login3.svg', // Change to the path of cap.svg
  ];

  final String screentext = "New Password";

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: MyColor.white,
      body: Padding(
        padding: const EdgeInsets.all(13.0),
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
            SizedBox(height: 30),
            Text(
              screentext,
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'RalewayBold',
                fontWeight: FontWeight.bold,
                color: MyColor.darkBlue,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Lorem Ipsum is simply the dummy text of the printing and typesetting industry. Lorem Ipsum",
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'RalewayRegular',
                color: Color.fromARGB(255, 174, 174, 174),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Container(
              width: screenWidth * 0.9,
              child: TextField(
                obscureText: true,
                controller: passwordController,
                textAlign: TextAlign.justify,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(Icons.remove_red_eye_outlined),
                  ),
                  suffixIconColor: MyColor.darkBlue,
                  hintStyle: TextStyle(fontFamily: "RalewayRegular"),
                  hoverColor: MyColor.darkBlue,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColor.lightGrey),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: screenWidth * 0.9,
              child: TextField(
                obscureText: true,
                controller: confirmPasswordController,
                textAlign: TextAlign.justify,
                decoration: InputDecoration(
                  hintText: "Re-Enter Your New Password",
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Icon(Icons.remove_red_eye_outlined),
                  ),
                  suffixIconColor: MyColor.darkBlue,
                  hintStyle: TextStyle(fontFamily: "RalewayRegular"),
                  hoverColor: MyColor.darkBlue,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColor.lightGrey),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: MyColor.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              width: screenWidth * 0.9,
              height: screenHeight * 0.06,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'successfulScreen');
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontFamily: 'RalewayBold',
                    color: MyColor.white,
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
