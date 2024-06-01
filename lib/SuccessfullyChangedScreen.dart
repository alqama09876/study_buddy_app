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
  ];

  final String screentext = "Successfully Changed";

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
                width: screenWidth * 0.5, // 60% of screen width
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
              "Lorem Ipsum is simply the dummy text of the printing and typesetting industry. Lorem Ipsum has been the Lorem Ipsum is simply dummy text",
              style: TextStyle(
                fontSize: 13,
                fontFamily: 'RalewayRegular',
                color: Color.fromARGB(255, 174, 174, 174),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: MyColor.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              width: screenWidth * 0.9,
              height: screenHeight * 0.05, // 90% of screen width
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'signin');
                },
                child: Text(
                  'Login',
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
