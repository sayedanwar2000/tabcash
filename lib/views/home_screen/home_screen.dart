import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tabcash/controller/share/style/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: defaultBlueColor0D,
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(55),
                bottomEnd: Radius.circular(55)
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 10),
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        // color: ,
                        shape: BoxShape.circle,
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image(
                        image: NetworkImage(
                          'https://img.freepik.com/free-photo/pretty-smiling-joyfully-female-with-fair-hair-dressed-casually-looking-with-satisfaction_176420-15187.jpg?w=1060&t=st=1683364100~exp=1683364700~hmac=10d3994509fea36ae79a8a5dbbf70b7c95bd55495329d6744b7410796513f0f2'
                        ),
                        width: 55,
                        height: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Welcome Loly!',
                        style: TextStyle(
                          color: defaultWhiteColorFF,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Nice to see you again.',
                        style: TextStyle(
                            color: defaultWhiteColorFF,
                            fontSize: 12,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: (){},
                    icon: SvgPicture.asset(
                      'assets/svgs/notifications_active_icon.svg'
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: defaultWhiteColorFF,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6.0,
                    spreadRadius: 1.0,
                    offset: Offset(
                      2.0,
                      2.0,
                    ),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0 , vertical: 12.0),
                    child: Row(
                      children: [
                        Text(
                          'Your balance',
                          style: TextStyle(
                            color: defaultBlackColor00,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Max EGP 100,000',
                          style: TextStyle(
                            color: defaultBlackColor00,
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Add your card and start to pay your bills online ,'
                                ' transfer and withdraw'
                                '  money between you any another card.',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: defaultBlackColor00,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset('assets/svgs/card.svg'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 12),
                    child:  Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: defaultBlueColor0D,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 110,
                      child: MaterialButton(
                        onPressed: (){

                        },
                        child: Text(
                          'Add card',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: defaultWhiteColorFF,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6.0,
                    spreadRadius: 1.0,
                    offset: Offset(
                      2.0,
                      2.0,
                    ),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'Our services',
                    style: TextStyle(
                      color: defaultBlackColor00,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [

                    ],
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
