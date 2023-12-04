import 'package:flutter/material.dart';
import 'package:sample_app_1/main.dart';

class welcome_screen extends StatefulWidget {
  const welcome_screen({super.key});

  @override
  State<welcome_screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 600,
            child: Image.asset(
              "assets/welcome_screen_bg.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Column(
                children: [
                  Text('Welcome', style:
                    TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('MacLook', style:
                  TextStyle(
                    fontFamily: 'Helvetica',
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: accent
                  ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
