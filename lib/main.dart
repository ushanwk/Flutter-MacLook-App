import 'package:flutter/material.dart';
import 'package:sample_app_1/screens/login_screen.dart';

const Color accent = Color(0xFF447BDD);

void main(){
  runApp(const MyApp());
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
      home: const LoginScreen(),
    );
  }
}
