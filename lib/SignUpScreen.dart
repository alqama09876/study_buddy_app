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
