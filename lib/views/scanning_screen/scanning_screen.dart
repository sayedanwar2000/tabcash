import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabcash/controller/share/components/component.dart';
import 'package:tabcash/controller/share/style/colors.dart';

class ScanningScreen extends StatelessWidget {
  const ScanningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Center(
                  child: Text(
                    'Scanning',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: defaultBlackColor00,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Scan QR code',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  color: defaultBlueColor0D,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Please click scan now to scan your qr code and pay bills.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: defaultBlackColor00,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SvgPicture.asset('assets/images/scan_icon.svg'),
              SizedBox(
                height: 60,
              ),
              defaultButton(
                function: (){},
                color: defaultBlueColor0D ,
                text: 'Scan now' ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}