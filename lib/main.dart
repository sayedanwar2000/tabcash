import 'package:flutter/material.dart';
import 'package:tabcash/views/layout/layout_screen.dart';
import 'package:tabcash/views/login_screen/login_screen.dart';
import 'package:tabcash/views/sign_up_screen/sign_up_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpScreen(),
    );
  }
}

