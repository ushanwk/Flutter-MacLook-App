import 'package:flutter/material.dart';

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
          Container(

          ),
        ],
      ),
    );
  }
}
