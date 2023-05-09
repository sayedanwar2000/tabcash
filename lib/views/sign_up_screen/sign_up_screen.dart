import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabcash/controller/share/style/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0 , horizontal: 10.0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/svgs/star.svg'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: SvgPicture.asset('assets/images/logo.svg'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: defaultBlackColor00,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Please sign up to access your account.',
                ),
              ),
              Row(
                children: [
                  Spacer(),
                  SvgPicture.asset(
                    'assets/svgs/star.svg',
                    width: 34,
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
