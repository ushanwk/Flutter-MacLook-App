import 'package:flutter/material.dart';
import 'package:sample_app_1/main.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {

  Widget welcomeScreenImg(){
    return SizedBox(
      height: 600,
      child: Image.asset(
        "assets/welcome_screen_bg.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  Widget welcomeScreenDownPart(){
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        const Positioned(
          top: 50,
          child: Text(
            'Welcome',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Helvetica'
            ),
          ),
        ),
        Positioned(
          top: 64.0,
          child: Text(
            'MacLook',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 55.0,
              fontWeight: FontWeight.bold,
              color: accent,
              shadows: [
                Shadow(
                  offset: const Offset(0.0, 2.0),
                  blurRadius: 10.0,
                  color: accent.withOpacity(0.6),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 170,
            child: ElevatedButton(
                onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: accent,
                fixedSize: const Size(175, 50),
              ),
                child: const Text(
                    'Sign In',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
            )
        ),
        const Positioned(
          top: 250,
          child: Text(
            'Do yo have not a Account ?',
            style: TextStyle(
                fontSize: 10.0,
                fontFamily: 'Helvetica',
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Positioned(
          top: 265,
          child: GestureDetector(
            onTap: () {

            },
            child: const Text(
              'Create Account',
              style: TextStyle(
                fontSize: 15.0,
                color: accent,
                fontWeight: FontWeight.bold,
              ),
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
      body: Column(
        children: [
          welcomeScreenImg(),
           Expanded(
            child: Center(
              child: welcomeScreenDownPart(),
            ),
          ),
        ],
      ),
    );
  }
}
