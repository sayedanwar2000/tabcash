import 'package:flutter/material.dart';

import '../../controller/share/components/component.dart';
import '../../controller/share/style/colors.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

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
                    'More',
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
                'Our services',
                style: TextStyle(
                  color: defaultBlackColor00,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  OurServicesTapedItem(
                      iconPath: 'assets/svgs/send_icon.svg',
                      text: 'Send',
                      textLine2: 'money',
                      function: (){}
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OurServicesTapedItem(
                      iconPath: 'assets/svgs/cash_in_out_icon.svg',
                      text: 'Cash',
                      textLine2: 'in/out',
                      function: (){}
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OurServicesTapedItem(
                      iconPath: 'assets/svgs/pay_bills_icon.svg',
                      text: 'Pay',
                      textLine2: 'bills',
                      function: (){}
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OurServicesTapedItem(
                    iconPath: 'assets/svgs/bank_to_wallet_icon.svg',
                    text: 'Bank to',
                    textLine2: ' wallet',
                    function: (){},
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  OurServicesTapedItem(
                      iconPath: 'assets/svgs/shopping_cart.svg',
                      text: 'Online',
                      textLine2: 'shopping',
                      function: (){}
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OurServicesTapedItem(
                      iconPath: 'assets/svgs/donate.svg',
                      text: 'Donate',
                      textLine2: ' ',
                      function: (){}
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OurServicesTapedItem(
                      iconPath: 'assets/svgs/vouchers.svg',
                      text: 'Vouchers',
                      textLine2: ' ',
                      function: (){}
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OurServicesTapedItem(
                    iconPath: "assets/svgs/parent's_control.svg",
                    text: "Parent’s",
                    textLine2: 'control',
                    function: (){},
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'Entertainment',
                style: TextStyle(
                  color: defaultBlackColor00,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  OurServicesTapedItem(
                      iconPath: 'assets/svgs/gift.svg',
                      text: 'Gifts',
                      textLine2: ' ',
                      function: (){}
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OurServicesTapedItem(
                      iconPath: 'assets/svgs/games.svg',
                      text: 'Games',
                      textLine2: ' ',
                      function: (){}
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OurServicesTapedItem(
                      iconPath: 'assets/svgs/invite_win.svg',
                      text: 'Invite',
                      textLine2: '& win',
                      function: (){}
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