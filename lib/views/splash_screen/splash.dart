import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tabcash/views/login_screen/login_screen.dart';

import '../../controller/share/components/component.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () {
          navigateAndFinish(context, const LoginScreen());
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 20,
          end: 20,
        ),
        child: Center(child: Image.asset('assets/images/logo.png',)),
      ),
    );
  }
}
