import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Widget loginScreenImg(){
    return SizedBox(
      height: 300,
      child: Image.asset(
        "assets/login_screen_bg.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  Widget textFieldsAndOthers(){
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 80,
          child: loginScreenImg(),
        ),
        const Positioned(
          top: 410,
          child: Text(
            "Let's Sign You In",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ),
        const Positioned(
          top: 470,
          width: 360,
          child: Text(
            "Sign in with your data that you have entered during your Registration.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,

            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: textFieldsAndOthers(),
    );
  }
}
