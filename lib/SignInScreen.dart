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
