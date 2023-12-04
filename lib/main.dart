import 'package:flutter/material.dart';
import 'package:sample_app_1/screens/welcome_screen.dart';

const Color accent = Color.fromRGBO(68, 123, 121, 100);

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MacLook Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: accent),
        useMaterial3: true,
      ),
      home: const welcome_screen(),
    );
  }
}
