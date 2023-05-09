import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';


import '../../controller/share/components/component.dart';
import '../login_screen/login_screen.dart';

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

        const Duration(seconds: 4),
            (){
          navigateAndFinish(context, LoginScreen());

        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SvgPicture.asset(
              'assets/images/background_stars.svg',
              width: double.infinity,
              height: double.infinity,
            ),
            Center(child: SvgPicture.asset('assets/images/logo.svg')),
          ],
        ),

      ),
    );
  }
}
